.class public abstract Lcom/android/internal/telephony/PhoneBase;
.super Landroid/os/Handler;
.source "PhoneBase.java"

# interfaces
.implements Lcom/android/internal/telephony/Phone;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/PhoneBase$NetworkSelectMessage;,
        Lcom/android/internal/telephony/PhoneBase$1;
    }
.end annotation


# static fields
.field private static final CDMA_NON_ROAMING_LIST_OVERRIDE_PREFIX:Ljava/lang/String; = "cdma_non_roaming_list_"

.field private static final CDMA_ROAMING_LIST_OVERRIDE_PREFIX:Ljava/lang/String; = "cdma_roaming_list_"

.field public static final CLIR_KEY:Ljava/lang/String; = "clir_key"

.field public static final DATA_DISABLED_ON_BOOT_KEY:Ljava/lang/String; = "disabled_on_boot_key"

.field protected static final DEFAULT_REPORT_INTERVAL_MS:I = 0xc8

.field public static final DNS_SERVER_CHECK_DISABLED_KEY:Ljava/lang/String; = "dns_server_check_disabled_key"

.field protected static final EVENT_CALL_RING:I = 0xe

.field protected static final EVENT_CALL_RING_CONTINUE:I = 0xf

.field protected static final EVENT_CDMA_SUBSCRIPTION_SOURCE_CHANGED:I = 0x1b

.field protected static final EVENT_CONFIG_LCE:I = 0x25

.field protected static final EVENT_EMERGENCY_CALLBACK_MODE_ENTER:I = 0x19

.field protected static final EVENT_EXIT_EMERGENCY_CALLBACK_RESPONSE:I = 0x1a

.field protected static final EVENT_GET_BASEBAND_VERSION_DONE:I = 0x6

.field protected static final EVENT_GET_CALL_FORWARD_DONE:I = 0xd

.field protected static final EVENT_GET_DEVICE_IDENTITY_DONE:I = 0x15

.field protected static final EVENT_GET_IMEISV_DONE:I = 0xa

.field protected static final EVENT_GET_IMEI_DONE:I = 0x9

.field protected static final EVENT_GET_RADIO_CAPABILITY:I = 0x23

.field protected static final EVENT_GET_SIM_STATUS_DONE:I = 0xb

.field protected static final EVENT_ICC_CHANGED:I = 0x1e

.field protected static final EVENT_ICC_RECORD_EVENTS:I = 0x1d

.field protected static final EVENT_INITIATE_SILENT_REDIAL:I = 0x20

.field protected static final EVENT_LAST:I = 0x25

.field protected static final EVENT_MMI_DONE:I = 0x4

.field protected static final EVENT_NV_READY:I = 0x17

.field protected static final EVENT_RADIO_AVAILABLE:I = 0x1

.field protected static final EVENT_RADIO_NOT_AVAILABLE:I = 0x21

.field protected static final EVENT_RADIO_OFF_OR_NOT_AVAILABLE:I = 0x8

.field protected static final EVENT_RADIO_ON:I = 0x5

.field protected static final EVENT_REGISTERED_TO_NETWORK:I = 0x13

.field protected static final EVENT_RUIM_RECORDS_LOADED:I = 0x16

.field protected static final EVENT_SET_CALL_FORWARD_DONE:I = 0xc

.field protected static final EVENT_SET_CLIR_COMPLETE:I = 0x12

.field protected static final EVENT_SET_ENHANCED_VP:I = 0x18

.field protected static final EVENT_SET_NETWORK_AUTOMATIC:I = 0x1c

.field protected static final EVENT_SET_NETWORK_AUTOMATIC_COMPLETE:I = 0x11

.field protected static final EVENT_SET_NETWORK_MANUAL_COMPLETE:I = 0x10

.field protected static final EVENT_SET_VM_NUMBER_DONE:I = 0x14

.field protected static final EVENT_SIM_RECORDS_LOADED:I = 0x3

.field protected static final EVENT_SRVCC_STATE_CHANGED:I = 0x1f

.field protected static final EVENT_SS:I = 0x24

.field protected static final EVENT_SSN:I = 0x2

.field protected static final EVENT_UNSOL_OEM_HOOK_RAW:I = 0x22

.field protected static final EVENT_USSD:I = 0x7

.field private static final GSM_NON_ROAMING_LIST_OVERRIDE_PREFIX:Ljava/lang/String; = "gsm_non_roaming_list_"

.field private static final GSM_ROAMING_LIST_OVERRIDE_PREFIX:Ljava/lang/String; = "gsm_roaming_list_"

.field protected static final LCE_PULL_MODE:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "PhoneBase"

.field public static final NETWORK_SELECTION_KEY:Ljava/lang/String; = "network_selection_key"

.field public static final NETWORK_SELECTION_NAME_KEY:Ljava/lang/String; = "network_selection_name_key"

.field public static final NETWORK_SELECTION_SHORT_KEY:Ljava/lang/String; = "network_selection_short_key"

.field public static final VM_COUNT:Ljava/lang/String; = "vm_count_key"

.field public static final VM_ID:Ljava/lang/String; = "vm_id_key"


# instance fields
.field private final mActionAttached:Ljava/lang/String;

.field private final mActionDetached:Ljava/lang/String;

.field mCallRingContinueToken:I

.field mCallRingDelay:I

.field public mCi:Lcom/android/internal/telephony/CommandsInterface;

.field protected final mContext:Landroid/content/Context;

.field public mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

.field protected final mDisconnectRegistrants:Landroid/os/RegistrantList;

.field mDnsCheckDisabled:Z

.field mDoesRilSendMultipleCallRing:Z

.field protected final mEmergencyCallToggledRegistrants:Landroid/os/RegistrantList;

.field protected final mHandoverRegistrants:Landroid/os/RegistrantList;

.field public final mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;
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

.field private mImsIntentReceiverRegistered:Z

.field protected mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

.field private mImsServiceReady:Z

.field protected final mIncomingRingRegistrants:Landroid/os/RegistrantList;

.field public mIsTheCurrentActivePhone:Z

.field protected mIsVideoCapable:Z

.field mIsVoiceCapable:Z

.field protected mLceStatus:I

.field protected mLooper:Landroid/os/Looper;

.field protected final mMmiCompleteRegistrants:Landroid/os/RegistrantList;

.field protected final mMmiRegistrants:Landroid/os/RegistrantList;

.field private final mName:Ljava/lang/String;

.field protected final mNewRingingConnectionRegistrants:Landroid/os/RegistrantList;

.field protected mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

.field protected mPhoneId:I

.field protected final mPreciseCallStateRegistrants:Landroid/os/RegistrantList;

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

.field protected mReportInterval:I

.field protected final mServiceStateRegistrants:Landroid/os/RegistrantList;

.field protected final mSimRecordsLoadedRegistrants:Landroid/os/RegistrantList;

.field protected mSimulatedRadioControl:Lcom/android/internal/telephony/test/SimulatedRadioControl;

.field public mSmsStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

.field public mSmsUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

.field protected final mSuppServiceFailedRegistrants:Landroid/os/RegistrantList;

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

.field mUnitTestMode:Z

.field protected final mUnknownConnectionRegistrants:Landroid/os/RegistrantList;

.field protected final mVideoCapabilityChangedRegistrants:Landroid/os/RegistrantList;

.field private mVmCount:I


