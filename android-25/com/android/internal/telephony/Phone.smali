.class public abstract Lcom/android/internal/telephony/Phone;
.super Landroid/os/Handler;
.source "Phone.java"

# interfaces
.implements Lcom/android/internal/telephony/PhoneInternalInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/Phone$1;,
        Lcom/android/internal/telephony/Phone$NetworkSelectMessage;
    }
.end annotation


# static fields
.field private static final CDMA_NON_ROAMING_LIST_OVERRIDE_PREFIX:Ljava/lang/String; = "cdma_non_roaming_list_"

.field private static final CDMA_ROAMING_LIST_OVERRIDE_PREFIX:Ljava/lang/String; = "cdma_roaming_list_"

.field public static final CF_ID:Ljava/lang/String; = "cf_id_key"

.field public static final CF_STATUS:Ljava/lang/String; = "cf_status_key"

.field public static final CLIR_KEY:Ljava/lang/String; = "clir_key"

.field public static final CS_FALLBACK:Ljava/lang/String; = "cs_fallback"

.field public static final DATA_DISABLED_ON_BOOT_KEY:Ljava/lang/String; = "disabled_on_boot_key"

.field private static final DEFAULT_REPORT_INTERVAL_MS:I = 0xc8

.field private static final DNS_SERVER_CHECK_DISABLED_KEY:Ljava/lang/String; = "dns_server_check_disabled_key"

.field protected static final EVENT_CALL_RING:I = 0xe

.field private static final EVENT_CALL_RING_CONTINUE:I = 0xf

.field protected static final EVENT_CARRIER_CONFIG_CHANGED:I = 0x2b

.field protected static final EVENT_CDMA_SUBSCRIPTION_SOURCE_CHANGED:I = 0x1b

.field private static final EVENT_CHECK_FOR_NETWORK_AUTOMATIC:I = 0x26

.field private static final EVENT_CONFIG_LCE:I = 0x25

.field protected static final EVENT_EMERGENCY_CALLBACK_MODE_ENTER:I = 0x19

.field protected static final EVENT_EXIT_EMERGENCY_CALLBACK_RESPONSE:I = 0x1a

.field protected static final EVENT_GET_BASEBAND_VERSION_DONE:I = 0x6

.field protected static final EVENT_GET_CALL_FORWARD_DONE:I = 0xd

.field protected static final EVENT_GET_DEVICE_IDENTITY_DONE:I = 0x15

.field protected static final EVENT_GET_IMEISV_DONE:I = 0xa

.field protected static final EVENT_GET_IMEI_DONE:I = 0x9

.field protected static final EVENT_GET_RADIO_CAPABILITY:I = 0x23

.field private static final EVENT_GET_SIM_STATUS_DONE:I = 0xb

.field private static final EVENT_ICC_CHANGED:I = 0x1e

.field protected static final EVENT_ICC_RECORD_EVENTS:I = 0x1d

.field private static final EVENT_INITIATE_SILENT_REDIAL:I = 0x20

.field protected static final EVENT_LAST:I = 0x2c

.field private static final EVENT_MMI_DONE:I = 0x4

.field protected static final EVENT_NV_READY:I = 0x17

.field protected static final EVENT_RADIO_AVAILABLE:I = 0x1

.field private static final EVENT_RADIO_NOT_AVAILABLE:I = 0x21

.field protected static final EVENT_RADIO_OFF_OR_NOT_AVAILABLE:I = 0x8

.field protected static final EVENT_RADIO_ON:I = 0x5

.field protected static final EVENT_REGISTERED_TO_NETWORK:I = 0x13

.field protected static final EVENT_REQUEST_VOICE_RADIO_TECH_DONE:I = 0x28

.field protected static final EVENT_RIL_CONNECTED:I = 0x29

.field protected static final EVENT_RUIM_RECORDS_LOADED:I = 0x16

.field protected static final EVENT_SET_CALL_FORWARD_DONE:I = 0xc

.field protected static final EVENT_SET_CLIR_COMPLETE:I = 0x12

.field private static final EVENT_SET_ENHANCED_VP:I = 0x18

.field protected static final EVENT_SET_NETWORK_AUTOMATIC:I = 0x1c

.field private static final EVENT_SET_NETWORK_AUTOMATIC_COMPLETE:I = 0x11

.field private static final EVENT_SET_NETWORK_MANUAL_COMPLETE:I = 0x10

.field protected static final EVENT_SET_ROAMING_PREFERENCE_DONE:I = 0x2c

.field protected static final EVENT_SET_VM_NUMBER_DONE:I = 0x14

.field protected static final EVENT_SIM_RECORDS_LOADED:I = 0x3

.field private static final EVENT_SRVCC_STATE_CHANGED:I = 0x1f

.field protected static final EVENT_SS:I = 0x24

.field protected static final EVENT_SSN:I = 0x2

.field private static final EVENT_UNSOL_OEM_HOOK_RAW:I = 0x22

.field protected static final EVENT_UPDATE_PHONE_OBJECT:I = 0x2a

.field protected static final EVENT_USSD:I = 0x7

.field protected static final EVENT_VOICE_RADIO_TECH_CHANGED:I = 0x27

.field public static final EXTRA_KEY_ALERT_MESSAGE:Ljava/lang/String; = "alertMessage"

.field public static final EXTRA_KEY_ALERT_SHOW:Ljava/lang/String; = "alertShow"

.field public static final EXTRA_KEY_ALERT_TITLE:Ljava/lang/String; = "alertTitle"

.field public static final EXTRA_KEY_NOTIFICATION_MESSAGE:Ljava/lang/String; = "notificationMessage"

.field private static final GSM_NON_ROAMING_LIST_OVERRIDE_PREFIX:Ljava/lang/String; = "gsm_non_roaming_list_"

.field private static final GSM_ROAMING_LIST_OVERRIDE_PREFIX:Ljava/lang/String; = "gsm_roaming_list_"

.field private static final LCE_PULL_MODE:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "Phone"

.field public static final NETWORK_SELECTION_KEY:Ljava/lang/String; = "network_selection_key"

.field public static final NETWORK_SELECTION_NAME_KEY:Ljava/lang/String; = "network_selection_name_key"

.field public static final NETWORK_SELECTION_SHORT_KEY:Ljava/lang/String; = "network_selection_short_key"

.field private static final VM_COUNT:Ljava/lang/String; = "vm_count_key"

.field private static final VM_ID:Ljava/lang/String; = "vm_id_key"

.field protected static final lockForRadioTechnologyChange:Ljava/lang/Object;


# instance fields
.field private final mActionAttached:Ljava/lang/String;

.field private final mActionDetached:Ljava/lang/String;

.field private mCallRingContinueToken:I

.field private mCallRingDelay:I

.field private mCarrierSignalAgent:Lcom/android/internal/telephony/CarrierSignalAgent;

.field public mCi:Lcom/android/internal/telephony/CommandsInterface;

.field protected final mContext:Landroid/content/Context;

.field public mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

.field protected final mDisconnectRegistrants:Landroid/os/RegistrantList;

.field private mDnsCheckDisabled:Z

.field private mDoesRilSendMultipleCallRing:Z

.field protected final mEmergencyCallToggledRegistrants:Landroid/os/RegistrantList;

.field private final mHandoverRegistrants:Landroid/os/RegistrantList;

.field protected final mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/android/internal/telephony/uicc/IccRecords;",
            ">;"
        }
    .end annotation
.end field

.field private mImsIntentReceiver:Landroid/content/BroadcastReceiver;

.field protected mImsPhone:Lcom/android/internal/telephony/Phone;

.field private mImsServiceReady:Z

.field private final mIncomingRingRegistrants:Landroid/os/RegistrantList;

.field protected mIsVideoCapable:Z

.field private mIsVoiceCapable:Z

.field private mLceStatus:I

.field private mLooper:Landroid/os/Looper;

.field protected final mMmiCompleteRegistrants:Landroid/os/RegistrantList;

.field protected final mMmiRegistrants:Landroid/os/RegistrantList;

.field private mName:Ljava/lang/String;

.field private final mNewRingingConnectionRegistrants:Landroid/os/RegistrantList;

.field protected mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

.field protected mPhoneId:I

.field protected mPostDialHandler:Landroid/os/Registrant;

.field private final mPreciseCallStateRegistrants:Landroid/os/RegistrantList;

.field private final mRadioCapability:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/android/internal/telephony/RadioCapability;",
            ">;"
        }
    .end annotation
.end field

.field protected final mRadioOffOrNotAvailableRegistrants:Landroid/os/RegistrantList;

.field private final mServiceStateRegistrants:Landroid/os/RegistrantList;

.field protected final mSimRecordsLoadedRegistrants:Landroid/os/RegistrantList;

.field protected mSimulatedRadioControl:Lcom/android/internal/telephony/test/SimulatedRadioControl;

.field public mSmsStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

.field public mSmsUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

.field protected final mSuppServiceFailedRegistrants:Landroid/os/RegistrantList;

.field protected mTelephonyComponentFactory:Lcom/android/internal/telephony/TelephonyComponentFactory;

.field private mTelephonyTester:Lcom/android/internal/telephony/TelephonyTester;

.field protected mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/android/internal/telephony/uicc/UiccCardApplication;",
            ">;"
        }
    .end annotation
.end field

.field protected mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

.field private mUnitTestMode:Z

.field protected final mUnknownConnectionRegistrants:Landroid/os/RegistrantList;

.field private final mVideoCapabilityChangedRegistrants:Landroid/os/RegistrantList;

.field protected mVmCount:I


# direct methods
.method static synthetic -set0(Lcom/android/internal/telephony/Phone;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/internal/telephony/Phone;->mImsServiceReady:Z

    #@2
    return p1
.end method

.method static synthetic -wrap0(Lcom/android/internal/telephony/Phone;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/internal/telephony/Phone;->updateImsPhone()V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 91
    new-instance v0, Ljava/lang/Object;

    #@2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@5
    sput-object v0, Lcom/android/internal/telephony/Phone;->lockForRadioTechnologyChange:Ljava/lang/Object;

    #@7
    .line 88
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lcom/android/internal/telephony/PhoneNotifier;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Z)V
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "notifier"    # Lcom/android/internal/telephony/PhoneNotifier;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p5, "unitTestMode"    # Z

    #@0
    .prologue
    .line 413
    invoke-static {}, Lcom/android/internal/telephony/TelephonyComponentFactory;->getInstance()Lcom/android/internal/telephony/TelephonyComponentFactory;

    #@3
    move-result-object v7

    #@4
    .line 412
    const v6, 0x7fffffff

    #@7
    move-object v0, p0

    #@8
    move-object v1, p1

    #@9
    move-object v2, p2

    #@a
    move-object v3, p3

    #@b
    move-object v4, p4

    #@c
    move v5, p5

    #@d
    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/Phone;-><init>(Ljava/lang/String;Lcom/android/internal/telephony/PhoneNotifier;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;ZILcom/android/internal/telephony/TelephonyComponentFactory;)V

    #@10
    .line 411
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lcom/android/internal/telephony/PhoneNotifier;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;ZILcom/android/internal/telephony/TelephonyComponentFactory;)V
    .locals 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "notifier"    # Lcom/android/internal/telephony/PhoneNotifier;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p5, "unitTestMode"    # Z
    .param p6, "phoneId"    # I
    .param p7, "telephonyComponentFactory"    # Lcom/android/internal/telephony/TelephonyComponentFactory;

    #@0
    .prologue
    .line 427
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #@3
    .line 93
    new-instance v6, Lcom/android/internal/telephony/Phone$1;

    #@5
    invoke-direct {v6, p0}, Lcom/android/internal/telephony/Phone$1;-><init>(Lcom/android/internal/telephony/Phone;)V

    #@8
    iput-object v6, p0, Lcom/android/internal/telephony/Phone;->mImsIntentReceiver:Landroid/content/BroadcastReceiver;

    #@a
    .line 228
    const/4 v6, 0x0

    #@b
    iput v6, p0, Lcom/android/internal/telephony/Phone;->mVmCount:I

    #@d
    .line 234
    const/4 v6, 0x1

    #@e
    iput-boolean v6, p0, Lcom/android/internal/telephony/Phone;->mIsVoiceCapable:Z

    #@10
    .line 240
    const/4 v6, 0x0

    #@11
    iput-boolean v6, p0, Lcom/android/internal/telephony/Phone;->mIsVideoCapable:Z

    #@13
    .line 241
    const/4 v6, 0x0

    #@14
    iput-object v6, p0, Lcom/android/internal/telephony/Phone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    #@16
    .line 242
    new-instance v6, Ljava/util/concurrent/atomic/AtomicReference;

    #@18
    invoke-direct {v6}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    #@1b
    iput-object v6, p0, Lcom/android/internal/telephony/Phone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    #@1d
    .line 246
    new-instance v6, Ljava/util/concurrent/atomic/AtomicReference;

    #@1f
    invoke-direct {v6}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    #@22
    .line 245
    iput-object v6, p0, Lcom/android/internal/telephony/Phone;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    #@24
    .line 255
    const/4 v6, 0x0

    #@25
    iput-boolean v6, p0, Lcom/android/internal/telephony/Phone;->mImsServiceReady:Z

    #@27
    .line 256
    const/4 v6, 0x0

    #@28
    iput-object v6, p0, Lcom/android/internal/telephony/Phone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    #@2a
    .line 259
    new-instance v6, Ljava/util/concurrent/atomic/AtomicReference;

    #@2c
    invoke-direct {v6}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    #@2f
    .line 258
    iput-object v6, p0, Lcom/android/internal/telephony/Phone;->mRadioCapability:Ljava/util/concurrent/atomic/AtomicReference;

    #@31
    .line 263
    const/4 v6, -0x1

    #@32
    iput v6, p0, Lcom/android/internal/telephony/Phone;->mLceStatus:I

    #@34
    .line 274
    new-instance v6, Landroid/os/RegistrantList;

    #@36
    invoke-direct {v6}, Landroid/os/RegistrantList;-><init>()V

    #@39
    .line 273
    iput-object v6, p0, Lcom/android/internal/telephony/Phone;->mPreciseCallStateRegistrants:Landroid/os/RegistrantList;

    #@3b
    .line 277
    new-instance v6, Landroid/os/RegistrantList;

    #@3d
    invoke-direct {v6}, Landroid/os/RegistrantList;-><init>()V

    #@40
    .line 276
    iput-object v6, p0, Lcom/android/internal/telephony/Phone;->mHandoverRegistrants:Landroid/os/RegistrantList;

    #@42
    .line 280
    new-instance v6, Landroid/os/RegistrantList;

    #@44
    invoke-direct {v6}, Landroid/os/RegistrantList;-><init>()V

    #@47
    .line 279
    iput-object v6, p0, Lcom/android/internal/telephony/Phone;->mNewRingingConnectionRegistrants:Landroid/os/RegistrantList;

    #@49
    .line 283
    new-instance v6, Landroid/os/RegistrantList;

    #@4b
    invoke-direct {v6}, Landroid/os/RegistrantList;-><init>()V

    #@4e
    .line 282
    iput-object v6, p0, Lcom/android/internal/telephony/Phone;->mIncomingRingRegistrants:Landroid/os/RegistrantList;

    #@50
    .line 286
    new-instance v6, Landroid/os/RegistrantList;

    #@52
    invoke-direct {v6}, Landroid/os/RegistrantList;-><init>()V

    #@55
    .line 285
    iput-object v6, p0, Lcom/android/internal/telephony/Phone;->mDisconnectRegistrants:Landroid/os/RegistrantList;

    #@57
    .line 289
    new-instance v6, Landroid/os/RegistrantList;

    #@59
    invoke-direct {v6}, Landroid/os/RegistrantList;-><init>()V

    #@5c
    .line 288
    iput-object v6, p0, Lcom/android/internal/telephony/Phone;->mServiceStateRegistrants:Landroid/os/RegistrantList;

    #@5e
    .line 292
    new-instance v6, Landroid/os/RegistrantList;

    #@60
    invoke-direct {v6}, Landroid/os/RegistrantList;-><init>()V

    #@63
    .line 291
    iput-object v6, p0, Lcom/android/internal/telephony/Phone;->mMmiCompleteRegistrants:Landroid/os/RegistrantList;

    #@65
    .line 295
    new-instance v6, Landroid/os/RegistrantList;

    #@67
    invoke-direct {v6}, Landroid/os/RegistrantList;-><init>()V

    #@6a
    .line 294
    iput-object v6, p0, Lcom/android/internal/telephony/Phone;->mMmiRegistrants:Landroid/os/RegistrantList;

    #@6c
    .line 298
    new-instance v6, Landroid/os/RegistrantList;

    #@6e
    invoke-direct {v6}, Landroid/os/RegistrantList;-><init>()V

    #@71
    .line 297
    iput-object v6, p0, Lcom/android/internal/telephony/Phone;->mUnknownConnectionRegistrants:Landroid/os/RegistrantList;

    #@73
    .line 301
    new-instance v6, Landroid/os/RegistrantList;

    #@75
    invoke-direct {v6}, Landroid/os/RegistrantList;-><init>()V

    #@78
    .line 300
    iput-object v6, p0, Lcom/android/internal/telephony/Phone;->mSuppServiceFailedRegistrants:Landroid/os/RegistrantList;

    #@7a
    .line 304
    new-instance v6, Landroid/os/RegistrantList;

    #@7c
    invoke-direct {v6}, Landroid/os/RegistrantList;-><init>()V

    #@7f
    .line 303
    iput-object v6, p0, Lcom/android/internal/telephony/Phone;->mRadioOffOrNotAvailableRegistrants:Landroid/os/RegistrantList;

    #@81
    .line 307
    new-instance v6, Landroid/os/RegistrantList;

    #@83
    invoke-direct {v6}, Landroid/os/RegistrantList;-><init>()V

    #@86
    .line 306
    iput-object v6, p0, Lcom/android/internal/telephony/Phone;->mSimRecordsLoadedRegistrants:Landroid/os/RegistrantList;

    #@88
    .line 310
    new-instance v6, Landroid/os/RegistrantList;

    #@8a
    invoke-direct {v6}, Landroid/os/RegistrantList;-><init>()V

    #@8d
    .line 309
    iput-object v6, p0, Lcom/android/internal/telephony/Phone;->mVideoCapabilityChangedRegistrants:Landroid/os/RegistrantList;

    #@8f
    .line 313
    new-instance v6, Landroid/os/RegistrantList;

    #@91
    invoke-direct {v6}, Landroid/os/RegistrantList;-><init>()V

    #@94
    .line 312
    iput-object v6, p0, Lcom/android/internal/telephony/Phone;->mEmergencyCallToggledRegistrants:Landroid/os/RegistrantList;

    #@96
    .line 430
    move/from16 v0, p6

    #@98
    iput v0, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    #@9a
    .line 431
    iput-object p1, p0, Lcom/android/internal/telephony/Phone;->mName:Ljava/lang/String;

    #@9c
    .line 432
    iput-object p2, p0, Lcom/android/internal/telephony/Phone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    #@9e
    .line 433
    iput-object p3, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    #@a0
    .line 434
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@a3
    move-result-object v6

    #@a4
    iput-object v6, p0, Lcom/android/internal/telephony/Phone;->mLooper:Landroid/os/Looper;

    #@a6
    .line 435
    iput-object p4, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@a8
    .line 436
    new-instance v6, Lcom/android/internal/telephony/CarrierSignalAgent;

    #@aa
    invoke-direct {v6, p0}, Lcom/android/internal/telephony/CarrierSignalAgent;-><init>(Lcom/android/internal/telephony/Phone;)V

    #@ad
    iput-object v6, p0, Lcom/android/internal/telephony/Phone;->mCarrierSignalAgent:Lcom/android/internal/telephony/CarrierSignalAgent;

    #@af
    .line 437
    new-instance v6, Ljava/lang/StringBuilder;

    #@b1
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@b4
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getClass()Ljava/lang/Class;

    #@b7
    move-result-object v7

    #@b8
    invoke-virtual {v7}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    #@bb
    move-result-object v7

    #@bc
    invoke-virtual {v7}, Ljava/lang/Package;->getName()Ljava/lang/String;

    #@bf
    move-result-object v7

    #@c0
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c3
    move-result-object v6

    #@c4
    const-string/jumbo v7, ".action_detached"

    #@c7
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ca
    move-result-object v6

    #@cb
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ce
    move-result-object v6

    #@cf
    iput-object v6, p0, Lcom/android/internal/telephony/Phone;->mActionDetached:Ljava/lang/String;

    #@d1
    .line 438
    new-instance v6, Ljava/lang/StringBuilder;

    #@d3
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@d6
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getClass()Ljava/lang/Class;

    #@d9
    move-result-object v7

    #@da
    invoke-virtual {v7}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    #@dd
    move-result-object v7

    #@de
    invoke-virtual {v7}, Ljava/lang/Package;->getName()Ljava/lang/String;

    #@e1
    move-result-object v7

    #@e2
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e5
    move-result-object v6

    #@e6
    const-string/jumbo v7, ".action_attached"

    #@e9
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ec
    move-result-object v6

    #@ed
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f0
    move-result-object v6

    #@f1
    iput-object v6, p0, Lcom/android/internal/telephony/Phone;->mActionAttached:Ljava/lang/String;

    #@f3
    .line 440
    sget-boolean v6, Landroid/os/Build;->IS_DEBUGGABLE:Z

    #@f5
    if-eqz v6, :cond_0

    #@f7
    .line 441
    new-instance v6, Lcom/android/internal/telephony/TelephonyTester;

    #@f9
    invoke-direct {v6, p0}, Lcom/android/internal/telephony/TelephonyTester;-><init>(Lcom/android/internal/telephony/Phone;)V

    #@fc
    iput-object v6, p0, Lcom/android/internal/telephony/Phone;->mTelephonyTester:Lcom/android/internal/telephony/TelephonyTester;

    #@fe
    .line 444
    :cond_0
    invoke-direct {p0, p5}, Lcom/android/internal/telephony/Phone;->setUnitTestMode(Z)V

    #@101
    .line 446
    invoke-static {p3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    #@104
    move-result-object v4

    #@105
    .line 447
    .local v4, "sp":Landroid/content/SharedPreferences;
    const-string/jumbo v6, "dns_server_check_disabled_key"

    #@108
    const/4 v7, 0x0

    #@109
    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    #@10c
    move-result v6

    #@10d
    iput-boolean v6, p0, Lcom/android/internal/telephony/Phone;->mDnsCheckDisabled:Z

    #@10f
    .line 448
    iget-object v6, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@111
    const/16 v7, 0xe

    #@113
    const/4 v8, 0x0

    #@114
    invoke-interface {v6, p0, v7, v8}, Lcom/android/internal/telephony/CommandsInterface;->setOnCallRing(Landroid/os/Handler;ILjava/lang/Object;)V

    #@117
    .line 456
    iget-object v6, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    #@119
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@11c
    move-result-object v6

    #@11d
    .line 457
    const v7, 0x112005a

    #@120
    .line 456
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@123
    move-result v6

    #@124
    iput-boolean v6, p0, Lcom/android/internal/telephony/Phone;->mIsVoiceCapable:Z

    #@126
    .line 470
    const-string/jumbo v6, "ro.telephony.call_ring.multiple"

    #@129
    const/4 v7, 0x1

    #@12a
    .line 469
    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@12d
    move-result v6

    #@12e
    iput-boolean v6, p0, Lcom/android/internal/telephony/Phone;->mDoesRilSendMultipleCallRing:Z

    #@130
    .line 471
    const-string/jumbo v6, "Phone"

    #@133
    new-instance v7, Ljava/lang/StringBuilder;

    #@135
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@138
    const-string/jumbo v8, "mDoesRilSendMultipleCallRing="

    #@13b
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13e
    move-result-object v7

    #@13f
    iget-boolean v8, p0, Lcom/android/internal/telephony/Phone;->mDoesRilSendMultipleCallRing:Z

    #@141
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@144
    move-result-object v7

    #@145
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@148
    move-result-object v7

    #@149
    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@14c
    .line 474
    const-string/jumbo v6, "ro.telephony.call_ring.delay"

    #@14f
    const/16 v7, 0xbb8

    #@151
    .line 473
    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    #@154
    move-result v6

    #@155
    iput v6, p0, Lcom/android/internal/telephony/Phone;->mCallRingDelay:I

    #@157
    .line 475
    const-string/jumbo v6, "Phone"

    #@15a
    new-instance v7, Ljava/lang/StringBuilder;

    #@15c
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@15f
    const-string/jumbo v8, "mCallRingDelay="

    #@162
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@165
    move-result-object v7

    #@166
    iget v8, p0, Lcom/android/internal/telephony/Phone;->mCallRingDelay:I

    #@168
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16b
    move-result-object v7

    #@16c
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16f
    move-result-object v7

    #@170
    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@173
    .line 477
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    #@176
    move-result v6

    #@177
    const/4 v7, 0x5

    #@178
    if-ne v6, v7, :cond_1

    #@17a
    .line 478
    return-void

    #@17b
    .line 484
    :cond_1
    iget-object v6, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    #@17d
    invoke-static {v6}, Lcom/android/internal/telephony/Phone;->getLocaleFromCarrierProperties(Landroid/content/Context;)Ljava/util/Locale;

    #@180
    move-result-object v1

    #@181
    .line 485
    .local v1, "carrierLocale":Ljava/util/Locale;
    if-eqz v1, :cond_2

    #@183
    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    #@186
    move-result-object v6

    #@187
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@18a
    move-result v6

    #@18b
    if-eqz v6, :cond_4

    #@18d
    .line 499
    :cond_2
    :goto_0
    move-object/from16 v0, p7

    #@18f
    iput-object v0, p0, Lcom/android/internal/telephony/Phone;->mTelephonyComponentFactory:Lcom/android/internal/telephony/TelephonyComponentFactory;

    #@191
    .line 500
    iget-object v6, p0, Lcom/android/internal/telephony/Phone;->mTelephonyComponentFactory:Lcom/android/internal/telephony/TelephonyComponentFactory;

    #@193
    invoke-virtual {v6, p0}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeSmsStorageMonitor(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/SmsStorageMonitor;

    #@196
    move-result-object v6

    #@197
    iput-object v6, p0, Lcom/android/internal/telephony/Phone;->mSmsStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    #@199
    .line 501
    iget-object v6, p0, Lcom/android/internal/telephony/Phone;->mTelephonyComponentFactory:Lcom/android/internal/telephony/TelephonyComponentFactory;

    #@19b
    invoke-virtual {v6, p3}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeSmsUsageMonitor(Landroid/content/Context;)Lcom/android/internal/telephony/SmsUsageMonitor;

    #@19e
    move-result-object v6

    #@19f
    iput-object v6, p0, Lcom/android/internal/telephony/Phone;->mSmsUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    #@1a1
    .line 502
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    #@1a4
    move-result-object v6

    #@1a5
    iput-object v6, p0, Lcom/android/internal/telephony/Phone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    #@1a7
    .line 503
    iget-object v6, p0, Lcom/android/internal/telephony/Phone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    #@1a9
    const/16 v7, 0x1e

    #@1ab
    const/4 v8, 0x0

    #@1ac
    invoke-virtual {v6, p0, v7, v8}, Lcom/android/internal/telephony/uicc/UiccController;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    #@1af
    .line 504
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    #@1b2
    move-result v6

    #@1b3
    const/4 v7, 0x3

    #@1b4
    if-eq v6, v7, :cond_3

    #@1b6
    .line 505
    iget-object v6, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@1b8
    const/16 v7, 0x1f

    #@1ba
    const/4 v8, 0x0

    #@1bb
    invoke-interface {v6, p0, v7, v8}, Lcom/android/internal/telephony/CommandsInterface;->registerForSrvccStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    #@1be
    .line 507
    :cond_3
    iget-object v6, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@1c0
    const/16 v7, 0x22

    #@1c2
    const/4 v8, 0x0

    #@1c3
    invoke-interface {v6, p0, v7, v8}, Lcom/android/internal/telephony/CommandsInterface;->setOnUnsolOemHookRaw(Landroid/os/Handler;ILjava/lang/Object;)V

    #@1c6
    .line 508
    iget-object v6, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@1c8
    .line 509
    const/16 v7, 0x25

    #@1ca
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/Phone;->obtainMessage(I)Landroid/os/Message;

    #@1cd
    move-result-object v7

    #@1ce
    .line 508
    const/16 v8, 0xc8

    #@1d0
    const/4 v9, 0x1

    #@1d1
    invoke-interface {v6, v8, v9, v7}, Lcom/android/internal/telephony/CommandsInterface;->startLceService(IZLandroid/os/Message;)V

    #@1d4
    .line 429
    return-void

    #@1d5
    .line 486
    :cond_4
    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    #@1d8
    move-result-object v2

    #@1d9
    .line 488
    .local v2, "country":Ljava/lang/String;
    :try_start_0
    iget-object v6, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    #@1db
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@1de
    move-result-object v6

    #@1df
    .line 489
    const-string/jumbo v7, "wifi_country_code"

    #@1e2
    .line 488
    invoke-static {v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@1e5
    goto :goto_0

    #@1e6
    .line 490
    :catch_0
    move-exception v3

    #@1e7
    .line 493
    .local v3, "e":Landroid/provider/Settings$SettingNotFoundException;
    iget-object v6, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    #@1e9
    const-string/jumbo v7, "wifi"

    #@1ec
    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@1ef
    move-result-object v5

    #@1f0
    .line 492
    check-cast v5, Landroid/net/wifi/WifiManager;

    #@1f2
    .line 494
    .local v5, "wM":Landroid/net/wifi/WifiManager;
    const/4 v6, 0x0

    #@1f3
    invoke-virtual {v5, v2, v6}, Landroid/net/wifi/WifiManager;->setCountryCode(Ljava/lang/String;Z)V

    #@1f6
    goto :goto_0
.end method

.method private checkCorrectThread(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 1437
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    #@3
    move-result-object v0

    #@4
    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mLooper:Landroid/os/Looper;

    #@6
    if-eq v0, v1, :cond_0

    #@8
    .line 1438
    new-instance v0, Ljava/lang/RuntimeException;

    #@a
    .line 1439
    const-string/jumbo v1, "com.android.internal.telephony.Phone must be used from within one thread"

    #@d
    .line 1438
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 1436
    :cond_0
    return-void
.end method

.method public static checkWfcWifiOnlyModeBeforeDial(Lcom/android/internal/telephony/Phone;Landroid/content/Context;)V
    .locals 4
    .param p0, "imsPhone"    # Lcom/android/internal/telephony/Phone;
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v0, 0x0

    #@2
    .line 3270
    if-eqz p0, :cond_1

    #@4
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->isWifiCallingEnabled()Z

    #@7
    move-result v2

    #@8
    if-eqz v2, :cond_1

    #@a
    .line 3269
    :cond_0
    return-void

    #@b
    .line 3271
    :cond_1
    invoke-static {p1}, Lcom/android/ims/ImsManager;->isWfcEnabledByPlatform(Landroid/content/Context;)Z

    #@e
    move-result v2

    #@f
    if-eqz v2, :cond_2

    #@11
    .line 3272
    invoke-static {p1}, Lcom/android/ims/ImsManager;->isWfcEnabledByUser(Landroid/content/Context;)Z

    #@14
    move-result v2

    #@15
    .line 3271
    if-eqz v2, :cond_2

    #@17
    .line 3273
    invoke-static {p1}, Lcom/android/ims/ImsManager;->getWfcMode(Landroid/content/Context;)I

    #@1a
    move-result v2

    #@1b
    if-nez v2, :cond_2

    #@1d
    move v0, v1

    #@1e
    .line 3275
    .local v0, "wfcWiFiOnly":Z
    :cond_2
    if-eqz v0, :cond_0

    #@20
    .line 3276
    new-instance v2, Lcom/android/internal/telephony/CallStateException;

    #@22
    .line 3278
    const-string/jumbo v3, "WFC Wi-Fi Only Mode: IMS not registered"

    #@25
    .line 3276
    invoke-direct {v2, v1, v3}, Lcom/android/internal/telephony/CallStateException;-><init>(ILjava/lang/String;)V

    #@28
    throw v2
.end method

.method private clearSavedNetworkSelection()V
    .locals 3

    #@0
    .prologue
    .line 1263
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    #@7
    move-result-object v0

    #@8
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    #@b
    move-result-object v0

    #@c
    .line 1264
    new-instance v1, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v2, "network_selection_key"

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    #@1b
    move-result v2

    #@1c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    .line 1263
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    #@27
    move-result-object v0

    #@28
    .line 1265
    new-instance v1, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    const-string/jumbo v2, "network_selection_name_key"

    #@30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v1

    #@34
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    #@37
    move-result v2

    #@38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v1

    #@3c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v1

    #@40
    .line 1263
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    #@43
    move-result-object v0

    #@44
    .line 1266
    new-instance v1, Ljava/lang/StringBuilder;

    #@46
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@49
    const-string/jumbo v2, "network_selection_short_key"

    #@4c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v1

    #@50
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    #@53
    move-result v2

    #@54
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@57
    move-result-object v1

    #@58
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5b
    move-result-object v1

    #@5c
    .line 1263
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    #@5f
    move-result-object v0

    #@60
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    #@63
    .line 1261
    return-void
.end method

.method private getCallForwardingIndicatorFromSharedPref()I
    .locals 13

    #@0
    .prologue
    const/4 v12, 0x0

    #@1
    const/4 v6, 0x1

    #@2
    const/4 v7, 0x0

    #@3
    const/4 v11, -0x1

    #@4
    .line 1645
    const/4 v3, 0x0

    #@5
    .line 1646
    .local v3, "status":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    #@8
    move-result v4

    #@9
    .line 1647
    .local v4, "subId":I
    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    #@c
    move-result v8

    #@d
    if-eqz v8, :cond_3

    #@f
    .line 1648
    iget-object v8, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    #@11
    invoke-static {v8}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    #@14
    move-result-object v2

    #@15
    .line 1649
    .local v2, "sp":Landroid/content/SharedPreferences;
    new-instance v8, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v9, "cf_status_key"

    #@1d
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v8

    #@21
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@24
    move-result-object v8

    #@25
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v8

    #@29
    invoke-interface {v2, v8, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    #@2c
    move-result v3

    #@2d
    .line 1650
    const-string/jumbo v8, "Phone"

    #@30
    new-instance v9, Ljava/lang/StringBuilder;

    #@32
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@35
    const-string/jumbo v10, "getCallForwardingIndicatorFromSharedPref: for subId "

    #@38
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v9

    #@3c
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v9

    #@40
    const-string/jumbo v10, "= "

    #@43
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v9

    #@47
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v9

    #@4b
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e
    move-result-object v9

    #@4f
    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@52
    .line 1654
    if-ne v3, v11, :cond_0

    #@54
    .line 1655
    const-string/jumbo v8, "cf_id_key"

    #@57
    invoke-interface {v2, v8, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@5a
    move-result-object v5

    #@5b
    .line 1656
    .local v5, "subscriberId":Ljava/lang/String;
    if-eqz v5, :cond_0

    #@5d
    .line 1657
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubscriberId()Ljava/lang/String;

    #@60
    move-result-object v0

    #@61
    .line 1659
    .local v0, "currentSubscriberId":Ljava/lang/String;
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@64
    move-result v8

    #@65
    if-eqz v8, :cond_2

    #@67
    .line 1661
    const-string/jumbo v8, "cf_status_key"

    #@6a
    invoke-interface {v2, v8, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    #@6d
    move-result v3

    #@6e
    .line 1663
    if-ne v3, v6, :cond_1

    #@70
    .line 1662
    :goto_0
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/Phone;->setCallForwardingIndicatorInSharedPref(Z)V

    #@73
    .line 1664
    const-string/jumbo v6, "Phone"

    #@76
    new-instance v7, Ljava/lang/StringBuilder;

    #@78
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@7b
    const-string/jumbo v8, "getCallForwardingIndicatorFromSharedPref: "

    #@7e
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v7

    #@82
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@85
    move-result-object v7

    #@86
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@89
    move-result-object v7

    #@8a
    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@8d
    .line 1671
    :goto_1
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    #@90
    move-result-object v1

    #@91
    .line 1672
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v6, "cf_id_key"

    #@94
    invoke-interface {v1, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    #@97
    .line 1673
    const-string/jumbo v6, "cf_status_key"

    #@9a
    invoke-interface {v1, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    #@9d
    .line 1674
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    #@a0
    .line 1680
    .end local v0    # "currentSubscriberId":Ljava/lang/String;
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "sp":Landroid/content/SharedPreferences;
    .end local v5    # "subscriberId":Ljava/lang/String;
    :cond_0
    :goto_2
    return v3

    #@a1
    .restart local v0    # "currentSubscriberId":Ljava/lang/String;
    .restart local v2    # "sp":Landroid/content/SharedPreferences;
    .restart local v5    # "subscriberId":Ljava/lang/String;
    :cond_1
    move v6, v7

    #@a2
    .line 1663
    goto :goto_0

    #@a3
    .line 1666
    :cond_2
    const-string/jumbo v6, "Phone"

    #@a6
    const-string/jumbo v7, "getCallForwardingIndicatorFromSharedPref: returning DISABLED as status for matching subscriberId not found"

    #@a9
    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@ac
    goto :goto_1

    #@ad
    .line 1678
    .end local v0    # "currentSubscriberId":Ljava/lang/String;
    .end local v2    # "sp":Landroid/content/SharedPreferences;
    .end local v5    # "subscriberId":Ljava/lang/String;
    :cond_3
    const-string/jumbo v6, "Phone"

    #@b0
    new-instance v7, Ljava/lang/StringBuilder;

    #@b2
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@b5
    const-string/jumbo v8, "getCallForwardingIndicatorFromSharedPref: invalid subId "

    #@b8
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bb
    move-result-object v7

    #@bc
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@bf
    move-result-object v7

    #@c0
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c3
    move-result-object v7

    #@c4
    invoke-static {v6, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@c7
    goto :goto_2
.end method

.method private static getLocaleFromCarrierProperties(Landroid/content/Context;)Ljava/util/Locale;
    .locals 7
    .param p0, "ctx"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 1448
    const-string/jumbo v4, "ro.carrier"

    #@4
    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    .line 1450
    .local v1, "carrier":Ljava/lang/String;
    if-eqz v1, :cond_0

    #@a
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@d
    move-result v4

    #@e
    if-nez v4, :cond_1

    #@10
    .line 1451
    :cond_0
    return-object v6

    #@11
    .line 1450
    :cond_1
    const-string/jumbo v4, "unknown"

    #@14
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@17
    move-result v4

    #@18
    if-nez v4, :cond_0

    #@1a
    .line 1454
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@1d
    move-result-object v4

    #@1e
    const v5, 0x107005a

    #@21
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    #@24
    move-result-object v2

    #@25
    .line 1456
    .local v2, "carrierLocales":[Ljava/lang/CharSequence;
    const/4 v3, 0x0

    #@26
    .local v3, "i":I
    :goto_0
    array-length v4, v2

    #@27
    if-ge v3, v4, :cond_3

    #@29
    .line 1457
    aget-object v4, v2, v3

    #@2b
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@2e
    move-result-object v0

    #@2f
    .line 1458
    .local v0, "c":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@32
    move-result v4

    #@33
    if-eqz v4, :cond_2

    #@35
    .line 1459
    add-int/lit8 v4, v3, 0x1

    #@37
    aget-object v4, v2, v4

    #@39
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@3c
    move-result-object v4

    #@3d
    const/16 v5, 0x5f

    #@3f
    const/16 v6, 0x2d

    #@41
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    #@44
    move-result-object v4

    #@45
    invoke-static {v4}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    #@48
    move-result-object v4

    #@49
    return-object v4

    #@4a
    .line 1456
    :cond_2
    add-int/lit8 v3, v3, 0x3

    #@4c
    goto :goto_0

    #@4d
    .line 1463
    .end local v0    # "c":Ljava/lang/String;
    :cond_3
    return-object v6
.end method

.method private getRoamingOverrideHelper(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    .line 3010
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getIccSerialNumber()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    .line 3011
    .local v0, "iccId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@9
    move-result v3

    #@a
    if-nez v3, :cond_0

    #@c
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@f
    move-result v3

    #@10
    if-eqz v3, :cond_1

    #@12
    .line 3012
    :cond_0
    return v4

    #@13
    .line 3015
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    #@15
    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    #@18
    move-result-object v1

    #@19
    .line 3016
    .local v1, "sp":Landroid/content/SharedPreferences;
    new-instance v3, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v3

    #@22
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v3

    #@26
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v3

    #@2a
    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    #@2d
    move-result-object v2

    #@2e
    .line 3017
    .local v2, "value":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v2, :cond_2

    #@30
    .line 3018
    return v4

    #@31
    .line 3020
    :cond_2
    invoke-interface {v2, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@34
    move-result v3

    #@35
    return v3
.end method

.method private getSavedNetworkSelection()Lcom/android/internal/telephony/OperatorInfo;
    .locals 6

    #@0
    .prologue
    .line 1251
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    #@3
    move-result-object v4

    #@4
    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    #@7
    move-result-object v3

    #@8
    .line 1252
    .local v3, "sp":Landroid/content/SharedPreferences;
    new-instance v4, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v5, "network_selection_key"

    #@10
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v4

    #@14
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    #@17
    move-result v5

    #@18
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v4

    #@1c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v4

    #@20
    const-string/jumbo v5, ""

    #@23
    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@26
    move-result-object v1

    #@27
    .line 1253
    .local v1, "numeric":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    #@29
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@2c
    const-string/jumbo v5, "network_selection_name_key"

    #@2f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v4

    #@33
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    #@36
    move-result v5

    #@37
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v4

    #@3b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v4

    #@3f
    const-string/jumbo v5, ""

    #@42
    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@45
    move-result-object v0

    #@46
    .line 1254
    .local v0, "name":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    #@48
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@4b
    const-string/jumbo v5, "network_selection_short_key"

    #@4e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v4

    #@52
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    #@55
    move-result v5

    #@56
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@59
    move-result-object v4

    #@5a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d
    move-result-object v4

    #@5e
    const-string/jumbo v5, ""

    #@61
    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@64
    move-result-object v2

    #@65
    .line 1255
    .local v2, "shrt":Ljava/lang/String;
    new-instance v4, Lcom/android/internal/telephony/OperatorInfo;

    #@67
    invoke-direct {v4, v0, v2, v1}, Lcom/android/internal/telephony/OperatorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@6a
    return-object v4
.end method

.method private static getVideoState(Lcom/android/internal/telephony/Call;)I
    .locals 2
    .param p0, "call"    # Lcom/android/internal/telephony/Call;

    #@0
    .prologue
    .line 2067
    const/4 v1, 0x0

    #@1
    .line 2068
    .local v1, "videoState":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    #@4
    move-result-object v0

    #@5
    .line 2069
    .local v0, "conn":Lcom/android/internal/telephony/Connection;
    if-eqz v0, :cond_0

    #@7
    .line 2070
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getVideoState()I

    #@a
    move-result v1

    #@b
    .line 2072
    :cond_0
    return v1
.end method

.method private handleSetSelectNetwork(Landroid/os/AsyncResult;)V
    .locals 4
    .param p1, "ar"    # Landroid/os/AsyncResult;

    #@0
    .prologue
    .line 1231
    iget-object v1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    #@2
    instance-of v1, v1, Lcom/android/internal/telephony/Phone$NetworkSelectMessage;

    #@4
    if-nez v1, :cond_0

    #@6
    .line 1232
    const-string/jumbo v1, "Phone"

    #@9
    const-string/jumbo v2, "unexpected result from user object."

    #@c
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@f
    .line 1233
    return-void

    #@10
    .line 1236
    :cond_0
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    #@12
    check-cast v0, Lcom/android/internal/telephony/Phone$NetworkSelectMessage;

    #@14
    .line 1240
    .local v0, "nsm":Lcom/android/internal/telephony/Phone$NetworkSelectMessage;
    iget-object v1, v0, Lcom/android/internal/telephony/Phone$NetworkSelectMessage;->message:Landroid/os/Message;

    #@16
    if-eqz v1, :cond_1

    #@18
    .line 1241
    iget-object v1, v0, Lcom/android/internal/telephony/Phone$NetworkSelectMessage;->message:Landroid/os/Message;

    #@1a
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@1c
    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@1e
    invoke-static {v1, v2, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    #@21
    .line 1242
    iget-object v1, v0, Lcom/android/internal/telephony/Phone$NetworkSelectMessage;->message:Landroid/os/Message;

    #@23
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    #@26
    .line 1228
    :cond_1
    return-void
.end method

.method private handleSrvccStateChanged([I)V
    .locals 8
    .param p1, "ret"    # [I

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 654
    const-string/jumbo v5, "Phone"

    #@4
    const-string/jumbo v6, "handleSrvccStateChanged"

    #@7
    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@a
    .line 656
    const/4 v0, 0x0

    #@b
    .line 657
    .local v0, "conn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/Connection;>;"
    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    #@d
    .line 658
    .local v1, "imsPhone":Lcom/android/internal/telephony/Phone;
    sget-object v3, Lcom/android/internal/telephony/Call$SrvccState;->NONE:Lcom/android/internal/telephony/Call$SrvccState;

    #@f
    .line 659
    .local v3, "srvccState":Lcom/android/internal/telephony/Call$SrvccState;
    if-eqz p1, :cond_0

    #@11
    array-length v5, p1

    #@12
    if-eqz v5, :cond_0

    #@14
    .line 660
    aget v4, p1, v7

    #@16
    .line 661
    .local v4, "state":I
    packed-switch v4, :pswitch_data_0

    #@19
    .line 686
    return-void

    #@1a
    .line 663
    :pswitch_0
    sget-object v3, Lcom/android/internal/telephony/Call$SrvccState;->STARTED:Lcom/android/internal/telephony/Call$SrvccState;

    #@1c
    .line 664
    if-eqz v1, :cond_1

    #@1e
    .line 665
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getHandoverConnection()Ljava/util/ArrayList;

    #@21
    move-result-object v0

    #@22
    .line 666
    .local v0, "conn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/Connection;>;"
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/Phone;->migrateFrom(Lcom/android/internal/telephony/Phone;)V

    #@25
    .line 689
    .end local v0    # "conn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/Connection;>;"
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    #@28
    move-result-object v5

    #@29
    invoke-virtual {v5, v3, v0}, Lcom/android/internal/telephony/CallTracker;->notifySrvccState(Lcom/android/internal/telephony/Call$SrvccState;Ljava/util/ArrayList;)V

    #@2c
    .line 691
    new-instance v2, Landroid/telephony/VoLteServiceState;

    #@2e
    invoke-direct {v2, v4}, Landroid/telephony/VoLteServiceState;-><init>(I)V

    #@31
    .line 692
    .local v2, "lteState":Landroid/telephony/VoLteServiceState;
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/Phone;->notifyVoLteServiceStateChanged(Landroid/telephony/VoLteServiceState;)V

    #@34
    .line 653
    .end local v2    # "lteState":Landroid/telephony/VoLteServiceState;
    .end local v4    # "state":I
    :cond_0
    return-void

    #@35
    .line 668
    .local v0, "conn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/Connection;>;"
    .restart local v4    # "state":I
    :cond_1
    const-string/jumbo v5, "Phone"

    #@38
    const-string/jumbo v6, "HANDOVER_STARTED: mImsPhone null"

    #@3b
    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@3e
    goto :goto_0

    #@3f
    .line 672
    :pswitch_1
    sget-object v3, Lcom/android/internal/telephony/Call$SrvccState;->COMPLETED:Lcom/android/internal/telephony/Call$SrvccState;

    #@41
    .line 673
    if-eqz v1, :cond_2

    #@43
    .line 674
    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/Phone;->notifySrvccState(Lcom/android/internal/telephony/Call$SrvccState;)V

    #@46
    goto :goto_0

    #@47
    .line 676
    :cond_2
    const-string/jumbo v5, "Phone"

    #@4a
    const-string/jumbo v6, "HANDOVER_COMPLETED: mImsPhone null"

    #@4d
    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@50
    goto :goto_0

    #@51
    .line 681
    :pswitch_2
    sget-object v3, Lcom/android/internal/telephony/Call$SrvccState;->FAILED:Lcom/android/internal/telephony/Call$SrvccState;

    #@53
    goto :goto_0

    #@54
    .line 661
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private isVideoCall(Lcom/android/internal/telephony/Call;)Z
    .locals 2
    .param p1, "call"    # Lcom/android/internal/telephony/Call;

    #@0
    .prologue
    .line 2076
    invoke-static {p1}, Lcom/android/internal/telephony/Phone;->getVideoState(Lcom/android/internal/telephony/Call;)I

    #@3
    move-result v0

    #@4
    .line 2077
    .local v0, "videoState":I
    invoke-static {v0}, Landroid/telecom/VideoProfile;->isVideo(I)Z

    #@7
    move-result v1

    #@8
    return v1
.end method

.method private notifyIncomingRing()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 2687
    iget-boolean v1, p0, Lcom/android/internal/telephony/Phone;->mIsVoiceCapable:Z

    #@3
    if-nez v1, :cond_0

    #@5
    .line 2688
    return-void

    #@6
    .line 2689
    :cond_0
    new-instance v0, Landroid/os/AsyncResult;

    #@8
    invoke-direct {v0, v2, p0, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@b
    .line 2690
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mIncomingRingRegistrants:Landroid/os/RegistrantList;

    #@d
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    #@10
    .line 2686
    return-void
.end method

.method private notifyMessageWaitingIndicator()V
    .locals 1

    #@0
    .prologue
    .line 2011
    iget-boolean v0, p0, Lcom/android/internal/telephony/Phone;->mIsVoiceCapable:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 2012
    return-void

    #@5
    .line 2015
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    #@7
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifyMessageWaitingChanged(Lcom/android/internal/telephony/Phone;)V

    #@a
    .line 2009
    return-void
.end method

.method private onCheckForNetworkSelectionModeAutomatic(Landroid/os/Message;)V
    .locals 9
    .param p1, "fromRil"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 1112
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@3
    check-cast v0, Landroid/os/AsyncResult;

    #@5
    .line 1113
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v6, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    #@7
    check-cast v6, Landroid/os/Message;

    #@9
    .line 1114
    .local v6, "response":Landroid/os/Message;
    const/4 v1, 0x1

    #@a
    .line 1115
    .local v1, "doAutomatic":Z
    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@c
    if-nez v7, :cond_0

    #@e
    iget-object v7, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@10
    if-eqz v7, :cond_0

    #@12
    .line 1117
    :try_start_0
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@14
    check-cast v3, [I

    #@16
    .line 1118
    .local v3, "modes":[I
    const/4 v7, 0x0

    #@17
    aget v7, v3, v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@19
    if-nez v7, :cond_0

    #@1b
    .line 1120
    const/4 v1, 0x0

    #@1c
    .line 1130
    .end local v3    # "modes":[I
    :cond_0
    :goto_0
    new-instance v5, Lcom/android/internal/telephony/Phone$NetworkSelectMessage;

    #@1e
    invoke-direct {v5, v8}, Lcom/android/internal/telephony/Phone$NetworkSelectMessage;-><init>(Lcom/android/internal/telephony/Phone$NetworkSelectMessage;)V

    #@21
    .line 1131
    .local v5, "nsm":Lcom/android/internal/telephony/Phone$NetworkSelectMessage;
    iput-object v6, v5, Lcom/android/internal/telephony/Phone$NetworkSelectMessage;->message:Landroid/os/Message;

    #@23
    .line 1132
    const-string/jumbo v7, ""

    #@26
    iput-object v7, v5, Lcom/android/internal/telephony/Phone$NetworkSelectMessage;->operatorNumeric:Ljava/lang/String;

    #@28
    .line 1133
    const-string/jumbo v7, ""

    #@2b
    iput-object v7, v5, Lcom/android/internal/telephony/Phone$NetworkSelectMessage;->operatorAlphaLong:Ljava/lang/String;

    #@2d
    .line 1134
    const-string/jumbo v7, ""

    #@30
    iput-object v7, v5, Lcom/android/internal/telephony/Phone$NetworkSelectMessage;->operatorAlphaShort:Ljava/lang/String;

    #@32
    .line 1136
    if-eqz v1, :cond_1

    #@34
    .line 1137
    const/16 v7, 0x11

    #@36
    invoke-virtual {p0, v7, v5}, Lcom/android/internal/telephony/Phone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@39
    move-result-object v4

    #@3a
    .line 1138
    .local v4, "msg":Landroid/os/Message;
    iget-object v7, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@3c
    invoke-interface {v7, v4}, Lcom/android/internal/telephony/CommandsInterface;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    #@3f
    .line 1145
    .end local v4    # "msg":Landroid/os/Message;
    :goto_1
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/Phone;->updateSavedNetworkOperator(Lcom/android/internal/telephony/Phone$NetworkSelectMessage;)V

    #@42
    .line 1111
    return-void

    #@43
    .line 1140
    :cond_1
    const-string/jumbo v7, "Phone"

    #@46
    const-string/jumbo v8, "setNetworkSelectionModeAutomatic - already auto, ignoring"

    #@49
    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@4c
    .line 1141
    iput-object v5, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    #@4e
    .line 1142
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/Phone;->handleSetSelectNetwork(Landroid/os/AsyncResult;)V

    #@51
    goto :goto_1

    #@52
    .line 1122
    .end local v5    # "nsm":Lcom/android/internal/telephony/Phone$NetworkSelectMessage;
    :catch_0
    move-exception v2

    #@53
    .local v2, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private privatizeCellInfoList(Ljava/util/List;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "cellInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    const/4 v1, 0x0

    #@1
    const v4, 0x7fffffff

    #@4
    const/4 v3, 0x0

    #@5
    .line 1593
    if-nez p1, :cond_0

    #@7
    return-object v1

    #@8
    .line 1594
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@f
    move-result-object v1

    #@10
    .line 1595
    const-string/jumbo v2, "location_mode"

    #@13
    .line 1594
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@16
    move-result v10

    #@17
    .line 1596
    .local v10, "mode":I
    if-nez v10, :cond_3

    #@19
    .line 1597
    new-instance v12, Ljava/util/ArrayList;

    #@1b
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@1e
    move-result v1

    #@1f
    invoke-direct {v12, v1}, Ljava/util/ArrayList;-><init>(I)V

    #@22
    .line 1599
    .local v12, "privateCellInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/CellInfo;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@25
    move-result-object v7

    #@26
    .local v7, "c$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@29
    move-result v1

    #@2a
    if-eqz v1, :cond_2

    #@2c
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2f
    move-result-object v6

    #@30
    check-cast v6, Landroid/telephony/CellInfo;

    #@32
    .line 1600
    .local v6, "c":Landroid/telephony/CellInfo;
    instance-of v1, v6, Landroid/telephony/CellInfoCdma;

    #@34
    if-eqz v1, :cond_1

    #@36
    move-object v9, v6

    #@37
    .line 1601
    check-cast v9, Landroid/telephony/CellInfoCdma;

    #@39
    .line 1602
    .local v9, "cellInfoCdma":Landroid/telephony/CellInfoCdma;
    invoke-virtual {v9}, Landroid/telephony/CellInfoCdma;->getCellIdentity()Landroid/telephony/CellIdentityCdma;

    #@3c
    move-result-object v8

    #@3d
    .line 1603
    .local v8, "cellIdentity":Landroid/telephony/CellIdentityCdma;
    new-instance v0, Landroid/telephony/CellIdentityCdma;

    #@3f
    .line 1604
    invoke-virtual {v8}, Landroid/telephony/CellIdentityCdma;->getNetworkId()I

    #@42
    move-result v1

    #@43
    .line 1605
    invoke-virtual {v8}, Landroid/telephony/CellIdentityCdma;->getSystemId()I

    #@46
    move-result v2

    #@47
    .line 1606
    invoke-virtual {v8}, Landroid/telephony/CellIdentityCdma;->getBasestationId()I

    #@4a
    move-result v3

    #@4b
    move v5, v4

    #@4c
    .line 1603
    invoke-direct/range {v0 .. v5}, Landroid/telephony/CellIdentityCdma;-><init>(IIIII)V

    #@4f
    .line 1608
    .local v0, "maskedCellIdentity":Landroid/telephony/CellIdentityCdma;
    new-instance v11, Landroid/telephony/CellInfoCdma;

    #@51
    invoke-direct {v11, v9}, Landroid/telephony/CellInfoCdma;-><init>(Landroid/telephony/CellInfoCdma;)V

    #@54
    .line 1609
    .local v11, "privateCellInfoCdma":Landroid/telephony/CellInfoCdma;
    invoke-virtual {v11, v0}, Landroid/telephony/CellInfoCdma;->setCellIdentity(Landroid/telephony/CellIdentityCdma;)V

    #@57
    .line 1610
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5a
    goto :goto_0

    #@5b
    .line 1612
    .end local v0    # "maskedCellIdentity":Landroid/telephony/CellIdentityCdma;
    .end local v8    # "cellIdentity":Landroid/telephony/CellIdentityCdma;
    .end local v9    # "cellInfoCdma":Landroid/telephony/CellInfoCdma;
    .end local v11    # "privateCellInfoCdma":Landroid/telephony/CellInfoCdma;
    :cond_1
    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5e
    goto :goto_0

    #@5f
    .line 1615
    .end local v6    # "c":Landroid/telephony/CellInfo;
    :cond_2
    move-object p1, v12

    #@60
    .line 1617
    .end local v7    # "c$iterator":Ljava/util/Iterator;
    .end local v12    # "privateCellInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/CellInfo;>;"
    :cond_3
    return-object p1
.end method

.method private restoreSavedNetworkSelection(Landroid/os/Message;)V
    .locals 2
    .param p1, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1276
    invoke-direct {p0}, Lcom/android/internal/telephony/Phone;->getSavedNetworkSelection()Lcom/android/internal/telephony/OperatorInfo;

    #@3
    move-result-object v0

    #@4
    .line 1279
    .local v0, "networkSelection":Lcom/android/internal/telephony/OperatorInfo;
    if-eqz v0, :cond_0

    #@6
    invoke-virtual {v0}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_1

    #@10
    .line 1280
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Phone;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    #@13
    .line 1274
    :goto_0
    return-void

    #@14
    .line 1282
    :cond_1
    const/4 v1, 0x1

    #@15
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/internal/telephony/Phone;->selectNetworkManually(Lcom/android/internal/telephony/OperatorInfo;ZLandroid/os/Message;)V

    #@18
    goto :goto_0
.end method

.method private sendIncomingCallRingNotification(I)V
    .locals 4
    .param p1, "token"    # I

    #@0
    .prologue
    .line 2697
    iget-boolean v0, p0, Lcom/android/internal/telephony/Phone;->mIsVoiceCapable:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-boolean v0, p0, Lcom/android/internal/telephony/Phone;->mDoesRilSendMultipleCallRing:Z

    #@6
    if-eqz v0, :cond_1

    #@8
    .line 2704
    :cond_0
    const-string/jumbo v0, "Phone"

    #@b
    new-instance v1, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v2, "Ignoring ring notification request, mDoesRilSendMultipleCallRing="

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    .line 2705
    iget-boolean v2, p0, Lcom/android/internal/telephony/Phone;->mDoesRilSendMultipleCallRing:Z

    #@19
    .line 2704
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    .line 2706
    const-string/jumbo v2, " token="

    #@20
    .line 2704
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    .line 2707
    const-string/jumbo v2, " mCallRingContinueToken="

    #@2b
    .line 2704
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    .line 2707
    iget v2, p0, Lcom/android/internal/telephony/Phone;->mCallRingContinueToken:I

    #@31
    .line 2704
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@34
    move-result-object v1

    #@35
    .line 2708
    const-string/jumbo v2, " mIsVoiceCapable="

    #@38
    .line 2704
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v1

    #@3c
    .line 2708
    iget-boolean v2, p0, Lcom/android/internal/telephony/Phone;->mIsVoiceCapable:Z

    #@3e
    .line 2704
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@41
    move-result-object v1

    #@42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v1

    #@46
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@49
    .line 2696
    :goto_0
    return-void

    #@4a
    .line 2698
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/Phone;->mCallRingContinueToken:I

    #@4c
    if-ne p1, v0, :cond_0

    #@4e
    .line 2699
    const-string/jumbo v0, "Phone"

    #@51
    const-string/jumbo v1, "Sending notifyIncomingRing"

    #@54
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@57
    .line 2700
    invoke-direct {p0}, Lcom/android/internal/telephony/Phone;->notifyIncomingRing()V

    #@5a
    .line 2702
    const/16 v0, 0xf

    #@5c
    const/4 v1, 0x0

    #@5d
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/Phone;->obtainMessage(III)Landroid/os/Message;

    #@60
    move-result-object v0

    #@61
    iget v1, p0, Lcom/android/internal/telephony/Phone;->mCallRingDelay:I

    #@63
    int-to-long v2, v1

    #@64
    .line 2701
    invoke-virtual {p0, v0, v2, v3}, Lcom/android/internal/telephony/Phone;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@67
    goto :goto_0
.end method

.method private setCallForwardingIndicatorInSharedPref(Z)V
    .locals 7
    .param p1, "enable"    # Z

    #@0
    .prologue
    .line 1684
    if-eqz p1, :cond_0

    #@2
    const/4 v2, 0x1

    #@3
    .line 1686
    .local v2, "status":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    #@6
    move-result v3

    #@7
    .line 1687
    .local v3, "subId":I
    const-string/jumbo v4, "Phone"

    #@a
    new-instance v5, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v6, "setCallForwardingIndicatorInSharedPref: Storing status = "

    #@12
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v5

    #@16
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v5

    #@1a
    .line 1688
    const-string/jumbo v6, " in pref "

    #@1d
    .line 1687
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v5

    #@21
    .line 1688
    const-string/jumbo v6, "cf_status_key"

    #@24
    .line 1687
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v5

    #@28
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v5

    #@2c
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v5

    #@30
    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@33
    .line 1690
    iget-object v4, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    #@35
    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    #@38
    move-result-object v1

    #@39
    .line 1691
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    #@3c
    move-result-object v0

    #@3d
    .line 1692
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v4, Ljava/lang/StringBuilder;

    #@3f
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@42
    const-string/jumbo v5, "cf_status_key"

    #@45
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v4

    #@49
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v4

    #@4d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50
    move-result-object v4

    #@51
    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    #@54
    .line 1693
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    #@57
    .line 1683
    return-void

    #@58
    .line 1685
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "sp":Landroid/content/SharedPreferences;
    .end local v2    # "status":I
    .end local v3    # "subId":I
    :cond_0
    const/4 v2, 0x0

    #@59
    .restart local v2    # "status":I
    goto :goto_0
.end method

.method private setRoamingOverrideHelper(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "iccId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 2936
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    #@2
    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    #@5
    move-result-object v2

    #@6
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    #@9
    move-result-object v1

    #@a
    .line 2937
    .local v1, "spEditor":Landroid/content/SharedPreferences$Editor;
    new-instance v2, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    .line 2938
    .local v0, "key":Ljava/lang/String;
    if-eqz p1, :cond_0

    #@1d
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    #@20
    move-result v2

    #@21
    if-eqz v2, :cond_1

    #@23
    .line 2939
    :cond_0
    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    #@26
    move-result-object v2

    #@27
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    #@2a
    .line 2934
    :goto_0
    return-void

    #@2b
    .line 2941
    :cond_1
    new-instance v2, Ljava/util/HashSet;

    #@2d
    invoke-direct {v2, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    #@30
    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    #@33
    move-result-object v2

    #@34
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    #@37
    goto :goto_0
.end method

.method private setUnitTestMode(Z)V
    .locals 0
    .param p1, "f"    # Z

    #@0
    .prologue
    .line 1307
    iput-boolean p1, p0, Lcom/android/internal/telephony/Phone;->mUnitTestMode:Z

    #@2
    .line 1306
    return-void
.end method

.method private updateImsPhone()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 2838
    const-string/jumbo v0, "Phone"

    #@4
    new-instance v1, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v2, "updateImsPhone mImsServiceReady="

    #@c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    .line 2839
    iget-boolean v2, p0, Lcom/android/internal/telephony/Phone;->mImsServiceReady:Z

    #@12
    .line 2838
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1d
    .line 2841
    iget-boolean v0, p0, Lcom/android/internal/telephony/Phone;->mImsServiceReady:Z

    #@1f
    if-eqz v0, :cond_1

    #@21
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    #@23
    if-nez v0, :cond_1

    #@25
    .line 2842
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    #@27
    invoke-static {v0, p0}, Lcom/android/internal/telephony/PhoneFactory;->makeImsPhone(Lcom/android/internal/telephony/PhoneNotifier;Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;

    #@2a
    move-result-object v0

    #@2b
    iput-object v0, p0, Lcom/android/internal/telephony/Phone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    #@2d
    .line 2843
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    #@30
    move-result-object v0

    #@31
    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    #@33
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->registerPhone(Lcom/android/internal/telephony/Phone;)Z

    #@36
    .line 2844
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    #@38
    .line 2845
    const/16 v1, 0x20

    #@3a
    .line 2844
    invoke-virtual {v0, p0, v1, v3}, Lcom/android/internal/telephony/Phone;->registerForSilentRedial(Landroid/os/Handler;ILjava/lang/Object;)V

    #@3d
    .line 2837
    :cond_0
    :goto_0
    return-void

    #@3e
    .line 2846
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/telephony/Phone;->mImsServiceReady:Z

    #@40
    if-nez v0, :cond_0

    #@42
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    #@44
    if-eqz v0, :cond_0

    #@46
    .line 2847
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    #@49
    move-result-object v0

    #@4a
    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    #@4c
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterPhone(Lcom/android/internal/telephony/Phone;)V

    #@4f
    .line 2848
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    #@51
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/Phone;->unregisterForSilentRedial(Landroid/os/Handler;)V

    #@54
    .line 2850
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    #@56
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->dispose()V

    #@59
    .line 2855
    iput-object v3, p0, Lcom/android/internal/telephony/Phone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    #@5b
    goto :goto_0
.end method

.method private updateSavedNetworkOperator(Lcom/android/internal/telephony/Phone$NetworkSelectMessage;)V
    .locals 6
    .param p1, "nsm"    # Lcom/android/internal/telephony/Phone$NetworkSelectMessage;

    #@0
    .prologue
    .line 1205
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    #@3
    move-result v2

    #@4
    .line 1206
    .local v2, "subId":I
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    #@7
    move-result v3

    #@8
    if-eqz v3, :cond_1

    #@a
    .line 1209
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    #@d
    move-result-object v3

    #@e
    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    #@11
    move-result-object v1

    #@12
    .line 1210
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    #@15
    move-result-object v0

    #@16
    .line 1211
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v3, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v4, "network_selection_key"

    #@1e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v3

    #@22
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@25
    move-result-object v3

    #@26
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v3

    #@2a
    iget-object v4, p1, Lcom/android/internal/telephony/Phone$NetworkSelectMessage;->operatorNumeric:Ljava/lang/String;

    #@2c
    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    #@2f
    .line 1212
    new-instance v3, Ljava/lang/StringBuilder;

    #@31
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@34
    const-string/jumbo v4, "network_selection_name_key"

    #@37
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v3

    #@3b
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v3

    #@3f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v3

    #@43
    iget-object v4, p1, Lcom/android/internal/telephony/Phone$NetworkSelectMessage;->operatorAlphaLong:Ljava/lang/String;

    #@45
    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    #@48
    .line 1213
    new-instance v3, Ljava/lang/StringBuilder;

    #@4a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@4d
    const-string/jumbo v4, "network_selection_short_key"

    #@50
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v3

    #@54
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@57
    move-result-object v3

    #@58
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5b
    move-result-object v3

    #@5c
    iget-object v4, p1, Lcom/android/internal/telephony/Phone$NetworkSelectMessage;->operatorAlphaShort:Ljava/lang/String;

    #@5e
    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    #@61
    .line 1216
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    #@64
    move-result v3

    #@65
    if-nez v3, :cond_0

    #@67
    .line 1217
    const-string/jumbo v3, "Phone"

    #@6a
    const-string/jumbo v4, "failed to commit network selection preference"

    #@6d
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@70
    .line 1204
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "sp":Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    return-void

    #@71
    .line 1220
    :cond_1
    const-string/jumbo v3, "Phone"

    #@74
    new-instance v4, Ljava/lang/StringBuilder;

    #@76
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@79
    const-string/jumbo v5, "Cannot update network selection preference due to invalid subId "

    #@7c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v4

    #@80
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@83
    move-result-object v4

    #@84
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@87
    move-result-object v4

    #@88
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@8b
    goto :goto_0
.end method


# virtual methods
.method public callEndCleanupHandOverCallIfAny()V
    .locals 0

    #@0
    .prologue
    .line 3289
    return-void
.end method

.method public cancelUSSD()V
    .locals 0

    #@0
    .prologue
    .line 3292
    return-void
.end method

.method public carrierActionSetMeteredApnsEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 2639
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 2640
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@6
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setApnsEnabledByCarrier(Z)V

    #@9
    .line 2638
    :cond_0
    return-void
.end method

.method public carrierActionSetRadioEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 2648
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 2649
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@6
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->carrierActionSetRadioEnabled(Z)V

    #@9
    .line 2647
    :cond_0
    return-void
.end method

.method protected dialInternal(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;ILandroid/os/Bundle;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "uusInfo"    # Lcom/android/internal/telephony/UUSInfo;
    .param p3, "videoState"    # I
    .param p4, "intentExtras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 2873
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public disableDnsCheck(Z)V
    .locals 3
    .param p1, "b"    # Z

    #@0
    .prologue
    .line 712
    iput-boolean p1, p0, Lcom/android/internal/telephony/Phone;->mDnsCheckDisabled:Z

    #@2
    .line 713
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    #@5
    move-result-object v2

    #@6
    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    #@9
    move-result-object v1

    #@a
    .line 714
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    #@d
    move-result-object v0

    #@e
    .line 715
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "dns_server_check_disabled_key"

    #@11
    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    #@14
    .line 716
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    #@17
    .line 711
    return-void
.end method

.method public dispose()V
    .locals 0

    #@0
    .prologue
    .line 2834
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 3335
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v2, "Phone: subId="

    #@8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    #@f
    move-result v2

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1b
    .line 3336
    new-instance v1, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    const-string/jumbo v2, " mPhoneId="

    #@23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    iget v2, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    #@29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v1

    #@31
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@34
    .line 3337
    new-instance v1, Ljava/lang/StringBuilder;

    #@36
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@39
    const-string/jumbo v2, " mCi="

    #@3c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v1

    #@40
    iget-object v2, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v1

    #@46
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object v1

    #@4a
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@4d
    .line 3338
    new-instance v1, Ljava/lang/StringBuilder;

    #@4f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@52
    const-string/jumbo v2, " mDnsCheckDisabled="

    #@55
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v1

    #@59
    iget-boolean v2, p0, Lcom/android/internal/telephony/Phone;->mDnsCheckDisabled:Z

    #@5b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v1

    #@5f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@62
    move-result-object v1

    #@63
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@66
    .line 3339
    new-instance v1, Ljava/lang/StringBuilder;

    #@68
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@6b
    const-string/jumbo v2, " mDcTracker="

    #@6e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v1

    #@72
    iget-object v2, p0, Lcom/android/internal/telephony/Phone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@74
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v1

    #@78
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7b
    move-result-object v1

    #@7c
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@7f
    .line 3340
    new-instance v1, Ljava/lang/StringBuilder;

    #@81
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@84
    const-string/jumbo v2, " mDoesRilSendMultipleCallRing="

    #@87
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v1

    #@8b
    iget-boolean v2, p0, Lcom/android/internal/telephony/Phone;->mDoesRilSendMultipleCallRing:Z

    #@8d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@90
    move-result-object v1

    #@91
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@94
    move-result-object v1

    #@95
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@98
    .line 3341
    new-instance v1, Ljava/lang/StringBuilder;

    #@9a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@9d
    const-string/jumbo v2, " mCallRingContinueToken="

    #@a0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a3
    move-result-object v1

    #@a4
    iget v2, p0, Lcom/android/internal/telephony/Phone;->mCallRingContinueToken:I

    #@a6
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a9
    move-result-object v1

    #@aa
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ad
    move-result-object v1

    #@ae
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@b1
    .line 3342
    new-instance v1, Ljava/lang/StringBuilder;

    #@b3
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b6
    const-string/jumbo v2, " mCallRingDelay="

    #@b9
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bc
    move-result-object v1

    #@bd
    iget v2, p0, Lcom/android/internal/telephony/Phone;->mCallRingDelay:I

    #@bf
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@c2
    move-result-object v1

    #@c3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c6
    move-result-object v1

    #@c7
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@ca
    .line 3343
    new-instance v1, Ljava/lang/StringBuilder;

    #@cc
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@cf
    const-string/jumbo v2, " mIsVoiceCapable="

    #@d2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d5
    move-result-object v1

    #@d6
    iget-boolean v2, p0, Lcom/android/internal/telephony/Phone;->mIsVoiceCapable:Z

    #@d8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@db
    move-result-object v1

    #@dc
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@df
    move-result-object v1

    #@e0
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@e3
    .line 3344
    new-instance v1, Ljava/lang/StringBuilder;

    #@e5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@e8
    const-string/jumbo v2, " mIccRecords="

    #@eb
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ee
    move-result-object v1

    #@ef
    iget-object v2, p0, Lcom/android/internal/telephony/Phone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    #@f1
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@f4
    move-result-object v2

    #@f5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f8
    move-result-object v1

    #@f9
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@fc
    move-result-object v1

    #@fd
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@100
    .line 3345
    new-instance v1, Ljava/lang/StringBuilder;

    #@102
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@105
    const-string/jumbo v2, " mUiccApplication="

    #@108
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10b
    move-result-object v1

    #@10c
    iget-object v2, p0, Lcom/android/internal/telephony/Phone;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    #@10e
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@111
    move-result-object v2

    #@112
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@115
    move-result-object v1

    #@116
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@119
    move-result-object v1

    #@11a
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@11d
    .line 3346
    new-instance v1, Ljava/lang/StringBuilder;

    #@11f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@122
    const-string/jumbo v2, " mSmsStorageMonitor="

    #@125
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@128
    move-result-object v1

    #@129
    iget-object v2, p0, Lcom/android/internal/telephony/Phone;->mSmsStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    #@12b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@12e
    move-result-object v1

    #@12f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@132
    move-result-object v1

    #@133
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@136
    .line 3347
    new-instance v1, Ljava/lang/StringBuilder;

    #@138
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@13b
    const-string/jumbo v2, " mSmsUsageMonitor="

    #@13e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@141
    move-result-object v1

    #@142
    iget-object v2, p0, Lcom/android/internal/telephony/Phone;->mSmsUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    #@144
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@147
    move-result-object v1

    #@148
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14b
    move-result-object v1

    #@14c
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@14f
    .line 3348
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    #@152
    .line 3349
    new-instance v1, Ljava/lang/StringBuilder;

    #@154
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@157
    const-string/jumbo v2, " mLooper="

    #@15a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15d
    move-result-object v1

    #@15e
    iget-object v2, p0, Lcom/android/internal/telephony/Phone;->mLooper:Landroid/os/Looper;

    #@160
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@163
    move-result-object v1

    #@164
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@167
    move-result-object v1

    #@168
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@16b
    .line 3350
    new-instance v1, Ljava/lang/StringBuilder;

    #@16d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@170
    const-string/jumbo v2, " mContext="

    #@173
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@176
    move-result-object v1

    #@177
    iget-object v2, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    #@179
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@17c
    move-result-object v1

    #@17d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@180
    move-result-object v1

    #@181
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@184
    .line 3351
    new-instance v1, Ljava/lang/StringBuilder;

    #@186
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@189
    const-string/jumbo v2, " mNotifier="

    #@18c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18f
    move-result-object v1

    #@190
    iget-object v2, p0, Lcom/android/internal/telephony/Phone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    #@192
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@195
    move-result-object v1

    #@196
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@199
    move-result-object v1

    #@19a
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@19d
    .line 3352
    new-instance v1, Ljava/lang/StringBuilder;

    #@19f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1a2
    const-string/jumbo v2, " mSimulatedRadioControl="

    #@1a5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a8
    move-result-object v1

    #@1a9
    iget-object v2, p0, Lcom/android/internal/telephony/Phone;->mSimulatedRadioControl:Lcom/android/internal/telephony/test/SimulatedRadioControl;

    #@1ab
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1ae
    move-result-object v1

    #@1af
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b2
    move-result-object v1

    #@1b3
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1b6
    .line 3353
    new-instance v1, Ljava/lang/StringBuilder;

    #@1b8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1bb
    const-string/jumbo v2, " mUnitTestMode="

    #@1be
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c1
    move-result-object v1

    #@1c2
    iget-boolean v2, p0, Lcom/android/internal/telephony/Phone;->mUnitTestMode:Z

    #@1c4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1c7
    move-result-object v1

    #@1c8
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1cb
    move-result-object v1

    #@1cc
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1cf
    .line 3354
    new-instance v1, Ljava/lang/StringBuilder;

    #@1d1
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1d4
    const-string/jumbo v2, " isDnsCheckDisabled()="

    #@1d7
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1da
    move-result-object v1

    #@1db
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->isDnsCheckDisabled()Z

    #@1de
    move-result v2

    #@1df
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1e2
    move-result-object v1

    #@1e3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e6
    move-result-object v1

    #@1e7
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1ea
    .line 3355
    new-instance v1, Ljava/lang/StringBuilder;

    #@1ec
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1ef
    const-string/jumbo v2, " getUnitTestMode()="

    #@1f2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f5
    move-result-object v1

    #@1f6
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getUnitTestMode()Z

    #@1f9
    move-result v2

    #@1fa
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1fd
    move-result-object v1

    #@1fe
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@201
    move-result-object v1

    #@202
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@205
    .line 3356
    new-instance v1, Ljava/lang/StringBuilder;

    #@207
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@20a
    const-string/jumbo v2, " getState()="

    #@20d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@210
    move-result-object v1

    #@211
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    #@214
    move-result-object v2

    #@215
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@218
    move-result-object v1

    #@219
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21c
    move-result-object v1

    #@21d
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@220
    .line 3357
    new-instance v1, Ljava/lang/StringBuilder;

    #@222
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@225
    const-string/jumbo v2, " getIccSerialNumber()="

    #@228
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22b
    move-result-object v1

    #@22c
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getIccSerialNumber()Ljava/lang/String;

    #@22f
    move-result-object v2

    #@230
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@233
    move-result-object v1

    #@234
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@237
    move-result-object v1

    #@238
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@23b
    .line 3358
    new-instance v1, Ljava/lang/StringBuilder;

    #@23d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@240
    const-string/jumbo v2, " getIccRecordsLoaded()="

    #@243
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@246
    move-result-object v1

    #@247
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getIccRecordsLoaded()Z

    #@24a
    move-result v2

    #@24b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@24e
    move-result-object v1

    #@24f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@252
    move-result-object v1

    #@253
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@256
    .line 3359
    new-instance v1, Ljava/lang/StringBuilder;

    #@258
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@25b
    const-string/jumbo v2, " getMessageWaitingIndicator()="

    #@25e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@261
    move-result-object v1

    #@262
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getMessageWaitingIndicator()Z

    #@265
    move-result v2

    #@266
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@269
    move-result-object v1

    #@26a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26d
    move-result-object v1

    #@26e
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@271
    .line 3360
    new-instance v1, Ljava/lang/StringBuilder;

    #@273
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@276
    const-string/jumbo v2, " getCallForwardingIndicator()="

    #@279
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27c
    move-result-object v1

    #@27d
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getCallForwardingIndicator()Z

    #@280
    move-result v2

    #@281
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@284
    move-result-object v1

    #@285
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@288
    move-result-object v1

    #@289
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@28c
    .line 3361
    new-instance v1, Ljava/lang/StringBuilder;

    #@28e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@291
    const-string/jumbo v2, " isInEmergencyCall()="

    #@294
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@297
    move-result-object v1

    #@298
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->isInEmergencyCall()Z

    #@29b
    move-result v2

    #@29c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@29f
    move-result-object v1

    #@2a0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a3
    move-result-object v1

    #@2a4
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2a7
    .line 3362
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    #@2aa
    .line 3363
    new-instance v1, Ljava/lang/StringBuilder;

    #@2ac
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2af
    const-string/jumbo v2, " isInEcm()="

    #@2b2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b5
    move-result-object v1

    #@2b6
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->isInEcm()Z

    #@2b9
    move-result v2

    #@2ba
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@2bd
    move-result-object v1

    #@2be
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c1
    move-result-object v1

    #@2c2
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2c5
    .line 3364
    new-instance v1, Ljava/lang/StringBuilder;

    #@2c7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2ca
    const-string/jumbo v2, " getPhoneName()="

    #@2cd
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d0
    move-result-object v1

    #@2d1
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    #@2d4
    move-result-object v2

    #@2d5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d8
    move-result-object v1

    #@2d9
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2dc
    move-result-object v1

    #@2dd
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2e0
    .line 3365
    new-instance v1, Ljava/lang/StringBuilder;

    #@2e2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2e5
    const-string/jumbo v2, " getPhoneType()="

    #@2e8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2eb
    move-result-object v1

    #@2ec
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    #@2ef
    move-result v2

    #@2f0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2f3
    move-result-object v1

    #@2f4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f7
    move-result-object v1

    #@2f8
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2fb
    .line 3366
    new-instance v1, Ljava/lang/StringBuilder;

    #@2fd
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@300
    const-string/jumbo v2, " getVoiceMessageCount()="

    #@303
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@306
    move-result-object v1

    #@307
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getVoiceMessageCount()I

    #@30a
    move-result v2

    #@30b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@30e
    move-result-object v1

    #@30f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@312
    move-result-object v1

    #@313
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@316
    .line 3367
    new-instance v1, Ljava/lang/StringBuilder;

    #@318
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@31b
    const-string/jumbo v2, " getActiveApnTypes()="

    #@31e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@321
    move-result-object v1

    #@322
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getActiveApnTypes()[Ljava/lang/String;

    #@325
    move-result-object v2

    #@326
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@329
    move-result-object v1

    #@32a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32d
    move-result-object v1

    #@32e
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@331
    .line 3368
    new-instance v1, Ljava/lang/StringBuilder;

    #@333
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@336
    const-string/jumbo v2, " isDataConnectivityPossible()="

    #@339
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33c
    move-result-object v1

    #@33d
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->isDataConnectivityPossible()Z

    #@340
    move-result v2

    #@341
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@344
    move-result-object v1

    #@345
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@348
    move-result-object v1

    #@349
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@34c
    .line 3369
    new-instance v1, Ljava/lang/StringBuilder;

    #@34e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@351
    const-string/jumbo v2, " needsOtaServiceProvisioning="

    #@354
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@357
    move-result-object v1

    #@358
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->needsOtaServiceProvisioning()Z

    #@35b
    move-result v2

    #@35c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@35f
    move-result-object v1

    #@360
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@363
    move-result-object v1

    #@364
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@367
    .line 3370
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    #@36a
    .line 3371
    const-string/jumbo v1, "++++++++++++++++++++++++++++++++"

    #@36d
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@370
    .line 3373
    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    #@372
    if-eqz v1, :cond_0

    #@374
    .line 3375
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    #@376
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@379
    .line 3380
    :goto_0
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    #@37c
    .line 3381
    const-string/jumbo v1, "++++++++++++++++++++++++++++++++"

    #@37f
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@382
    .line 3384
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@384
    if-eqz v1, :cond_1

    #@386
    .line 3386
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@388
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    #@38b
    .line 3391
    :goto_1
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    #@38e
    .line 3392
    const-string/jumbo v1, "++++++++++++++++++++++++++++++++"

    #@391
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@394
    .line 3395
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    #@397
    move-result-object v1

    #@398
    if-eqz v1, :cond_2

    #@39a
    .line 3397
    :try_start_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    #@39d
    move-result-object v1

    #@39e
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/ServiceStateTracker;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    #@3a1
    .line 3402
    :goto_2
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    #@3a4
    .line 3403
    const-string/jumbo v1, "++++++++++++++++++++++++++++++++"

    #@3a7
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3aa
    .line 3406
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    #@3ad
    move-result-object v1

    #@3ae
    if-eqz v1, :cond_3

    #@3b0
    .line 3408
    :try_start_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    #@3b3
    move-result-object v1

    #@3b4
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/CallTracker;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    #@3b7
    .line 3413
    :goto_3
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    #@3ba
    .line 3414
    const-string/jumbo v1, "++++++++++++++++++++++++++++++++"

    #@3bd
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3c0
    .line 3417
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@3c2
    if-eqz v1, :cond_4

    #@3c4
    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@3c6
    instance-of v1, v1, Lcom/android/internal/telephony/RIL;

    #@3c8
    if-eqz v1, :cond_4

    #@3ca
    .line 3419
    :try_start_4
    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@3cc
    check-cast v1, Lcom/android/internal/telephony/RIL;

    #@3ce
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/RIL;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    #@3d1
    .line 3424
    :goto_4
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    #@3d4
    .line 3425
    const-string/jumbo v1, "++++++++++++++++++++++++++++++++"

    #@3d7
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3da
    .line 3334
    :cond_4
    return-void

    #@3db
    .line 3376
    :catch_0
    move-exception v0

    #@3dc
    .line 3377
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    #@3df
    goto :goto_0

    #@3e0
    .line 3387
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    #@3e1
    .line 3388
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    #@3e4
    goto :goto_1

    #@3e5
    .line 3398
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    #@3e6
    .line 3399
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    #@3e9
    goto :goto_2

    #@3ea
    .line 3409
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v0

    #@3eb
    .line 3410
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    #@3ee
    goto :goto_3

    #@3ef
    .line 3420
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v0

    #@3f0
    .line 3421
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    #@3f3
    goto :goto_4
.end method

.method public enableEnhancedVoicePrivacy(ZLandroid/os/Message;)V
    .locals 0
    .param p1, "enable"    # Z
    .param p2, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1891
    return-void
.end method

.method public exitEmergencyCallbackMode()V
    .locals 0

    #@0
    .prologue
    .line 2281
    return-void
.end method

.method public getActionAttached()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 375
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mActionAttached:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getActionDetached()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 364
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mActionDetached:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getActiveApnHost(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "apnType"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2602
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getActiveApnString(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getActiveApnTypes()[Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 2581
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 2582
    return-object v1

    #@6
    .line 2585
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@8
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getActiveApnTypes()[Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public getAllCellInfo()Ljava/util/List;
    .locals 2
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
    .line 1583
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {v1}, Lcom/android/internal/telephony/ServiceStateTracker;->getAllCellInfo()Ljava/util/List;

    #@7
    move-result-object v0

    #@8
    .line 1584
    .local v0, "cellInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/Phone;->privatizeCellInfoList(Ljava/util/List;)Ljava/util/List;

    #@b
    move-result-object v1

    #@c
    return-object v1
.end method

.method public getAllowedCarriers(Landroid/os/Message;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 3210
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getAllowedCarriers(Landroid/os/Message;)V

    #@5
    .line 3209
    return-void
.end method

.method public getCallForwardingIndicator()Z
    .locals 6

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 1717
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    #@5
    move-result v4

    #@6
    const/4 v5, 0x2

    #@7
    if-ne v4, v5, :cond_0

    #@9
    .line 1718
    const-string/jumbo v2, "Phone"

    #@c
    const-string/jumbo v4, "getCallForwardingIndicator: not possible in CDMA"

    #@f
    invoke-static {v2, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@12
    .line 1719
    return v3

    #@13
    .line 1721
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/Phone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    #@15
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@18
    move-result-object v1

    #@19
    check-cast v1, Lcom/android/internal/telephony/uicc/IccRecords;

    #@1b
    .line 1722
    .local v1, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    const/4 v0, -0x1

    #@1c
    .line 1723
    .local v0, "callForwardingIndicator":I
    if-eqz v1, :cond_1

    #@1e
    .line 1724
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccRecords;->getVoiceCallForwardingFlag()I

    #@21
    move-result v0

    #@22
    .line 1726
    :cond_1
    const/4 v4, -0x1

    #@23
    if-ne v0, v4, :cond_2

    #@25
    .line 1727
    invoke-direct {p0}, Lcom/android/internal/telephony/Phone;->getCallForwardingIndicatorFromSharedPref()I

    #@28
    move-result v0

    #@29
    .line 1729
    :cond_2
    if-ne v0, v2, :cond_3

    #@2b
    :goto_0
    return v2

    #@2c
    :cond_3
    move v2, v3

    #@2d
    goto :goto_0
.end method

.method public getCallTracker()Lcom/android/internal/telephony/CallTracker;
    .locals 1

    #@0
    .prologue
    .line 1522
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getCarrierSignalAgent()Lcom/android/internal/telephony/CarrierSignalAgent;
    .locals 1

    #@0
    .prologue
    .line 1733
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mCarrierSignalAgent:Lcom/android/internal/telephony/CarrierSignalAgent;

    #@2
    return-object v0
.end method

.method public getCdmaEriIconIndex()I
    .locals 1

    #@0
    .prologue
    .line 2175
    const/4 v0, -0x1

    #@1
    return v0
.end method

.method public getCdmaEriIconMode()I
    .locals 1

    #@0
    .prologue
    .line 2184
    const/4 v0, -0x1

    #@1
    return v0
.end method

.method public getCdmaEriText()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 2191
    const-string/jumbo v0, "GSM nw, no ERI"

    #@3
    return-object v0
.end method

.method public getCdmaMin()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 2198
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getCdmaPrlVersion()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 2214
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    #@0
    .prologue
    .line 700
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method public getCurrentSubscriberUris()[Landroid/net/Uri;
    .locals 1

    #@0
    .prologue
    .line 3331
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getCurrentUiccAppType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    .locals 2

    #@0
    .prologue
    .line 1533
    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    #@2
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@8
    .line 1534
    .local v0, "currentApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v0, :cond_0

    #@a
    .line 1535
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    #@d
    move-result-object v1

    #@e
    return-object v1

    #@f
    .line 1537
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    #@11
    return-object v1
.end method

.method public getDataConnectionState()Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 1

    #@0
    .prologue
    .line 2750
    const-string/jumbo v0, "default"

    #@3
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/Phone;->getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public getDefaultPhone()Lcom/android/internal/telephony/Phone;
    .locals 0

    #@0
    .prologue
    .line 3309
    return-object p0
.end method

.method public getEnhancedVoicePrivacy(Landroid/os/Message;)V
    .locals 0
    .param p1, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1899
    return-void
.end method

.method public getFullIccSerialNumber()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1562
    iget-object v2, p0, Lcom/android/internal/telephony/Phone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    #@3
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    #@9
    .line 1563
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    #@b
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getFullIccId()Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    :cond_0
    return-object v1
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 0

    #@0
    .prologue
    .line 1500
    return-object p0
.end method

.method public getHandoverConnection()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 641
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getIccCard()Lcom/android/internal/telephony/IccCard;
    .locals 1

    #@0
    .prologue
    .line 1545
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;
    .locals 5

    #@0
    .prologue
    .line 1482
    iget-object v2, p0, Lcom/android/internal/telephony/Phone;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    #@2
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    check-cast v1, Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@8
    .line 1485
    .local v1, "uiccApplication":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-nez v1, :cond_0

    #@a
    .line 1486
    const-string/jumbo v2, "Phone"

    #@d
    const-string/jumbo v3, "getIccFileHandler: uiccApplication == null, return null"

    #@10
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@13
    .line 1487
    const/4 v0, 0x0

    #@14
    .line 1492
    :goto_0
    const-string/jumbo v2, "Phone"

    #@17
    new-instance v3, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v4, "getIccFileHandler: fh="

    #@1f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v3

    #@23
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v3

    #@27
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v3

    #@2b
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@2e
    .line 1493
    return-object v0

    #@2f
    .line 1489
    :cond_0
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@32
    move-result-object v0

    #@33
    .local v0, "fh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    goto :goto_0
.end method

.method public getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;
    .locals 1

    #@0
    .prologue
    .line 333
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    #@8
    return-object v0
.end method

.method public getIccRecordsLoaded()Z
    .locals 2

    #@0
    .prologue
    .line 1575
    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    #@2
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    #@8
    .line 1576
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    #@a
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getRecordsLoaded()Z

    #@d
    move-result v1

    #@e
    :goto_0
    return v1

    #@f
    :cond_0
    const/4 v1, 0x0

    #@10
    goto :goto_0
.end method

.method public getIccSerialNumber()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1554
    iget-object v2, p0, Lcom/android/internal/telephony/Phone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    #@3
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    #@9
    .line 1555
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    #@b
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getIccId()Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    :cond_0
    return-object v1
.end method

.method public getIccSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;
    .locals 1

    #@0
    .prologue
    .line 3255
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getImsPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    #@0
    .prologue
    .line 2824
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    #@2
    return-object v0
.end method

.method public getIsimRecords()Lcom/android/internal/telephony/uicc/IsimRecords;
    .locals 2

    #@0
    .prologue
    .line 2731
    const-string/jumbo v0, "Phone"

    #@3
    const-string/jumbo v1, "getIsimRecords() is only supported on LTE devices"

    #@6
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 2732
    const/4 v0, 0x0

    #@a
    return-object v0
.end method

.method public getLceStatus()I
    .locals 1

    #@0
    .prologue
    .line 3180
    iget v0, p0, Lcom/android/internal/telephony/Phone;->mLceStatus:I

    #@2
    return v0
.end method

.method public getLinkProperties(Ljava/lang/String;)Landroid/net/LinkProperties;
    .locals 1
    .param p1, "apnType"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2609
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getLinkProperties(Ljava/lang/String;)Landroid/net/LinkProperties;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getLocaleFromSimAndCarrierPrefs()Ljava/util/Locale;
    .locals 3

    #@0
    .prologue
    .line 3218
    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    #@2
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    #@8
    .line 3219
    .local v0, "records":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    #@a
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getSimLanguage()Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    if-eqz v1, :cond_0

    #@10
    .line 3220
    new-instance v1, Ljava/util/Locale;

    #@12
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getSimLanguage()Ljava/lang/String;

    #@15
    move-result-object v2

    #@16
    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    #@19
    return-object v1

    #@1a
    .line 3223
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    #@1c
    invoke-static {v1}, Lcom/android/internal/telephony/Phone;->getLocaleFromCarrierProperties(Landroid/content/Context;)Ljava/util/Locale;

    #@1f
    move-result-object v1

    #@20
    return-object v1
.end method

.method public getLteOnCdmaMode()I
    .locals 1

    #@0
    .prologue
    .line 2774
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2
    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getLteOnCdmaMode()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getMessageWaitingIndicator()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1641
    iget v1, p0, Lcom/android/internal/telephony/Phone;->mVmCount:I

    #@3
    if-eqz v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    return v0
.end method

.method public getModemActivityInfo(Landroid/os/Message;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 3187
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getModemActivityInfo(Landroid/os/Message;)V

    #@5
    .line 3186
    return-void
.end method

.method public getModemUuId()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 3078
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getRadioCapability()Lcom/android/internal/telephony/RadioCapability;

    #@3
    move-result-object v0

    #@4
    .line 3079
    .local v0, "rc":Lcom/android/internal/telephony/RadioCapability;
    if-nez v0, :cond_0

    #@6
    const-string/jumbo v1, ""

    #@9
    :goto_0
    return-object v1

    #@a
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/RadioCapability;->getLogicalModemUuid()Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    goto :goto_0
.end method

.method public getMsisdn()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 2741
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getNai()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 353
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getNetworkCapabilities(Ljava/lang/String;)Landroid/net/NetworkCapabilities;
    .locals 1
    .param p1, "apnType"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2616
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getNetworkCapabilities(Ljava/lang/String;)Landroid/net/NetworkCapabilities;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getNetworkSelectionMode(Landroid/os/Message;)V
    .locals 1
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1156
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getNetworkSelectionMode(Landroid/os/Message;)V

    #@5
    .line 1155
    return-void
.end method

.method public getPcscfAddress(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "apnType"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2811
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getPcscfAddress(Ljava/lang/String;)[Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getPhoneId()I
    .locals 1

    #@0
    .prologue
    .line 2887
    iget v0, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    #@2
    return v0
.end method

.method public getPhoneName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 342
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public abstract getPhoneType()I
.end method

.method public getPostDialHandler()Landroid/os/Registrant;
    .locals 1

    #@0
    .prologue
    .line 2273
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mPostDialHandler:Landroid/os/Registrant;

    #@2
    return-object v0
.end method

.method public getPreferredNetworkType(Landroid/os/Message;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1824
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getPreferredNetworkType(Landroid/os/Message;)V

    #@5
    .line 1823
    return-void
.end method

.method public getRadioAccessFamily()I
    .locals 2

    #@0
    .prologue
    .line 3068
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getRadioCapability()Lcom/android/internal/telephony/RadioCapability;

    #@3
    move-result-object v0

    #@4
    .line 3069
    .local v0, "rc":Lcom/android/internal/telephony/RadioCapability;
    if-nez v0, :cond_0

    #@6
    const/4 v1, 0x1

    #@7
    :goto_0
    return v1

    #@8
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/RadioCapability;->getRadioAccessFamily()I

    #@b
    move-result v1

    #@c
    goto :goto_0
.end method

.method public getRadioCapability()Lcom/android/internal/telephony/RadioCapability;
    .locals 1

    #@0
    .prologue
    .line 3088
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mRadioCapability:Ljava/util/concurrent/atomic/AtomicReference;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/internal/telephony/RadioCapability;

    #@8
    return-object v0
.end method

.method public getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;
    .locals 1

    #@0
    .prologue
    .line 1515
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getSignalStrength()Landroid/telephony/SignalStrength;
    .locals 2

    #@0
    .prologue
    .line 1756
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    #@3
    move-result-object v0

    #@4
    .line 1757
    .local v0, "sst":Lcom/android/internal/telephony/ServiceStateTracker;
    if-nez v0, :cond_0

    #@6
    .line 1758
    new-instance v1, Landroid/telephony/SignalStrength;

    #@8
    invoke-direct {v1}, Landroid/telephony/SignalStrength;-><init>()V

    #@b
    return-object v1

    #@c
    .line 1760
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->getSignalStrength()Landroid/telephony/SignalStrength;

    #@f
    move-result-object v1

    #@10
    return-object v1
.end method

.method public getSimulatedRadioControl()Lcom/android/internal/telephony/test/SimulatedRadioControl;
    .locals 1

    #@0
    .prologue
    .line 1425
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mSimulatedRadioControl:Lcom/android/internal/telephony/test/SimulatedRadioControl;

    #@2
    return-object v0
.end method

.method public getSmscAddress(Landroid/os/Message;)V
    .locals 1
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1833
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getSmscAddress(Landroid/os/Message;)V

    #@5
    .line 1832
    return-void
.end method

.method public abstract getState()Lcom/android/internal/telephony/PhoneConstants$State;
.end method

.method protected getStoredVoiceMessageCount()I
    .locals 11

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 2130
    const/4 v1, 0x0

    #@2
    .line 2131
    .local v1, "countVoiceMessages":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    #@5
    move-result v6

    #@6
    .line 2132
    .local v6, "subId":I
    invoke-static {v6}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    #@9
    move-result v8

    #@a
    if-eqz v8, :cond_3

    #@c
    .line 2133
    const/4 v4, -0x2

    #@d
    .line 2134
    .local v4, "invalidCount":I
    iget-object v8, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    #@f
    invoke-static {v8}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    #@12
    move-result-object v5

    #@13
    .line 2135
    .local v5, "sp":Landroid/content/SharedPreferences;
    new-instance v8, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v9, "vm_count_key"

    #@1b
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v8

    #@1f
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@22
    move-result-object v8

    #@23
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v8

    #@27
    invoke-interface {v5, v8, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    #@2a
    move-result v0

    #@2b
    .line 2133
    .local v0, "countFromSP":I
    const/4 v8, -0x2

    #@2c
    .line 2136
    if-eq v0, v8, :cond_1

    #@2e
    .line 2137
    move v1, v0

    #@2f
    .line 2138
    const-string/jumbo v8, "Phone"

    #@32
    new-instance v9, Ljava/lang/StringBuilder;

    #@34
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@37
    const-string/jumbo v10, "getStoredVoiceMessageCount: from preference for subId "

    #@3a
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v9

    #@3e
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@41
    move-result-object v9

    #@42
    .line 2139
    const-string/jumbo v10, "= "

    #@45
    .line 2138
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v9

    #@49
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v9

    #@4d
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50
    move-result-object v9

    #@51
    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@54
    .line 2168
    .end local v0    # "countFromSP":I
    .end local v4    # "invalidCount":I
    .end local v5    # "sp":Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    return v1

    #@55
    .line 2143
    .restart local v0    # "countFromSP":I
    .restart local v4    # "invalidCount":I
    .restart local v5    # "sp":Landroid/content/SharedPreferences;
    :cond_1
    const-string/jumbo v8, "vm_id_key"

    #@58
    invoke-interface {v5, v8, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@5b
    move-result-object v7

    #@5c
    .line 2144
    .local v7, "subscriberId":Ljava/lang/String;
    if-eqz v7, :cond_0

    #@5e
    .line 2145
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubscriberId()Ljava/lang/String;

    #@61
    move-result-object v2

    #@62
    .line 2147
    .local v2, "currentSubscriberId":Ljava/lang/String;
    if-eqz v2, :cond_2

    #@64
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@67
    move-result v8

    #@68
    if-eqz v8, :cond_2

    #@6a
    .line 2149
    const-string/jumbo v8, "vm_count_key"

    #@6d
    const/4 v9, 0x0

    #@6e
    invoke-interface {v5, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    #@71
    move-result v1

    #@72
    .line 2150
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/Phone;->setVoiceMessageCount(I)V

    #@75
    .line 2151
    const-string/jumbo v8, "Phone"

    #@78
    new-instance v9, Ljava/lang/StringBuilder;

    #@7a
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@7d
    const-string/jumbo v10, "getStoredVoiceMessageCount: from preference = "

    #@80
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v9

    #@84
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@87
    move-result-object v9

    #@88
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8b
    move-result-object v9

    #@8c
    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@8f
    .line 2159
    :goto_1
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    #@92
    move-result-object v3

    #@93
    .line 2160
    .local v3, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v8, "vm_id_key"

    #@96
    invoke-interface {v3, v8}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    #@99
    .line 2161
    const-string/jumbo v8, "vm_count_key"

    #@9c
    invoke-interface {v3, v8}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    #@9f
    .line 2162
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    #@a2
    goto :goto_0

    #@a3
    .line 2154
    .end local v3    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_2
    const-string/jumbo v8, "Phone"

    #@a6
    const-string/jumbo v9, "getStoredVoiceMessageCount: returning 0 as count for matching subscriberId not found"

    #@a9
    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@ac
    goto :goto_1

    #@ad
    .line 2166
    .end local v0    # "countFromSP":I
    .end local v2    # "currentSubscriberId":Ljava/lang/String;
    .end local v4    # "invalidCount":I
    .end local v5    # "sp":Landroid/content/SharedPreferences;
    .end local v7    # "subscriberId":Ljava/lang/String;
    :cond_3
    const-string/jumbo v8, "Phone"

    #@b0
    new-instance v9, Ljava/lang/StringBuilder;

    #@b2
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@b5
    const-string/jumbo v10, "getStoredVoiceMessageCount: invalid subId "

    #@b8
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bb
    move-result-object v9

    #@bc
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@bf
    move-result-object v9

    #@c0
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c3
    move-result-object v9

    #@c4
    invoke-static {v8, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@c7
    goto :goto_0
.end method

.method public getSubId()I
    .locals 2

    #@0
    .prologue
    .line 2880
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    #@3
    move-result-object v0

    #@4
    iget v1, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    #@6
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdUsingPhoneId(I)I

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "defValue"    # Ljava/lang/String;

    #@0
    .prologue
    .line 394
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getUnitTestMode()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 395
    const/4 v0, 0x0

    #@7
    return-object v0

    #@8
    .line 397
    :cond_0
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;
    .locals 2

    #@0
    .prologue
    .line 2803
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    #@2
    iget v1, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    #@4
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getUnitTestMode()Z
    .locals 1

    #@0
    .prologue
    .line 1314
    iget-boolean v0, p0, Lcom/android/internal/telephony/Phone;->mUnitTestMode:Z

    #@2
    return v0
.end method

.method public getUsimServiceTable()Lcom/android/internal/telephony/uicc/UsimServiceTable;
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 2794
    iget-object v2, p0, Lcom/android/internal/telephony/Phone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    #@3
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    #@9
    .line 2795
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    #@b
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getUsimServiceTable()Lcom/android/internal/telephony/uicc/UsimServiceTable;

    #@e
    move-result-object v1

    #@f
    :cond_0
    return-object v1
.end method

.method public getVoiceMessageCount()I
    .locals 1

    #@0
    .prologue
    .line 2105
    iget v0, p0, Lcom/android/internal/telephony/Phone;->mVmCount:I

    #@2
    return v0
.end method

.method public getVoicePhoneServiceState()I
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 2895
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    #@3
    .line 2896
    .local v0, "imsPhone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_0

    #@5
    .line 2897
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    #@c
    move-result v1

    #@d
    if-nez v1, :cond_0

    #@f
    .line 2898
    return v2

    #@10
    .line 2900
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    #@17
    move-result v1

    #@18
    return v1
.end method

.method public getVtDataUsage()J
    .locals 2

    #@0
    .prologue
    .line 3313
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    #@2
    if-nez v0, :cond_0

    #@4
    const-wide/16 v0, 0x0

    #@6
    return-wide v0

    #@7
    .line 3314
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    #@9
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getVtDataUsage()J

    #@c
    move-result-wide v0

    #@d
    return-wide v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 552
    iget v6, p1, Landroid/os/Message;->what:I

    #@3
    packed-switch v6, :pswitch_data_0

    #@6
    .line 560
    iget v6, p1, Landroid/os/Message;->what:I

    #@8
    sparse-switch v6, :sswitch_data_0

    #@b
    .line 636
    new-instance v6, Ljava/lang/RuntimeException;

    #@d
    const-string/jumbo v7, "unexpected event not handled"

    #@10
    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@13
    throw v6

    #@14
    .line 556
    :pswitch_0
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@16
    check-cast v6, Landroid/os/AsyncResult;

    #@18
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/Phone;->handleSetSelectNetwork(Landroid/os/AsyncResult;)V

    #@1b
    .line 557
    return-void

    #@1c
    .line 562
    :sswitch_0
    const-string/jumbo v6, "Phone"

    #@1f
    new-instance v7, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string/jumbo v8, "Event EVENT_CALL_RING Received state="

    #@27
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v7

    #@2b
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    #@2e
    move-result-object v8

    #@2f
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v7

    #@33
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v7

    #@37
    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@3a
    .line 563
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@3c
    check-cast v0, Landroid/os/AsyncResult;

    #@3e
    .line 564
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@40
    if-nez v6, :cond_1

    #@42
    .line 565
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    #@45
    move-result-object v4

    #@46
    .line 566
    .local v4, "state":Lcom/android/internal/telephony/PhoneConstants$State;
    iget-boolean v6, p0, Lcom/android/internal/telephony/Phone;->mDoesRilSendMultipleCallRing:Z

    #@48
    if-nez v6, :cond_2

    #@4a
    .line 567
    sget-object v6, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    #@4c
    if-eq v4, v6, :cond_0

    #@4e
    .line 568
    sget-object v6, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    #@50
    if-ne v4, v6, :cond_2

    #@52
    .line 569
    :cond_0
    iget v6, p0, Lcom/android/internal/telephony/Phone;->mCallRingContinueToken:I

    #@54
    add-int/lit8 v6, v6, 0x1

    #@56
    iput v6, p0, Lcom/android/internal/telephony/Phone;->mCallRingContinueToken:I

    #@58
    .line 570
    iget v6, p0, Lcom/android/internal/telephony/Phone;->mCallRingContinueToken:I

    #@5a
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/Phone;->sendIncomingCallRingNotification(I)V

    #@5d
    .line 546
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v4    # "state":Lcom/android/internal/telephony/PhoneConstants$State;
    :cond_1
    :goto_0
    return-void

    #@5e
    .line 572
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    .restart local v4    # "state":Lcom/android/internal/telephony/PhoneConstants$State;
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/Phone;->notifyIncomingRing()V

    #@61
    goto :goto_0

    #@62
    .line 578
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v4    # "state":Lcom/android/internal/telephony/PhoneConstants$State;
    :sswitch_1
    const-string/jumbo v6, "Phone"

    #@65
    new-instance v7, Ljava/lang/StringBuilder;

    #@67
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@6a
    const-string/jumbo v8, "Event EVENT_CALL_RING_CONTINUE Received state="

    #@6d
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v7

    #@71
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    #@74
    move-result-object v8

    #@75
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v7

    #@79
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7c
    move-result-object v7

    #@7d
    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@80
    .line 579
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    #@83
    move-result-object v6

    #@84
    sget-object v7, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    #@86
    if-ne v6, v7, :cond_1

    #@88
    .line 580
    iget v6, p1, Landroid/os/Message;->arg1:I

    #@8a
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/Phone;->sendIncomingCallRingNotification(I)V

    #@8d
    goto :goto_0

    #@8e
    .line 585
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->onUpdateIccAvailability()V

    #@91
    goto :goto_0

    #@92
    .line 589
    :sswitch_3
    const-string/jumbo v6, "Phone"

    #@95
    const-string/jumbo v7, "Event EVENT_INITIATE_SILENT_REDIAL Received"

    #@98
    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@9b
    .line 590
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@9d
    check-cast v0, Landroid/os/AsyncResult;

    #@9f
    .line 591
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@a1
    if-nez v6, :cond_1

    #@a3
    iget-object v6, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@a5
    if-eqz v6, :cond_1

    #@a7
    .line 592
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@a9
    check-cast v2, Ljava/lang/String;

    #@ab
    .line 593
    .local v2, "dialString":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@ae
    move-result v6

    #@af
    if-eqz v6, :cond_3

    #@b1
    return-void

    #@b2
    .line 595
    :cond_3
    const/4 v6, 0x0

    #@b3
    const/4 v7, 0x0

    #@b4
    const/4 v8, 0x0

    #@b5
    :try_start_0
    invoke-virtual {p0, v2, v6, v7, v8}, Lcom/android/internal/telephony/Phone;->dialInternal(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;ILandroid/os/Bundle;)Lcom/android/internal/telephony/Connection;
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    #@b8
    goto :goto_0

    #@b9
    .line 596
    :catch_0
    move-exception v3

    #@ba
    .line 597
    .local v3, "e":Lcom/android/internal/telephony/CallStateException;
    const-string/jumbo v6, "Phone"

    #@bd
    new-instance v7, Ljava/lang/StringBuilder;

    #@bf
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@c2
    const-string/jumbo v8, "silent redial failed: "

    #@c5
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c8
    move-result-object v7

    #@c9
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@cc
    move-result-object v7

    #@cd
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d0
    move-result-object v7

    #@d1
    invoke-static {v6, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@d4
    goto :goto_0

    #@d5
    .line 603
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "dialString":Ljava/lang/String;
    .end local v3    # "e":Lcom/android/internal/telephony/CallStateException;
    :sswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@d7
    check-cast v0, Landroid/os/AsyncResult;

    #@d9
    .line 604
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@db
    if-nez v6, :cond_4

    #@dd
    .line 605
    iget-object v6, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@df
    check-cast v6, [I

    #@e1
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/Phone;->handleSrvccStateChanged([I)V

    #@e4
    goto/16 :goto_0

    #@e6
    .line 607
    :cond_4
    const-string/jumbo v6, "Phone"

    #@e9
    new-instance v7, Ljava/lang/StringBuilder;

    #@eb
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@ee
    const-string/jumbo v8, "Srvcc exception: "

    #@f1
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f4
    move-result-object v7

    #@f5
    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@f7
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@fa
    move-result-object v7

    #@fb
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@fe
    move-result-object v7

    #@ff
    invoke-static {v6, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@102
    goto/16 :goto_0

    #@104
    .line 612
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@106
    check-cast v0, Landroid/os/AsyncResult;

    #@108
    .line 613
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@10a
    if-nez v6, :cond_5

    #@10c
    .line 614
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@10e
    check-cast v1, [B

    #@110
    .line 615
    .local v1, "data":[B
    iget-object v6, p0, Lcom/android/internal/telephony/Phone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    #@112
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    #@115
    move-result v7

    #@116
    invoke-interface {v6, v7, v1}, Lcom/android/internal/telephony/PhoneNotifier;->notifyOemHookRawEventForSubscriber(I[B)V

    #@119
    goto/16 :goto_0

    #@11b
    .line 617
    .end local v1    # "data":[B
    :cond_5
    const-string/jumbo v6, "Phone"

    #@11e
    new-instance v7, Ljava/lang/StringBuilder;

    #@120
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@123
    const-string/jumbo v8, "OEM hook raw exception: "

    #@126
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@129
    move-result-object v7

    #@12a
    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@12c
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@12f
    move-result-object v7

    #@130
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@133
    move-result-object v7

    #@134
    invoke-static {v6, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@137
    goto/16 :goto_0

    #@139
    .line 622
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@13b
    check-cast v0, Landroid/os/AsyncResult;

    #@13d
    .line 623
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@13f
    if-eqz v6, :cond_6

    #@141
    .line 624
    const-string/jumbo v6, "Phone"

    #@144
    new-instance v7, Ljava/lang/StringBuilder;

    #@146
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@149
    const-string/jumbo v8, "config LCE service failed: "

    #@14c
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14f
    move-result-object v7

    #@150
    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@152
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@155
    move-result-object v7

    #@156
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@159
    move-result-object v7

    #@15a
    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@15d
    goto/16 :goto_0

    #@15f
    .line 626
    :cond_6
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@161
    check-cast v5, Ljava/util/ArrayList;

    #@163
    .line 627
    .local v5, "statusInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@166
    move-result-object v6

    #@167
    check-cast v6, Ljava/lang/Integer;

    #@169
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    #@16c
    move-result v6

    #@16d
    iput v6, p0, Lcom/android/internal/telephony/Phone;->mLceStatus:I

    #@16f
    goto/16 :goto_0

    #@171
    .line 632
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v5    # "statusInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_7
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/Phone;->onCheckForNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    #@174
    goto/16 :goto_0

    #@176
    .line 552
    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
        :pswitch_0
    .end packed-switch

    #@17e
    .line 560
    :sswitch_data_0
    .sparse-switch
        0xe -> :sswitch_0
        0xf -> :sswitch_1
        0x1e -> :sswitch_2
        0x1f -> :sswitch_4
        0x20 -> :sswitch_3
        0x22 -> :sswitch_5
        0x25 -> :sswitch_6
        0x26 -> :sswitch_7
    .end sparse-switch
.end method

.method public hasMatchedTetherApnSetting()Z
    .locals 1

    #@0
    .prologue
    .line 2594
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->hasMatchedTetherApnSetting()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public invokeOemRilRequestRaw([BLandroid/os/Message;)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1938
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    #@5
    .line 1937
    return-void
.end method

.method public invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "strings"    # [Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1956
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    #@5
    .line 1955
    return-void
.end method

.method public isCspPlmnEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 2723
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public isDataConnectivityPossible()Z
    .locals 1

    #@0
    .prologue
    .line 2623
    const-string/jumbo v0, "default"

    #@3
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/Phone;->isDataConnectivityPossible(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public isDataConnectivityPossible(Ljava/lang/String;)Z
    .locals 1
    .param p1, "apnType"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2630
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 2631
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@6
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isDataPossible(Ljava/lang/String;)Z

    #@9
    move-result v0

    #@a
    .line 2630
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public isDnsCheckDisabled()Z
    .locals 1

    #@0
    .prologue
    .line 723
    iget-boolean v0, p0, Lcom/android/internal/telephony/Phone;->mDnsCheckDisabled:Z

    #@2
    return v0
.end method

.method public isImsRegistered()Z
    .locals 6

    #@0
    .prologue
    .line 2969
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    #@2
    .line 2970
    .local v0, "imsPhone":Lcom/android/internal/telephony/Phone;
    const/4 v1, 0x0

    #@3
    .line 2971
    .local v1, "isImsRegistered":Z
    if-eqz v0, :cond_1

    #@5
    .line 2972
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isImsRegistered()Z

    #@8
    move-result v1

    #@9
    .line 2979
    .end local v1    # "isImsRegistered":Z
    :cond_0
    :goto_0
    const-string/jumbo v3, "Phone"

    #@c
    new-instance v4, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v5, "isImsRegistered ="

    #@14
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v4

    #@18
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v4

    #@1c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v4

    #@20
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@23
    .line 2980
    return v1

    #@24
    .line 2974
    .restart local v1    # "isImsRegistered":Z
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    #@27
    move-result-object v2

    #@28
    .line 2975
    .local v2, "sst":Lcom/android/internal/telephony/ServiceStateTracker;
    if-eqz v2, :cond_0

    #@2a
    .line 2976
    invoke-virtual {v2}, Lcom/android/internal/telephony/ServiceStateTracker;->isImsRegistered()Z

    #@2d
    move-result v1

    #@2e
    .local v1, "isImsRegistered":Z
    goto :goto_0
.end method

.method public isImsUseEnabled()Z
    .locals 2

    #@0
    .prologue
    .line 3154
    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    #@2
    invoke-static {v1}, Lcom/android/ims/ImsManager;->isVolteEnabledByPlatform(Landroid/content/Context;)Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 3155
    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    #@a
    invoke-static {v1}, Lcom/android/ims/ImsManager;->isEnhanced4gLteModeSettingEnabledByUser(Landroid/content/Context;)Z

    #@d
    move-result v1

    #@e
    .line 3154
    if-nez v1, :cond_1

    #@10
    .line 3156
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    #@12
    invoke-static {v1}, Lcom/android/ims/ImsManager;->isWfcEnabledByPlatform(Landroid/content/Context;)Z

    #@15
    move-result v1

    #@16
    if-eqz v1, :cond_2

    #@18
    .line 3157
    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    #@1a
    invoke-static {v1}, Lcom/android/ims/ImsManager;->isWfcEnabledByUser(Landroid/content/Context;)Z

    #@1d
    move-result v1

    #@1e
    .line 3156
    if-eqz v1, :cond_2

    #@20
    .line 3158
    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    #@22
    invoke-static {v1}, Lcom/android/ims/ImsManager;->isNonTtyOrTtyOnVolteEnabled(Landroid/content/Context;)Z

    #@25
    move-result v0

    #@26
    .line 3159
    .local v0, "imsUseEnabled":Z
    :goto_0
    return v0

    #@27
    .line 3154
    .end local v0    # "imsUseEnabled":Z
    :cond_1
    const/4 v0, 0x1

    #@28
    goto :goto_0

    #@29
    .line 3156
    :cond_2
    const/4 v0, 0x0

    #@2a
    goto :goto_0
.end method

.method public isInEcm()Z
    .locals 1

    #@0
    .prologue
    .line 2063
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public isInEmergencyCall()Z
    .locals 1

    #@0
    .prologue
    .line 2054
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method protected isMatchGid(Ljava/lang/String;)Z
    .locals 4
    .param p1, "gid"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 3259
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getGroupIdLevel1()Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    .line 3260
    .local v0, "gid1":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@8
    move-result v1

    #@9
    .line 3261
    .local v1, "gidLength":I
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@c
    move-result v2

    #@d
    if-nez v2, :cond_0

    #@f
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@12
    move-result v2

    #@13
    if-lt v2, v1, :cond_0

    #@15
    .line 3262
    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@1c
    move-result v2

    #@1d
    .line 3261
    if-eqz v2, :cond_0

    #@1f
    .line 3263
    const/4 v2, 0x1

    #@20
    return v2

    #@21
    .line 3265
    :cond_0
    return v3
.end method

.method public isMccMncMarkedAsNonRoaming(Ljava/lang/String;)Z
    .locals 1
    .param p1, "mccMnc"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2950
    const-string/jumbo v0, "gsm_non_roaming_list_"

    #@3
    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/Phone;->getRoamingOverrideHelper(Ljava/lang/String;Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public isMccMncMarkedAsRoaming(Ljava/lang/String;)Z
    .locals 1
    .param p1, "mccMnc"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2946
    const-string/jumbo v0, "gsm_roaming_list_"

    #@3
    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/Phone;->getRoamingOverrideHelper(Ljava/lang/String;Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public isMinInfoReady()Z
    .locals 1

    #@0
    .prologue
    .line 2207
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public isOtaSpNumber(Ljava/lang/String;)Z
    .locals 1
    .param p1, "dialStr"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2330
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public isRadioAvailable()Z
    .locals 1

    #@0
    .prologue
    .line 3027
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2
    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isAvailable()Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public isRadioOn()Z
    .locals 1

    #@0
    .prologue
    .line 3034
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2
    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public isShuttingDown()Z
    .locals 1

    #@0
    .prologue
    .line 3048
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->isDeviceShuttingDown()Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public isSidMarkedAsNonRoaming(I)Z
    .locals 2
    .param p1, "SID"    # I

    #@0
    .prologue
    .line 2959
    const-string/jumbo v0, "cdma_non_roaming_list_"

    #@3
    .line 2960
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@6
    move-result-object v1

    #@7
    .line 2959
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/Phone;->getRoamingOverrideHelper(Ljava/lang/String;Ljava/lang/String;)Z

    #@a
    move-result v0

    #@b
    return v0
.end method

.method public isSidMarkedAsRoaming(I)Z
    .locals 2
    .param p1, "SID"    # I

    #@0
    .prologue
    .line 2954
    const-string/jumbo v0, "cdma_roaming_list_"

    #@3
    .line 2955
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@6
    move-result-object v1

    #@7
    .line 2954
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/Phone;->getRoamingOverrideHelper(Ljava/lang/String;Ljava/lang/String;)Z

    #@a
    move-result v0

    #@b
    return v0
.end method

.method public isUtEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 2831
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public isVideoCallPresent()Z
    .locals 4

    #@0
    .prologue
    .line 2084
    const/4 v0, 0x0

    #@1
    .line 2085
    .local v0, "isVideoCallActive":Z
    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 2086
    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    #@7
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    #@a
    move-result-object v1

    #@b
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/Phone;->isVideoCall(Lcom/android/internal/telephony/Call;)Z

    #@e
    move-result v1

    #@f
    if-nez v1, :cond_1

    #@11
    .line 2087
    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    #@13
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    #@16
    move-result-object v1

    #@17
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/Phone;->isVideoCall(Lcom/android/internal/telephony/Call;)Z

    #@1a
    move-result v1

    #@1b
    .line 2086
    if-nez v1, :cond_1

    #@1d
    .line 2088
    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    #@1f
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    #@22
    move-result-object v1

    #@23
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/Phone;->isVideoCall(Lcom/android/internal/telephony/Call;)Z

    #@26
    move-result v0

    #@27
    .line 2090
    .end local v0    # "isVideoCallActive":Z
    :cond_0
    :goto_0
    const-string/jumbo v1, "Phone"

    #@2a
    new-instance v2, Ljava/lang/StringBuilder;

    #@2c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@2f
    const-string/jumbo v3, "isVideoCallActive: "

    #@32
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v2

    #@36
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@39
    move-result-object v2

    #@3a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v2

    #@3e
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@41
    .line 2091
    return v0

    #@42
    .line 2086
    .restart local v0    # "isVideoCallActive":Z
    :cond_1
    const/4 v0, 0x1

    #@43
    goto :goto_0
.end method

.method public isVideoEnabled()Z
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 3168
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    #@3
    .line 3169
    .local v0, "imsPhone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_0

    #@5
    .line 3170
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    #@c
    move-result v1

    #@d
    if-nez v1, :cond_0

    #@f
    .line 3171
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isVideoEnabled()Z

    #@12
    move-result v1

    #@13
    return v1

    #@14
    .line 3173
    :cond_0
    return v2
.end method

.method public isVolteEnabled()Z
    .locals 5

    #@0
    .prologue
    .line 3000
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    #@2
    .line 3001
    .local v0, "imsPhone":Lcom/android/internal/telephony/Phone;
    const/4 v1, 0x0

    #@3
    .line 3002
    .local v1, "isVolteEnabled":Z
    if-eqz v0, :cond_0

    #@5
    .line 3003
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isVolteEnabled()Z

    #@8
    move-result v1

    #@9
    .line 3005
    .end local v1    # "isVolteEnabled":Z
    :cond_0
    const-string/jumbo v2, "Phone"

    #@c
    new-instance v3, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v4, "isImsRegistered ="

    #@14
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v3

    #@18
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v3

    #@1c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v3

    #@20
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@23
    .line 3006
    return v1
.end method

.method public isWifiCallingEnabled()Z
    .locals 5

    #@0
    .prologue
    .line 2987
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    #@2
    .line 2988
    .local v0, "imsPhone":Lcom/android/internal/telephony/Phone;
    const/4 v1, 0x0

    #@3
    .line 2989
    .local v1, "isWifiCallingEnabled":Z
    if-eqz v0, :cond_0

    #@5
    .line 2990
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isWifiCallingEnabled()Z

    #@8
    move-result v1

    #@9
    .line 2992
    .end local v1    # "isWifiCallingEnabled":Z
    :cond_0
    const-string/jumbo v2, "Phone"

    #@c
    new-instance v3, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v4, "isWifiCallingEnabled ="

    #@14
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v3

    #@18
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v3

    #@1c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v3

    #@20
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@23
    .line 2993
    return v1
.end method

.method protected migrate(Landroid/os/RegistrantList;Landroid/os/RegistrantList;)V
    .locals 6
    .param p1, "to"    # Landroid/os/RegistrantList;
    .param p2, "from"    # Landroid/os/RegistrantList;

    #@0
    .prologue
    .line 804
    invoke-virtual {p2}, Landroid/os/RegistrantList;->removeCleared()V

    #@3
    .line 805
    const/4 v0, 0x0

    #@4
    .local v0, "i":I
    invoke-virtual {p2}, Landroid/os/RegistrantList;->size()I

    #@7
    move-result v2

    #@8
    .local v2, "n":I
    :goto_0
    if-ge v0, v2, :cond_2

    #@a
    .line 806
    invoke-virtual {p2, v0}, Landroid/os/RegistrantList;->get(I)Ljava/lang/Object;

    #@d
    move-result-object v3

    #@e
    check-cast v3, Landroid/os/Registrant;

    #@10
    .line 807
    .local v3, "r":Landroid/os/Registrant;
    invoke-virtual {v3}, Landroid/os/Registrant;->messageForRegistrant()Landroid/os/Message;

    #@13
    move-result-object v1

    #@14
    .line 813
    .local v1, "msg":Landroid/os/Message;
    if-eqz v1, :cond_1

    #@16
    .line 814
    iget-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@18
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    #@1b
    move-result-object v5

    #@1c
    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getRegistrantIdentifier()Ljava/lang/Object;

    #@1f
    move-result-object v5

    #@20
    if-ne v4, v5, :cond_0

    #@22
    .line 805
    :goto_1
    add-int/lit8 v0, v0, 0x1

    #@24
    goto :goto_0

    #@25
    .line 817
    :cond_0
    invoke-virtual {p2, v0}, Landroid/os/RegistrantList;->get(I)Ljava/lang/Object;

    #@28
    move-result-object v4

    #@29
    check-cast v4, Landroid/os/Registrant;

    #@2b
    invoke-virtual {p1, v4}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    #@2e
    goto :goto_1

    #@2f
    .line 820
    :cond_1
    const-string/jumbo v4, "Phone"

    #@32
    const-string/jumbo v5, "msg is null"

    #@35
    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@38
    goto :goto_1

    #@39
    .line 803
    .end local v1    # "msg":Landroid/os/Message;
    .end local v3    # "r":Landroid/os/Registrant;
    :cond_2
    return-void
.end method

.method protected migrateFrom(Lcom/android/internal/telephony/Phone;)V
    .locals 2
    .param p1, "from"    # Lcom/android/internal/telephony/Phone;

    #@0
    .prologue
    .line 788
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mHandoverRegistrants:Landroid/os/RegistrantList;

    #@2
    iget-object v1, p1, Lcom/android/internal/telephony/Phone;->mHandoverRegistrants:Landroid/os/RegistrantList;

    #@4
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/Phone;->migrate(Landroid/os/RegistrantList;Landroid/os/RegistrantList;)V

    #@7
    .line 789
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mPreciseCallStateRegistrants:Landroid/os/RegistrantList;

    #@9
    iget-object v1, p1, Lcom/android/internal/telephony/Phone;->mPreciseCallStateRegistrants:Landroid/os/RegistrantList;

    #@b
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/Phone;->migrate(Landroid/os/RegistrantList;Landroid/os/RegistrantList;)V

    #@e
    .line 790
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mNewRingingConnectionRegistrants:Landroid/os/RegistrantList;

    #@10
    iget-object v1, p1, Lcom/android/internal/telephony/Phone;->mNewRingingConnectionRegistrants:Landroid/os/RegistrantList;

    #@12
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/Phone;->migrate(Landroid/os/RegistrantList;Landroid/os/RegistrantList;)V

    #@15
    .line 791
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mIncomingRingRegistrants:Landroid/os/RegistrantList;

    #@17
    iget-object v1, p1, Lcom/android/internal/telephony/Phone;->mIncomingRingRegistrants:Landroid/os/RegistrantList;

    #@19
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/Phone;->migrate(Landroid/os/RegistrantList;Landroid/os/RegistrantList;)V

    #@1c
    .line 792
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mDisconnectRegistrants:Landroid/os/RegistrantList;

    #@1e
    iget-object v1, p1, Lcom/android/internal/telephony/Phone;->mDisconnectRegistrants:Landroid/os/RegistrantList;

    #@20
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/Phone;->migrate(Landroid/os/RegistrantList;Landroid/os/RegistrantList;)V

    #@23
    .line 793
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mServiceStateRegistrants:Landroid/os/RegistrantList;

    #@25
    iget-object v1, p1, Lcom/android/internal/telephony/Phone;->mServiceStateRegistrants:Landroid/os/RegistrantList;

    #@27
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/Phone;->migrate(Landroid/os/RegistrantList;Landroid/os/RegistrantList;)V

    #@2a
    .line 794
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mMmiCompleteRegistrants:Landroid/os/RegistrantList;

    #@2c
    iget-object v1, p1, Lcom/android/internal/telephony/Phone;->mMmiCompleteRegistrants:Landroid/os/RegistrantList;

    #@2e
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/Phone;->migrate(Landroid/os/RegistrantList;Landroid/os/RegistrantList;)V

    #@31
    .line 795
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mMmiRegistrants:Landroid/os/RegistrantList;

    #@33
    iget-object v1, p1, Lcom/android/internal/telephony/Phone;->mMmiRegistrants:Landroid/os/RegistrantList;

    #@35
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/Phone;->migrate(Landroid/os/RegistrantList;Landroid/os/RegistrantList;)V

    #@38
    .line 796
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mUnknownConnectionRegistrants:Landroid/os/RegistrantList;

    #@3a
    iget-object v1, p1, Lcom/android/internal/telephony/Phone;->mUnknownConnectionRegistrants:Landroid/os/RegistrantList;

    #@3c
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/Phone;->migrate(Landroid/os/RegistrantList;Landroid/os/RegistrantList;)V

    #@3f
    .line 797
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mSuppServiceFailedRegistrants:Landroid/os/RegistrantList;

    #@41
    iget-object v1, p1, Lcom/android/internal/telephony/Phone;->mSuppServiceFailedRegistrants:Landroid/os/RegistrantList;

    #@43
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/Phone;->migrate(Landroid/os/RegistrantList;Landroid/os/RegistrantList;)V

    #@46
    .line 798
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->isInEmergencyCall()Z

    #@49
    move-result v0

    #@4a
    if-eqz v0, :cond_0

    #@4c
    .line 799
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->setIsInEmergencyCall()V

    #@4f
    .line 787
    :cond_0
    return-void
.end method

.method public needsOtaServiceProvisioning()Z
    .locals 1

    #@0
    .prologue
    .line 2321
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public notifyCallForwardingIndicator()V
    .locals 0

    #@0
    .prologue
    .line 2753
    return-void
.end method

.method public notifyCellInfo(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 2043
    .local p1, "cellInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    #@2
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/Phone;->privatizeCellInfoList(Ljava/util/List;)Ljava/util/List;

    #@5
    move-result-object v1

    #@6
    invoke-interface {v0, p0, v1}, Lcom/android/internal/telephony/PhoneNotifier;->notifyCellInfo(Lcom/android/internal/telephony/Phone;Ljava/util/List;)V

    #@9
    .line 2042
    return-void
.end method

.method public notifyDataActivity()V
    .locals 1

    #@0
    .prologue
    .line 2006
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    #@2
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifyDataActivity(Lcom/android/internal/telephony/Phone;)V

    #@5
    .line 2005
    return-void
.end method

.method public notifyDataConnection(Ljava/lang/String;)V
    .locals 6
    .param p1, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2028
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getActiveApnTypes()[Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 2029
    .local v1, "types":[Ljava/lang/String;
    const/4 v2, 0x0

    #@5
    array-length v3, v1

    #@6
    :goto_0
    if-ge v2, v3, :cond_0

    #@8
    aget-object v0, v1, v2

    #@a
    .line 2030
    .local v0, "apnType":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/Phone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    #@c
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/Phone;->getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    #@f
    move-result-object v5

    #@10
    invoke-interface {v4, p0, p1, v0, v5}, Lcom/android/internal/telephony/PhoneNotifier;->notifyDataConnection(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneConstants$DataState;)V

    #@13
    .line 2029
    add-int/lit8 v2, v2, 0x1

    #@15
    goto :goto_0

    #@16
    .line 2027
    .end local v0    # "apnType":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "apnType"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2024
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    #@2
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/Phone;->getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    #@5
    move-result-object v1

    #@6
    invoke-interface {v0, p0, p1, p2, v1}, Lcom/android/internal/telephony/PhoneNotifier;->notifyDataConnection(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneConstants$DataState;)V

    #@9
    .line 2023
    return-void
.end method

.method public notifyDataConnection(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneConstants$DataState;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "apnType"    # Ljava/lang/String;
    .param p3, "state"    # Lcom/android/internal/telephony/PhoneConstants$DataState;

    #@0
    .prologue
    .line 2020
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    #@2
    invoke-interface {v0, p0, p1, p2, p3}, Lcom/android/internal/telephony/PhoneNotifier;->notifyDataConnection(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneConstants$DataState;)V

    #@5
    .line 2019
    return-void
.end method

.method public notifyDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "apnType"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2757
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    #@2
    invoke-interface {v0, p0, p1, p2}, Lcom/android/internal/telephony/PhoneNotifier;->notifyDataConnectionFailed(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;)V

    #@5
    .line 2756
    return-void
.end method

.method protected notifyDisconnectP(Lcom/android/internal/telephony/Connection;)V
    .locals 2
    .param p1, "cn"    # Lcom/android/internal/telephony/Connection;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1324
    new-instance v0, Landroid/os/AsyncResult;

    #@3
    invoke-direct {v0, v1, p1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@6
    .line 1325
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mDisconnectRegistrants:Landroid/os/RegistrantList;

    #@8
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    #@b
    .line 1323
    return-void
.end method

.method public notifyForVideoCapabilityChanged(Z)V
    .locals 3
    .param p1, "isVideoCallCapable"    # Z

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 2677
    iput-boolean p1, p0, Lcom/android/internal/telephony/Phone;->mIsVideoCapable:Z

    #@3
    .line 2679
    new-instance v0, Landroid/os/AsyncResult;

    #@5
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@8
    move-result-object v1

    #@9
    invoke-direct {v0, v2, v1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@c
    .line 2680
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mVideoCapabilityChangedRegistrants:Landroid/os/RegistrantList;

    #@e
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    #@11
    .line 2675
    return-void
.end method

.method public notifyHandoverStateChanged(Lcom/android/internal/telephony/Connection;)V
    .locals 2
    .param p1, "cn"    # Lcom/android/internal/telephony/Connection;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 780
    new-instance v0, Landroid/os/AsyncResult;

    #@3
    invoke-direct {v0, v1, p1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@6
    .line 781
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mHandoverRegistrants:Landroid/os/RegistrantList;

    #@8
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    #@b
    .line 779
    return-void
.end method

.method public notifyNewRingingConnectionP(Lcom/android/internal/telephony/Connection;)V
    .locals 3
    .param p1, "cn"    # Lcom/android/internal/telephony/Connection;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 2659
    iget-boolean v1, p0, Lcom/android/internal/telephony/Phone;->mIsVoiceCapable:Z

    #@3
    if-nez v1, :cond_0

    #@5
    .line 2660
    return-void

    #@6
    .line 2661
    :cond_0
    new-instance v0, Landroid/os/AsyncResult;

    #@8
    invoke-direct {v0, v2, p1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@b
    .line 2662
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mNewRingingConnectionRegistrants:Landroid/os/RegistrantList;

    #@d
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    #@10
    .line 2658
    return-void
.end method

.method public notifyOtaspChanged(I)V
    .locals 1
    .param p1, "otaspMode"    # I

    #@0
    .prologue
    .line 2035
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    #@2
    invoke-interface {v0, p0, p1}, Lcom/android/internal/telephony/PhoneNotifier;->notifyOtaspChanged(Lcom/android/internal/telephony/Phone;I)V

    #@5
    .line 2034
    return-void
.end method

.method protected notifyPreciseCallStateChangedP()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 754
    new-instance v0, Landroid/os/AsyncResult;

    #@3
    invoke-direct {v0, v1, p0, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@6
    .line 755
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mPreciseCallStateRegistrants:Landroid/os/RegistrantList;

    #@8
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    #@b
    .line 757
    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    #@d
    invoke-interface {v1, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifyPreciseCallState(Lcom/android/internal/telephony/Phone;)V

    #@10
    .line 753
    return-void
.end method

.method public notifyPreciseDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "apnType"    # Ljava/lang/String;
    .param p3, "apn"    # Ljava/lang/String;
    .param p4, "failCause"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2762
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    #@2
    move-object v1, p0

    #@3
    move-object v2, p1

    #@4
    move-object v3, p2

    #@5
    move-object v4, p3

    #@6
    move-object v5, p4

    #@7
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/PhoneNotifier;->notifyPreciseDataConnectionFailed(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@a
    .line 2761
    return-void
.end method

.method protected notifyServiceStateChangedP(Landroid/telephony/ServiceState;)V
    .locals 2
    .param p1, "ss"    # Landroid/telephony/ServiceState;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1413
    new-instance v0, Landroid/os/AsyncResult;

    #@3
    invoke-direct {v0, v1, p1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@6
    .line 1414
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mServiceStateRegistrants:Landroid/os/RegistrantList;

    #@8
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    #@b
    .line 1416
    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    #@d
    invoke-interface {v1, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifyServiceState(Lcom/android/internal/telephony/Phone;)V

    #@10
    .line 1412
    return-void
.end method

.method public notifySignalStrength()V
    .locals 1

    #@0
    .prologue
    .line 2039
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    #@2
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifySignalStrength(Lcom/android/internal/telephony/Phone;)V

    #@5
    .line 2038
    return-void
.end method

.method public notifySrvccState(Lcom/android/internal/telephony/Call$SrvccState;)V
    .locals 0
    .param p1, "state"    # Lcom/android/internal/telephony/Call$SrvccState;

    #@0
    .prologue
    .line 644
    return-void
.end method

.method public notifyUnknownConnectionP(Lcom/android/internal/telephony/Connection;)V
    .locals 1
    .param p1, "cn"    # Lcom/android/internal/telephony/Connection;

    #@0
    .prologue
    .line 2669
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mUnknownConnectionRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    #@5
    .line 2668
    return-void
.end method

.method public notifyVoLteServiceStateChanged(Landroid/telephony/VoLteServiceState;)V
    .locals 1
    .param p1, "lteState"    # Landroid/telephony/VoLteServiceState;

    #@0
    .prologue
    .line 2047
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    #@2
    invoke-interface {v0, p0, p1}, Lcom/android/internal/telephony/PhoneNotifier;->notifyVoLteServiceStateChanged(Lcom/android/internal/telephony/Phone;Landroid/telephony/VoLteServiceState;)V

    #@5
    .line 2046
    return-void
.end method

.method public nvReadItem(ILandroid/os/Message;)V
    .locals 1
    .param p1, "itemID"    # I
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1967
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->nvReadItem(ILandroid/os/Message;)V

    #@5
    .line 1966
    return-void
.end method

.method public nvResetConfig(ILandroid/os/Message;)V
    .locals 1
    .param p1, "resetType"    # I
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 2002
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->nvResetConfig(ILandroid/os/Message;)V

    #@5
    .line 2001
    return-void
.end method

.method public nvWriteCdmaPrl([BLandroid/os/Message;)V
    .locals 1
    .param p1, "preferredRoamingList"    # [B
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1990
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->nvWriteCdmaPrl([BLandroid/os/Message;)V

    #@5
    .line 1989
    return-void
.end method

.method public nvWriteItem(ILjava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "itemID"    # I
    .param p2, "itemValue"    # Ljava/lang/String;
    .param p3, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1979
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->nvWriteItem(ILjava/lang/String;Landroid/os/Message;)V

    #@5
    .line 1978
    return-void
.end method

.method protected abstract onUpdateIccAvailability()V
.end method

.method public queryAvailableBandMode(Landroid/os/Message;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1921
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->queryAvailableBandMode(Landroid/os/Message;)V

    #@5
    .line 1920
    return-void
.end method

.method public queryCdmaRoamingPreference(Landroid/os/Message;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1742
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->queryCdmaRoamingPreference(Landroid/os/Message;)V

    #@5
    .line 1741
    return-void
.end method

.method public queryTTYMode(Landroid/os/Message;)V
    .locals 1
    .param p1, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1881
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->queryTTYMode(Landroid/os/Message;)V

    #@5
    .line 1880
    return-void
.end method

.method public radioCapabilityUpdated(Lcom/android/internal/telephony/RadioCapability;)V
    .locals 1
    .param p1, "rc"    # Lcom/android/internal/telephony/RadioCapability;

    #@0
    .prologue
    .line 3102
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mRadioCapability:Ljava/util/concurrent/atomic/AtomicReference;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    #@5
    .line 3104
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    #@8
    move-result v0

    #@9
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_0

    #@f
    .line 3105
    const/4 v0, 0x1

    #@10
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/Phone;->sendSubscriptionSettings(Z)V

    #@13
    .line 3099
    :cond_0
    return-void
.end method

.method public registerFoT53ClirlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 2498
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerFoT53ClirlInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 2497
    return-void
.end method

.method public registerForAllDataDisconnected(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 3239
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->registerForAllDataDisconnected(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 3238
    return-void
.end method

.method public registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 2340
    return-void
.end method

.method public registerForCdmaOtaStatusChange(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 2291
    return-void
.end method

.method public registerForDataEnabledChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 3247
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->registerForDataEnabledChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 3246
    return-void
.end method

.method public registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 969
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/Phone;->checkCorrectThread(Landroid/os/Handler;)V

    #@3
    .line 971
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mDisconnectRegistrants:Landroid/os/RegistrantList;

    #@5
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    #@8
    .line 968
    return-void
.end method

.method public registerForDisplayInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 2399
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerForDisplayInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 2398
    return-void
.end method

.method public registerForEcmTimerReset(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 2356
    return-void
.end method

.method public registerForEmergencyCallToggle(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1196
    new-instance v0, Landroid/os/Registrant;

    #@2
    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 1197
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mEmergencyCallToggledRegistrants:Landroid/os/RegistrantList;

    #@7
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    #@a
    .line 1195
    return-void
.end method

.method public registerForHandoverStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 764
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/Phone;->checkCorrectThread(Landroid/os/Handler;)V

    #@3
    .line 765
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mHandoverRegistrants:Landroid/os/RegistrantList;

    #@5
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    #@8
    .line 763
    return-void
.end method

.method public registerForInCallVoicePrivacyOff(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 923
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerForInCallVoicePrivacyOff(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 922
    return-void
.end method

.method public registerForInCallVoicePrivacyOn(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 903
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerForInCallVoicePrivacyOn(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 902
    return-void
.end method

.method public registerForIncomingRing(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 945
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/Phone;->checkCorrectThread(Landroid/os/Handler;)V

    #@3
    .line 947
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mIncomingRingRegistrants:Landroid/os/RegistrantList;

    #@5
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    #@8
    .line 944
    return-void
.end method

.method public registerForLineControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 2473
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerForLineControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 2472
    return-void
.end method

.method public registerForMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1040
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/Phone;->checkCorrectThread(Landroid/os/Handler;)V

    #@3
    .line 1042
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mMmiCompleteRegistrants:Landroid/os/RegistrantList;

    #@5
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    #@8
    .line 1039
    return-void
.end method

.method public registerForMmiInitiate(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1018
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/Phone;->checkCorrectThread(Landroid/os/Handler;)V

    #@3
    .line 1020
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mMmiRegistrants:Landroid/os/RegistrantList;

    #@5
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    #@8
    .line 1017
    return-void
.end method

.method public registerForNewRingingConnection(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 856
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/Phone;->checkCorrectThread(Landroid/os/Handler;)V

    #@3
    .line 858
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mNewRingingConnectionRegistrants:Landroid/os/RegistrantList;

    #@5
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    #@8
    .line 855
    return-void
.end method

.method public registerForNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 2423
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerForNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 2422
    return-void
.end method

.method public registerForOnHoldTone(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1377
    return-void
.end method

.method public registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 736
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/Phone;->checkCorrectThread(Landroid/os/Handler;)V

    #@3
    .line 738
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mPreciseCallStateRegistrants:Landroid/os/RegistrantList;

    #@5
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    #@8
    .line 735
    return-void
.end method

.method public registerForRadioCapabilityChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 3135
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerForRadioCapabilityChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 3134
    return-void
.end method

.method public registerForRadioOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 2562
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mRadioOffOrNotAvailableRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 2561
    return-void
.end method

.method public registerForRedirectedNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 2448
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerForRedirectedNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 2447
    return-void
.end method

.method public registerForResendIncallMute(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1391
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerForResendIncallMute(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 1390
    return-void
.end method

.method public registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1358
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 1357
    return-void
.end method

.method public registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1335
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/Phone;->checkCorrectThread(Landroid/os/Handler;)V

    #@3
    .line 1337
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mServiceStateRegistrants:Landroid/os/RegistrantList;

    #@5
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->add(Landroid/os/Handler;ILjava/lang/Object;)V

    #@8
    .line 1334
    return-void
.end method

.method public registerForSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 2376
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerForSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 2375
    return-void
.end method

.method public registerForSilentRedial(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 647
    return-void
.end method

.method public registerForSimRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1061
    return-void
.end method

.method public registerForSubscriptionInfoReady(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 2307
    return-void
.end method

.method public registerForSuppServiceFailed(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 991
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/Phone;->checkCorrectThread(Landroid/os/Handler;)V

    #@3
    .line 993
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mSuppServiceFailedRegistrants:Landroid/os/RegistrantList;

    #@5
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    #@8
    .line 990
    return-void
.end method

.method public registerForT53AudioControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 2523
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerForT53AudioControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 2522
    return-void
.end method

.method public registerForTtyModeReceived(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1080
    return-void
.end method

.method public registerForUnknownConnection(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 830
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/Phone;->checkCorrectThread(Landroid/os/Handler;)V

    #@3
    .line 832
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mUnknownConnectionRegistrants:Landroid/os/RegistrantList;

    #@5
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    #@8
    .line 829
    return-void
.end method

.method public registerForVideoCapabilityChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 879
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/Phone;->checkCorrectThread(Landroid/os/Handler;)V

    #@3
    .line 881
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mVideoCapabilityChangedRegistrants:Landroid/os/RegistrantList;

    #@5
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    #@8
    .line 884
    iget-boolean v0, p0, Lcom/android/internal/telephony/Phone;->mIsVideoCapable:Z

    #@a
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/Phone;->notifyForVideoCapabilityChanged(Z)V

    #@d
    .line 878
    return-void
.end method

.method public saveClirSetting(I)V
    .locals 4
    .param p1, "commandInterfaceCLIRMode"    # I

    #@0
    .prologue
    .line 1292
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    #@3
    move-result-object v2

    #@4
    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    #@7
    move-result-object v1

    #@8
    .line 1293
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    #@b
    move-result-object v0

    #@c
    .line 1294
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v2, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v3, "clir_key"

    #@14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    #@1b
    move-result v3

    #@1c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v2

    #@24
    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    #@27
    .line 1297
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    #@2a
    move-result v2

    #@2b
    if-nez v2, :cond_0

    #@2d
    .line 1298
    const-string/jumbo v2, "Phone"

    #@30
    const-string/jumbo v3, "Failed to commit CLIR preference"

    #@33
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@36
    .line 1290
    :cond_0
    return-void
.end method

.method public selectNetworkManually(Lcom/android/internal/telephony/OperatorInfo;ZLandroid/os/Message;)V
    .locals 4
    .param p1, "network"    # Lcom/android/internal/telephony/OperatorInfo;
    .param p2, "persistSelection"    # Z
    .param p3, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1171
    new-instance v1, Lcom/android/internal/telephony/Phone$NetworkSelectMessage;

    #@2
    const/4 v2, 0x0

    #@3
    invoke-direct {v1, v2}, Lcom/android/internal/telephony/Phone$NetworkSelectMessage;-><init>(Lcom/android/internal/telephony/Phone$NetworkSelectMessage;)V

    #@6
    .line 1172
    .local v1, "nsm":Lcom/android/internal/telephony/Phone$NetworkSelectMessage;
    iput-object p3, v1, Lcom/android/internal/telephony/Phone$NetworkSelectMessage;->message:Landroid/os/Message;

    #@8
    .line 1173
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    #@b
    move-result-object v2

    #@c
    iput-object v2, v1, Lcom/android/internal/telephony/Phone$NetworkSelectMessage;->operatorNumeric:Ljava/lang/String;

    #@e
    .line 1174
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    #@11
    move-result-object v2

    #@12
    iput-object v2, v1, Lcom/android/internal/telephony/Phone$NetworkSelectMessage;->operatorAlphaLong:Ljava/lang/String;

    #@14
    .line 1175
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaShort()Ljava/lang/String;

    #@17
    move-result-object v2

    #@18
    iput-object v2, v1, Lcom/android/internal/telephony/Phone$NetworkSelectMessage;->operatorAlphaShort:Ljava/lang/String;

    #@1a
    .line 1177
    const/16 v2, 0x10

    #@1c
    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/Phone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@1f
    move-result-object v0

    #@20
    .line 1178
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@22
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    #@25
    move-result-object v3

    #@26
    invoke-interface {v2, v3, v0}, Lcom/android/internal/telephony/CommandsInterface;->setNetworkSelectionModeManual(Ljava/lang/String;Landroid/os/Message;)V

    #@29
    .line 1180
    if-eqz p2, :cond_0

    #@2b
    .line 1181
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/Phone;->updateSavedNetworkOperator(Lcom/android/internal/telephony/Phone$NetworkSelectMessage;)V

    #@2e
    .line 1168
    :goto_0
    return-void

    #@2f
    .line 1183
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/Phone;->clearSavedNetworkSelection()V

    #@32
    goto :goto_0
.end method

.method public sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V
    .locals 0
    .param p1, "dtmfString"    # Ljava/lang/String;
    .param p2, "on"    # I
    .param p3, "off"    # I
    .param p4, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    .line 2231
    return-void
.end method

.method public abstract sendEmergencyCallStateChange(Z)V
.end method

.method public sendSubscriptionSettings(Z)V
    .locals 4
    .param p1, "restoreNetworkSelection"    # Z

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 3111
    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    #@3
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    #@6
    move-result v2

    #@7
    invoke-static {v1, v2}, Lcom/android/internal/telephony/PhoneFactory;->calculatePreferredNetworkType(Landroid/content/Context;I)I

    #@a
    move-result v0

    #@b
    .line 3112
    .local v0, "type":I
    invoke-virtual {p0, v0, v3}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    #@e
    .line 3114
    if-eqz p1, :cond_0

    #@10
    .line 3115
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/Phone;->restoreSavedNetworkSelection(Landroid/os/Message;)V

    #@13
    .line 3109
    :cond_0
    return-void
.end method

.method public setAllowedCarriers(Ljava/util/List;Landroid/os/Message;)V
    .locals 1
    .param p2, "response"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/service/carrier/CarrierIdentifier;",
            ">;",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 3203
    .local p1, "carriers":Ljava/util/List;, "Ljava/util/List<Landroid/service/carrier/CarrierIdentifier;>;"
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setAllowedCarriers(Ljava/util/List;Landroid/os/Message;)V

    #@5
    .line 3202
    return-void
.end method

.method public setBandMode(ILandroid/os/Message;)V
    .locals 1
    .param p1, "bandMode"    # I
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1909
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setBandMode(ILandroid/os/Message;)V

    #@5
    .line 1908
    return-void
.end method

.method public abstract setBroadcastEmergencyCallStateChanges(Z)V
.end method

.method public setCdmaRoamingPreference(ILandroid/os/Message;)V
    .locals 1
    .param p1, "cdmaRoamingType"    # I
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1770
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setCdmaRoamingPreference(ILandroid/os/Message;)V

    #@5
    .line 1769
    return-void
.end method

.method public setCdmaSubscription(ILandroid/os/Message;)V
    .locals 1
    .param p1, "cdmaSubscriptionType"    # I
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1779
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setCdmaSubscriptionSource(ILandroid/os/Message;)V

    #@5
    .line 1778
    return-void
.end method

.method public setCellInfoListRate(I)V
    .locals 2
    .param p1, "rateInMillis"    # I

    #@0
    .prologue
    .line 1631
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->setCellInfoListRate(ILandroid/os/Message;)V

    #@6
    .line 1630
    return-void
.end method

.method public setEchoSuppressionEnabled()V
    .locals 0

    #@0
    .prologue
    .line 1404
    return-void
.end method

.method public setImsRegistrationState(Z)V
    .locals 0
    .param p1, "registered"    # Z

    #@0
    .prologue
    .line 2817
    return-void
.end method

.method public setInternalDataEnabled(ZLandroid/os/Message;)V
    .locals 1
    .param p1, "enable"    # Z
    .param p2, "onCompleteMsg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 3231
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@2
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setInternalDataEnabled(ZLandroid/os/Message;)Z

    #@5
    .line 3230
    return-void
.end method

.method protected setIsInEmergencyCall()V
    .locals 0

    #@0
    .prologue
    .line 784
    return-void
.end method

.method public setNetworkSelectionModeAutomatic(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1102
    const-string/jumbo v1, "Phone"

    #@3
    const-string/jumbo v2, "setNetworkSelectionModeAutomatic, querying current mode"

    #@6
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 1106
    const/16 v1, 0x26

    #@b
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/Phone;->obtainMessage(I)Landroid/os/Message;

    #@e
    move-result-object v0

    #@f
    .line 1107
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@11
    .line 1108
    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@13
    invoke-interface {v1, v0}, Lcom/android/internal/telephony/CommandsInterface;->getNetworkSelectionMode(Landroid/os/Message;)V

    #@16
    .line 1101
    return-void
.end method

.method public setOnEcbModeExitResponse(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 2543
    return-void
.end method

.method public setOnPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 2269
    new-instance v0, Landroid/os/Registrant;

    #@2
    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    iput-object v0, p0, Lcom/android/internal/telephony/Phone;->mPostDialHandler:Landroid/os/Registrant;

    #@7
    .line 2268
    return-void
.end method

.method public setOperatorBrandOverride(Ljava/lang/String;)Z
    .locals 1
    .param p1, "brand"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2907
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method protected setPhoneName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 346
    iput-object p1, p0, Lcom/android/internal/telephony/Phone;->mName:Ljava/lang/String;

    #@2
    .line 345
    return-void
.end method

.method public setPolicyDataEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 3322
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setPolicyDataEnabled(Z)V

    #@5
    .line 3321
    return-void
.end method

.method public setPreferredNetworkType(ILandroid/os/Message;)V
    .locals 9
    .param p1, "networkType"    # I
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    const/4 v5, 0x1

    #@2
    .line 1790
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getRadioAccessFamily()I

    #@5
    move-result v3

    #@6
    .line 1791
    .local v3, "modemRaf":I
    invoke-static {p1}, Landroid/telephony/RadioAccessFamily;->getRafFromNetworkType(I)I

    #@9
    move-result v4

    #@a
    .line 1793
    .local v4, "rafFromType":I
    if-eq v3, v5, :cond_0

    #@c
    .line 1794
    if-ne v4, v5, :cond_2

    #@e
    .line 1795
    :cond_0
    const-string/jumbo v5, "Phone"

    #@11
    new-instance v6, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v7, "setPreferredNetworkType: Abort, unknown RAF: "

    #@19
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v6

    #@1d
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20
    move-result-object v6

    #@21
    .line 1796
    const-string/jumbo v7, " "

    #@24
    .line 1795
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v6

    #@28
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v6

    #@2c
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v6

    #@30
    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@33
    .line 1797
    if-eqz p2, :cond_1

    #@35
    .line 1800
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@37
    sget-object v5, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    #@39
    invoke-direct {v0, v5}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@3c
    .line 1801
    .local v0, "ex":Lcom/android/internal/telephony/CommandException;
    invoke-static {p2, v8, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    #@3f
    .line 1802
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    #@42
    .line 1804
    .end local v0    # "ex":Lcom/android/internal/telephony/CommandException;
    :cond_1
    return-void

    #@43
    .line 1807
    :cond_2
    and-int v1, v4, v3

    #@45
    .line 1808
    .local v1, "filteredRaf":I
    invoke-static {v1}, Landroid/telephony/RadioAccessFamily;->getNetworkTypeFromRaf(I)I

    #@48
    move-result v2

    #@49
    .line 1810
    .local v2, "filteredType":I
    const-string/jumbo v5, "Phone"

    #@4c
    new-instance v6, Ljava/lang/StringBuilder;

    #@4e
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@51
    const-string/jumbo v7, "setPreferredNetworkType: networkType = "

    #@54
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v6

    #@58
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v6

    #@5c
    .line 1811
    const-string/jumbo v7, " modemRaf = "

    #@5f
    .line 1810
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v6

    #@63
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@66
    move-result-object v6

    #@67
    .line 1812
    const-string/jumbo v7, " rafFromType = "

    #@6a
    .line 1810
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v6

    #@6e
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@71
    move-result-object v6

    #@72
    .line 1813
    const-string/jumbo v7, " filteredType = "

    #@75
    .line 1810
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v6

    #@79
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v6

    #@7d
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@80
    move-result-object v6

    #@81
    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@84
    .line 1815
    iget-object v5, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@86
    invoke-interface {v5, v2, p2}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    #@89
    .line 1788
    return-void
.end method

.method protected setPreferredNetworkTypeIfSimLoaded()V
    .locals 4

    #@0
    .prologue
    .line 3120
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    #@3
    move-result v0

    #@4
    .line 3121
    .local v0, "subId":I
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    #@7
    move-result v2

    #@8
    if-eqz v2, :cond_0

    #@a
    .line 3122
    iget-object v2, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    #@c
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    #@f
    move-result v3

    #@10
    invoke-static {v2, v3}, Lcom/android/internal/telephony/PhoneFactory;->calculatePreferredNetworkType(Landroid/content/Context;I)I

    #@13
    move-result v1

    #@14
    .line 3123
    .local v1, "type":I
    const/4 v2, 0x0

    #@15
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    #@18
    .line 3119
    .end local v1    # "type":I
    :cond_0
    return-void
.end method

.method public setRadioCapability(Lcom/android/internal/telephony/RadioCapability;Landroid/os/Message;)V
    .locals 1
    .param p1, "rc"    # Lcom/android/internal/telephony/RadioCapability;
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 3059
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setRadioCapability(Lcom/android/internal/telephony/RadioCapability;Landroid/os/Message;)V

    #@5
    .line 3058
    return-void
.end method

.method public setRoamingOverride(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 2916
    .local p1, "gsmRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "gsmNonRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "cdmaRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "cdmaNonRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getIccSerialNumber()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 2917
    .local v0, "iccId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@7
    move-result v2

    #@8
    if-eqz v2, :cond_0

    #@a
    .line 2918
    const/4 v2, 0x0

    #@b
    return v2

    #@c
    .line 2921
    :cond_0
    const-string/jumbo v2, "gsm_roaming_list_"

    #@f
    invoke-direct {p0, p1, v2, v0}, Lcom/android/internal/telephony/Phone;->setRoamingOverrideHelper(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    #@12
    .line 2922
    const-string/jumbo v2, "gsm_non_roaming_list_"

    #@15
    invoke-direct {p0, p2, v2, v0}, Lcom/android/internal/telephony/Phone;->setRoamingOverrideHelper(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    #@18
    .line 2923
    const-string/jumbo v2, "cdma_roaming_list_"

    #@1b
    invoke-direct {p0, p3, v2, v0}, Lcom/android/internal/telephony/Phone;->setRoamingOverrideHelper(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    #@1e
    .line 2924
    const-string/jumbo v2, "cdma_non_roaming_list_"

    #@21
    invoke-direct {p0, p4, v2, v0}, Lcom/android/internal/telephony/Phone;->setRoamingOverrideHelper(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    #@24
    .line 2927
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    #@27
    move-result-object v1

    #@28
    .line 2928
    .local v1, "tracker":Lcom/android/internal/telephony/ServiceStateTracker;
    if-eqz v1, :cond_1

    #@2a
    .line 2929
    invoke-virtual {v1}, Lcom/android/internal/telephony/ServiceStateTracker;->pollState()V

    #@2d
    .line 2931
    :cond_1
    const/4 v2, 0x1

    #@2e
    return v2
.end method

.method public setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1843
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V

    #@5
    .line 1842
    return-void
.end method

.method public setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 383
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getUnitTestMode()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 384
    return-void

    #@7
    .line 386
    :cond_0
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@a
    .line 382
    return-void
.end method

.method public setTTYMode(ILandroid/os/Message;)V
    .locals 1
    .param p1, "ttyMode"    # I
    .param p2, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1857
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setTTYMode(ILandroid/os/Message;)V

    #@5
    .line 1856
    return-void
.end method

.method public setUiTTYMode(ILandroid/os/Message;)V
    .locals 2
    .param p1, "uiTtyMode"    # I
    .param p2, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1871
    const-string/jumbo v0, "Phone"

    #@3
    const-string/jumbo v1, "unexpected setUiTTYMode method call"

    #@6
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 1870
    return-void
.end method

.method public setVoiceCallForwardingFlag(IZLjava/lang/String;)V
    .locals 2
    .param p1, "line"    # I
    .param p2, "enable"    # Z
    .param p3, "number"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1697
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/Phone;->setCallForwardingIndicatorInSharedPref(Z)V

    #@3
    .line 1698
    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    #@5
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    #@b
    .line 1699
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    #@d
    .line 1700
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccRecords;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    #@10
    .line 1696
    :cond_0
    return-void
.end method

.method protected setVoiceCallForwardingFlag(Lcom/android/internal/telephony/uicc/IccRecords;IZLjava/lang/String;)V
    .locals 0
    .param p1, "r"    # Lcom/android/internal/telephony/uicc/IccRecords;
    .param p2, "line"    # I
    .param p3, "enable"    # Z
    .param p4, "number"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1706
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/Phone;->setCallForwardingIndicatorInSharedPref(Z)V

    #@3
    .line 1707
    invoke-virtual {p1, p2, p3, p4}, Lcom/android/internal/telephony/uicc/IccRecords;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    #@6
    .line 1705
    return-void
.end method

.method public setVoiceMessageCount(I)V
    .locals 6
    .param p1, "countWaiting"    # I

    #@0
    .prologue
    .line 2110
    iput p1, p0, Lcom/android/internal/telephony/Phone;->mVmCount:I

    #@2
    .line 2111
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    #@5
    move-result v2

    #@6
    .line 2112
    .local v2, "subId":I
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    #@9
    move-result v3

    #@a
    if-eqz v3, :cond_0

    #@c
    .line 2114
    const-string/jumbo v3, "Phone"

    #@f
    new-instance v4, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v5, "setVoiceMessageCount: Storing Voice Mail Count = "

    #@17
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v4

    #@1b
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v4

    #@1f
    .line 2115
    const-string/jumbo v5, " for mVmCountKey = "

    #@22
    .line 2114
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v4

    #@26
    .line 2115
    const-string/jumbo v5, "vm_count_key"

    #@29
    .line 2114
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v4

    #@2d
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@30
    move-result-object v4

    #@31
    .line 2115
    const-string/jumbo v5, " in preferences."

    #@34
    .line 2114
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v4

    #@38
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v4

    #@3c
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@3f
    .line 2117
    iget-object v3, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    #@41
    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    #@44
    move-result-object v1

    #@45
    .line 2118
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    #@48
    move-result-object v0

    #@49
    .line 2119
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v3, Ljava/lang/StringBuilder;

    #@4b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@4e
    const-string/jumbo v4, "vm_count_key"

    #@51
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v3

    #@55
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@58
    move-result-object v3

    #@59
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5c
    move-result-object v3

    #@5d
    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    #@60
    .line 2120
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    #@63
    .line 2125
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "sp":Landroid/content/SharedPreferences;
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/telephony/Phone;->notifyMessageWaitingIndicator()V

    #@66
    .line 2109
    return-void

    #@67
    .line 2122
    :cond_0
    const-string/jumbo v3, "Phone"

    #@6a
    new-instance v4, Ljava/lang/StringBuilder;

    #@6c
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@6f
    const-string/jumbo v5, "setVoiceMessageCount in sharedPreference: invalid subId "

    #@72
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v4

    #@76
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@79
    move-result-object v4

    #@7a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7d
    move-result-object v4

    #@7e
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@81
    goto :goto_0
.end method

.method public setVoiceMessageWaiting(II)V
    .locals 2
    .param p1, "line"    # I
    .param p2, "countWaiting"    # I

    #@0
    .prologue
    .line 2786
    const-string/jumbo v0, "Phone"

    #@3
    const-string/jumbo v1, "Error! This function should never be executed, inactive Phone."

    #@6
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 2784
    return-void
.end method

.method public shutdownRadio()V
    .locals 1

    #@0
    .prologue
    .line 3041
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->requestShutdown()V

    #@7
    .line 3040
    return-void
.end method

.method public startLceAfterRadioIsAvailable()V
    .locals 4

    #@0
    .prologue
    .line 3195
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2
    .line 3196
    const/16 v1, 0x25

    #@4
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/Phone;->obtainMessage(I)Landroid/os/Message;

    #@7
    move-result-object v1

    #@8
    .line 3195
    const/16 v2, 0xc8

    #@a
    const/4 v3, 0x1

    #@b
    invoke-interface {v0, v2, v3, v1}, Lcom/android/internal/telephony/CommandsInterface;->startLceService(IZLandroid/os/Message;)V

    #@e
    .line 3194
    return-void
.end method

.method public startMonitoringImsService()V
    .locals 6

    #@0
    .prologue
    .line 516
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    #@3
    move-result v2

    #@4
    const/4 v3, 0x3

    #@5
    if-ne v2, v3, :cond_0

    #@7
    .line 517
    return-void

    #@8
    .line 520
    :cond_0
    sget-object v3, Lcom/android/internal/telephony/Phone;->lockForRadioTechnologyChange:Ljava/lang/Object;

    #@a
    monitor-enter v3

    #@b
    .line 521
    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    #@d
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    #@10
    .line 522
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "com.android.ims.IMS_SERVICE_UP"

    #@13
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@16
    .line 523
    const-string/jumbo v2, "com.android.ims.IMS_SERVICE_DOWN"

    #@19
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@1c
    .line 524
    const-string/jumbo v2, "com.android.intent.action.IMS_CONFIG_CHANGED"

    #@1f
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@22
    .line 525
    iget-object v2, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    #@24
    iget-object v4, p0, Lcom/android/internal/telephony/Phone;->mImsIntentReceiver:Landroid/content/BroadcastReceiver;

    #@26
    invoke-virtual {v2, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@29
    .line 529
    iget-object v2, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    #@2b
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    #@2e
    move-result v4

    #@2f
    invoke-static {v2, v4}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    #@32
    move-result-object v1

    #@33
    .line 530
    .local v1, "imsManager":Lcom/android/ims/ImsManager;
    if-eqz v1, :cond_1

    #@35
    invoke-virtual {v1}, Lcom/android/ims/ImsManager;->isServiceAvailable()Z

    #@38
    move-result v2

    #@39
    if-eqz v2, :cond_1

    #@3b
    .line 531
    const/4 v2, 0x1

    #@3c
    iput-boolean v2, p0, Lcom/android/internal/telephony/Phone;->mImsServiceReady:Z

    #@3e
    .line 532
    invoke-direct {p0}, Lcom/android/internal/telephony/Phone;->updateImsPhone()V

    #@41
    .line 533
    iget-object v2, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    #@43
    iget v4, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    #@45
    const/4 v5, 0x0

    #@46
    invoke-static {v2, v4, v5}, Lcom/android/ims/ImsManager;->updateImsServiceConfig(Landroid/content/Context;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@49
    :cond_1
    monitor-exit v3

    #@4a
    .line 515
    return-void

    #@4b
    .line 520
    .end local v0    # "filter":Landroid/content/IntentFilter;
    .end local v1    # "imsManager":Lcom/android/ims/ImsManager;
    :catchall_0
    move-exception v2

    #@4c
    monitor-exit v3

    #@4d
    throw v2
.end method

.method public startRingbackTone()V
    .locals 0

    #@0
    .prologue
    .line 3283
    return-void
.end method

.method public stopRingbackTone()V
    .locals 0

    #@0
    .prologue
    .line 3286
    return-void
.end method

.method public unregisterForAllDataDisconnected(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 3243
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->unregisterForAllDataDisconnected(Landroid/os/Handler;)V

    #@5
    .line 3242
    return-void
.end method

.method public unregisterForCallWaiting(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 2347
    return-void
.end method

.method public unregisterForCdmaOtaStatusChange(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 2298
    return-void
.end method

.method public unregisterForDataEnabledChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 3251
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->unregisterForDataEnabledChanged(Landroid/os/Handler;)V

    #@5
    .line 3250
    return-void
.end method

.method public unregisterForDisconnect(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 979
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mDisconnectRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 978
    return-void
.end method

.method public unregisterForDisplayInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 2409
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForDisplayInfo(Landroid/os/Handler;)V

    #@5
    .line 2408
    return-void
.end method

.method public unregisterForEcmTimerReset(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 2363
    return-void
.end method

.method public unregisterForEmergencyCallToggle(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 1201
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mEmergencyCallToggledRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 1200
    return-void
.end method

.method public unregisterForHandoverStateChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 772
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mHandoverRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 771
    return-void
.end method

.method public unregisterForInCallVoicePrivacyOff(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 932
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForInCallVoicePrivacyOff(Landroid/os/Handler;)V

    #@5
    .line 931
    return-void
.end method

.method public unregisterForInCallVoicePrivacyOn(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 912
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForInCallVoicePrivacyOn(Landroid/os/Handler;)V

    #@5
    .line 911
    return-void
.end method

.method public unregisterForIncomingRing(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 955
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mIncomingRingRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 954
    return-void
.end method

.method public unregisterForLineControlInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 2483
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForLineControlInfo(Landroid/os/Handler;)V

    #@5
    .line 2482
    return-void
.end method

.method public unregisterForMmiComplete(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 1050
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/Phone;->checkCorrectThread(Landroid/os/Handler;)V

    #@3
    .line 1052
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mMmiCompleteRegistrants:Landroid/os/RegistrantList;

    #@5
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@8
    .line 1049
    return-void
.end method

.method public unregisterForMmiInitiate(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 1028
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mMmiRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 1027
    return-void
.end method

.method public unregisterForNewRingingConnection(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 866
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mNewRingingConnectionRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 865
    return-void
.end method

.method public unregisterForNumberInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 2433
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForNumberInfo(Landroid/os/Handler;)V

    #@5
    .line 2432
    return-void
.end method

.method public unregisterForOnHoldTone(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 1383
    return-void
.end method

.method public unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 746
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mPreciseCallStateRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 745
    return-void
.end method

.method public unregisterForRadioCapabilityChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 3144
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRadioCapabilityChanged(Landroid/os/Handler;)V

    #@5
    .line 3143
    return-void
.end method

.method public unregisterForRadioOffOrNotAvailable(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 2571
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mRadioOffOrNotAvailableRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 2570
    return-void
.end method

.method public unregisterForRedirectedNumberInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 2458
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRedirectedNumberInfo(Landroid/os/Handler;)V

    #@5
    .line 2457
    return-void
.end method

.method public unregisterForResendIncallMute(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 1398
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForResendIncallMute(Landroid/os/Handler;)V

    #@5
    .line 1397
    return-void
.end method

.method public unregisterForRingbackTone(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 1365
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRingbackTone(Landroid/os/Handler;)V

    #@5
    .line 1364
    return-void
.end method

.method public unregisterForServiceStateChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 1345
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mServiceStateRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 1344
    return-void
.end method

.method public unregisterForSignalInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 2386
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForSignalInfo(Landroid/os/Handler;)V

    #@5
    .line 2385
    return-void
.end method

.method public unregisterForSilentRedial(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 650
    return-void
.end method

.method public unregisterForSimRecordsLoaded(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 1068
    return-void
.end method

.method public unregisterForSubscriptionInfoReady(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 2314
    return-void
.end method

.method public unregisterForSuppServiceFailed(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 1003
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mSuppServiceFailedRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 1002
    return-void
.end method

.method public unregisterForT53AudioControlInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 2533
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForT53AudioControlInfo(Landroid/os/Handler;)V

    #@5
    .line 2532
    return-void
.end method

.method public unregisterForT53ClirInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 2508
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForT53ClirInfo(Landroid/os/Handler;)V

    #@5
    .line 2507
    return-void
.end method

.method public unregisterForTtyModeReceived(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 1089
    return-void
.end method

.method public unregisterForUnknownConnection(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 839
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mUnknownConnectionRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 838
    return-void
.end method

.method public unregisterForVideoCapabilityChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 892
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mVideoCapabilityChangedRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 891
    return-void
.end method

.method public unsetOnEcbModeExitResponse(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 2551
    return-void
.end method

.method public updateCurrentCarrierInProvider()Z
    .locals 1

    #@0
    .prologue
    .line 3235
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public updateDataConnectionTracker()V
    .locals 1

    #@0
    .prologue
    .line 3227
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->update()V

    #@5
    .line 3226
    return-void
.end method

.method public updatePhoneObject(I)V
    .locals 0
    .param p1, "voiceRadioTech"    # I

    #@0
    .prologue
    .line 1508
    return-void
.end method

.method public updateVoiceMail()V
    .locals 2

    #@0
    .prologue
    .line 1529
    const-string/jumbo v0, "Phone"

    #@3
    const-string/jumbo v1, "updateVoiceMail() should be overridden"

    #@6
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 1528
    return-void
.end method