# direct methods
.method static synthetic -set0(Lcom/android/internal/telephony/PhoneBase;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/internal/telephony/PhoneBase;->mImsServiceReady:Z

    #@2
    return p1
.end method

.method protected constructor <init>(Ljava/lang/String;Lcom/android/internal/telephony/PhoneNotifier;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "notifier"    # Lcom/android/internal/telephony/PhoneNotifier;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    #@0
    .prologue
    .line 366
    const/4 v5, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move-object v2, p2

    #@4
    move-object v3, p3

    #@5
    move-object v4, p4

    #@6
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/PhoneBase;-><init>(Ljava/lang/String;Lcom/android/internal/telephony/PhoneNotifier;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Z)V

    #@9
    .line 365
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lcom/android/internal/telephony/PhoneNotifier;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Z)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "notifier"    # Lcom/android/internal/telephony/PhoneNotifier;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p5, "unitTestMode"    # Z

    #@0
    .prologue
    .line 381
    const v6, 0x7fffffff

    #@3
    move-object v0, p0

    #@4
    move-object v1, p1

    #@5
    move-object v2, p2

    #@6
    move-object v3, p3

    #@7
    move-object v4, p4

    #@8
    move v5, p5

    #@9
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/PhoneBase;-><init>(Ljava/lang/String;Lcom/android/internal/telephony/PhoneNotifier;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;ZI)V

    #@c
    .line 380
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lcom/android/internal/telephony/PhoneNotifier;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;ZI)V
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "notifier"    # Lcom/android/internal/telephony/PhoneNotifier;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p5, "unitTestMode"    # Z
    .param p6, "phoneId"    # I

    #@0
    .prologue
    .line 395
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #@3
    .line 91
    const/4 v5, 0x0

    #@4
    iput-boolean v5, p0, Lcom/android/internal/telephony/PhoneBase;->mImsIntentReceiverRegistered:Z

    #@6
    .line 92
    new-instance v5, Lcom/android/internal/telephony/PhoneBase$1;

    #@8
    invoke-direct {v5, p0}, Lcom/android/internal/telephony/PhoneBase$1;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    #@b
    iput-object v5, p0, Lcom/android/internal/telephony/PhoneBase;->mImsIntentReceiver:Landroid/content/BroadcastReceiver;

    #@d
    .line 208
    const/4 v5, 0x0

    #@e
    iput v5, p0, Lcom/android/internal/telephony/PhoneBase;->mVmCount:I

    #@10
    .line 214
    const/4 v5, 0x1

    #@11
    iput-boolean v5, p0, Lcom/android/internal/telephony/PhoneBase;->mIsTheCurrentActivePhone:Z

    #@13
    .line 215
    const/4 v5, 0x1

    #@14
    iput-boolean v5, p0, Lcom/android/internal/telephony/PhoneBase;->mIsVoiceCapable:Z

    #@16
    .line 219
    const/4 v5, 0x0

    #@17
    iput-boolean v5, p0, Lcom/android/internal/telephony/PhoneBase;->mIsVideoCapable:Z

    #@19
    .line 220
    const/4 v5, 0x0

    #@1a
    iput-object v5, p0, Lcom/android/internal/telephony/PhoneBase;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    #@1c
    .line 221
    new-instance v5, Ljava/util/concurrent/atomic/AtomicReference;

    #@1e
    invoke-direct {v5}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    #@21
    iput-object v5, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    #@23
    .line 225
    new-instance v5, Ljava/util/concurrent/atomic/AtomicReference;

    #@25
    invoke-direct {v5}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    #@28
    .line 224
    iput-object v5, p0, Lcom/android/internal/telephony/PhoneBase;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    #@2a
    .line 234
    const/4 v5, 0x0

    #@2b
    iput-boolean v5, p0, Lcom/android/internal/telephony/PhoneBase;->mImsServiceReady:Z

    #@2d
    .line 235
    const/4 v5, 0x0

    #@2e
    iput-object v5, p0, Lcom/android/internal/telephony/PhoneBase;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@30
    .line 238
    new-instance v5, Ljava/util/concurrent/atomic/AtomicReference;

    #@32
    invoke-direct {v5}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    #@35
    .line 237
    iput-object v5, p0, Lcom/android/internal/telephony/PhoneBase;->mRadioCapability:Ljava/util/concurrent/atomic/AtomicReference;

    #@37
    .line 242
    const/4 v5, 0x0

    #@38
    iput v5, p0, Lcom/android/internal/telephony/PhoneBase;->mReportInterval:I

    #@3a
    .line 243
    const/4 v5, -0x1

    #@3b
    iput v5, p0, Lcom/android/internal/telephony/PhoneBase;->mLceStatus:I

    #@3d
    .line 300
    new-instance v5, Landroid/os/RegistrantList;

    #@3f
    invoke-direct {v5}, Landroid/os/RegistrantList;-><init>()V

    #@42
    .line 299
    iput-object v5, p0, Lcom/android/internal/telephony/PhoneBase;->mPreciseCallStateRegistrants:Landroid/os/RegistrantList;

    #@44
    .line 303
    new-instance v5, Landroid/os/RegistrantList;

    #@46
    invoke-direct {v5}, Landroid/os/RegistrantList;-><init>()V

    #@49
    .line 302
    iput-object v5, p0, Lcom/android/internal/telephony/PhoneBase;->mHandoverRegistrants:Landroid/os/RegistrantList;

    #@4b
    .line 306
    new-instance v5, Landroid/os/RegistrantList;

    #@4d
    invoke-direct {v5}, Landroid/os/RegistrantList;-><init>()V

    #@50
    .line 305
    iput-object v5, p0, Lcom/android/internal/telephony/PhoneBase;->mNewRingingConnectionRegistrants:Landroid/os/RegistrantList;

    #@52
    .line 309
    new-instance v5, Landroid/os/RegistrantList;

    #@54
    invoke-direct {v5}, Landroid/os/RegistrantList;-><init>()V

    #@57
    .line 308
    iput-object v5, p0, Lcom/android/internal/telephony/PhoneBase;->mIncomingRingRegistrants:Landroid/os/RegistrantList;

    #@59
    .line 312
    new-instance v5, Landroid/os/RegistrantList;

    #@5b
    invoke-direct {v5}, Landroid/os/RegistrantList;-><init>()V

    #@5e
    .line 311
    iput-object v5, p0, Lcom/android/internal/telephony/PhoneBase;->mDisconnectRegistrants:Landroid/os/RegistrantList;

    #@60
    .line 315
    new-instance v5, Landroid/os/RegistrantList;

    #@62
    invoke-direct {v5}, Landroid/os/RegistrantList;-><init>()V

    #@65
    .line 314
    iput-object v5, p0, Lcom/android/internal/telephony/PhoneBase;->mServiceStateRegistrants:Landroid/os/RegistrantList;

    #@67
    .line 318
    new-instance v5, Landroid/os/RegistrantList;

    #@69
    invoke-direct {v5}, Landroid/os/RegistrantList;-><init>()V

    #@6c
    .line 317
    iput-object v5, p0, Lcom/android/internal/telephony/PhoneBase;->mMmiCompleteRegistrants:Landroid/os/RegistrantList;

    #@6e
    .line 321
    new-instance v5, Landroid/os/RegistrantList;

    #@70
    invoke-direct {v5}, Landroid/os/RegistrantList;-><init>()V

    #@73
    .line 320
    iput-object v5, p0, Lcom/android/internal/telephony/PhoneBase;->mMmiRegistrants:Landroid/os/RegistrantList;

    #@75
    .line 324
    new-instance v5, Landroid/os/RegistrantList;

    #@77
    invoke-direct {v5}, Landroid/os/RegistrantList;-><init>()V

    #@7a
    .line 323
    iput-object v5, p0, Lcom/android/internal/telephony/PhoneBase;->mUnknownConnectionRegistrants:Landroid/os/RegistrantList;

    #@7c
    .line 327
    new-instance v5, Landroid/os/RegistrantList;

    #@7e
    invoke-direct {v5}, Landroid/os/RegistrantList;-><init>()V

    #@81
    .line 326
    iput-object v5, p0, Lcom/android/internal/telephony/PhoneBase;->mSuppServiceFailedRegistrants:Landroid/os/RegistrantList;

    #@83
    .line 330
    new-instance v5, Landroid/os/RegistrantList;

    #@85
    invoke-direct {v5}, Landroid/os/RegistrantList;-><init>()V

    #@88
    .line 329
    iput-object v5, p0, Lcom/android/internal/telephony/PhoneBase;->mRadioOffOrNotAvailableRegistrants:Landroid/os/RegistrantList;

    #@8a
    .line 333
    new-instance v5, Landroid/os/RegistrantList;

    #@8c
    invoke-direct {v5}, Landroid/os/RegistrantList;-><init>()V

    #@8f
    .line 332
    iput-object v5, p0, Lcom/android/internal/telephony/PhoneBase;->mSimRecordsLoadedRegistrants:Landroid/os/RegistrantList;

    #@91
    .line 336
    new-instance v5, Landroid/os/RegistrantList;

    #@93
    invoke-direct {v5}, Landroid/os/RegistrantList;-><init>()V

    #@96
    .line 335
    iput-object v5, p0, Lcom/android/internal/telephony/PhoneBase;->mVideoCapabilityChangedRegistrants:Landroid/os/RegistrantList;

    #@98
    .line 339
    new-instance v5, Landroid/os/RegistrantList;

    #@9a
    invoke-direct {v5}, Landroid/os/RegistrantList;-><init>()V

    #@9d
    .line 338
    iput-object v5, p0, Lcom/android/internal/telephony/PhoneBase;->mEmergencyCallToggledRegistrants:Landroid/os/RegistrantList;

    #@9f
    .line 397
    iput p6, p0, Lcom/android/internal/telephony/PhoneBase;->mPhoneId:I

    #@a1
    .line 398
    iput-object p1, p0, Lcom/android/internal/telephony/PhoneBase;->mName:Ljava/lang/String;

    #@a3
    .line 399
    iput-object p2, p0, Lcom/android/internal/telephony/PhoneBase;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    #@a5
    .line 400
    iput-object p3, p0, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    #@a7
    .line 401
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@aa
    move-result-object v5

    #@ab
    iput-object v5, p0, Lcom/android/internal/telephony/PhoneBase;->mLooper:Landroid/os/Looper;

    #@ad
    .line 402
    iput-object p4, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@af
    .line 403
    new-instance v5, Ljava/lang/StringBuilder;

    #@b1
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@b4
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getClass()Ljava/lang/Class;

    #@b7
    move-result-object v6

    #@b8
    invoke-virtual {v6}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    #@bb
    move-result-object v6

    #@bc
    invoke-virtual {v6}, Ljava/lang/Package;->getName()Ljava/lang/String;

    #@bf
    move-result-object v6

    #@c0
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c3
    move-result-object v5

    #@c4
    const-string/jumbo v6, ".action_detached"

    #@c7
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ca
    move-result-object v5

    #@cb
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ce
    move-result-object v5

    #@cf
    iput-object v5, p0, Lcom/android/internal/telephony/PhoneBase;->mActionDetached:Ljava/lang/String;

    #@d1
    .line 404
    new-instance v5, Ljava/lang/StringBuilder;

    #@d3
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@d6
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getClass()Ljava/lang/Class;

    #@d9
    move-result-object v6

    #@da
    invoke-virtual {v6}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    #@dd
    move-result-object v6

    #@de
    invoke-virtual {v6}, Ljava/lang/Package;->getName()Ljava/lang/String;

    #@e1
    move-result-object v6

    #@e2
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e5
    move-result-object v5

    #@e6
    const-string/jumbo v6, ".action_attached"

    #@e9
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ec
    move-result-object v5

    #@ed
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f0
    move-result-object v5

    #@f1
    iput-object v5, p0, Lcom/android/internal/telephony/PhoneBase;->mActionAttached:Ljava/lang/String;

    #@f3
    .line 406
    sget-boolean v5, Landroid/os/Build;->IS_DEBUGGABLE:Z

    #@f5
    if-eqz v5, :cond_0

    #@f7
    .line 407
    new-instance v5, Lcom/android/internal/telephony/TelephonyTester;

    #@f9
    invoke-direct {v5, p0}, Lcom/android/internal/telephony/TelephonyTester;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    #@fc
    iput-object v5, p0, Lcom/android/internal/telephony/PhoneBase;->mTelephonyTester:Lcom/android/internal/telephony/TelephonyTester;

    #@fe
    .line 410
    :cond_0
    invoke-virtual {p0, p5}, Lcom/android/internal/telephony/PhoneBase;->setUnitTestMode(Z)V

    #@101
    .line 412
    invoke-static {p3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    #@104
    move-result-object v3

    #@105
    .line 413
    .local v3, "sp":Landroid/content/SharedPreferences;
    const-string/jumbo v5, "dns_server_check_disabled_key"

    #@108
    const/4 v6, 0x0

    #@109
    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    #@10c
    move-result v5

    #@10d
    iput-boolean v5, p0, Lcom/android/internal/telephony/PhoneBase;->mDnsCheckDisabled:Z

    #@10f
    .line 414
    iget-object v5, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@111
    const/16 v6, 0xe

    #@113
    const/4 v7, 0x0

    #@114
    invoke-interface {v5, p0, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->setOnCallRing(Landroid/os/Handler;ILjava/lang/Object;)V

    #@117
    .line 422
    iget-object v5, p0, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    #@119
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@11c
    move-result-object v5

    #@11d
    .line 423
    const v6, 0x1120053

    #@120
    .line 422
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@123
    move-result v5

    #@124
    iput-boolean v5, p0, Lcom/android/internal/telephony/PhoneBase;->mIsVoiceCapable:Z

    #@126
    .line 436
    const-string/jumbo v5, "ro.telephony.call_ring.multiple"

    #@129
    const/4 v6, 0x1

    #@12a
    .line 435
    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@12d
    move-result v5

    #@12e
    iput-boolean v5, p0, Lcom/android/internal/telephony/PhoneBase;->mDoesRilSendMultipleCallRing:Z

    #@130
    .line 437
    const-string/jumbo v5, "PhoneBase"

    #@133
    new-instance v6, Ljava/lang/StringBuilder;

    #@135
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@138
    const-string/jumbo v7, "mDoesRilSendMultipleCallRing="

    #@13b
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13e
    move-result-object v6

    #@13f
    iget-boolean v7, p0, Lcom/android/internal/telephony/PhoneBase;->mDoesRilSendMultipleCallRing:Z

    #@141
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@144
    move-result-object v6

    #@145
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@148
    move-result-object v6

    #@149
    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@14c
    .line 440
    const-string/jumbo v5, "ro.telephony.call_ring.delay"

    #@14f
    const/16 v6, 0xbb8

    #@151
    .line 439
    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    #@154
    move-result v5

    #@155
    iput v5, p0, Lcom/android/internal/telephony/PhoneBase;->mCallRingDelay:I

    #@157
    .line 441
    const-string/jumbo v5, "PhoneBase"

    #@15a
    new-instance v6, Ljava/lang/StringBuilder;

    #@15c
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@15f
    const-string/jumbo v7, "mCallRingDelay="

    #@162
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@165
    move-result-object v6

    #@166
    iget v7, p0, Lcom/android/internal/telephony/PhoneBase;->mCallRingDelay:I

    #@168
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16b
    move-result-object v6

    #@16c
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16f
    move-result-object v6

    #@170
    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@173
    .line 443
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    #@176
    move-result v5

    #@177
    const/4 v6, 0x5

    #@178
    if-ne v5, v6, :cond_1

    #@17a
    .line 444
    return-void

    #@17b
    .line 450
    :cond_1
    iget-object v5, p0, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    #@17d
    invoke-static {v5}, Lcom/android/internal/telephony/PhoneBase;->getLocaleFromCarrierProperties(Landroid/content/Context;)Ljava/util/Locale;

    #@180
    move-result-object v0

    #@181
    .line 451
    .local v0, "carrierLocale":Ljava/util/Locale;
    if-eqz v0, :cond_2

    #@183
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    #@186
    move-result-object v5

    #@187
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@18a
    move-result v5

    #@18b
    if-eqz v5, :cond_4

    #@18d
    .line 465
    :cond_2
    :goto_0
    new-instance v5, Lcom/android/internal/telephony/SmsStorageMonitor;

    #@18f
    invoke-direct {v5, p0}, Lcom/android/internal/telephony/SmsStorageMonitor;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    #@192
    iput-object v5, p0, Lcom/android/internal/telephony/PhoneBase;->mSmsStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    #@194
    .line 466
    new-instance v5, Lcom/android/internal/telephony/SmsUsageMonitor;

    #@196
    invoke-direct {v5, p3}, Lcom/android/internal/telephony/SmsUsageMonitor;-><init>(Landroid/content/Context;)V

    #@199
    iput-object v5, p0, Lcom/android/internal/telephony/PhoneBase;->mSmsUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    #@19b
    .line 467
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    #@19e
    move-result-object v5

    #@19f
    iput-object v5, p0, Lcom/android/internal/telephony/PhoneBase;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    #@1a1
    .line 468
    iget-object v5, p0, Lcom/android/internal/telephony/PhoneBase;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    #@1a3
    const/16 v6, 0x1e

    #@1a5
    const/4 v7, 0x0

    #@1a6
    invoke-virtual {v5, p0, v6, v7}, Lcom/android/internal/telephony/uicc/UiccController;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    #@1a9
    .line 469
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    #@1ac
    move-result v5

    #@1ad
    const/4 v6, 0x3

    #@1ae
    if-eq v5, v6, :cond_3

    #@1b0
    .line 470
    iget-object v5, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@1b2
    const/16 v6, 0x1f

    #@1b4
    const/4 v7, 0x0

    #@1b5
    invoke-interface {v5, p0, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->registerForSrvccStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    #@1b8
    .line 472
    :cond_3
    iget-object v5, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@1ba
    const/16 v6, 0x22

    #@1bc
    const/4 v7, 0x0

    #@1bd
    invoke-interface {v5, p0, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->setOnUnsolOemHookRaw(Landroid/os/Handler;ILjava/lang/Object;)V

    #@1c0
    .line 473
    iget-object v5, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@1c2
    .line 474
    const/16 v6, 0x25

    #@1c4
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/PhoneBase;->obtainMessage(I)Landroid/os/Message;

    #@1c7
    move-result-object v6

    #@1c8
    .line 473
    const/16 v7, 0xc8

    #@1ca
    const/4 v8, 0x1

    #@1cb
    invoke-interface {v5, v7, v8, v6}, Lcom/android/internal/telephony/CommandsInterface;->startLceService(IZLandroid/os/Message;)V

    #@1ce
    .line 396
    return-void

    #@1cf
    .line 452
    :cond_4
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    #@1d2
    move-result-object v1

    #@1d3
    .line 454
    .local v1, "country":Ljava/lang/String;
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    #@1d5
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@1d8
    move-result-object v5

    #@1d9
    .line 455
    const-string/jumbo v6, "wifi_country_code"

    #@1dc
    .line 454
    invoke-static {v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@1df
    goto :goto_0

    #@1e0
    .line 456
    :catch_0
    move-exception v2

    #@1e1
    .line 459
    .local v2, "e":Landroid/provider/Settings$SettingNotFoundException;
    iget-object v5, p0, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    #@1e3
    const-string/jumbo v6, "wifi"

    #@1e6
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@1e9
    move-result-object v4

    #@1ea
    .line 458
    check-cast v4, Landroid/net/wifi/WifiManager;

    #@1ec
    .line 460
    .local v4, "wM":Landroid/net/wifi/WifiManager;
    const/4 v5, 0x0

    #@1ed
    invoke-virtual {v4, v1, v5}, Landroid/net/wifi/WifiManager;->setCountryCode(Ljava/lang/String;Z)V

    #@1f0
    goto :goto_0
.end method

.method private checkCorrectThread(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 1196
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    #@3
    move-result-object v0

    #@4
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mLooper:Landroid/os/Looper;

    #@6
    if-eq v0, v1, :cond_0

    #@8
    .line 1197
    new-instance v0, Ljava/lang/RuntimeException;

    #@a
    .line 1198
    const-string/jumbo v1, "com.android.internal.telephony.Phone must be used from within one thread"

    #@d
    .line 1197
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 1195
    :cond_0
    return-void
.end method

.method private static getLocaleFromCarrierProperties(Landroid/content/Context;)Ljava/util/Locale;
    .locals 7
    .param p0, "ctx"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 1207
    const-string/jumbo v4, "ro.carrier"

    #@4
    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    .line 1209
    .local v1, "carrier":Ljava/lang/String;
    if-eqz v1, :cond_0

    #@a
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@d
    move-result v4

    #@e
    if-nez v4, :cond_1

    #@10
    .line 1210
    :cond_0
    return-object v6

    #@11
    .line 1209
    :cond_1
    const-string/jumbo v4, "unknown"

    #@14
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@17
    move-result v4

    #@18
    if-nez v4, :cond_0

    #@1a
    .line 1213
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@1d
    move-result-object v4

    #@1e
    const v5, 0x107004e

    #@21
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    #@24
    move-result-object v2

    #@25
    .line 1215
    .local v2, "carrierLocales":[Ljava/lang/CharSequence;
    const/4 v3, 0x0

    #@26
    .local v3, "i":I
    :goto_0
    array-length v4, v2

    #@27
    if-ge v3, v4, :cond_3

    #@29
    .line 1216
    aget-object v4, v2, v3

    #@2b
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@2e
    move-result-object v0

    #@2f
    .line 1217
    .local v0, "c":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@32
    move-result v4

    #@33
    if-eqz v4, :cond_2

    #@35
    .line 1218
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
    .line 1215
    :cond_2
    add-int/lit8 v3, v3, 0x3

    #@4c
    goto :goto_0

    #@4d
    .line 1222
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
    .line 2286
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getIccSerialNumber()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    .line 2287
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
    .line 2288
    :cond_0
    return v4

    #@13
    .line 2291
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    #@15
    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    #@18
    move-result-object v1

    #@19
    .line 2292
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
    .line 2293
    .local v2, "value":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v2, :cond_2

    #@30
    .line 2294
    return v4

    #@31
    .line 2296
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
    .line 1069
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    #@3
    move-result-object v4

    #@4
    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    #@7
    move-result-object v3

    #@8
    .line 1070
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
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getSubId()I

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
    .line 1071
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
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getSubId()I

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
    .line 1072
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
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getSubId()I

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
    .line 1073
    .local v2, "shrt":Ljava/lang/String;
    new-instance v4, Lcom/android/internal/telephony/OperatorInfo;

    #@67
    invoke-direct {v4, v1, v0, v2}, Lcom/android/internal/telephony/OperatorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@6a
    return-object v4
.end method

.method private static getVideoState(Lcom/android/internal/telephony/Call;)I
    .locals 2
    .param p0, "call"    # Lcom/android/internal/telephony/Call;

    #@0
    .prologue
    .line 1583
    const/4 v1, 0x0

    #@1
    .line 1584
    .local v1, "videoState":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    #@4
    move-result-object v0

    #@5
    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    #@7
    .line 1585
    .local v0, "conn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    if-eqz v0, :cond_0

    #@9
    .line 1586
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getVideoState()I

    #@c
    move-result v1

    #@d
    .line 1588
    :cond_0
    return v1
.end method

.method private handleSetSelectNetwork(Landroid/os/AsyncResult;)V
    .locals 4
    .param p1, "ar"    # Landroid/os/AsyncResult;

    #@0
    .prologue
    .line 1049
    iget-object v1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    #@2
    instance-of v1, v1, Lcom/android/internal/telephony/PhoneBase$NetworkSelectMessage;

    #@4
    if-nez v1, :cond_0

    #@6
    .line 1050
    const-string/jumbo v1, "PhoneBase"

    #@9
    const-string/jumbo v2, "unexpected result from user object."

    #@c
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@f
    .line 1051
    return-void

    #@10
    .line 1054
    :cond_0
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    #@12
    check-cast v0, Lcom/android/internal/telephony/PhoneBase$NetworkSelectMessage;

    #@14
    .line 1058
    .local v0, "nsm":Lcom/android/internal/telephony/PhoneBase$NetworkSelectMessage;
    iget-object v1, v0, Lcom/android/internal/telephony/PhoneBase$NetworkSelectMessage;->message:Landroid/os/Message;

    #@16
    if-eqz v1, :cond_1

    #@18
    .line 1059
    iget-object v1, v0, Lcom/android/internal/telephony/PhoneBase$NetworkSelectMessage;->message:Landroid/os/Message;

    #@1a
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@1c
    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@1e
    invoke-static {v1, v2, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    #@21
    .line 1060
    iget-object v1, v0, Lcom/android/internal/telephony/PhoneBase$NetworkSelectMessage;->message:Landroid/os/Message;

    #@23
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    #@26
    .line 1046
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
    .line 669
    const-string/jumbo v5, "PhoneBase"

    #@4
    const-string/jumbo v6, "handleSrvccStateChanged"

    #@7
    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@a
    .line 671
    const/4 v0, 0x0

    #@b
    .line 672
    .local v0, "conn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/Connection;>;"
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@d
    .line 673
    .local v1, "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    sget-object v3, Lcom/android/internal/telephony/Call$SrvccState;->NONE:Lcom/android/internal/telephony/Call$SrvccState;

    #@f
    .line 674
    .local v3, "srvccState":Lcom/android/internal/telephony/Call$SrvccState;
    if-eqz p1, :cond_0

    #@11
    array-length v5, p1

    #@12
    if-eqz v5, :cond_0

    #@14
    .line 675
    aget v4, p1, v7

    #@16
    .line 676
    .local v4, "state":I
    packed-switch v4, :pswitch_data_0

    #@19
    .line 701
    return-void

    #@1a
    .line 678
    :pswitch_0
    sget-object v3, Lcom/android/internal/telephony/Call$SrvccState;->STARTED:Lcom/android/internal/telephony/Call$SrvccState;

    #@1c
    .line 679
    if-eqz v1, :cond_1

    #@1e
    .line 680
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getHandoverConnection()Ljava/util/ArrayList;

    #@21
    move-result-object v0

    #@22
    .line 681
    .local v0, "conn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/Connection;>;"
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/PhoneBase;->migrateFrom(Lcom/android/internal/telephony/PhoneBase;)V

    #@25
    .line 704
    .end local v0    # "conn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/Connection;>;"
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    #@28
    move-result-object v5

    #@29
    invoke-virtual {v5, v3, v0}, Lcom/android/internal/telephony/CallTracker;->notifySrvccState(Lcom/android/internal/telephony/Call$SrvccState;Ljava/util/ArrayList;)V

    #@2c
    .line 706
    new-instance v2, Landroid/telephony/VoLteServiceState;

    #@2e
    invoke-direct {v2, v4}, Landroid/telephony/VoLteServiceState;-><init>(I)V

    #@31
    .line 707
    .local v2, "lteState":Landroid/telephony/VoLteServiceState;
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/PhoneBase;->notifyVoLteServiceStateChanged(Landroid/telephony/VoLteServiceState;)V

    #@34
    .line 668
    .end local v2    # "lteState":Landroid/telephony/VoLteServiceState;
    .end local v4    # "state":I
    :cond_0
    return-void

    #@35
    .line 683
    .local v0, "conn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/Connection;>;"
    .restart local v4    # "state":I
    :cond_1
    const-string/jumbo v5, "PhoneBase"

    #@38
    const-string/jumbo v6, "HANDOVER_STARTED: mImsPhone null"

    #@3b
    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@3e
    goto :goto_0

    #@3f
    .line 687
    :pswitch_1
    sget-object v3, Lcom/android/internal/telephony/Call$SrvccState;->COMPLETED:Lcom/android/internal/telephony/Call$SrvccState;

    #@41
    .line 688
    if-eqz v1, :cond_2

    #@43
    .line 689
    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifySrvccState(Lcom/android/internal/telephony/Call$SrvccState;)V

    #@46
    goto :goto_0

    #@47
    .line 691
    :cond_2
    const-string/jumbo v5, "PhoneBase"

    #@4a
    const-string/jumbo v6, "HANDOVER_COMPLETED: mImsPhone null"

    #@4d
    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@50
    goto :goto_0

    #@51
    .line 696
    :pswitch_2
    sget-object v3, Lcom/android/internal/telephony/Call$SrvccState;->FAILED:Lcom/android/internal/telephony/Call$SrvccState;

    #@53
    goto :goto_0

    #@54
    .line 676
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
    .line 1592
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneBase;->getVideoState(Lcom/android/internal/telephony/Call;)I

    #@3
    move-result v0

    #@4
    .line 1593
    .local v0, "videoState":I
    invoke-static {v0}, Landroid/telecom/VideoProfile;->isVideo(I)Z

    #@7
    move-result v1

    #@8
    return v1
.end method

.method private static logUnexpectedCdmaMethodCall(Ljava/lang/String;)V
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1979
    const-string/jumbo v0, "PhoneBase"

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "Error! "

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    const-string/jumbo v2, "() in PhoneBase should not be "

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    .line 1980
    const-string/jumbo v2, "called, CDMAPhone inactive."

    #@1d
    .line 1979
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@28
    .line 1977
    return-void
.end method

.method private static logUnexpectedGsmMethodCall(Ljava/lang/String;)V
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1992
    const-string/jumbo v0, "PhoneBase"

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "Error! "

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    const-string/jumbo v2, "() in PhoneBase should not be "

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    .line 1993
    const-string/jumbo v2, "called, GSMPhone inactive."

    #@1d
    .line 1992
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@28
    .line 1991
    return-void
.end method

.method private notifyIncomingRing()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1929
    iget-boolean v1, p0, Lcom/android/internal/telephony/PhoneBase;->mIsVoiceCapable:Z

    #@3
    if-nez v1, :cond_0

    #@5
    .line 1930
    return-void

    #@6
    .line 1931
    :cond_0
    new-instance v0, Landroid/os/AsyncResult;

    #@8
    invoke-direct {v0, v2, p0, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@b
    .line 1932
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mIncomingRingRegistrants:Landroid/os/RegistrantList;

    #@d
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    #@10
    .line 1928
    return-void
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
    const v4, 0x7fffffff

    #@3
    const/4 v3, 0x0

    #@4
    .line 1317
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@b
    move-result-object v1

    #@c
    .line 1318
    const-string/jumbo v2, "location_mode"

    #@f
    .line 1317
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@12
    move-result v10

    #@13
    .line 1319
    .local v10, "mode":I
    if-nez v10, :cond_2

    #@15
    .line 1320
    new-instance v12, Ljava/util/ArrayList;

    #@17
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@1a
    move-result v1

    #@1b
    invoke-direct {v12, v1}, Ljava/util/ArrayList;-><init>(I)V

    #@1e
    .line 1322
    .local v12, "privateCellInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/CellInfo;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@21
    move-result-object v7

    #@22
    .local v7, "c$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@25
    move-result v1

    #@26
    if-eqz v1, :cond_1

    #@28
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2b
    move-result-object v6

    #@2c
    check-cast v6, Landroid/telephony/CellInfo;

    #@2e
    .line 1323
    .local v6, "c":Landroid/telephony/CellInfo;
    instance-of v1, v6, Landroid/telephony/CellInfoCdma;

    #@30
    if-eqz v1, :cond_0

    #@32
    move-object v9, v6

    #@33
    .line 1324
    check-cast v9, Landroid/telephony/CellInfoCdma;

    #@35
    .line 1325
    .local v9, "cellInfoCdma":Landroid/telephony/CellInfoCdma;
    invoke-virtual {v9}, Landroid/telephony/CellInfoCdma;->getCellIdentity()Landroid/telephony/CellIdentityCdma;

    #@38
    move-result-object v8

    #@39
    .line 1326
    .local v8, "cellIdentity":Landroid/telephony/CellIdentityCdma;
    new-instance v0, Landroid/telephony/CellIdentityCdma;

    #@3b
    .line 1327
    invoke-virtual {v8}, Landroid/telephony/CellIdentityCdma;->getNetworkId()I

    #@3e
    move-result v1

    #@3f
    .line 1328
    invoke-virtual {v8}, Landroid/telephony/CellIdentityCdma;->getSystemId()I

    #@42
    move-result v2

    #@43
    .line 1329
    invoke-virtual {v8}, Landroid/telephony/CellIdentityCdma;->getBasestationId()I

    #@46
    move-result v3

    #@47
    move v5, v4

    #@48
    .line 1326
    invoke-direct/range {v0 .. v5}, Landroid/telephony/CellIdentityCdma;-><init>(IIIII)V

    #@4b
    .line 1331
    .local v0, "maskedCellIdentity":Landroid/telephony/CellIdentityCdma;
    new-instance v11, Landroid/telephony/CellInfoCdma;

    #@4d
    invoke-direct {v11, v9}, Landroid/telephony/CellInfoCdma;-><init>(Landroid/telephony/CellInfoCdma;)V

    #@50
    .line 1332
    .local v11, "privateCellInfoCdma":Landroid/telephony/CellInfoCdma;
    invoke-virtual {v11, v0}, Landroid/telephony/CellInfoCdma;->setCellIdentity(Landroid/telephony/CellIdentityCdma;)V

    #@53
    .line 1333
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@56
    goto :goto_0

    #@57
    .line 1335
    .end local v0    # "maskedCellIdentity":Landroid/telephony/CellIdentityCdma;
    .end local v8    # "cellIdentity":Landroid/telephony/CellIdentityCdma;
    .end local v9    # "cellInfoCdma":Landroid/telephony/CellInfoCdma;
    .end local v11    # "privateCellInfoCdma":Landroid/telephony/CellInfoCdma;
    :cond_0
    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5a
    goto :goto_0

    #@5b
    .line 1338
    .end local v6    # "c":Landroid/telephony/CellInfo;
    :cond_1
    move-object p1, v12

    #@5c
    .line 1340
    .end local v7    # "c$iterator":Ljava/util/Iterator;
    .end local v12    # "privateCellInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/CellInfo;>;"
    :cond_2
    return-object p1
.end method

.method private sendIncomingCallRingNotification(I)V
    .locals 4
    .param p1, "token"    # I

    #@0
    .prologue
    .line 1939
    iget-boolean v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIsVoiceCapable:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-boolean v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDoesRilSendMultipleCallRing:Z

    #@6
    if-eqz v0, :cond_1

    #@8
    .line 1946
    :cond_0
    const-string/jumbo v0, "PhoneBase"

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
    .line 1947
    iget-boolean v2, p0, Lcom/android/internal/telephony/PhoneBase;->mDoesRilSendMultipleCallRing:Z

    #@19
    .line 1946
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    .line 1948
    const-string/jumbo v2, " token="

    #@20
    .line 1946
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    .line 1949
    const-string/jumbo v2, " mCallRingContinueToken="

    #@2b
    .line 1946
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    .line 1949
    iget v2, p0, Lcom/android/internal/telephony/PhoneBase;->mCallRingContinueToken:I

    #@31
    .line 1946
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@34
    move-result-object v1

    #@35
    .line 1950
    const-string/jumbo v2, " mIsVoiceCapable="

    #@38
    .line 1946
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v1

    #@3c
    .line 1950
    iget-boolean v2, p0, Lcom/android/internal/telephony/PhoneBase;->mIsVoiceCapable:Z

    #@3e
    .line 1946
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
    .line 1938
    :goto_0
    return-void

    #@4a
    .line 1940
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCallRingContinueToken:I

    #@4c
    if-ne p1, v0, :cond_0

    #@4e
    .line 1941
    const-string/jumbo v0, "PhoneBase"

    #@51
    const-string/jumbo v1, "Sending notifyIncomingRing"

    #@54
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@57
    .line 1942
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneBase;->notifyIncomingRing()V

    #@5a
    .line 1944
    const/16 v0, 0xf

    #@5c
    const/4 v1, 0x0

    #@5d
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/PhoneBase;->obtainMessage(III)Landroid/os/Message;

    #@60
    move-result-object v0

    #@61
    iget v1, p0, Lcom/android/internal/telephony/PhoneBase;->mCallRingDelay:I

    #@63
    int-to-long v2, v1

    #@64
    .line 1943
    invoke-virtual {p0, v0, v2, v3}, Lcom/android/internal/telephony/PhoneBase;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@67
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
    .line 2211
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    #@2
    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    #@5
    move-result-object v2

    #@6
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    #@9
    move-result-object v1

    #@a
    .line 2212
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
    .line 2213
    .local v0, "key":Ljava/lang/String;
    if-eqz p1, :cond_0

    #@1d
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    #@20
    move-result v2

    #@21
    if-eqz v2, :cond_1

    #@23
    .line 2214
    :cond_0
    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    #@26
    move-result-object v2

    #@27
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    #@2a
    .line 2209
    :goto_0
    return-void

    #@2b
    .line 2216
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

.method private updateSavedNetworkOperator(Lcom/android/internal/telephony/PhoneBase$NetworkSelectMessage;)V
    .locals 6
    .param p1, "nsm"    # Lcom/android/internal/telephony/PhoneBase$NetworkSelectMessage;

    #@0
    .prologue
    .line 1023
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getSubId()I

    #@3
    move-result v2

    #@4
    .line 1024
    .local v2, "subId":I
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    #@7
    move-result v3

    #@8
    if-eqz v3, :cond_1

    #@a
    .line 1027
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    #@d
    move-result-object v3

    #@e
    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    #@11
    move-result-object v1

    #@12
    .line 1028
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    #@15
    move-result-object v0

    #@16
    .line 1029
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
    iget-object v4, p1, Lcom/android/internal/telephony/PhoneBase$NetworkSelectMessage;->operatorNumeric:Ljava/lang/String;

    #@2c
    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    #@2f
    .line 1030
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
    iget-object v4, p1, Lcom/android/internal/telephony/PhoneBase$NetworkSelectMessage;->operatorAlphaLong:Ljava/lang/String;

    #@45
    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    #@48
    .line 1031
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
    iget-object v4, p1, Lcom/android/internal/telephony/PhoneBase$NetworkSelectMessage;->operatorAlphaShort:Ljava/lang/String;

    #@5e
    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    #@61
    .line 1034
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    #@64
    move-result v3

    #@65
    if-nez v3, :cond_0

    #@67
    .line 1035
    const-string/jumbo v3, "PhoneBase"

    #@6a
    const-string/jumbo v4, "failed to commit network selection preference"

    #@6d
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@70
    .line 1022
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "sp":Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    return-void

    #@71
    .line 1038
    :cond_1
    const-string/jumbo v3, "PhoneBase"

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
.method public acquireOwnershipOfImsPhone(Lcom/android/internal/telephony/imsphone/ImsPhone;)V
    .locals 4
    .param p1, "imsPhone"    # Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@0
    .prologue
    .line 2091
    sget-object v1, Lcom/android/internal/telephony/PhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 2092
    if-nez p1, :cond_0

    #@5
    monitor-exit v1

    #@6
    .line 2093
    return-void

    #@7
    .line 2095
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@9
    if-eqz v0, :cond_1

    #@b
    .line 2096
    const-string/jumbo v0, "PhoneBase"

    #@e
    const-string/jumbo v2, "acquireOwnershipOfImsPhone: non-null mImsPhone. Shouldn\'t happen - but disposing"

    #@11
    invoke-static {v0, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@14
    .line 2098
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@16
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->dispose()V

    #@19
    .line 2105
    :cond_1
    iput-object p1, p0, Lcom/android/internal/telephony/PhoneBase;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@1b
    .line 2107
    const/4 v0, 0x1

    #@1c
    iput-boolean v0, p0, Lcom/android/internal/telephony/PhoneBase;->mImsServiceReady:Z

    #@1e
    .line 2108
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@20
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->updateParentPhone(Lcom/android/internal/telephony/PhoneBase;)V

    #@23
    .line 2109
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    #@26
    move-result-object v0

    #@27
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@29
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/CallManager;->registerPhone(Lcom/android/internal/telephony/Phone;)Z

    #@2c
    .line 2110
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@2e
    .line 2111
    const/16 v2, 0x20

    #@30
    const/4 v3, 0x0

    #@31
    .line 2110
    invoke-virtual {v0, p0, v2, v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->registerForSilentRedial(Landroid/os/Handler;ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@34
    monitor-exit v1

    #@35
    .line 2090
    return-void

    #@36
    .line 2091
    :catchall_0
    move-exception v0

    #@37
    monitor-exit v1

    #@38
    throw v0
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
    .line 2151
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public disableDnsCheck(Z)V
    .locals 3
    .param p1, "b"    # Z

    #@0
    .prologue
    .line 727
    iput-boolean p1, p0, Lcom/android/internal/telephony/PhoneBase;->mDnsCheckDisabled:Z

    #@2
    .line 728
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    #@5
    move-result-object v2

    #@6
    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    #@9
    move-result-object v1

    #@a
    .line 729
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    #@d
    move-result-object v0

    #@e
    .line 730
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "dns_server_check_disabled_key"

    #@11
    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    #@14
    .line 731
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    #@17
    .line 726
    return-void
.end method

.method public dispose()V
    .locals 4

    #@0
    .prologue
    .line 502
    sget-object v2, Lcom/android/internal/telephony/PhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 503
    :try_start_0
    iget-boolean v1, p0, Lcom/android/internal/telephony/PhoneBase;->mImsIntentReceiverRegistered:Z

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 504
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    #@9
    iget-object v3, p0, Lcom/android/internal/telephony/PhoneBase;->mImsIntentReceiver:Landroid/content/BroadcastReceiver;

    #@b
    invoke-virtual {v1, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    #@e
    .line 505
    const/4 v1, 0x0

    #@f
    iput-boolean v1, p0, Lcom/android/internal/telephony/PhoneBase;->mImsIntentReceiverRegistered:Z

    #@11
    .line 507
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@13
    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnCallRing(Landroid/os/Handler;)V

    #@16
    .line 509
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@18
    const/4 v3, 0x0

    #@19
    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->cleanUpAllConnections(Ljava/lang/String;)V

    #@1c
    .line 510
    const/4 v1, 0x0

    #@1d
    iput-boolean v1, p0, Lcom/android/internal/telephony/PhoneBase;->mIsTheCurrentActivePhone:Z

    #@1f
    .line 512
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mSmsStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    #@21
    invoke-virtual {v1}, Lcom/android/internal/telephony/SmsStorageMonitor;->dispose()V

    #@24
    .line 513
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mSmsUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    #@26
    invoke-virtual {v1}, Lcom/android/internal/telephony/SmsUsageMonitor;->dispose()V

    #@29
    .line 514
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    #@2b
    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/uicc/UiccController;->unregisterForIccChanged(Landroid/os/Handler;)V

    #@2e
    .line 515
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@30
    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForSrvccStateChanged(Landroid/os/Handler;)V

    #@33
    .line 516
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@35
    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnUnsolOemHookRaw(Landroid/os/Handler;)V

    #@38
    .line 517
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@3a
    const/16 v3, 0x25

    #@3c
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/PhoneBase;->obtainMessage(I)Landroid/os/Message;

    #@3f
    move-result-object v3

    #@40
    invoke-interface {v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->stopLceService(Landroid/os/Message;)V

    #@43
    .line 519
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mTelephonyTester:Lcom/android/internal/telephony/TelephonyTester;

    #@45
    if-eqz v1, :cond_1

    #@47
    .line 520
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mTelephonyTester:Lcom/android/internal/telephony/TelephonyTester;

    #@49
    invoke-virtual {v1}, Lcom/android/internal/telephony/TelephonyTester;->dispose()V

    #@4c
    .line 523
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@4e
    .line 524
    .local v0, "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    if-eqz v0, :cond_2

    #@50
    .line 525
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->unregisterForSilentRedial(Landroid/os/Handler;)V

    #@53
    .line 526
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->dispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@56
    :cond_2
    monitor-exit v2

    #@57
    .line 501
    return-void

    #@58
    .line 502
    .end local v0    # "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    :catchall_0
    move-exception v1

    #@59
    monitor-exit v2

    #@5a
    throw v1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 2438
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v2, "PhoneBase: subId="

    #@8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getSubId()I

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
    .line 2439
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
    iget v2, p0, Lcom/android/internal/telephony/PhoneBase;->mPhoneId:I

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
    .line 2440
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
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

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
    .line 2441
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
    iget-boolean v2, p0, Lcom/android/internal/telephony/PhoneBase;->mDnsCheckDisabled:Z

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
    .line 2442
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
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

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
    .line 2443
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
    iget-boolean v2, p0, Lcom/android/internal/telephony/PhoneBase;->mDoesRilSendMultipleCallRing:Z

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
    .line 2444
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
    iget v2, p0, Lcom/android/internal/telephony/PhoneBase;->mCallRingContinueToken:I

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
    .line 2445
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
    iget v2, p0, Lcom/android/internal/telephony/PhoneBase;->mCallRingDelay:I

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
    .line 2446
    new-instance v1, Ljava/lang/StringBuilder;

    #@cc
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@cf
    const-string/jumbo v2, " mIsTheCurrentActivePhone="

    #@d2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d5
    move-result-object v1

    #@d6
    iget-boolean v2, p0, Lcom/android/internal/telephony/PhoneBase;->mIsTheCurrentActivePhone:Z

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
    .line 2447
    new-instance v1, Ljava/lang/StringBuilder;

    #@e5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@e8
    const-string/jumbo v2, " mIsVoiceCapable="

    #@eb
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ee
    move-result-object v1

    #@ef
    iget-boolean v2, p0, Lcom/android/internal/telephony/PhoneBase;->mIsVoiceCapable:Z

    #@f1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@f4
    move-result-object v1

    #@f5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f8
    move-result-object v1

    #@f9
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@fc
    .line 2448
    new-instance v1, Ljava/lang/StringBuilder;

    #@fe
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@101
    const-string/jumbo v2, " mIccRecords="

    #@104
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@107
    move-result-object v1

    #@108
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    #@10a
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@10d
    move-result-object v2

    #@10e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@111
    move-result-object v1

    #@112
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@115
    move-result-object v1

    #@116
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@119
    .line 2449
    new-instance v1, Ljava/lang/StringBuilder;

    #@11b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@11e
    const-string/jumbo v2, " mUiccApplication="

    #@121
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@124
    move-result-object v1

    #@125
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    #@127
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@12a
    move-result-object v2

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
    .line 2450
    new-instance v1, Ljava/lang/StringBuilder;

    #@138
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@13b
    const-string/jumbo v2, " mSmsStorageMonitor="

    #@13e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@141
    move-result-object v1

    #@142
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mSmsStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

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
    .line 2451
    new-instance v1, Ljava/lang/StringBuilder;

    #@151
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@154
    const-string/jumbo v2, " mSmsUsageMonitor="

    #@157
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15a
    move-result-object v1

    #@15b
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mSmsUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    #@15d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@160
    move-result-object v1

    #@161
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@164
    move-result-object v1

    #@165
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@168
    .line 2452
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    #@16b
    .line 2453
    new-instance v1, Ljava/lang/StringBuilder;

    #@16d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@170
    const-string/jumbo v2, " mLooper="

    #@173
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@176
    move-result-object v1

    #@177
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mLooper:Landroid/os/Looper;

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
    .line 2454
    new-instance v1, Ljava/lang/StringBuilder;

    #@186
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@189
    const-string/jumbo v2, " mContext="

    #@18c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18f
    move-result-object v1

    #@190
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

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
    .line 2455
    new-instance v1, Ljava/lang/StringBuilder;

    #@19f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1a2
    const-string/jumbo v2, " mNotifier="

    #@1a5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a8
    move-result-object v1

    #@1a9
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

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
    .line 2456
    new-instance v1, Ljava/lang/StringBuilder;

    #@1b8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1bb
    const-string/jumbo v2, " mSimulatedRadioControl="

    #@1be
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c1
    move-result-object v1

    #@1c2
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mSimulatedRadioControl:Lcom/android/internal/telephony/test/SimulatedRadioControl;

    #@1c4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1c7
    move-result-object v1

    #@1c8
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1cb
    move-result-object v1

    #@1cc
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1cf
    .line 2457
    new-instance v1, Ljava/lang/StringBuilder;

    #@1d1
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1d4
    const-string/jumbo v2, " mUnitTestMode="

    #@1d7
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1da
    move-result-object v1

    #@1db
    iget-boolean v2, p0, Lcom/android/internal/telephony/PhoneBase;->mUnitTestMode:Z

    #@1dd
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1e0
    move-result-object v1

    #@1e1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e4
    move-result-object v1

    #@1e5
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1e8
    .line 2458
    new-instance v1, Ljava/lang/StringBuilder;

    #@1ea
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1ed
    const-string/jumbo v2, " isDnsCheckDisabled()="

    #@1f0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f3
    move-result-object v1

    #@1f4
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->isDnsCheckDisabled()Z

    #@1f7
    move-result v2

    #@1f8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1fb
    move-result-object v1

    #@1fc
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1ff
    move-result-object v1

    #@200
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@203
    .line 2459
    new-instance v1, Ljava/lang/StringBuilder;

    #@205
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@208
    const-string/jumbo v2, " getUnitTestMode()="

    #@20b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20e
    move-result-object v1

    #@20f
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getUnitTestMode()Z

    #@212
    move-result v2

    #@213
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@216
    move-result-object v1

    #@217
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21a
    move-result-object v1

    #@21b
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@21e
    .line 2460
    new-instance v1, Ljava/lang/StringBuilder;

    #@220
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@223
    const-string/jumbo v2, " getState()="

    #@226
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@229
    move-result-object v1

    #@22a
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    #@22d
    move-result-object v2

    #@22e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@231
    move-result-object v1

    #@232
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@235
    move-result-object v1

    #@236
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@239
    .line 2461
    new-instance v1, Ljava/lang/StringBuilder;

    #@23b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@23e
    const-string/jumbo v2, " getIccSerialNumber()="

    #@241
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@244
    move-result-object v1

    #@245
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getIccSerialNumber()Ljava/lang/String;

    #@248
    move-result-object v2

    #@249
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24c
    move-result-object v1

    #@24d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@250
    move-result-object v1

    #@251
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@254
    .line 2462
    new-instance v1, Ljava/lang/StringBuilder;

    #@256
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@259
    const-string/jumbo v2, " getIccRecordsLoaded()="

    #@25c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25f
    move-result-object v1

    #@260
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getIccRecordsLoaded()Z

    #@263
    move-result v2

    #@264
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@267
    move-result-object v1

    #@268
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26b
    move-result-object v1

    #@26c
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@26f
    .line 2463
    new-instance v1, Ljava/lang/StringBuilder;

    #@271
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@274
    const-string/jumbo v2, " getMessageWaitingIndicator()="

    #@277
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27a
    move-result-object v1

    #@27b
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getMessageWaitingIndicator()Z

    #@27e
    move-result v2

    #@27f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@282
    move-result-object v1

    #@283
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@286
    move-result-object v1

    #@287
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@28a
    .line 2464
    new-instance v1, Ljava/lang/StringBuilder;

    #@28c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@28f
    const-string/jumbo v2, " getCallForwardingIndicator()="

    #@292
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@295
    move-result-object v1

    #@296
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getCallForwardingIndicator()Z

    #@299
    move-result v2

    #@29a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@29d
    move-result-object v1

    #@29e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a1
    move-result-object v1

    #@2a2
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2a5
    .line 2465
    new-instance v1, Ljava/lang/StringBuilder;

    #@2a7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2aa
    const-string/jumbo v2, " isInEmergencyCall()="

    #@2ad
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b0
    move-result-object v1

    #@2b1
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->isInEmergencyCall()Z

    #@2b4
    move-result v2

    #@2b5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@2b8
    move-result-object v1

    #@2b9
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2bc
    move-result-object v1

    #@2bd
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2c0
    .line 2466
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    #@2c3
    .line 2467
    new-instance v1, Ljava/lang/StringBuilder;

    #@2c5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2c8
    const-string/jumbo v2, " isInEcm()="

    #@2cb
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2ce
    move-result-object v1

    #@2cf
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->isInEcm()Z

    #@2d2
    move-result v2

    #@2d3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@2d6
    move-result-object v1

    #@2d7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2da
    move-result-object v1

    #@2db
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2de
    .line 2468
    new-instance v1, Ljava/lang/StringBuilder;

    #@2e0
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2e3
    const-string/jumbo v2, " getPhoneName()="

    #@2e6
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e9
    move-result-object v1

    #@2ea
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneName()Ljava/lang/String;

    #@2ed
    move-result-object v2

    #@2ee
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f1
    move-result-object v1

    #@2f2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f5
    move-result-object v1

    #@2f6
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2f9
    .line 2469
    new-instance v1, Ljava/lang/StringBuilder;

    #@2fb
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2fe
    const-string/jumbo v2, " getPhoneType()="

    #@301
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@304
    move-result-object v1

    #@305
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    #@308
    move-result v2

    #@309
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@30c
    move-result-object v1

    #@30d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@310
    move-result-object v1

    #@311
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@314
    .line 2470
    new-instance v1, Ljava/lang/StringBuilder;

    #@316
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@319
    const-string/jumbo v2, " getVoiceMessageCount()="

    #@31c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31f
    move-result-object v1

    #@320
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getVoiceMessageCount()I

    #@323
    move-result v2

    #@324
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@327
    move-result-object v1

    #@328
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32b
    move-result-object v1

    #@32c
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@32f
    .line 2471
    new-instance v1, Ljava/lang/StringBuilder;

    #@331
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@334
    const-string/jumbo v2, " getActiveApnTypes()="

    #@337
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33a
    move-result-object v1

    #@33b
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getActiveApnTypes()[Ljava/lang/String;

    #@33e
    move-result-object v2

    #@33f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@342
    move-result-object v1

    #@343
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@346
    move-result-object v1

    #@347
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@34a
    .line 2472
    new-instance v1, Ljava/lang/StringBuilder;

    #@34c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@34f
    const-string/jumbo v2, " isDataConnectivityPossible()="

    #@352
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@355
    move-result-object v1

    #@356
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->isDataConnectivityPossible()Z

    #@359
    move-result v2

    #@35a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@35d
    move-result-object v1

    #@35e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@361
    move-result-object v1

    #@362
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@365
    .line 2473
    new-instance v1, Ljava/lang/StringBuilder;

    #@367
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@36a
    const-string/jumbo v2, " needsOtaServiceProvisioning="

    #@36d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@370
    move-result-object v1

    #@371
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->needsOtaServiceProvisioning()Z

    #@374
    move-result v2

    #@375
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@378
    move-result-object v1

    #@379
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37c
    move-result-object v1

    #@37d
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@380
    .line 2474
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    #@383
    .line 2475
    const-string/jumbo v1, "++++++++++++++++++++++++++++++++"

    #@386
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@389
    .line 2478
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@38b
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@38e
    .line 2482
    :goto_0
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    #@391
    .line 2483
    const-string/jumbo v1, "++++++++++++++++++++++++++++++++"

    #@394
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@397
    .line 2486
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    #@39a
    move-result-object v1

    #@39b
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/ServiceStateTracker;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    #@39e
    .line 2490
    :goto_1
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    #@3a1
    .line 2491
    const-string/jumbo v1, "++++++++++++++++++++++++++++++++"

    #@3a4
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3a7
    .line 2494
    :try_start_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    #@3aa
    move-result-object v1

    #@3ab
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/CallTracker;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    #@3ae
    .line 2498
    :goto_2
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    #@3b1
    .line 2499
    const-string/jumbo v1, "++++++++++++++++++++++++++++++++"

    #@3b4
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3b7
    .line 2502
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@3b9
    check-cast v1, Lcom/android/internal/telephony/RIL;

    #@3bb
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/RIL;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    #@3be
    .line 2506
    :goto_3
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    #@3c1
    .line 2507
    const-string/jumbo v1, "++++++++++++++++++++++++++++++++"

    #@3c4
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3c7
    .line 2437
    return-void

    #@3c8
    .line 2479
    :catch_0
    move-exception v0

    #@3c9
    .line 2480
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    #@3cc
    goto :goto_0

    #@3cd
    .line 2487
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    #@3ce
    .line 2488
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    #@3d1
    goto :goto_1

    #@3d2
    .line 2495
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    #@3d3
    .line 2496
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    #@3d6
    goto :goto_2

    #@3d7
    .line 2503
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v0

    #@3d8
    .line 2504
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    #@3db
    goto :goto_3
.end method

.method public enableEnhancedVoicePrivacy(ZLandroid/os/Message;)V
    .locals 1
    .param p1, "enable"    # Z
    .param p2, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1467
    const-string/jumbo v0, "enableEnhancedVoicePrivacy"

    #@3
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneBase;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    #@6
    .line 1465
    return-void
.end method

.method public exitEmergencyCallbackMode()V
    .locals 1

    #@0
    .prologue
    .line 1704
    const-string/jumbo v0, "exitEmergencyCallbackMode"

    #@3
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneBase;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    #@6
    .line 1702
    return-void
.end method

.method public getActionAttached()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mActionAttached:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getActionDetached()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mActionDetached:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getActiveApnHost(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "apnType"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1877
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getActiveApnString(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getActiveApnTypes()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1867
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getActiveApnTypes()[Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
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
    .line 1307
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {v1}, Lcom/android/internal/telephony/ServiceStateTracker;->getAllCellInfo()Ljava/util/List;

    #@7
    move-result-object v0

    #@8
    .line 1308
    .local v0, "cellInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PhoneBase;->privatizeCellInfoList(Ljava/util/List;)Ljava/util/List;

    #@b
    move-result-object v1

    #@c
    return-object v1
.end method

.method public getCallForwardingIndicator()Z
    .locals 2

    #@0
    .prologue
    .line 1359
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    #@2
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    #@8
    .line 1360
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    #@a
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getVoiceCallForwardingFlag()Z

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

.method public getCallTracker()Lcom/android/internal/telephony/CallTracker;
    .locals 1

    #@0
    .prologue
    .line 1273
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getCdmaEriIconIndex()I
    .locals 1

    #@0
    .prologue
    .line 1650
    const-string/jumbo v0, "getCdmaEriIconIndex"

    #@3
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneBase;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    #@6
    .line 1651
    const/4 v0, -0x1

    #@7
    return v0
.end method

.method public getCdmaEriIconMode()I
    .locals 1

    #@0
    .prologue
    .line 1661
    const-string/jumbo v0, "getCdmaEriIconMode"

    #@3
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneBase;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    #@6
    .line 1662
    const/4 v0, -0x1

    #@7
    return v0
.end method

.method public getCdmaEriText()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1670
    const-string/jumbo v0, "getCdmaEriText"

    #@3
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneBase;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    #@6
    .line 1671
    const-string/jumbo v0, "GSM nw, no ERI"

    #@9
    return-object v0
.end method

.method public getCdmaMin()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1677
    const-string/jumbo v0, "getCdmaMin"

    #@3
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneBase;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    #@6
    .line 1678
    const/4 v0, 0x0

    #@7
    return-object v0
.end method

.method public getCdmaPrlVersion()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1691
    const-string/jumbo v0, "getCdmaPrlVersion"

    #@3
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneBase;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    #@6
    .line 1692
    const/4 v0, 0x0

    #@7
    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    #@0
    .prologue
    .line 714
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method public getCurrentUiccAppType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    .locals 2

    #@0
    .prologue
    .line 1277
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    #@2
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@8
    .line 1278
    .local v0, "currentApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v0, :cond_0

    #@a
    .line 1279
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    #@d
    move-result-object v1

    #@e
    return-object v1

    #@f
    .line 1281
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    #@11
    return-object v1
.end method

.method public getDataConnectionState()Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 1

    #@0
    .prologue
    .line 1985
    const-string/jumbo v0, "default"

    #@3
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/PhoneBase;->getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public getEnhancedVoicePrivacy(Landroid/os/Message;)V
    .locals 1
    .param p1, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1473
    const-string/jumbo v0, "getEnhancedVoicePrivacy"

    #@3
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneBase;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    #@6
    .line 1471
    return-void
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 0

    #@0
    .prologue
    .line 1253
    return-object p0
.end method

.method public getIccCard()Lcom/android/internal/telephony/IccCard;
    .locals 1

    #@0
    .prologue
    .line 1286
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;
    .locals 5

    #@0
    .prologue
    .line 1235
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    #@2
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    check-cast v1, Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@8
    .line 1238
    .local v1, "uiccApplication":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-nez v1, :cond_0

    #@a
    .line 1239
    const-string/jumbo v2, "PhoneBase"

    #@d
    const-string/jumbo v3, "getIccFileHandler: uiccApplication == null, return null"

    #@10
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@13
    .line 1240
    const/4 v0, 0x0

    #@14
    .line 1245
    :goto_0
    const-string/jumbo v2, "PhoneBase"

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
    .line 1246
    return-object v0

    #@2f
    .line 1242
    :cond_0
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@32
    move-result-object v0

    #@33
    .local v0, "fh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    goto :goto_0
.end method

.method public getIccRecordsLoaded()Z
    .locals 2

    #@0
    .prologue
    .line 1298
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    #@2
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    #@8
    .line 1299
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
    .line 1292
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    #@3
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    #@9
    .line 1293
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

.method public getImsPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    #@0
    .prologue
    .line 2065
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@2
    return-object v0
.end method

.method public getIsimRecords()Lcom/android/internal/telephony/uicc/IsimRecords;
    .locals 2

    #@0
    .prologue
    .line 1964
    const-string/jumbo v0, "PhoneBase"

    #@3
    const-string/jumbo v1, "getIsimRecords() is only supported on LTE devices"

    #@6
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 1965
    const/4 v0, 0x0

    #@a
    return-object v0
.end method

.method public getLceStatus()I
    .locals 1

    #@0
    .prologue
    .line 2408
    iget v0, p0, Lcom/android/internal/telephony/PhoneBase;->mLceStatus:I

    #@2
    return v0
.end method

.method public getLinkProperties(Ljava/lang/String;)Landroid/net/LinkProperties;
    .locals 1
    .param p1, "apnType"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1882
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getLinkProperties(Ljava/lang/String;)Landroid/net/LinkProperties;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getLocaleFromSimAndCarrierPrefs()Ljava/util/Locale;
    .locals 3

    #@0
    .prologue
    .line 2429
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    #@2
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    #@8
    .line 2430
    .local v0, "records":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    #@a
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getSimLanguage()Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    if-eqz v1, :cond_0

    #@10
    .line 2431
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
    .line 2434
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    #@1c
    invoke-static {v1}, Lcom/android/internal/telephony/PhoneBase;->getLocaleFromCarrierProperties(Landroid/content/Context;)Ljava/util/Locale;

    #@1f
    move-result-object v1

    #@20
    return-object v1
.end method

.method public getLteOnCdmaMode()I
    .locals 1

    #@0
    .prologue
    .line 2016
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

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
    .line 1354
    iget v1, p0, Lcom/android/internal/telephony/PhoneBase;->mVmCount:I

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
    .line 2413
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getModemActivityInfo(Landroid/os/Message;)V

    #@5
    .line 2412
    return-void
.end method

.method public getModemUuId()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 2327
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getRadioCapability()Lcom/android/internal/telephony/RadioCapability;

    #@3
    move-result-object v0

    #@4
    .line 2328
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
    .line 1970
    const-string/jumbo v0, "getMsisdn"

    #@3
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneBase;->logUnexpectedGsmMethodCall(Ljava/lang/String;)V

    #@6
    .line 1971
    const/4 v0, 0x0

    #@7
    return-object v0
.end method

.method public getNai()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 251
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getNetworkCapabilities(Ljava/lang/String;)Landroid/net/NetworkCapabilities;
    .locals 1
    .param p1, "apnType"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1887
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getNetworkCapabilities(Ljava/lang/String;)Landroid/net/NetworkCapabilities;

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
    .line 986
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getNetworkSelectionMode(Landroid/os/Message;)V

    #@5
    .line 985
    return-void
.end method

.method public getPcscfAddress(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "apnType"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2049
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getPcscfAddress(Ljava/lang/String;)[Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getPhoneId()I
    .locals 1

    #@0
    .prologue
    .line 2165
    iget v0, p0, Lcom/android/internal/telephony/PhoneBase;->mPhoneId:I

    #@2
    return v0
.end method

.method public getPhoneName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public abstract getPhoneType()I
.end method

.method public getPreferredNetworkType(Landroid/os/Message;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1436
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getPreferredNetworkType(Landroid/os/Message;)V

    #@5
    .line 1435
    return-void
.end method

.method public getRadioAccessFamily()I
    .locals 2

    #@0
    .prologue
    .line 2321
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getRadioCapability()Lcom/android/internal/telephony/RadioCapability;

    #@3
    move-result-object v0

    #@4
    .line 2322
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
    .line 2333
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mRadioCapability:Ljava/util/concurrent/atomic/AtomicReference;

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
    .line 1266
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getSignalStrength()Landroid/telephony/SignalStrength;
    .locals 2

    #@0
    .prologue
    .line 1376
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    #@3
    move-result-object v0

    #@4
    .line 1377
    .local v0, "sst":Lcom/android/internal/telephony/ServiceStateTracker;
    if-nez v0, :cond_0

    #@6
    .line 1378
    new-instance v1, Landroid/telephony/SignalStrength;

    #@8
    invoke-direct {v1}, Landroid/telephony/SignalStrength;-><init>()V

    #@b
    return-object v1

    #@c
    .line 1380
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
    .line 1184
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mSimulatedRadioControl:Lcom/android/internal/telephony/test/SimulatedRadioControl;

    #@2
    return-object v0
.end method

.method public getSmscAddress(Landroid/os/Message;)V
    .locals 1
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1441
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getSmscAddress(Landroid/os/Message;)V

    #@5
    .line 1440
    return-void
.end method

.method public abstract getState()Lcom/android/internal/telephony/PhoneConstants$State;
.end method

.method protected getStoredVoiceMessageCount()I
    .locals 7

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1627
    const/4 v0, 0x0

    #@2
    .line 1628
    .local v0, "countVoiceMessages":I
    iget-object v4, p0, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    #@4
    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    #@7
    move-result-object v2

    #@8
    .line 1629
    .local v2, "sp":Landroid/content/SharedPreferences;
    const-string/jumbo v4, "vm_id_key"

    #@b
    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@e
    move-result-object v3

    #@f
    .line 1630
    .local v3, "subscriberId":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getSubscriberId()Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    .line 1632
    .local v1, "currentSubscriberId":Ljava/lang/String;
    if-eqz v3, :cond_0

    #@15
    if-eqz v1, :cond_0

    #@17
    .line 1633
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1a
    move-result v4

    #@1b
    .line 1632
    if-eqz v4, :cond_0

    #@1d
    .line 1635
    const-string/jumbo v4, "vm_count_key"

    #@20
    const/4 v5, 0x0

    #@21
    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    #@24
    move-result v0

    #@25
    .line 1636
    const-string/jumbo v4, "PhoneBase"

    #@28
    new-instance v5, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    const-string/jumbo v6, "Voice Mail Count from preference = "

    #@30
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v5

    #@34
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@37
    move-result-object v5

    #@38
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v5

    #@3c
    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@3f
    .line 1642
    :goto_0
    return v0

    #@40
    .line 1638
    :cond_0
    const-string/jumbo v4, "PhoneBase"

    #@43
    const-string/jumbo v5, "Voicemail count retrieval returning 0 as count for matching subscriberId not found"

    #@46
    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@49
    goto :goto_0
.end method

.method public getSubId()I
    .locals 2

    #@0
    .prologue
    .line 2158
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    #@3
    move-result-object v0

    #@4
    iget v1, p0, Lcom/android/internal/telephony/PhoneBase;->mPhoneId:I

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
    .line 292
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getUnitTestMode()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 293
    const/4 v0, 0x0

    #@7
    return-object v0

    #@8
    .line 295
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
    .line 2040
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    #@2
    iget v1, p0, Lcom/android/internal/telephony/PhoneBase;->mPhoneId:I

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
    .line 1102
    iget-boolean v0, p0, Lcom/android/internal/telephony/PhoneBase;->mUnitTestMode:Z

    #@2
    return v0
.end method

.method public getUsimServiceTable()Lcom/android/internal/telephony/uicc/UsimServiceTable;
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 2030
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    #@3
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    #@9
    .line 2031
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
    .line 1615
    iget v0, p0, Lcom/android/internal/telephony/PhoneBase;->mVmCount:I

    #@2
    return v0
.end method

.method public getVoicePhoneServiceState()I
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 2174
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@3
    .line 2175
    .local v0, "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    if-eqz v0, :cond_0

    #@5
    .line 2176
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getServiceState()Landroid/telephony/ServiceState;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    #@c
    move-result v1

    #@d
    if-nez v1, :cond_0

    #@f
    .line 2177
    return v2

    #@10
    .line 2179
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    #@17
    move-result v1

    #@18
    return v1
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 563
    iget v7, p1, Landroid/os/Message;->what:I

    #@3
    packed-switch v7, :pswitch_data_0

    #@6
    .line 571
    iget-boolean v7, p0, Lcom/android/internal/telephony/PhoneBase;->mIsTheCurrentActivePhone:Z

    #@8
    if-nez v7, :cond_0

    #@a
    .line 572
    const-string/jumbo v7, "PhoneBase"

    #@d
    new-instance v8, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v9, "Received message "

    #@15
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v8

    #@19
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v8

    #@1d
    .line 573
    const-string/jumbo v9, "["

    #@20
    .line 572
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v8

    #@24
    .line 573
    iget v9, p1, Landroid/os/Message;->what:I

    #@26
    .line 572
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@29
    move-result-object v8

    #@2a
    .line 573
    const-string/jumbo v9, "] while being destroyed. Ignoring."

    #@2d
    .line 572
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v8

    #@31
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v8

    #@35
    invoke-static {v7, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@38
    .line 574
    return-void

    #@39
    .line 567
    :pswitch_0
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@3b
    check-cast v7, Landroid/os/AsyncResult;

    #@3d
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/PhoneBase;->handleSetSelectNetwork(Landroid/os/AsyncResult;)V

    #@40
    .line 568
    return-void

    #@41
    .line 576
    :cond_0
    iget v7, p1, Landroid/os/Message;->what:I

    #@43
    sparse-switch v7, :sswitch_data_0

    #@46
    .line 664
    new-instance v7, Ljava/lang/RuntimeException;

    #@48
    const-string/jumbo v8, "unexpected event not handled"

    #@4b
    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@4e
    throw v7

    #@4f
    .line 578
    :sswitch_0
    const-string/jumbo v7, "PhoneBase"

    #@52
    new-instance v8, Ljava/lang/StringBuilder;

    #@54
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@57
    const-string/jumbo v9, "Event EVENT_CALL_RING Received state="

    #@5a
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v8

    #@5e
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    #@61
    move-result-object v9

    #@62
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v8

    #@66
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@69
    move-result-object v8

    #@6a
    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@6d
    .line 579
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@6f
    check-cast v0, Landroid/os/AsyncResult;

    #@71
    .line 580
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@73
    if-nez v7, :cond_2

    #@75
    .line 581
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    #@78
    move-result-object v5

    #@79
    .line 582
    .local v5, "state":Lcom/android/internal/telephony/PhoneConstants$State;
    iget-boolean v7, p0, Lcom/android/internal/telephony/PhoneBase;->mDoesRilSendMultipleCallRing:Z

    #@7b
    if-nez v7, :cond_3

    #@7d
    .line 583
    sget-object v7, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    #@7f
    if-eq v5, v7, :cond_1

    #@81
    .line 584
    sget-object v7, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    #@83
    if-ne v5, v7, :cond_3

    #@85
    .line 585
    :cond_1
    iget v7, p0, Lcom/android/internal/telephony/PhoneBase;->mCallRingContinueToken:I

    #@87
    add-int/lit8 v7, v7, 0x1

    #@89
    iput v7, p0, Lcom/android/internal/telephony/PhoneBase;->mCallRingContinueToken:I

    #@8b
    .line 586
    iget v7, p0, Lcom/android/internal/telephony/PhoneBase;->mCallRingContinueToken:I

    #@8d
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/PhoneBase;->sendIncomingCallRingNotification(I)V

    #@90
    .line 555
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v5    # "state":Lcom/android/internal/telephony/PhoneConstants$State;
    :cond_2
    :goto_0
    return-void

    #@91
    .line 588
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    .restart local v5    # "state":Lcom/android/internal/telephony/PhoneConstants$State;
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneBase;->notifyIncomingRing()V

    #@94
    goto :goto_0

    #@95
    .line 594
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v5    # "state":Lcom/android/internal/telephony/PhoneConstants$State;
    :sswitch_1
    const-string/jumbo v7, "PhoneBase"

    #@98
    new-instance v8, Ljava/lang/StringBuilder;

    #@9a
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@9d
    const-string/jumbo v9, "Event EVENT_CALL_RING_CONTINUE Received stat="

    #@a0
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a3
    move-result-object v8

    #@a4
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    #@a7
    move-result-object v9

    #@a8
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@ab
    move-result-object v8

    #@ac
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@af
    move-result-object v8

    #@b0
    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@b3
    .line 595
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    #@b6
    move-result-object v7

    #@b7
    sget-object v8, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    #@b9
    if-ne v7, v8, :cond_2

    #@bb
    .line 596
    iget v7, p1, Landroid/os/Message;->arg1:I

    #@bd
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/PhoneBase;->sendIncomingCallRingNotification(I)V

    #@c0
    goto :goto_0

    #@c1
    .line 601
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->onUpdateIccAvailability()V

    #@c4
    goto :goto_0

    #@c5
    .line 605
    :sswitch_3
    const-string/jumbo v7, "PhoneBase"

    #@c8
    const-string/jumbo v8, "Event EVENT_INITIATE_SILENT_REDIAL Received"

    #@cb
    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@ce
    .line 606
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@d0
    check-cast v0, Landroid/os/AsyncResult;

    #@d2
    .line 607
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@d4
    if-nez v7, :cond_2

    #@d6
    iget-object v7, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@d8
    if-eqz v7, :cond_2

    #@da
    .line 608
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@dc
    check-cast v2, Ljava/lang/String;

    #@de
    .line 609
    .local v2, "dialString":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@e1
    move-result v7

    #@e2
    if-eqz v7, :cond_4

    #@e4
    return-void

    #@e5
    .line 611
    :cond_4
    const/4 v7, 0x0

    #@e6
    const/4 v8, 0x0

    #@e7
    const/4 v9, 0x0

    #@e8
    :try_start_0
    invoke-virtual {p0, v2, v7, v8, v9}, Lcom/android/internal/telephony/PhoneBase;->dialInternal(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;ILandroid/os/Bundle;)Lcom/android/internal/telephony/Connection;
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    #@eb
    goto :goto_0

    #@ec
    .line 612
    :catch_0
    move-exception v3

    #@ed
    .line 613
    .local v3, "e":Lcom/android/internal/telephony/CallStateException;
    const-string/jumbo v7, "PhoneBase"

    #@f0
    new-instance v8, Ljava/lang/StringBuilder;

    #@f2
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@f5
    const-string/jumbo v9, "silent redial failed: "

    #@f8
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fb
    move-result-object v8

    #@fc
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@ff
    move-result-object v8

    #@100
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@103
    move-result-object v8

    #@104
    invoke-static {v7, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@107
    goto :goto_0

    #@108
    .line 619
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "dialString":Ljava/lang/String;
    .end local v3    # "e":Lcom/android/internal/telephony/CallStateException;
    :sswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@10a
    check-cast v0, Landroid/os/AsyncResult;

    #@10c
    .line 620
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@10e
    if-nez v7, :cond_5

    #@110
    .line 621
    iget-object v7, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@112
    check-cast v7, [I

    #@114
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/PhoneBase;->handleSrvccStateChanged([I)V

    #@117
    goto/16 :goto_0

    #@119
    .line 623
    :cond_5
    const-string/jumbo v7, "PhoneBase"

    #@11c
    new-instance v8, Ljava/lang/StringBuilder;

    #@11e
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@121
    const-string/jumbo v9, "Srvcc exception: "

    #@124
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@127
    move-result-object v8

    #@128
    iget-object v9, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@12a
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@12d
    move-result-object v8

    #@12e
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@131
    move-result-object v8

    #@132
    invoke-static {v7, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@135
    goto/16 :goto_0

    #@137
    .line 628
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@139
    check-cast v0, Landroid/os/AsyncResult;

    #@13b
    .line 629
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@13d
    if-nez v7, :cond_6

    #@13f
    .line 630
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@141
    check-cast v1, [B

    #@143
    .line 631
    .local v1, "data":[B
    const-string/jumbo v7, "PhoneBase"

    #@146
    new-instance v8, Ljava/lang/StringBuilder;

    #@148
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@14b
    const-string/jumbo v9, "EVENT_UNSOL_OEM_HOOK_RAW data="

    #@14e
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@151
    move-result-object v8

    #@152
    .line 632
    invoke-static {v1}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    #@155
    move-result-object v9

    #@156
    .line 631
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@159
    move-result-object v8

    #@15a
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15d
    move-result-object v8

    #@15e
    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@161
    .line 633
    iget-object v7, p0, Lcom/android/internal/telephony/PhoneBase;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    #@163
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getSubId()I

    #@166
    move-result v8

    #@167
    invoke-interface {v7, v8, v1}, Lcom/android/internal/telephony/PhoneNotifier;->notifyOemHookRawEventForSubscriber(I[B)V

    #@16a
    goto/16 :goto_0

    #@16c
    .line 635
    .end local v1    # "data":[B
    :cond_6
    const-string/jumbo v7, "PhoneBase"

    #@16f
    new-instance v8, Ljava/lang/StringBuilder;

    #@171
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@174
    const-string/jumbo v9, "OEM hook raw exception: "

    #@177
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17a
    move-result-object v8

    #@17b
    iget-object v9, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@17d
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@180
    move-result-object v8

    #@181
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@184
    move-result-object v8

    #@185
    invoke-static {v7, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@188
    goto/16 :goto_0

    #@18a
    .line 640
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@18c
    check-cast v0, Landroid/os/AsyncResult;

    #@18e
    .line 641
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@190
    check-cast v4, Lcom/android/internal/telephony/RadioCapability;

    #@192
    .line 642
    .local v4, "rc":Lcom/android/internal/telephony/RadioCapability;
    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@194
    if-eqz v7, :cond_7

    #@196
    .line 643
    const-string/jumbo v7, "PhoneBase"

    #@199
    const-string/jumbo v8, "get phone radio capability fail,no need to change mRadioCapability"

    #@19c
    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@19f
    .line 648
    :goto_1
    const-string/jumbo v7, "PhoneBase"

    #@1a2
    new-instance v8, Ljava/lang/StringBuilder;

    #@1a4
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@1a7
    const-string/jumbo v9, "EVENT_GET_RADIO_CAPABILITY :phone rc : "

    #@1aa
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ad
    move-result-object v8

    #@1ae
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1b1
    move-result-object v8

    #@1b2
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b5
    move-result-object v8

    #@1b6
    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1b9
    goto/16 :goto_0

    #@1bb
    .line 646
    :cond_7
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/PhoneBase;->radioCapabilityUpdated(Lcom/android/internal/telephony/RadioCapability;)V

    #@1be
    goto :goto_1

    #@1bf
    .line 653
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v4    # "rc":Lcom/android/internal/telephony/RadioCapability;
    :sswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1c1
    check-cast v0, Landroid/os/AsyncResult;

    #@1c3
    .line 654
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@1c5
    if-eqz v7, :cond_8

    #@1c7
    .line 655
    const-string/jumbo v7, "PhoneBase"

    #@1ca
    new-instance v8, Ljava/lang/StringBuilder;

    #@1cc
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@1cf
    const-string/jumbo v9, "config LCE service failed: "

    #@1d2
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d5
    move-result-object v8

    #@1d6
    iget-object v9, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@1d8
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1db
    move-result-object v8

    #@1dc
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1df
    move-result-object v8

    #@1e0
    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1e3
    goto/16 :goto_0

    #@1e5
    .line 657
    :cond_8
    iget-object v6, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@1e7
    check-cast v6, Ljava/util/ArrayList;

    #@1e9
    .line 658
    .local v6, "statusInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1ec
    move-result-object v7

    #@1ed
    check-cast v7, Ljava/lang/Integer;

    #@1ef
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    #@1f2
    move-result v7

    #@1f3
    iput v7, p0, Lcom/android/internal/telephony/PhoneBase;->mLceStatus:I

    #@1f5
    .line 659
    const/4 v7, 0x1

    #@1f6
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1f9
    move-result-object v7

    #@1fa
    check-cast v7, Ljava/lang/Integer;

    #@1fc
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    #@1ff
    move-result v7

    #@200
    iput v7, p0, Lcom/android/internal/telephony/PhoneBase;->mReportInterval:I

    #@202
    goto/16 :goto_0

    #@204
    .line 563
    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
        :pswitch_0
    .end packed-switch

    #@20c
    .line 576
    :sswitch_data_0
    .sparse-switch
        0xe -> :sswitch_0
        0xf -> :sswitch_1
        0x1e -> :sswitch_2
        0x1f -> :sswitch_4
        0x20 -> :sswitch_3
        0x22 -> :sswitch_5
        0x23 -> :sswitch_6
        0x25 -> :sswitch_7
    .end sparse-switch
.end method

.method public hasMatchedTetherApnSetting()Z
    .locals 1

    #@0
    .prologue
    .line 1872
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->hasMatchedTetherApnSetting()Z

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
    .line 1488
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    #@5
    .line 1487
    return-void
.end method

.method public invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "strings"    # [Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1493
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    #@5
    .line 1492
    return-void
.end method

.method public isCspPlmnEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 1958
    const-string/jumbo v0, "isCspPlmnEnabled"

    #@3
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneBase;->logUnexpectedGsmMethodCall(Ljava/lang/String;)V

    #@6
    .line 1959
    const/4 v0, 0x0

    #@7
    return v0
.end method

.method public isDataConnectivityPossible()Z
    .locals 1

    #@0
    .prologue
    .line 1892
    const-string/jumbo v0, "default"

    #@3
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/PhoneBase;->isDataConnectivityPossible(Ljava/lang/String;)Z

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
    .line 1897
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1898
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@6
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isDataPossible(Ljava/lang/String;)Z

    #@9
    move-result v0

    #@a
    .line 1897
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
    .line 739
    iget-boolean v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDnsCheckDisabled:Z

    #@2
    return v0
.end method

.method public isImsRegistered()Z
    .locals 6

    #@0
    .prologue
    .line 2243
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@2
    .line 2244
    .local v0, "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    const/4 v1, 0x0

    #@3
    .line 2245
    .local v1, "isImsRegistered":Z
    if-eqz v0, :cond_1

    #@5
    .line 2246
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isImsRegistered()Z

    #@8
    move-result v1

    #@9
    .line 2253
    .end local v1    # "isImsRegistered":Z
    :cond_0
    :goto_0
    const-string/jumbo v3, "PhoneBase"

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
    .line 2254
    return v1

    #@24
    .line 2248
    .restart local v1    # "isImsRegistered":Z
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    #@27
    move-result-object v2

    #@28
    .line 2249
    .local v2, "sst":Lcom/android/internal/telephony/ServiceStateTracker;
    if-eqz v2, :cond_0

    #@2a
    .line 2250
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
    .line 2383
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    #@2
    invoke-static {v1}, Lcom/android/ims/ImsManager;->isVolteEnabledByPlatform(Landroid/content/Context;)Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 2384
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    #@a
    invoke-static {v1}, Lcom/android/ims/ImsManager;->isEnhanced4gLteModeSettingEnabledByUser(Landroid/content/Context;)Z

    #@d
    move-result v1

    #@e
    .line 2383
    if-nez v1, :cond_1

    #@10
    .line 2385
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    #@12
    invoke-static {v1}, Lcom/android/ims/ImsManager;->isWfcEnabledByPlatform(Landroid/content/Context;)Z

    #@15
    move-result v1

    #@16
    if-eqz v1, :cond_2

    #@18
    .line 2386
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    #@1a
    invoke-static {v1}, Lcom/android/ims/ImsManager;->isWfcEnabledByUser(Landroid/content/Context;)Z

    #@1d
    move-result v1

    #@1e
    .line 2385
    if-eqz v1, :cond_2

    #@20
    .line 2387
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    #@22
    invoke-static {v1}, Lcom/android/ims/ImsManager;->isNonTtyOrTtyOnVolteEnabled(Landroid/content/Context;)Z

    #@25
    move-result v0

    #@26
    .line 2388
    :goto_0
    return v0

    #@27
    .line 2383
    :cond_1
    const/4 v0, 0x1

    #@28
    .local v0, "imsUseEnabled":Z
    goto :goto_0

    #@29
    .line 2385
    .end local v0    # "imsUseEnabled":Z
    :cond_2
    const/4 v0, 0x0

    #@2a
    .restart local v0    # "imsUseEnabled":Z
    goto :goto_0
.end method

.method public isInEcm()Z
    .locals 1

    #@0
    .prologue
    .line 1579
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public isInEmergencyCall()Z
    .locals 1

    #@0
    .prologue
    .line 1570
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public isMccMncMarkedAsNonRoaming(Ljava/lang/String;)Z
    .locals 1
    .param p1, "mccMnc"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2225
    const-string/jumbo v0, "gsm_non_roaming_list_"

    #@3
    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/PhoneBase;->getRoamingOverrideHelper(Ljava/lang/String;Ljava/lang/String;)Z

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
    .line 2221
    const-string/jumbo v0, "gsm_roaming_list_"

    #@3
    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/PhoneBase;->getRoamingOverrideHelper(Ljava/lang/String;Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public isMinInfoReady()Z
    .locals 1

    #@0
    .prologue
    .line 1684
    const-string/jumbo v0, "isMinInfoReady"

    #@3
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneBase;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    #@6
    .line 1685
    const/4 v0, 0x0

    #@7
    return v0
.end method

.method public isOtaSpNumber(Ljava/lang/String;)Z
    .locals 1
    .param p1, "dialStr"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1746
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public isRadioAvailable()Z
    .locals 1

    #@0
    .prologue
    .line 2301
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

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
    .line 2306
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

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

.method public isSidMarkedAsNonRoaming(I)Z
    .locals 2
    .param p1, "SID"    # I

    #@0
    .prologue
    .line 2234
    const-string/jumbo v0, "cdma_non_roaming_list_"

    #@3
    .line 2235
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@6
    move-result-object v1

    #@7
    .line 2234
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/PhoneBase;->getRoamingOverrideHelper(Ljava/lang/String;Ljava/lang/String;)Z

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
    .line 2229
    const-string/jumbo v0, "cdma_roaming_list_"

    #@3
    .line 2230
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@6
    move-result-object v1

    #@7
    .line 2229
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/PhoneBase;->getRoamingOverrideHelper(Ljava/lang/String;Ljava/lang/String;)Z

    #@a
    move-result v0

    #@b
    return v0
.end method

.method public isVideoCallPresent()Z
    .locals 4

    #@0
    .prologue
    .line 1598
    const/4 v0, 0x0

    #@1
    .line 1599
    .local v0, "isVideoCallActive":Z
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 1600
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@7
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getForegroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@a
    move-result-object v1

    #@b
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/PhoneBase;->isVideoCall(Lcom/android/internal/telephony/Call;)Z

    #@e
    move-result v1

    #@f
    if-nez v1, :cond_1

    #@11
    .line 1601
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@13
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getBackgroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@16
    move-result-object v1

    #@17
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/PhoneBase;->isVideoCall(Lcom/android/internal/telephony/Call;)Z

    #@1a
    move-result v1

    #@1b
    .line 1600
    if-nez v1, :cond_1

    #@1d
    .line 1602
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@1f
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getRingingCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@22
    move-result-object v1

    #@23
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/PhoneBase;->isVideoCall(Lcom/android/internal/telephony/Call;)Z

    #@26
    move-result v0

    #@27
    .line 1604
    .end local v0    # "isVideoCallActive":Z
    :cond_0
    :goto_0
    const-string/jumbo v1, "PhoneBase"

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
    .line 1605
    return v0

    #@42
    .line 1600
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
    .line 2398
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@3
    .line 2399
    .local v0, "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    if-eqz v0, :cond_0

    #@5
    .line 2400
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getServiceState()Landroid/telephony/ServiceState;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    #@c
    move-result v1

    #@d
    if-nez v1, :cond_0

    #@f
    .line 2401
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isVideoEnabled()Z

    #@12
    move-result v1

    #@13
    return v1

    #@14
    .line 2403
    :cond_0
    return v2
.end method

.method public isVolteEnabled()Z
    .locals 5

    #@0
    .prologue
    .line 2276
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@2
    .line 2277
    .local v0, "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    const/4 v1, 0x0

    #@3
    .line 2278
    .local v1, "isVolteEnabled":Z
    if-eqz v0, :cond_0

    #@5
    .line 2279
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isVolteEnabled()Z

    #@8
    move-result v1

    #@9
    .line 2281
    .end local v1    # "isVolteEnabled":Z
    :cond_0
    const-string/jumbo v2, "PhoneBase"

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
    .line 2282
    return v1
.end method

.method public isWifiCallingEnabled()Z
    .locals 5

    #@0
    .prologue
    .line 2262
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@2
    .line 2263
    .local v0, "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    const/4 v1, 0x0

    #@3
    .line 2264
    .local v1, "isWifiCallingEnabled":Z
    if-eqz v0, :cond_0

    #@5
    .line 2265
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isVowifiEnabled()Z

    #@8
    move-result v1

    #@9
    .line 2267
    .end local v1    # "isWifiCallingEnabled":Z
    :cond_0
    const-string/jumbo v2, "PhoneBase"

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
    .line 2268
    return v1
.end method

.method public migrate(Landroid/os/RegistrantList;Landroid/os/RegistrantList;)V
    .locals 3
    .param p1, "to"    # Landroid/os/RegistrantList;
    .param p2, "from"    # Landroid/os/RegistrantList;

    #@0
    .prologue
    .line 801
    invoke-virtual {p2}, Landroid/os/RegistrantList;->removeCleared()V

    #@3
    .line 802
    const/4 v0, 0x0

    #@4
    .local v0, "i":I
    invoke-virtual {p2}, Landroid/os/RegistrantList;->size()I

    #@7
    move-result v1

    #@8
    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@a
    .line 803
    invoke-virtual {p2, v0}, Landroid/os/RegistrantList;->get(I)Ljava/lang/Object;

    #@d
    move-result-object v2

    #@e
    check-cast v2, Landroid/os/Registrant;

    #@10
    invoke-virtual {p1, v2}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    #@13
    .line 802
    add-int/lit8 v0, v0, 0x1

    #@15
    goto :goto_0

    #@16
    .line 800
    :cond_0
    return-void
.end method

.method public migrateFrom(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 2
    .param p1, "from"    # Lcom/android/internal/telephony/PhoneBase;

    #@0
    .prologue
    .line 788
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mHandoverRegistrants:Landroid/os/RegistrantList;

    #@2
    iget-object v1, p1, Lcom/android/internal/telephony/PhoneBase;->mHandoverRegistrants:Landroid/os/RegistrantList;

    #@4
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/PhoneBase;->migrate(Landroid/os/RegistrantList;Landroid/os/RegistrantList;)V

    #@7
    .line 789
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mPreciseCallStateRegistrants:Landroid/os/RegistrantList;

    #@9
    iget-object v1, p1, Lcom/android/internal/telephony/PhoneBase;->mPreciseCallStateRegistrants:Landroid/os/RegistrantList;

    #@b
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/PhoneBase;->migrate(Landroid/os/RegistrantList;Landroid/os/RegistrantList;)V

    #@e
    .line 790
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mNewRingingConnectionRegistrants:Landroid/os/RegistrantList;

    #@10
    iget-object v1, p1, Lcom/android/internal/telephony/PhoneBase;->mNewRingingConnectionRegistrants:Landroid/os/RegistrantList;

    #@12
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/PhoneBase;->migrate(Landroid/os/RegistrantList;Landroid/os/RegistrantList;)V

    #@15
    .line 791
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIncomingRingRegistrants:Landroid/os/RegistrantList;

    #@17
    iget-object v1, p1, Lcom/android/internal/telephony/PhoneBase;->mIncomingRingRegistrants:Landroid/os/RegistrantList;

    #@19
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/PhoneBase;->migrate(Landroid/os/RegistrantList;Landroid/os/RegistrantList;)V

    #@1c
    .line 792
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDisconnectRegistrants:Landroid/os/RegistrantList;

    #@1e
    iget-object v1, p1, Lcom/android/internal/telephony/PhoneBase;->mDisconnectRegistrants:Landroid/os/RegistrantList;

    #@20
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/PhoneBase;->migrate(Landroid/os/RegistrantList;Landroid/os/RegistrantList;)V

    #@23
    .line 793
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mServiceStateRegistrants:Landroid/os/RegistrantList;

    #@25
    iget-object v1, p1, Lcom/android/internal/telephony/PhoneBase;->mServiceStateRegistrants:Landroid/os/RegistrantList;

    #@27
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/PhoneBase;->migrate(Landroid/os/RegistrantList;Landroid/os/RegistrantList;)V

    #@2a
    .line 794
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mMmiCompleteRegistrants:Landroid/os/RegistrantList;

    #@2c
    iget-object v1, p1, Lcom/android/internal/telephony/PhoneBase;->mMmiCompleteRegistrants:Landroid/os/RegistrantList;

    #@2e
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/PhoneBase;->migrate(Landroid/os/RegistrantList;Landroid/os/RegistrantList;)V

    #@31
    .line 795
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mMmiRegistrants:Landroid/os/RegistrantList;

    #@33
    iget-object v1, p1, Lcom/android/internal/telephony/PhoneBase;->mMmiRegistrants:Landroid/os/RegistrantList;

    #@35
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/PhoneBase;->migrate(Landroid/os/RegistrantList;Landroid/os/RegistrantList;)V

    #@38
    .line 796
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mUnknownConnectionRegistrants:Landroid/os/RegistrantList;

    #@3a
    iget-object v1, p1, Lcom/android/internal/telephony/PhoneBase;->mUnknownConnectionRegistrants:Landroid/os/RegistrantList;

    #@3c
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/PhoneBase;->migrate(Landroid/os/RegistrantList;Landroid/os/RegistrantList;)V

    #@3f
    .line 797
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mSuppServiceFailedRegistrants:Landroid/os/RegistrantList;

    #@41
    iget-object v1, p1, Lcom/android/internal/telephony/PhoneBase;->mSuppServiceFailedRegistrants:Landroid/os/RegistrantList;

    #@43
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/PhoneBase;->migrate(Landroid/os/RegistrantList;Landroid/os/RegistrantList;)V

    #@46
    .line 787
    return-void
.end method

.method public needsOtaServiceProvisioning()Z
    .locals 1

    #@0
    .prologue
    .line 1737
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public notifyCallForwardingIndicator()V
    .locals 2

    #@0
    .prologue
    .line 1999
    const-string/jumbo v0, "PhoneBase"

    #@3
    const-string/jumbo v1, "Error! This function should never be executed, inactive CDMAPhone."

    #@6
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 1997
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
    .line 1555
    .local p1, "cellInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    #@2
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->privatizeCellInfoList(Ljava/util/List;)Ljava/util/List;

    #@5
    move-result-object v1

    #@6
    invoke-interface {v0, p0, v1}, Lcom/android/internal/telephony/PhoneNotifier;->notifyCellInfo(Lcom/android/internal/telephony/Phone;Ljava/util/List;)V

    #@9
    .line 1554
    return-void
.end method

.method public notifyDataActivity()V
    .locals 1

    #@0
    .prologue
    .line 1518
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    #@2
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifyDataActivity(Lcom/android/internal/telephony/Phone;)V

    #@5
    .line 1517
    return-void
.end method

.method public notifyDataConnection(Ljava/lang/String;)V
    .locals 6
    .param p1, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1540
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getActiveApnTypes()[Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 1541
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
    .line 1542
    .local v0, "apnType":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/PhoneBase;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    #@c
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/PhoneBase;->getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    #@f
    move-result-object v5

    #@10
    invoke-interface {v4, p0, p1, v0, v5}, Lcom/android/internal/telephony/PhoneNotifier;->notifyDataConnection(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneConstants$DataState;)V

    #@13
    .line 1541
    add-int/lit8 v2, v2, 0x1

    #@15
    goto :goto_0

    #@16
    .line 1539
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
    .line 1536
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    #@2
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/PhoneBase;->getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    #@5
    move-result-object v1

    #@6
    invoke-interface {v0, p0, p1, p2, v1}, Lcom/android/internal/telephony/PhoneNotifier;->notifyDataConnection(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneConstants$DataState;)V

    #@9
    .line 1535
    return-void
.end method

.method public notifyDataConnection(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneConstants$DataState;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "apnType"    # Ljava/lang/String;
    .param p3, "state"    # Lcom/android/internal/telephony/PhoneConstants$DataState;

    #@0
    .prologue
    .line 1532
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    #@2
    invoke-interface {v0, p0, p1, p2, p3}, Lcom/android/internal/telephony/PhoneNotifier;->notifyDataConnection(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneConstants$DataState;)V

    #@5
    .line 1531
    return-void
.end method

.method public notifyDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "apnType"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2003
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    #@2
    invoke-interface {v0, p0, p1, p2}, Lcom/android/internal/telephony/PhoneNotifier;->notifyDataConnectionFailed(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;)V

    #@5
    .line 2002
    return-void
.end method

.method public notifyDataConnectionRealTimeInfo(Landroid/telephony/DataConnectionRealTimeInfo;)V
    .locals 1
    .param p1, "dcRtInfo"    # Landroid/telephony/DataConnectionRealTimeInfo;

    #@0
    .prologue
    .line 1559
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    #@2
    invoke-interface {v0, p0, p1}, Lcom/android/internal/telephony/PhoneNotifier;->notifyDataConnectionRealTimeInfo(Lcom/android/internal/telephony/Phone;Landroid/telephony/DataConnectionRealTimeInfo;)V

    #@5
    .line 1558
    return-void
.end method

.method protected notifyDisconnectP(Lcom/android/internal/telephony/Connection;)V
    .locals 2
    .param p1, "cn"    # Lcom/android/internal/telephony/Connection;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1112
    new-instance v0, Landroid/os/AsyncResult;

    #@3
    invoke-direct {v0, v1, p1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@6
    .line 1113
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mDisconnectRegistrants:Landroid/os/RegistrantList;

    #@8
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    #@b
    .line 1111
    return-void
.end method

.method public notifyForVideoCapabilityChanged(Z)V
    .locals 3
    .param p1, "isVideoCallCapable"    # Z

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1919
    iput-boolean p1, p0, Lcom/android/internal/telephony/PhoneBase;->mIsVideoCapable:Z

    #@3
    .line 1921
    new-instance v0, Landroid/os/AsyncResult;

    #@5
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@8
    move-result-object v1

    #@9
    invoke-direct {v0, v2, v1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@c
    .line 1922
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mVideoCapabilityChangedRegistrants:Landroid/os/RegistrantList;

    #@e
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    #@11
    .line 1917
    return-void
.end method

.method public notifyHandoverStateChanged(Lcom/android/internal/telephony/Connection;)V
    .locals 2
    .param p1, "cn"    # Lcom/android/internal/telephony/Connection;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 783
    new-instance v0, Landroid/os/AsyncResult;

    #@3
    invoke-direct {v0, v1, p1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@6
    .line 784
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mHandoverRegistrants:Landroid/os/RegistrantList;

    #@8
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    #@b
    .line 782
    return-void
.end method

.method public notifyMessageWaitingIndicator()V
    .locals 1

    #@0
    .prologue
    .line 1523
    iget-boolean v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIsVoiceCapable:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1524
    return-void

    #@5
    .line 1527
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    #@7
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifyMessageWaitingChanged(Lcom/android/internal/telephony/Phone;)V

    #@a
    .line 1521
    return-void
.end method

.method public notifyNewRingingConnectionP(Lcom/android/internal/telephony/Connection;)V
    .locals 3
    .param p1, "cn"    # Lcom/android/internal/telephony/Connection;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1907
    iget-boolean v1, p0, Lcom/android/internal/telephony/PhoneBase;->mIsVoiceCapable:Z

    #@3
    if-nez v1, :cond_0

    #@5
    .line 1908
    return-void

    #@6
    .line 1909
    :cond_0
    new-instance v0, Landroid/os/AsyncResult;

    #@8
    invoke-direct {v0, v2, p1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@b
    .line 1910
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mNewRingingConnectionRegistrants:Landroid/os/RegistrantList;

    #@d
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    #@10
    .line 1906
    return-void
.end method

.method public notifyOtaspChanged(I)V
    .locals 1
    .param p1, "otaspMode"    # I

    #@0
    .prologue
    .line 1547
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    #@2
    invoke-interface {v0, p0, p1}, Lcom/android/internal/telephony/PhoneNotifier;->notifyOtaspChanged(Lcom/android/internal/telephony/Phone;I)V

    #@5
    .line 1546
    return-void
.end method

.method protected notifyPreciseCallStateChangedP()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 761
    new-instance v0, Landroid/os/AsyncResult;

    #@3
    invoke-direct {v0, v1, p0, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@6
    .line 762
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mPreciseCallStateRegistrants:Landroid/os/RegistrantList;

    #@8
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    #@b
    .line 764
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    #@d
    invoke-interface {v1, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifyPreciseCallState(Lcom/android/internal/telephony/Phone;)V

    #@10
    .line 760
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
    .line 2008
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

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
    .line 2007
    return-void
.end method

.method protected notifyServiceStateChangedP(Landroid/telephony/ServiceState;)V
    .locals 2
    .param p1, "ss"    # Landroid/telephony/ServiceState;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1175
    new-instance v0, Landroid/os/AsyncResult;

    #@3
    invoke-direct {v0, v1, p1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@6
    .line 1176
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mServiceStateRegistrants:Landroid/os/RegistrantList;

    #@8
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    #@b
    .line 1178
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    #@d
    invoke-interface {v1, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifyServiceState(Lcom/android/internal/telephony/Phone;)V

    #@10
    .line 1174
    return-void
.end method

.method public notifySignalStrength()V
    .locals 1

    #@0
    .prologue
    .line 1551
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    #@2
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifySignalStrength(Lcom/android/internal/telephony/Phone;)V

    #@5
    .line 1550
    return-void
.end method

.method public notifyVoLteServiceStateChanged(Landroid/telephony/VoLteServiceState;)V
    .locals 1
    .param p1, "lteState"    # Landroid/telephony/VoLteServiceState;

    #@0
    .prologue
    .line 1563
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    #@2
    invoke-interface {v0, p0, p1}, Lcom/android/internal/telephony/PhoneNotifier;->notifyVoLteServiceStateChanged(Lcom/android/internal/telephony/Phone;Landroid/telephony/VoLteServiceState;)V

    #@5
    .line 1562
    return-void
.end method

.method public nvReadItem(ILandroid/os/Message;)V
    .locals 1
    .param p1, "itemID"    # I
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1498
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->nvReadItem(ILandroid/os/Message;)V

    #@5
    .line 1497
    return-void
.end method

.method public nvResetConfig(ILandroid/os/Message;)V
    .locals 1
    .param p1, "resetType"    # I
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1513
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->nvResetConfig(ILandroid/os/Message;)V

    #@5
    .line 1512
    return-void
.end method

.method public nvWriteCdmaPrl([BLandroid/os/Message;)V
    .locals 1
    .param p1, "preferredRoamingList"    # [B
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1508
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->nvWriteCdmaPrl([BLandroid/os/Message;)V

    #@5
    .line 1507
    return-void
.end method

.method public nvWriteItem(ILjava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "itemID"    # I
    .param p2, "itemValue"    # Ljava/lang/String;
    .param p3, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1503
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->nvWriteItem(ILjava/lang/String;Landroid/os/Message;)V

    #@5
    .line 1502
    return-void
.end method

.method protected abstract onUpdateIccAvailability()V
.end method

.method public queryAvailableBandMode(Landroid/os/Message;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1483
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->queryAvailableBandMode(Landroid/os/Message;)V

    #@5
    .line 1482
    return-void
.end method

.method public queryCdmaRoamingPreference(Landroid/os/Message;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1368
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->queryCdmaRoamingPreference(Landroid/os/Message;)V

    #@5
    .line 1367
    return-void
.end method

.method public queryTTYMode(Landroid/os/Message;)V
    .locals 1
    .param p1, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1461
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->queryTTYMode(Landroid/os/Message;)V

    #@5
    .line 1460
    return-void
.end method

.method public radioCapabilityUpdated(Lcom/android/internal/telephony/RadioCapability;)V
    .locals 1
    .param p1, "rc"    # Lcom/android/internal/telephony/RadioCapability;

    #@0
    .prologue
    .line 2340
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mRadioCapability:Ljava/util/concurrent/atomic/AtomicReference;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    #@5
    .line 2342
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getSubId()I

    #@8
    move-result v0

    #@9
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_0

    #@f
    .line 2343
    const/4 v0, 0x1

    #@10
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/PhoneBase;->sendSubscriptionSettings(Z)V

    #@13
    .line 2337
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
    .line 1825
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerFoT53ClirlInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 1824
    return-void
.end method

.method public registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1752
    const-string/jumbo v0, "registerForCallWaiting"

    #@3
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneBase;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    #@6
    .line 1750
    return-void
.end method

.method public registerForCdmaOtaStatusChange(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1710
    const-string/jumbo v0, "registerForCdmaOtaStatusChange"

    #@3
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneBase;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    #@6
    .line 1708
    return-void
.end method

.method public registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 896
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->checkCorrectThread(Landroid/os/Handler;)V

    #@3
    .line 898
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDisconnectRegistrants:Landroid/os/RegistrantList;

    #@5
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    #@8
    .line 895
    return-void
.end method

.method public registerForDisplayInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1785
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerForDisplayInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 1784
    return-void
.end method

.method public registerForEcmTimerReset(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1764
    const-string/jumbo v0, "registerForEcmTimerReset"

    #@3
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneBase;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    #@6
    .line 1762
    return-void
.end method

.method public registerForEmergencyCallToggle(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1014
    new-instance v0, Landroid/os/Registrant;

    #@2
    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 1015
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mEmergencyCallToggledRegistrants:Landroid/os/RegistrantList;

    #@7
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    #@a
    .line 1013
    return-void
.end method

.method public registerForHandoverStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 769
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->checkCorrectThread(Landroid/os/Handler;)V

    #@3
    .line 770
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mHandoverRegistrants:Landroid/os/RegistrantList;

    #@5
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    #@8
    .line 768
    return-void
.end method

.method public registerForInCallVoicePrivacyOff(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 869
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerForInCallVoicePrivacyOff(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 868
    return-void
.end method

.method public registerForInCallVoicePrivacyOn(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 857
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerForInCallVoicePrivacyOn(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 856
    return-void
.end method

.method public registerForIncomingRing(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 882
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->checkCorrectThread(Landroid/os/Handler;)V

    #@3
    .line 884
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIncomingRingRegistrants:Landroid/os/RegistrantList;

    #@5
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    #@8
    .line 881
    return-void
.end method

.method public registerForLineControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1815
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerForLineControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 1814
    return-void
.end method

.method public registerForMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 938
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->checkCorrectThread(Landroid/os/Handler;)V

    #@3
    .line 940
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mMmiCompleteRegistrants:Landroid/os/RegistrantList;

    #@5
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    #@8
    .line 937
    return-void
.end method

.method public registerForMmiInitiate(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 924
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->checkCorrectThread(Landroid/os/Handler;)V

    #@3
    .line 926
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mMmiRegistrants:Landroid/os/RegistrantList;

    #@5
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    #@8
    .line 923
    return-void
.end method

.method public registerForNewRingingConnection(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 825
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->checkCorrectThread(Landroid/os/Handler;)V

    #@3
    .line 827
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mNewRingingConnectionRegistrants:Landroid/os/RegistrantList;

    #@5
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    #@8
    .line 824
    return-void
.end method

.method public registerForNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1795
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerForNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 1794
    return-void
.end method

.method public registerForOnHoldTone(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1145
    return-void
.end method

.method public registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 745
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->checkCorrectThread(Landroid/os/Handler;)V

    #@3
    .line 747
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mPreciseCallStateRegistrants:Landroid/os/RegistrantList;

    #@5
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    #@8
    .line 744
    return-void
.end method

.method public registerForRadioCapabilityChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 2368
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerForRadioCapabilityChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 2367
    return-void
.end method

.method public registerForRadioOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1857
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mRadioOffOrNotAvailableRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 1856
    return-void
.end method

.method public registerForRedirectedNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1805
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerForRedirectedNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 1804
    return-void
.end method

.method public registerForResendIncallMute(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1156
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerForResendIncallMute(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 1155
    return-void
.end method

.method public registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1134
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 1133
    return-void
.end method

.method public registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1120
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->checkCorrectThread(Landroid/os/Handler;)V

    #@3
    .line 1122
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mServiceStateRegistrants:Landroid/os/RegistrantList;

    #@5
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->add(Landroid/os/Handler;ILjava/lang/Object;)V

    #@8
    .line 1119
    return-void
.end method

.method public registerForSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1775
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerForSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 1774
    return-void
.end method

.method public registerForSimRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 952
    const-string/jumbo v0, "registerForSimRecordsLoaded"

    #@3
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneBase;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    #@6
    .line 951
    return-void
.end method

.method public registerForSubscriptionInfoReady(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1722
    const-string/jumbo v0, "registerForSubscriptionInfoReady"

    #@3
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneBase;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    #@6
    .line 1720
    return-void
.end method

.method public registerForSuppServiceFailed(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 910
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->checkCorrectThread(Landroid/os/Handler;)V

    #@3
    .line 912
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mSuppServiceFailedRegistrants:Landroid/os/RegistrantList;

    #@5
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    #@8
    .line 909
    return-void
.end method

.method public registerForT53AudioControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1835
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerForT53AudioControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 1834
    return-void
.end method

.method public registerForTtyModeReceived(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 960
    return-void
.end method

.method public registerForUnknownConnection(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 810
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->checkCorrectThread(Landroid/os/Handler;)V

    #@3
    .line 812
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mUnknownConnectionRegistrants:Landroid/os/RegistrantList;

    #@5
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    #@8
    .line 809
    return-void
.end method

.method public registerForVideoCapabilityChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 840
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->checkCorrectThread(Landroid/os/Handler;)V

    #@3
    .line 842
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mVideoCapabilityChangedRegistrants:Landroid/os/RegistrantList;

    #@5
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    #@8
    .line 845
    iget-boolean v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIsVideoCapable:Z

    #@a
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/PhoneBase;->notifyForVideoCapabilityChanged(Z)V

    #@d
    .line 839
    return-void
.end method

.method public relinquishOwnershipOfImsPhone()Lcom/android/internal/telephony/imsphone/ImsPhone;
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 2070
    sget-object v2, Lcom/android/internal/telephony/PhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    #@3
    monitor-enter v2

    #@4
    .line 2071
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    if-nez v1, :cond_0

    #@8
    monitor-exit v2

    #@9
    .line 2072
    return-object v3

    #@a
    .line 2074
    :cond_0
    :try_start_1
    iget-boolean v1, p0, Lcom/android/internal/telephony/PhoneBase;->mImsIntentReceiverRegistered:Z

    #@c
    if-eqz v1, :cond_1

    #@e
    .line 2075
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    #@10
    iget-object v3, p0, Lcom/android/internal/telephony/PhoneBase;->mImsIntentReceiver:Landroid/content/BroadcastReceiver;

    #@12
    invoke-virtual {v1, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    #@15
    .line 2076
    const/4 v1, 0x0

    #@16
    iput-boolean v1, p0, Lcom/android/internal/telephony/PhoneBase;->mImsIntentReceiverRegistered:Z

    #@18
    .line 2079
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@1a
    .line 2080
    .local v0, "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    const/4 v1, 0x0

    #@1b
    iput-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@1d
    .line 2082
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/CallManager;->unregisterPhone(Lcom/android/internal/telephony/Phone;)V

    #@24
    .line 2083
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->unregisterForSilentRedial(Landroid/os/Handler;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@27
    monitor-exit v2

    #@28
    .line 2085
    return-object v0

    #@29
    .line 2070
    .end local v0    # "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    :catchall_0
    move-exception v1

    #@2a
    monitor-exit v2

    #@2b
    throw v1
.end method

.method public removeReferences()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 533
    iput-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mSmsStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    #@3
    .line 534
    iput-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mSmsUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    #@5
    .line 535
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    #@7
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    #@a
    .line 536
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    #@c
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    #@f
    .line 537
    iput-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@11
    .line 538
    iput-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    #@13
    .line 540
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@15
    .line 541
    .local v0, "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    if-eqz v0, :cond_0

    #@17
    .line 542
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->removeReferences()V

    #@1a
    .line 543
    iput-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@1c
    .line 532
    :cond_0
    return-void
.end method

.method public restoreSavedNetworkSelection(Landroid/os/Message;)V
    .locals 2
    .param p1, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1083
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneBase;->getSavedNetworkSelection()Lcom/android/internal/telephony/OperatorInfo;

    #@3
    move-result-object v0

    #@4
    .line 1086
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
    .line 1087
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    #@13
    .line 1081
    :goto_0
    return-void

    #@14
    .line 1089
    :cond_1
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/PhoneBase;->selectNetworkManually(Lcom/android/internal/telephony/OperatorInfo;Landroid/os/Message;)V

    #@17
    goto :goto_0
.end method

.method public selectNetworkManually(Lcom/android/internal/telephony/OperatorInfo;Landroid/os/Message;)V
    .locals 4
    .param p1, "network"    # Lcom/android/internal/telephony/OperatorInfo;
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 993
    new-instance v1, Lcom/android/internal/telephony/PhoneBase$NetworkSelectMessage;

    #@2
    invoke-direct {v1}, Lcom/android/internal/telephony/PhoneBase$NetworkSelectMessage;-><init>()V

    #@5
    .line 994
    .local v1, "nsm":Lcom/android/internal/telephony/PhoneBase$NetworkSelectMessage;
    iput-object p2, v1, Lcom/android/internal/telephony/PhoneBase$NetworkSelectMessage;->message:Landroid/os/Message;

    #@7
    .line 995
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    #@a
    move-result-object v2

    #@b
    iput-object v2, v1, Lcom/android/internal/telephony/PhoneBase$NetworkSelectMessage;->operatorNumeric:Ljava/lang/String;

    #@d
    .line 996
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    #@10
    move-result-object v2

    #@11
    iput-object v2, v1, Lcom/android/internal/telephony/PhoneBase$NetworkSelectMessage;->operatorAlphaLong:Ljava/lang/String;

    #@13
    .line 997
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaShort()Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    iput-object v2, v1, Lcom/android/internal/telephony/PhoneBase$NetworkSelectMessage;->operatorAlphaShort:Ljava/lang/String;

    #@19
    .line 999
    const/16 v2, 0x10

    #@1b
    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/PhoneBase;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@1e
    move-result-object v0

    #@1f
    .line 1000
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@21
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    #@24
    move-result-object v3

    #@25
    invoke-interface {v2, v3, v0}, Lcom/android/internal/telephony/CommandsInterface;->setNetworkSelectionModeManual(Ljava/lang/String;Landroid/os/Message;)V

    #@28
    .line 1002
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/PhoneBase;->updateSavedNetworkOperator(Lcom/android/internal/telephony/PhoneBase$NetworkSelectMessage;)V

    #@2b
    .line 990
    return-void
.end method

.method public sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V
    .locals 1
    .param p1, "dtmfString"    # Ljava/lang/String;
    .param p2, "on"    # I
    .param p3, "off"    # I
    .param p4, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1698
    const-string/jumbo v0, "sendBurstDtmf"

    #@3
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneBase;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    #@6
    .line 1696
    return-void
.end method

.method public sendSubscriptionSettings(Z)V
    .locals 4
    .param p1, "restoreNetworkSelection"    # Z

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 2349
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    #@3
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getSubId()I

    #@6
    move-result v2

    #@7
    invoke-static {v1, v2}, Lcom/android/internal/telephony/PhoneFactory;->calculatePreferredNetworkType(Landroid/content/Context;I)I

    #@a
    move-result v0

    #@b
    .line 2350
    .local v0, "type":I
    invoke-virtual {p0, v0, v3}, Lcom/android/internal/telephony/PhoneBase;->setPreferredNetworkType(ILandroid/os/Message;)V

    #@e
    .line 2352
    if-eqz p1, :cond_0

    #@10
    .line 2353
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/PhoneBase;->restoreSavedNetworkSelection(Landroid/os/Message;)V

    #@13
    .line 2355
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@15
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getDataEnabled()Z

    #@18
    move-result v2

    #@19
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setDataEnabled(Z)V

    #@1c
    .line 2347
    return-void
.end method

.method public setBandMode(ILandroid/os/Message;)V
    .locals 1
    .param p1, "bandMode"    # I
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1478
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setBandMode(ILandroid/os/Message;)V

    #@5
    .line 1477
    return-void
.end method

.method public setCdmaRoamingPreference(ILandroid/os/Message;)V
    .locals 1
    .param p1, "cdmaRoamingType"    # I
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1389
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setCdmaRoamingPreference(ILandroid/os/Message;)V

    #@5
    .line 1388
    return-void
.end method

.method public setCdmaSubscription(ILandroid/os/Message;)V
    .locals 1
    .param p1, "cdmaSubscriptionType"    # I
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1397
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setCdmaSubscriptionSource(ILandroid/os/Message;)V

    #@5
    .line 1396
    return-void
.end method

.method public setCellInfoListRate(I)V
    .locals 2
    .param p1, "rateInMillis"    # I

    #@0
    .prologue
    .line 1348
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->setCellInfoListRate(ILandroid/os/Message;)V

    #@6
    .line 1347
    return-void
.end method

.method public setEchoSuppressionEnabled()V
    .locals 0

    #@0
    .prologue
    .line 1166
    return-void
.end method

.method public setImsRegistrationState(Z)V
    .locals 1
    .param p1, "registered"    # Z

    #@0
    .prologue
    .line 2057
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setImsRegistrationState(Z)V

    #@5
    .line 2056
    return-void
.end method

.method public setNetworkSelectionModeAutomatic(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 972
    new-instance v1, Lcom/android/internal/telephony/PhoneBase$NetworkSelectMessage;

    #@2
    invoke-direct {v1}, Lcom/android/internal/telephony/PhoneBase$NetworkSelectMessage;-><init>()V

    #@5
    .line 973
    .local v1, "nsm":Lcom/android/internal/telephony/PhoneBase$NetworkSelectMessage;
    iput-object p1, v1, Lcom/android/internal/telephony/PhoneBase$NetworkSelectMessage;->message:Landroid/os/Message;

    #@7
    .line 974
    const-string/jumbo v2, ""

    #@a
    iput-object v2, v1, Lcom/android/internal/telephony/PhoneBase$NetworkSelectMessage;->operatorNumeric:Ljava/lang/String;

    #@c
    .line 975
    const-string/jumbo v2, ""

    #@f
    iput-object v2, v1, Lcom/android/internal/telephony/PhoneBase$NetworkSelectMessage;->operatorAlphaLong:Ljava/lang/String;

    #@11
    .line 976
    const-string/jumbo v2, ""

    #@14
    iput-object v2, v1, Lcom/android/internal/telephony/PhoneBase$NetworkSelectMessage;->operatorAlphaShort:Ljava/lang/String;

    #@16
    .line 978
    const/16 v2, 0x11

    #@18
    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/PhoneBase;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@1b
    move-result-object v0

    #@1c
    .line 979
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@1e
    invoke-interface {v2, v0}, Lcom/android/internal/telephony/CommandsInterface;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    #@21
    .line 981
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/PhoneBase;->updateSavedNetworkOperator(Lcom/android/internal/telephony/PhoneBase$NetworkSelectMessage;)V

    #@24
    .line 968
    return-void
.end method

.method public setOnEcbModeExitResponse(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1846
    const-string/jumbo v0, "setOnEcbModeExitResponse"

    #@3
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneBase;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    #@6
    .line 1844
    return-void
.end method

.method public setOperatorBrandOverride(Ljava/lang/String;)Z
    .locals 1
    .param p1, "brand"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2184
    const/4 v0, 0x0

    #@1
    return v0
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
    .line 1406
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getRadioAccessFamily()I

    #@5
    move-result v3

    #@6
    .line 1407
    .local v3, "modemRaf":I
    invoke-static {p1}, Landroid/telephony/RadioAccessFamily;->getRafFromNetworkType(I)I

    #@9
    move-result v4

    #@a
    .line 1409
    .local v4, "rafFromType":I
    if-eq v3, v5, :cond_0

    #@c
    .line 1410
    if-ne v4, v5, :cond_2

    #@e
    .line 1411
    :cond_0
    const-string/jumbo v5, "PhoneBase"

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
    .line 1412
    const-string/jumbo v7, " "

    #@24
    .line 1411
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
    .line 1413
    if-eqz p2, :cond_1

    #@35
    .line 1416
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@37
    sget-object v5, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    #@39
    invoke-direct {v0, v5}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@3c
    .line 1417
    .local v0, "ex":Lcom/android/internal/telephony/CommandException;
    invoke-static {p2, v8, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    #@3f
    .line 1418
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    #@42
    .line 1420
    .end local v0    # "ex":Lcom/android/internal/telephony/CommandException;
    :cond_1
    return-void

    #@43
    .line 1423
    :cond_2
    and-int v1, v4, v3

    #@45
    .line 1424
    .local v1, "filteredRaf":I
    invoke-static {v1}, Landroid/telephony/RadioAccessFamily;->getNetworkTypeFromRaf(I)I

    #@48
    move-result v2

    #@49
    .line 1426
    .local v2, "filteredType":I
    const-string/jumbo v5, "PhoneBase"

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
    .line 1427
    const-string/jumbo v7, " modemRaf = "

    #@5f
    .line 1426
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v6

    #@63
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@66
    move-result-object v6

    #@67
    .line 1428
    const-string/jumbo v7, " rafFromType = "

    #@6a
    .line 1426
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v6

    #@6e
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@71
    move-result-object v6

    #@72
    .line 1429
    const-string/jumbo v7, " filteredType = "

    #@75
    .line 1426
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
    .line 1431
    iget-object v5, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@86
    invoke-interface {v5, v2, p2}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    #@89
    .line 1404
    return-void
.end method

.method protected setPreferredNetworkTypeIfSimLoaded()V
    .locals 4

    #@0
    .prologue
    .line 2359
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getSubId()I

    #@3
    move-result v0

    #@4
    .line 2360
    .local v0, "subId":I
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    #@7
    move-result v2

    #@8
    if-eqz v2, :cond_0

    #@a
    .line 2361
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    #@c
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getSubId()I

    #@f
    move-result v3

    #@10
    invoke-static {v2, v3}, Lcom/android/internal/telephony/PhoneFactory;->calculatePreferredNetworkType(Landroid/content/Context;I)I

    #@13
    move-result v1

    #@14
    .line 2362
    .local v1, "type":I
    const/4 v2, 0x0

    #@15
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->setPreferredNetworkType(ILandroid/os/Message;)V

    #@18
    .line 2358
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
    .line 2316
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setRadioCapability(Lcom/android/internal/telephony/RadioCapability;Landroid/os/Message;)V

    #@5
    .line 2315
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
    .line 2191
    .local p1, "gsmRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "gsmNonRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "cdmaRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "cdmaNonRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getIccSerialNumber()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 2192
    .local v0, "iccId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@7
    move-result v2

    #@8
    if-eqz v2, :cond_0

    #@a
    .line 2193
    const/4 v2, 0x0

    #@b
    return v2

    #@c
    .line 2196
    :cond_0
    const-string/jumbo v2, "gsm_roaming_list_"

    #@f
    invoke-direct {p0, p1, v2, v0}, Lcom/android/internal/telephony/PhoneBase;->setRoamingOverrideHelper(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    #@12
    .line 2197
    const-string/jumbo v2, "gsm_non_roaming_list_"

    #@15
    invoke-direct {p0, p2, v2, v0}, Lcom/android/internal/telephony/PhoneBase;->setRoamingOverrideHelper(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    #@18
    .line 2198
    const-string/jumbo v2, "cdma_roaming_list_"

    #@1b
    invoke-direct {p0, p3, v2, v0}, Lcom/android/internal/telephony/PhoneBase;->setRoamingOverrideHelper(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    #@1e
    .line 2199
    const-string/jumbo v2, "cdma_non_roaming_list_"

    #@21
    invoke-direct {p0, p4, v2, v0}, Lcom/android/internal/telephony/PhoneBase;->setRoamingOverrideHelper(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    #@24
    .line 2202
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    #@27
    move-result-object v1

    #@28
    .line 2203
    .local v1, "tracker":Lcom/android/internal/telephony/ServiceStateTracker;
    if-eqz v1, :cond_1

    #@2a
    .line 2204
    invoke-virtual {v1}, Lcom/android/internal/telephony/ServiceStateTracker;->pollState()V

    #@2d
    .line 2206
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
    .line 1446
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V

    #@5
    .line 1445
    return-void
.end method

.method public setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 281
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getUnitTestMode()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 282
    return-void

    #@7
    .line 284
    :cond_0
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@a
    .line 280
    return-void
.end method

.method public setTTYMode(ILandroid/os/Message;)V
    .locals 1
    .param p1, "ttyMode"    # I
    .param p2, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1451
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setTTYMode(ILandroid/os/Message;)V

    #@5
    .line 1450
    return-void
.end method

.method public setUiTTYMode(ILandroid/os/Message;)V
    .locals 2
    .param p1, "uiTtyMode"    # I
    .param p2, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1456
    const-string/jumbo v0, "PhoneBase"

    #@3
    const-string/jumbo v1, "unexpected setUiTTYMode method call"

    #@6
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 1455
    return-void
.end method

.method public setUnitTestMode(Z)V
    .locals 0
    .param p1, "f"    # Z

    #@0
    .prologue
    .line 1096
    iput-boolean p1, p0, Lcom/android/internal/telephony/PhoneBase;->mUnitTestMode:Z

    #@2
    .line 1095
    return-void
.end method

.method public setVoiceMessageCount(I)V
    .locals 0
    .param p1, "countWaiting"    # I

    #@0
    .prologue
    .line 1620
    iput p1, p0, Lcom/android/internal/telephony/PhoneBase;->mVmCount:I

    #@2
    .line 1622
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->notifyMessageWaitingIndicator()V

    #@5
    .line 1619
    return-void
.end method

.method public setVoiceMessageWaiting(II)V
    .locals 2
    .param p1, "line"    # I
    .param p2, "countWaiting"    # I

    #@0
    .prologue
    .line 2021
    const-string/jumbo v0, "PhoneBase"

    #@3
    const-string/jumbo v1, "Error! This function should never be executed, inactive Phone."

    #@6
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 2019
    return-void
.end method

.method public shutdownRadio()V
    .locals 1

    #@0
    .prologue
    .line 2311
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->requestShutdown()V

    #@7
    .line 2310
    return-void
.end method

.method public startLceAfterRadioIsAvailable()V
    .locals 4

    #@0
    .prologue
    .line 2421
    iget-boolean v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIsTheCurrentActivePhone:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 2422
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@6
    .line 2423
    const/16 v1, 0x25

    #@8
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/PhoneBase;->obtainMessage(I)Landroid/os/Message;

    #@b
    move-result-object v1

    #@c
    .line 2422
    const/16 v2, 0xc8

    #@e
    const/4 v3, 0x1

    #@f
    invoke-interface {v0, v2, v3, v1}, Lcom/android/internal/telephony/CommandsInterface;->startLceService(IZLandroid/os/Message;)V

    #@12
    .line 2420
    :cond_0
    return-void
.end method

.method public startMonitoringImsService()V
    .locals 5

    #@0
    .prologue
    .line 479
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    #@3
    move-result v2

    #@4
    const/4 v3, 0x3

    #@5
    if-ne v2, v3, :cond_0

    #@7
    .line 480
    return-void

    #@8
    .line 483
    :cond_0
    sget-object v3, Lcom/android/internal/telephony/PhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    #@a
    monitor-enter v3

    #@b
    .line 484
    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    #@d
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    #@10
    .line 485
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "com.android.ims.IMS_SERVICE_UP"

    #@13
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@16
    .line 486
    const-string/jumbo v2, "com.android.ims.IMS_SERVICE_DOWN"

    #@19
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@1c
    .line 487
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    #@1e
    iget-object v4, p0, Lcom/android/internal/telephony/PhoneBase;->mImsIntentReceiver:Landroid/content/BroadcastReceiver;

    #@20
    invoke-virtual {v2, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@23
    .line 488
    const/4 v2, 0x1

    #@24
    iput-boolean v2, p0, Lcom/android/internal/telephony/PhoneBase;->mImsIntentReceiverRegistered:Z

    #@26
    .line 492
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    #@28
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    #@2b
    move-result v4

    #@2c
    invoke-static {v2, v4}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    #@2f
    move-result-object v1

    #@30
    .line 493
    .local v1, "imsManager":Lcom/android/ims/ImsManager;
    if-eqz v1, :cond_1

    #@32
    invoke-virtual {v1}, Lcom/android/ims/ImsManager;->isServiceAvailable()Z

    #@35
    move-result v2

    #@36
    if-eqz v2, :cond_1

    #@38
    .line 494
    const/4 v2, 0x1

    #@39
    iput-boolean v2, p0, Lcom/android/internal/telephony/PhoneBase;->mImsServiceReady:Z

    #@3b
    .line 495
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->updateImsPhone()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3e
    :cond_1
    monitor-exit v3

    #@3f
    .line 478
    return-void

    #@40
    .line 483
    .end local v0    # "filter":Landroid/content/IntentFilter;
    .end local v1    # "imsManager":Lcom/android/ims/ImsManager;
    :catchall_0
    move-exception v2

    #@41
    monitor-exit v3

    #@42
    throw v2
.end method

.method public unregisterForCallWaiting(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 1758
    const-string/jumbo v0, "unregisterForCallWaiting"

    #@3
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneBase;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    #@6
    .line 1756
    return-void
.end method

.method public unregisterForCdmaOtaStatusChange(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 1716
    const-string/jumbo v0, "unregisterForCdmaOtaStatusChange"

    #@3
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneBase;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    #@6
    .line 1714
    return-void
.end method

.method public unregisterForDisconnect(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 904
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDisconnectRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 903
    return-void
.end method

.method public unregisterForDisplayInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 1790
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForDisplayInfo(Landroid/os/Handler;)V

    #@5
    .line 1789
    return-void
.end method

.method public unregisterForEcmTimerReset(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 1770
    const-string/jumbo v0, "unregisterForEcmTimerReset"

    #@3
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneBase;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    #@6
    .line 1768
    return-void
.end method

.method public unregisterForEmergencyCallToggle(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 1019
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mEmergencyCallToggledRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 1018
    return-void
.end method

.method public unregisterForHandoverStateChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 775
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mHandoverRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 774
    return-void
.end method

.method public unregisterForInCallVoicePrivacyOff(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 875
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForInCallVoicePrivacyOff(Landroid/os/Handler;)V

    #@5
    .line 874
    return-void
.end method

.method public unregisterForInCallVoicePrivacyOn(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 863
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForInCallVoicePrivacyOn(Landroid/os/Handler;)V

    #@5
    .line 862
    return-void
.end method

.method public unregisterForIncomingRing(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 890
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIncomingRingRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 889
    return-void
.end method

.method public unregisterForLineControlInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 1820
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForLineControlInfo(Landroid/os/Handler;)V

    #@5
    .line 1819
    return-void
.end method

.method public unregisterForMmiComplete(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 946
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->checkCorrectThread(Landroid/os/Handler;)V

    #@3
    .line 948
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mMmiCompleteRegistrants:Landroid/os/RegistrantList;

    #@5
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@8
    .line 945
    return-void
.end method

.method public unregisterForMmiInitiate(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 932
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mMmiRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 931
    return-void
.end method

.method public unregisterForNewRingingConnection(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 833
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mNewRingingConnectionRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 832
    return-void
.end method

.method public unregisterForNumberInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 1800
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForNumberInfo(Landroid/os/Handler;)V

    #@5
    .line 1799
    return-void
.end method

.method public unregisterForOnHoldTone(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 1150
    return-void
.end method

.method public unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 753
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mPreciseCallStateRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 752
    return-void
.end method

.method public unregisterForRadioCapabilityChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 2373
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRadioCapabilityChanged(Landroid/os/Handler;)V

    #@5
    .line 2372
    return-void
.end method

.method public unregisterForRadioOffOrNotAvailable(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 1862
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mRadioOffOrNotAvailableRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 1861
    return-void
.end method

.method public unregisterForRedirectedNumberInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 1810
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRedirectedNumberInfo(Landroid/os/Handler;)V

    #@5
    .line 1809
    return-void
.end method

.method public unregisterForResendIncallMute(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 1162
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForResendIncallMute(Landroid/os/Handler;)V

    #@5
    .line 1161
    return-void
.end method

.method public unregisterForRingbackTone(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 1140
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRingbackTone(Landroid/os/Handler;)V

    #@5
    .line 1139
    return-void
.end method

.method public unregisterForServiceStateChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 1128
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mServiceStateRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 1127
    return-void
.end method

.method public unregisterForSignalInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 1780
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForSignalInfo(Landroid/os/Handler;)V

    #@5
    .line 1779
    return-void
.end method

.method public unregisterForSimRecordsLoaded(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 956
    const-string/jumbo v0, "unregisterForSimRecordsLoaded"

    #@3
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneBase;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    #@6
    .line 955
    return-void
.end method

.method public unregisterForSubscriptionInfoReady(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 1728
    const-string/jumbo v0, "unregisterForSubscriptionInfoReady"

    #@3
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneBase;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    #@6
    .line 1726
    return-void
.end method

.method public unregisterForSuppServiceFailed(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 918
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mSuppServiceFailedRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 917
    return-void
.end method

.method public unregisterForT53AudioControlInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 1840
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForT53AudioControlInfo(Landroid/os/Handler;)V

    #@5
    .line 1839
    return-void
.end method

.method public unregisterForT53ClirInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 1830
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForT53ClirInfo(Landroid/os/Handler;)V

    #@5
    .line 1829
    return-void
.end method

.method public unregisterForTtyModeReceived(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 964
    return-void
.end method

.method public unregisterForUnknownConnection(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 818
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mUnknownConnectionRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 817
    return-void
.end method

.method public unregisterForVideoCapabilityChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 851
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mVideoCapabilityChangedRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 850
    return-void
.end method

.method public unsetOnEcbModeExitResponse(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 1852
    const-string/jumbo v0, "unsetOnEcbModeExitResponse"

    #@3
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneBase;->logUnexpectedCdmaMethodCall(Ljava/lang/String;)V

    #@6
    .line 1850
    return-void
.end method

.method protected updateImsPhone()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 2116
    const-string/jumbo v0, "PhoneBase"

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
    .line 2117
    iget-boolean v2, p0, Lcom/android/internal/telephony/PhoneBase;->mImsServiceReady:Z

    #@12
    .line 2116
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
    .line 2119
    iget-boolean v0, p0, Lcom/android/internal/telephony/PhoneBase;->mImsServiceReady:Z

    #@1f
    if-eqz v0, :cond_1

    #@21
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@23
    if-nez v0, :cond_1

    #@25
    .line 2120
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    #@27
    invoke-static {v0, p0}, Lcom/android/internal/telephony/PhoneFactory;->makeImsPhone(Lcom/android/internal/telephony/PhoneNotifier;Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@2a
    move-result-object v0

    #@2b
    iput-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@2d
    .line 2121
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    #@30
    move-result-object v0

    #@31
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@33
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->registerPhone(Lcom/android/internal/telephony/Phone;)Z

    #@36
    .line 2122
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@38
    .line 2123
    const/16 v1, 0x20

    #@3a
    .line 2122
    invoke-virtual {v0, p0, v1, v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->registerForSilentRedial(Landroid/os/Handler;ILjava/lang/Object;)V

    #@3d
    .line 2115
    :cond_0
    :goto_0
    return-void

    #@3e
    .line 2124
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/telephony/PhoneBase;->mImsServiceReady:Z

    #@40
    if-nez v0, :cond_0

    #@42
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@44
    if-eqz v0, :cond_0

    #@46
    .line 2125
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    #@49
    move-result-object v0

    #@4a
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@4c
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterPhone(Lcom/android/internal/telephony/Phone;)V

    #@4f
    .line 2126
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@51
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->unregisterForSilentRedial(Landroid/os/Handler;)V

    #@54
    .line 2128
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@56
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->dispose()V

    #@59
    .line 2133
    iput-object v3, p0, Lcom/android/internal/telephony/PhoneBase;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@5b
    goto :goto_0
.end method

.method public updatePhoneObject(I)V
    .locals 1
    .param p1, "voiceRadioTech"    # I

    #@0
    .prologue
    .line 1259
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->updatePhoneObject(I)V

    #@7
    .line 1257
    return-void
.end method
