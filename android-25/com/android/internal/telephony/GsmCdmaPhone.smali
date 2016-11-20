.class public Lcom/android/internal/telephony/GsmCdmaPhone;
.super Lcom/android/internal/telephony/Phone;
.source "GsmCdmaPhone.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/GsmCdmaPhone$1;,
        Lcom/android/internal/telephony/GsmCdmaPhone$2;,
        Lcom/android/internal/telephony/GsmCdmaPhone$Cfu;
    }
.end annotation


# static fields
.field private static final synthetic -com-android-internal-telephony-DctConstants$ActivitySwitchesValues:[I = null

.field private static final synthetic -com-android-internal-telephony-DctConstants$StateSwitchesValues:[I = null

.field public static final CANCEL_ECM_TIMER:I = 0x1

.field private static final DBG:Z = true

.field private static final DEFAULT_ECM_EXIT_TIMER_VALUE:I = 0x493e0

.field private static final INVALID_SYSTEM_SELECTION_CODE:I = -0x1

.field private static final IS683A_FEATURE_CODE:Ljava/lang/String; = "*228"

.field private static final IS683A_FEATURE_CODE_NUM_DIGITS:I = 0x4

.field private static final IS683A_SYS_SEL_CODE_NUM_DIGITS:I = 0x2

.field private static final IS683A_SYS_SEL_CODE_OFFSET:I = 0x4

.field private static final IS683_CONST_1900MHZ_A_BLOCK:I = 0x2

.field private static final IS683_CONST_1900MHZ_B_BLOCK:I = 0x3

.field private static final IS683_CONST_1900MHZ_C_BLOCK:I = 0x4

.field private static final IS683_CONST_1900MHZ_D_BLOCK:I = 0x5

.field private static final IS683_CONST_1900MHZ_E_BLOCK:I = 0x6

.field private static final IS683_CONST_1900MHZ_F_BLOCK:I = 0x7

.field private static final IS683_CONST_800MHZ_A_BAND:I = 0x0

.field private static final IS683_CONST_800MHZ_B_BAND:I = 0x1

.field public static final LOG_TAG:Ljava/lang/String; = "GsmCdmaPhone"

.field public static final PROPERTY_CDMA_HOME_OPERATOR_NUMERIC:Ljava/lang/String; = "ro.cdma.home.operator.numeric"

.field public static final RESTART_ECM_TIMER:I = 0x0

.field private static final VDBG:Z = false

.field private static final VM_NUMBER:Ljava/lang/String; = "vm_number_key"

.field private static final VM_NUMBER_CDMA:Ljava/lang/String; = "vm_number_key_cdma"

.field private static final VM_SIM_IMSI:Ljava/lang/String; = "vm_sim_imsi_key"

.field private static pOtaSpNumSchema:Ljava/util/regex/Pattern;


# instance fields
.field private mBroadcastEmergencyCallStateChanges:Z

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field public mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

.field private mCarrierOtaSpNumSchema:Ljava/lang/String;

.field private mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

.field public mCdmaSubscriptionSource:I

.field private mEcmExitRespRegistrant:Landroid/os/Registrant;

.field private final mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

.field private final mEriFileLoadedRegistrants:Landroid/os/RegistrantList;

.field public mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

.field private mEsn:Ljava/lang/String;

.field private mExitEcmRunnable:Ljava/lang/Runnable;

.field private mIccCardProxy:Lcom/android/internal/telephony/uicc/IccCardProxy;

.field private mIccPhoneBookIntManager:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

.field private mIccSmsInterfaceManager:Lcom/android/internal/telephony/IccSmsInterfaceManager;

.field private mImei:Ljava/lang/String;

.field private mImeiSv:Ljava/lang/String;

.field private mIsPhoneInEcmState:Z

.field private mIsimUiccRecords:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

.field private mMeid:Ljava/lang/String;

.field private mPendingMMIs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/MmiCode;",
            ">;"
        }
    .end annotation
.end field

.field private mPrecisePhoneType:I

.field private mResetModemOnRadioTechnologyChange:Z

.field private mRilVersion:I

.field public mSST:Lcom/android/internal/telephony/ServiceStateTracker;

.field mSendEmergencyCallEnd:Z

.field private mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

.field private mSsnRegistrants:Landroid/os/RegistrantList;

.field private mVmNumber:Ljava/lang/String;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method private static synthetic -getcom-android-internal-telephony-DctConstants$ActivitySwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Lcom/android/internal/telephony/GsmCdmaPhone;->-com-android-internal-telephony-DctConstants$ActivitySwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Lcom/android/internal/telephony/GsmCdmaPhone;->-com-android-internal-telephony-DctConstants$ActivitySwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/DctConstants$Activity;->values()[Lcom/android/internal/telephony/DctConstants$Activity;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/DctConstants$Activity;->DATAIN:Lcom/android/internal/telephony/DctConstants$Activity;

    #@10
    invoke-virtual {v1}, Lcom/android/internal/telephony/DctConstants$Activity;->ordinal()I

    #@13
    move-result v1

    #@14
    const/4 v2, 0x1

    #@15
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    #@17
    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/internal/telephony/DctConstants$Activity;->DATAINANDOUT:Lcom/android/internal/telephony/DctConstants$Activity;

    #@19
    invoke-virtual {v1}, Lcom/android/internal/telephony/DctConstants$Activity;->ordinal()I

    #@1c
    move-result v1

    #@1d
    const/4 v2, 0x2

    #@1e
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    #@20
    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/internal/telephony/DctConstants$Activity;->DATAOUT:Lcom/android/internal/telephony/DctConstants$Activity;

    #@22
    invoke-virtual {v1}, Lcom/android/internal/telephony/DctConstants$Activity;->ordinal()I

    #@25
    move-result v1

    #@26
    const/4 v2, 0x3

    #@27
    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    #@29
    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/internal/telephony/DctConstants$Activity;->DORMANT:Lcom/android/internal/telephony/DctConstants$Activity;

    #@2b
    invoke-virtual {v1}, Lcom/android/internal/telephony/DctConstants$Activity;->ordinal()I

    #@2e
    move-result v1

    #@2f
    const/4 v2, 0x4

    #@30
    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    #@32
    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/internal/telephony/DctConstants$Activity;->NONE:Lcom/android/internal/telephony/DctConstants$Activity;

    #@34
    invoke-virtual {v1}, Lcom/android/internal/telephony/DctConstants$Activity;->ordinal()I

    #@37
    move-result v1

    #@38
    const/16 v2, 0xc

    #@3a
    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    #@3c
    :goto_4
    sput-object v0, Lcom/android/internal/telephony/GsmCdmaPhone;->-com-android-internal-telephony-DctConstants$ActivitySwitchesValues:[I

    #@3e
    return-object v0

    #@3f
    :catch_0
    move-exception v1

    #@40
    goto :goto_4

    #@41
    :catch_1
    move-exception v1

    #@42
    goto :goto_3

    #@43
    :catch_2
    move-exception v1

    #@44
    goto :goto_2

    #@45
    :catch_3
    move-exception v1

    #@46
    goto :goto_1

    #@47
    :catch_4
    move-exception v1

    #@48
    goto :goto_0
.end method

.method private static synthetic -getcom-android-internal-telephony-DctConstants$StateSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Lcom/android/internal/telephony/GsmCdmaPhone;->-com-android-internal-telephony-DctConstants$StateSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Lcom/android/internal/telephony/GsmCdmaPhone;->-com-android-internal-telephony-DctConstants$StateSwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/DctConstants$State;->values()[Lcom/android/internal/telephony/DctConstants$State;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    #@10
    invoke-virtual {v1}, Lcom/android/internal/telephony/DctConstants$State;->ordinal()I

    #@13
    move-result v1

    #@14
    const/4 v2, 0x1

    #@15
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_6

    #@17
    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->CONNECTING:Lcom/android/internal/telephony/DctConstants$State;

    #@19
    invoke-virtual {v1}, Lcom/android/internal/telephony/DctConstants$State;->ordinal()I

    #@1c
    move-result v1

    #@1d
    const/4 v2, 0x2

    #@1e
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_5

    #@20
    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->DISCONNECTING:Lcom/android/internal/telephony/DctConstants$State;

    #@22
    invoke-virtual {v1}, Lcom/android/internal/telephony/DctConstants$State;->ordinal()I

    #@25
    move-result v1

    #@26
    const/4 v2, 0x3

    #@27
    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_4

    #@29
    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    #@2b
    invoke-virtual {v1}, Lcom/android/internal/telephony/DctConstants$State;->ordinal()I

    #@2e
    move-result v1

    #@2f
    const/4 v2, 0x4

    #@30
    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    #@32
    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    #@34
    invoke-virtual {v1}, Lcom/android/internal/telephony/DctConstants$State;->ordinal()I

    #@37
    move-result v1

    #@38
    const/4 v2, 0x5

    #@39
    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_2

    #@3b
    :goto_4
    :try_start_5
    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->RETRYING:Lcom/android/internal/telephony/DctConstants$State;

    #@3d
    invoke-virtual {v1}, Lcom/android/internal/telephony/DctConstants$State;->ordinal()I

    #@40
    move-result v1

    #@41
    const/4 v2, 0x6

    #@42
    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1

    #@44
    :goto_5
    :try_start_6
    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->SCANNING:Lcom/android/internal/telephony/DctConstants$State;

    #@46
    invoke-virtual {v1}, Lcom/android/internal/telephony/DctConstants$State;->ordinal()I

    #@49
    move-result v1

    #@4a
    const/4 v2, 0x7

    #@4b
    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_0

    #@4d
    :goto_6
    sput-object v0, Lcom/android/internal/telephony/GsmCdmaPhone;->-com-android-internal-telephony-DctConstants$StateSwitchesValues:[I

    #@4f
    return-object v0

    #@50
    :catch_0
    move-exception v1

    #@51
    goto :goto_6

    #@52
    :catch_1
    move-exception v1

    #@53
    goto :goto_5

    #@54
    :catch_2
    move-exception v1

    #@55
    goto :goto_4

    #@56
    :catch_3
    move-exception v1

    #@57
    goto :goto_3

    #@58
    :catch_4
    move-exception v1

    #@59
    goto :goto_2

    #@5a
    :catch_5
    move-exception v1

    #@5b
    goto :goto_1

    #@5c
    :catch_6
    move-exception v1

    #@5d
    goto :goto_0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 2792
    const-string/jumbo v0, "[,\\s]+"

    #@3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@6
    move-result-object v0

    #@7
    sput-object v0, Lcom/android/internal/telephony/GsmCdmaPhone;->pOtaSpNumSchema:Ljava/util/regex/Pattern;

    #@9
    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;IILcom/android/internal/telephony/TelephonyComponentFactory;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p3, "notifier"    # Lcom/android/internal/telephony/PhoneNotifier;
    .param p4, "phoneId"    # I
    .param p5, "precisePhoneType"    # I
    .param p6, "telephonyComponentFactory"    # Lcom/android/internal/telephony/TelephonyComponentFactory;

    #@0
    .prologue
    .line 195
    const/4 v4, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move-object v2, p2

    #@4
    move-object v3, p3

    #@5
    move v5, p4

    #@6
    move v6, p5

    #@7
    move-object v7, p6

    #@8
    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/GsmCdmaPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;ZIILcom/android/internal/telephony/TelephonyComponentFactory;)V

    #@b
    .line 194
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;ZIILcom/android/internal/telephony/TelephonyComponentFactory;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p3, "notifier"    # Lcom/android/internal/telephony/PhoneNotifier;
    .param p4, "unitTestMode"    # Z
    .param p5, "phoneId"    # I
    .param p6, "precisePhoneType"    # I
    .param p7, "telephonyComponentFactory"    # Lcom/android/internal/telephony/TelephonyComponentFactory;

    #@0
    .prologue
    .line 201
    const/4 v0, 0x1

    #@1
    if-ne p6, v0, :cond_0

    #@3
    const-string/jumbo v1, "GSM"

    #@6
    :goto_0
    move-object v0, p0

    #@7
    move-object v2, p3

    #@8
    move-object v3, p1

    #@9
    move-object v4, p2

    #@a
    move v5, p4

    #@b
    move v6, p5

    #@c
    move-object v7, p7

    #@d
    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/Phone;-><init>(Ljava/lang/String;Lcom/android/internal/telephony/PhoneNotifier;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;ZILcom/android/internal/telephony/TelephonyComponentFactory;)V

    #@10
    .line 112
    new-instance v0, Landroid/os/RegistrantList;

    #@12
    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    #@15
    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSsnRegistrants:Landroid/os/RegistrantList;

    #@17
    .line 121
    const/4 v0, -0x1

    #@18
    iput v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCdmaSubscriptionSource:I

    #@1a
    .line 125
    new-instance v0, Landroid/os/RegistrantList;

    #@1c
    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    #@1f
    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mEriFileLoadedRegistrants:Landroid/os/RegistrantList;

    #@21
    .line 136
    new-instance v0, Lcom/android/internal/telephony/GsmCdmaPhone$1;

    #@23
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/GsmCdmaPhone$1;-><init>(Lcom/android/internal/telephony/GsmCdmaPhone;)V

    #@26
    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mExitEcmRunnable:Ljava/lang/Runnable;

    #@28
    .line 156
    new-instance v0, Ljava/util/ArrayList;

    #@2a
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@2d
    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPendingMMIs:Ljava/util/ArrayList;

    #@2f
    .line 162
    new-instance v0, Landroid/os/RegistrantList;

    #@31
    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    #@34
    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

    #@36
    .line 184
    const/4 v0, 0x0

    #@37
    iput-boolean v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mResetModemOnRadioTechnologyChange:Z

    #@39
    .line 187
    const/4 v0, 0x0

    #@3a
    iput-boolean v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mBroadcastEmergencyCallStateChanges:Z

    #@3c
    .line 189
    const/4 v0, 0x1

    #@3d
    iput-boolean v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSendEmergencyCallEnd:Z

    #@3f
    .line 215
    new-instance v0, Lcom/android/internal/telephony/GsmCdmaPhone$2;

    #@41
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/GsmCdmaPhone$2;-><init>(Lcom/android/internal/telephony/GsmCdmaPhone;)V

    #@44
    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    #@46
    .line 205
    iput p6, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPrecisePhoneType:I

    #@48
    .line 206
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/GsmCdmaPhone;->initOnce(Lcom/android/internal/telephony/CommandsInterface;)V

    #@4b
    .line 207
    invoke-direct {p0, p6}, Lcom/android/internal/telephony/GsmCdmaPhone;->initRatSpecific(I)V

    #@4e
    .line 208
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mTelephonyComponentFactory:Lcom/android/internal/telephony/TelephonyComponentFactory;

    #@50
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@52
    invoke-virtual {v0, p0, v1}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeServiceStateTracker(Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/ServiceStateTracker;

    #@55
    move-result-object v0

    #@56
    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    #@58
    .line 210
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mTelephonyComponentFactory:Lcom/android/internal/telephony/TelephonyComponentFactory;

    #@5a
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeDcTracker(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@5d
    move-result-object v0

    #@5e
    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@60
    .line 211
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    #@62
    const/16 v1, 0x13

    #@64
    const/4 v2, 0x0

    #@65
    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForNetworkAttached(Landroid/os/Handler;ILjava/lang/Object;)V

    #@68
    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    #@6a
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@6d
    const-string/jumbo v1, "GsmCdmaPhone: constructor: sub = "

    #@70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v0

    #@74
    iget v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPhoneId:I

    #@76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@79
    move-result-object v0

    #@7a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7d
    move-result-object v0

    #@7e
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    #@81
    .line 200
    return-void

    #@82
    .line 201
    :cond_0
    const-string/jumbo v1, "CDMA"

    #@85
    goto :goto_0
.end method

.method private static checkOtaSpNumBasedOnSysSelCode(I[Ljava/lang/String;)Z
    .locals 8
    .param p0, "sysSelCodeInt"    # I
    .param p1, "sch"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 2853
    const/4 v2, 0x0

    #@1
    .line 2856
    .local v2, "isOtaSpNum":Z
    const/4 v6, 0x1

    #@2
    :try_start_0
    aget-object v6, p1, v6

    #@4
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@7
    move-result v5

    #@8
    .line 2857
    .local v5, "selRc":I
    const/4 v1, 0x0

    #@9
    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_2

    #@b
    .line 2858
    add-int/lit8 v6, v1, 0x2

    #@d
    aget-object v6, p1, v6

    #@f
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@12
    move-result v6

    #@13
    if-nez v6, :cond_0

    #@15
    add-int/lit8 v6, v1, 0x3

    #@17
    aget-object v6, p1, v6

    #@19
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@1c
    move-result v6

    #@1d
    if-eqz v6, :cond_1

    #@1f
    .line 2857
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@21
    goto :goto_0

    #@22
    .line 2859
    :cond_1
    add-int/lit8 v6, v1, 0x2

    #@24
    aget-object v6, p1, v6

    #@26
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@29
    move-result v4

    #@2a
    .line 2860
    .local v4, "selMin":I
    add-int/lit8 v6, v1, 0x3

    #@2c
    aget-object v6, p1, v6

    #@2e
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@31
    move-result v3

    #@32
    .line 2863
    .local v3, "selMax":I
    if-lt p0, v4, :cond_0

    #@34
    if-gt p0, v3, :cond_0

    #@36
    .line 2864
    const/4 v2, 0x1

    #@37
    .line 2874
    .end local v1    # "i":I
    .end local v3    # "selMax":I
    .end local v4    # "selMin":I
    .end local v5    # "selRc":I
    :cond_2
    :goto_1
    return v2

    #@38
    .line 2869
    :catch_0
    move-exception v0

    #@39
    .line 2872
    .local v0, "ex":Ljava/lang/NumberFormatException;
    const-string/jumbo v6, "GsmCdmaPhone"

    #@3c
    const-string/jumbo v7, "checkOtaSpNumBasedOnSysSelCode, error"

    #@3f
    invoke-static {v6, v7, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@42
    goto :goto_1
.end method

.method private static extractSelCodeFromOtaSpNum(Ljava/lang/String;)I
    .locals 6
    .param p0, "dialStr"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x6

    #@1
    const/4 v4, 0x4

    #@2
    const/4 v3, 0x0

    #@3
    .line 2829
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@6
    move-result v0

    #@7
    .line 2830
    .local v0, "dialStrLen":I
    const/4 v1, -0x1

    #@8
    .line 2832
    .local v1, "sysSelCodeInt":I
    const-string/jumbo v2, "*228"

    #@b
    invoke-virtual {p0, v3, v2, v3, v4}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    #@e
    move-result v2

    #@f
    if-eqz v2, :cond_0

    #@11
    .line 2834
    if-lt v0, v5, :cond_0

    #@13
    .line 2839
    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    .line 2838
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@1a
    move-result v1

    #@1b
    .line 2842
    :cond_0
    const-string/jumbo v2, "GsmCdmaPhone"

    #@1e
    new-instance v3, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    const-string/jumbo v4, "extractSelCodeFromOtaSpNum "

    #@26
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v3

    #@2a
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v3

    #@2e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v3

    #@32
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@35
    .line 2843
    return v1
.end method

.method private getOperatorNumeric()Ljava/lang/String;
    .locals 7

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 3219
    const/4 v2, 0x0

    #@2
    .line 3220
    .local v2, "operatorNumeric":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    #@5
    move-result v5

    #@6
    if-eqz v5, :cond_1

    #@8
    .line 3221
    iget-object v4, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    #@a
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@d
    move-result-object v3

    #@e
    check-cast v3, Lcom/android/internal/telephony/uicc/IccRecords;

    #@10
    .line 3222
    .local v3, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v3, :cond_0

    #@12
    .line 3223
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    #@15
    move-result-object v2

    #@16
    .line 3252
    .end local v2    # "operatorNumeric":Ljava/lang/String;
    .end local v3    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_0
    :goto_0
    return-object v2

    #@17
    .line 3226
    .restart local v2    # "operatorNumeric":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    #@18
    .line 3227
    .local v1, "curIccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    iget v5, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCdmaSubscriptionSource:I

    #@1a
    const/4 v6, 0x1

    #@1b
    if-ne v5, v6, :cond_5

    #@1d
    .line 3228
    const-string/jumbo v5, "ro.cdma.home.operator.numeric"

    #@20
    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@23
    move-result-object v2

    #@24
    .line 3241
    .end local v1    # "curIccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    .end local v2    # "operatorNumeric":Ljava/lang/String;
    :cond_2
    :goto_1
    if-nez v2, :cond_4

    #@26
    .line 3242
    new-instance v5, Ljava/lang/StringBuilder;

    #@28
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@2b
    const-string/jumbo v6, "getOperatorNumeric: Cannot retrieve operatorNumeric: mCdmaSubscriptionSource = "

    #@2e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v5

    #@32
    .line 3243
    iget v6, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCdmaSubscriptionSource:I

    #@34
    .line 3242
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@37
    move-result-object v5

    #@38
    .line 3244
    const-string/jumbo v6, " mIccRecords = "

    #@3b
    .line 3242
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v5

    #@3f
    .line 3244
    if-eqz v1, :cond_3

    #@41
    .line 3245
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccRecords;->getRecordsLoaded()Z

    #@44
    move-result v4

    #@45
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@48
    move-result-object v4

    #@49
    .line 3242
    :cond_3
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v4

    #@4d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50
    move-result-object v4

    #@51
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    #@54
    .line 3248
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    #@56
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@59
    const-string/jumbo v5, "getOperatorNumeric: mCdmaSubscriptionSource = "

    #@5c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v4

    #@60
    iget v5, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCdmaSubscriptionSource:I

    #@62
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@65
    move-result-object v4

    #@66
    .line 3249
    const-string/jumbo v5, " operatorNumeric = "

    #@69
    .line 3248
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v4

    #@6d
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v4

    #@71
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@74
    move-result-object v4

    #@75
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    #@78
    goto :goto_0

    #@79
    .line 3229
    .restart local v1    # "curIccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    .restart local v2    # "operatorNumeric":Ljava/lang/String;
    :cond_5
    iget v5, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCdmaSubscriptionSource:I

    #@7b
    if-nez v5, :cond_2

    #@7d
    .line 3230
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    #@7f
    .line 3231
    .local v1, "curIccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v1, :cond_6

    #@81
    .line 3232
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    #@84
    move-result-object v2

    #@85
    .local v2, "operatorNumeric":Ljava/lang/String;
    goto :goto_1

    #@86
    .line 3234
    .local v2, "operatorNumeric":Ljava/lang/String;
    :cond_6
    iget-object v5, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    #@88
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@8b
    move-result-object v1

    #@8c
    .end local v1    # "curIccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    check-cast v1, Lcom/android/internal/telephony/uicc/IccRecords;

    #@8e
    .line 3235
    .restart local v1    # "curIccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v1, :cond_2

    #@90
    instance-of v5, v1, Lcom/android/internal/telephony/uicc/RuimRecords;

    #@92
    if-eqz v5, :cond_2

    #@94
    move-object v0, v1

    #@95
    .line 3236
    check-cast v0, Lcom/android/internal/telephony/uicc/RuimRecords;

    #@97
    .line 3237
    .local v0, "csim":Lcom/android/internal/telephony/uicc/RuimRecords;
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->getRUIMOperatorNumeric()Ljava/lang/String;

    #@9a
    move-result-object v2

    #@9b
    .local v2, "operatorNumeric":Ljava/lang/String;
    goto :goto_1
.end method

.method private getVmSimImsi()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 1340
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    #@3
    move-result-object v1

    #@4
    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    #@7
    move-result-object v0

    #@8
    .line 1341
    .local v0, "sp":Landroid/content/SharedPreferences;
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "vm_sim_imsi_key"

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    #@17
    move-result v2

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    const/4 v2, 0x0

    #@21
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    return-object v1
.end method

.method private handleCallDeflectionIncallSupplementaryService(Ljava/lang/String;)Z
    .locals 4
    .param p1, "dialString"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 866
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@4
    move-result v1

    #@5
    if-le v1, v3, :cond_0

    #@7
    .line 867
    const/4 v1, 0x0

    #@8
    return v1

    #@9
    .line 870
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getRingingCall()Lcom/android/internal/telephony/Call;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    #@10
    move-result-object v1

    #@11
    sget-object v2, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    #@13
    if-eq v1, v2, :cond_2

    #@15
    .line 871
    const-string/jumbo v1, "MmiCode 0: rejectCall"

    #@18
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    #@1b
    .line 873
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    #@1d
    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->rejectCall()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    #@20
    .line 884
    :cond_1
    :goto_0
    return v3

    #@21
    .line 874
    :catch_0
    move-exception v0

    #@22
    .line 875
    .local v0, "e":Lcom/android/internal/telephony/CallStateException;
    const-string/jumbo v1, "GsmCdmaPhone"

    #@25
    .line 876
    const-string/jumbo v2, "reject failed"

    #@28
    .line 875
    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2b
    .line 877
    sget-object v1, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->REJECT:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    #@2d
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;)V

    #@30
    goto :goto_0

    #@31
    .line 879
    .end local v0    # "e":Lcom/android/internal/telephony/CallStateException;
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getBackgroundCall()Lcom/android/internal/telephony/GsmCdmaCall;

    #@34
    move-result-object v1

    #@35
    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@38
    move-result-object v1

    #@39
    sget-object v2, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    #@3b
    if-eq v1, v2, :cond_1

    #@3d
    .line 880
    const-string/jumbo v1, "MmiCode 0: hangupWaitingOrBackground"

    #@40
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    #@43
    .line 881
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    #@45
    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->hangupWaitingOrBackground()V

    #@48
    goto :goto_0
.end method

.method private handleCallHoldIncallSupplementaryService(Ljava/lang/String;)Z
    .locals 9
    .param p1, "dialString"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    .line 926
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@4
    move-result v5

    #@5
    .line 928
    .local v5, "len":I
    const/4 v6, 0x2

    #@6
    if-le v5, v6, :cond_0

    #@8
    .line 929
    const/4 v6, 0x0

    #@9
    return v6

    #@a
    .line 932
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getForegroundCall()Lcom/android/internal/telephony/GsmCdmaCall;

    #@d
    move-result-object v0

    #@e
    .line 934
    .local v0, "call":Lcom/android/internal/telephony/GsmCdmaCall;
    if-le v5, v8, :cond_2

    #@10
    .line 936
    const/4 v6, 0x1

    #@11
    :try_start_0
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    #@14
    move-result v2

    #@15
    .line 937
    .local v2, "ch":C
    add-int/lit8 v1, v2, -0x30

    #@17
    .line 938
    .local v1, "callIndex":I
    iget-object v6, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    #@19
    invoke-virtual {v6, v0, v1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->getConnectionByIndex(Lcom/android/internal/telephony/GsmCdmaCall;I)Lcom/android/internal/telephony/GsmCdmaConnection;

    #@1c
    move-result-object v3

    #@1d
    .line 941
    .local v3, "conn":Lcom/android/internal/telephony/GsmCdmaConnection;
    if-eqz v3, :cond_1

    #@1f
    if-lt v1, v8, :cond_1

    #@21
    const/16 v6, 0x13

    #@23
    if-gt v1, v6, :cond_1

    #@25
    .line 942
    new-instance v6, Ljava/lang/StringBuilder;

    #@27
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@2a
    const-string/jumbo v7, "MmiCode 2: separate call "

    #@2d
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v6

    #@31
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@34
    move-result-object v6

    #@35
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v6

    #@39
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    #@3c
    .line 943
    iget-object v6, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    #@3e
    invoke-virtual {v6, v3}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->separate(Lcom/android/internal/telephony/GsmCdmaConnection;)V

    #@41
    .line 967
    .end local v1    # "callIndex":I
    .end local v2    # "ch":C
    .end local v3    # "conn":Lcom/android/internal/telephony/GsmCdmaConnection;
    :goto_0
    return v8

    #@42
    .line 945
    .restart local v1    # "callIndex":I
    .restart local v2    # "ch":C
    .restart local v3    # "conn":Lcom/android/internal/telephony/GsmCdmaConnection;
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    #@44
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@47
    const-string/jumbo v7, "separate: invalid call index "

    #@4a
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v6

    #@4e
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@51
    move-result-object v6

    #@52
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@55
    move-result-object v6

    #@56
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    #@59
    .line 946
    sget-object v6, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->SEPARATE:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    #@5b
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    #@5e
    goto :goto_0

    #@5f
    .line 948
    .end local v1    # "callIndex":I
    .end local v2    # "ch":C
    .end local v3    # "conn":Lcom/android/internal/telephony/GsmCdmaConnection;
    :catch_0
    move-exception v4

    #@60
    .line 949
    .local v4, "e":Lcom/android/internal/telephony/CallStateException;
    const-string/jumbo v6, "GsmCdmaPhone"

    #@63
    const-string/jumbo v7, "separate failed"

    #@66
    invoke-static {v6, v7, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@69
    .line 950
    sget-object v6, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->SEPARATE:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    #@6b
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;)V

    #@6e
    goto :goto_0

    #@6f
    .line 954
    .end local v4    # "e":Lcom/android/internal/telephony/CallStateException;
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getRingingCall()Lcom/android/internal/telephony/Call;

    #@72
    move-result-object v6

    #@73
    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    #@76
    move-result-object v6

    #@77
    sget-object v7, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    #@79
    if-eq v6, v7, :cond_3

    #@7b
    .line 955
    const-string/jumbo v6, "MmiCode 2: accept ringing call"

    #@7e
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    #@81
    .line 956
    iget-object v6, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    #@83
    invoke-virtual {v6}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->acceptCall()V
    :try_end_1
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_1

    #@86
    goto :goto_0

    #@87
    .line 961
    :catch_1
    move-exception v4

    #@88
    .line 962
    .restart local v4    # "e":Lcom/android/internal/telephony/CallStateException;
    const-string/jumbo v6, "GsmCdmaPhone"

    #@8b
    const-string/jumbo v7, "switch failed"

    #@8e
    invoke-static {v6, v7, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@91
    .line 963
    sget-object v6, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->SWITCH:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    #@93
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;)V

    #@96
    goto :goto_0

    #@97
    .line 958
    .end local v4    # "e":Lcom/android/internal/telephony/CallStateException;
    :cond_3
    :try_start_2
    const-string/jumbo v6, "MmiCode 2: switchWaitingOrHoldingAndActive"

    #@9a
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    #@9d
    .line 959
    iget-object v6, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    #@9f
    invoke-virtual {v6}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->switchWaitingOrHoldingAndActive()V
    :try_end_2
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_2 .. :try_end_2} :catch_1

    #@a2
    goto :goto_0
.end method

.method private handleCallWaitingIncallSupplementaryService(Ljava/lang/String;)Z
    .locals 8
    .param p1, "dialString"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    .line 889
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@4
    move-result v4

    #@5
    .line 891
    .local v4, "len":I
    const/4 v5, 0x2

    #@6
    if-le v4, v5, :cond_0

    #@8
    .line 892
    const/4 v5, 0x0

    #@9
    return v5

    #@a
    .line 895
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getForegroundCall()Lcom/android/internal/telephony/GsmCdmaCall;

    #@d
    move-result-object v0

    #@e
    .line 898
    .local v0, "call":Lcom/android/internal/telephony/GsmCdmaCall;
    if-le v4, v7, :cond_2

    #@10
    .line 899
    const/4 v5, 0x1

    #@11
    :try_start_0
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    #@14
    move-result v2

    #@15
    .line 900
    .local v2, "ch":C
    add-int/lit8 v1, v2, -0x30

    #@17
    .line 902
    .local v1, "callIndex":I
    if-lt v1, v7, :cond_1

    #@19
    const/16 v5, 0x13

    #@1b
    if-gt v1, v5, :cond_1

    #@1d
    .line 903
    new-instance v5, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    const-string/jumbo v6, "MmiCode 1: hangupConnectionByIndex "

    #@25
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v5

    #@29
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v5

    #@2d
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v5

    #@31
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    #@34
    .line 904
    iget-object v5, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    #@36
    invoke-virtual {v5, v0, v1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->hangupConnectionByIndex(Lcom/android/internal/telephony/GsmCdmaCall;I)V

    #@39
    .line 922
    .end local v1    # "callIndex":I
    .end local v2    # "ch":C
    :cond_1
    :goto_0
    return v7

    #@3a
    .line 907
    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@3d
    move-result-object v5

    #@3e
    sget-object v6, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    #@40
    if-eq v5, v6, :cond_3

    #@42
    .line 908
    const-string/jumbo v5, "MmiCode 1: hangup foreground"

    #@45
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    #@48
    .line 910
    iget-object v5, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    #@4a
    invoke-virtual {v5, v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->hangup(Lcom/android/internal/telephony/GsmCdmaCall;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    #@4d
    goto :goto_0

    #@4e
    .line 916
    :catch_0
    move-exception v3

    #@4f
    .line 917
    .local v3, "e":Lcom/android/internal/telephony/CallStateException;
    const-string/jumbo v5, "GsmCdmaPhone"

    #@52
    .line 918
    const-string/jumbo v6, "hangup failed"

    #@55
    .line 917
    invoke-static {v5, v6, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@58
    .line 919
    sget-object v5, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->HANGUP:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    #@5a
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;)V

    #@5d
    goto :goto_0

    #@5e
    .line 912
    .end local v3    # "e":Lcom/android/internal/telephony/CallStateException;
    :cond_3
    :try_start_1
    const-string/jumbo v5, "MmiCode 1: switchWaitingOrHoldingAndActive"

    #@61
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    #@64
    .line 913
    iget-object v5, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    #@66
    invoke-virtual {v5}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->switchWaitingOrHoldingAndActive()V
    :try_end_1
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_0

    #@69
    goto :goto_0
.end method

.method private handleCcbsIncallSupplementaryService(Ljava/lang/String;)Z
    .locals 3
    .param p1, "dialString"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 994
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@4
    move-result v0

    #@5
    if-le v0, v2, :cond_0

    #@7
    .line 995
    const/4 v0, 0x0

    #@8
    return v0

    #@9
    .line 998
    :cond_0
    const-string/jumbo v0, "GsmCdmaPhone"

    #@c
    const-string/jumbo v1, "MmiCode 5: CCBS not supported!"

    #@f
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@12
    .line 1000
    sget-object v0, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->UNKNOWN:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    #@14
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;)V

    #@17
    .line 1001
    return v2
.end method

.method private handleCfuQueryResult([Lcom/android/internal/telephony/CallForwardInfo;)V
    .locals 7
    .param p1, "infos"    # [Lcom/android/internal/telephony/CallForwardInfo;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v4, 0x1

    #@2
    const/4 v3, 0x0

    #@3
    .line 2488
    iget-object v5, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    #@5
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@8
    move-result-object v1

    #@9
    check-cast v1, Lcom/android/internal/telephony/uicc/IccRecords;

    #@b
    .line 2489
    .local v1, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v1, :cond_1

    #@d
    .line 2490
    if-eqz p1, :cond_0

    #@f
    array-length v5, p1

    #@10
    if-nez v5, :cond_2

    #@12
    .line 2493
    :cond_0
    invoke-virtual {p0, v4, v3, v6}, Lcom/android/internal/telephony/GsmCdmaPhone;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    #@15
    .line 2487
    :cond_1
    :goto_0
    return-void

    #@16
    .line 2495
    :cond_2
    const/4 v0, 0x0

    #@17
    .local v0, "i":I
    array-length v2, p1

    #@18
    .local v2, "s":I
    :goto_1
    if-ge v0, v2, :cond_1

    #@1a
    .line 2496
    aget-object v5, p1, v0

    #@1c
    iget v5, v5, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    #@1e
    and-int/lit8 v5, v5, 0x1

    #@20
    if-eqz v5, :cond_4

    #@22
    .line 2497
    aget-object v5, p1, v0

    #@24
    iget v5, v5, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    #@26
    if-ne v5, v4, :cond_3

    #@28
    move v3, v4

    #@29
    .line 2498
    :cond_3
    aget-object v5, p1, v0

    #@2b
    iget-object v5, v5, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    #@2d
    .line 2497
    invoke-virtual {p0, v4, v3, v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    #@30
    goto :goto_0

    #@31
    .line 2495
    :cond_4
    add-int/lit8 v0, v0, 0x1

    #@33
    goto :goto_1
.end method

.method private handleEctIncallSupplementaryService(Ljava/lang/String;)Z
    .locals 3
    .param p1, "dialString"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 982
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@4
    move-result v0

    #@5
    .line 984
    .local v0, "len":I
    if-eq v0, v2, :cond_0

    #@7
    .line 985
    const/4 v1, 0x0

    #@8
    return v1

    #@9
    .line 988
    :cond_0
    const-string/jumbo v1, "MmiCode 4: explicit call transfer"

    #@c
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    #@f
    .line 989
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->explicitCallTransfer()V

    #@12
    .line 990
    return v2
.end method

.method private handleEnterEmergencyCallbackMode(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 2693
    const-string/jumbo v2, "GsmCdmaPhone"

    #@3
    new-instance v3, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v4, "handleEnterEmergencyCallbackMode,mIsPhoneInEcmState= "

    #@b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v3

    #@f
    .line 2694
    iget-boolean v4, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIsPhoneInEcmState:Z

    #@11
    .line 2693
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@14
    move-result-object v3

    #@15
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v3

    #@19
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1c
    .line 2697
    iget-boolean v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIsPhoneInEcmState:Z

    #@1e
    if-nez v2, :cond_0

    #@20
    .line 2698
    const-string/jumbo v2, "ril.cdma.inecmmode"

    #@23
    const-string/jumbo v3, "true"

    #@26
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    #@29
    .line 2699
    const/4 v2, 0x1

    #@2a
    iput-boolean v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIsPhoneInEcmState:Z

    #@2c
    .line 2701
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->sendEmergencyCallbackModeChange()V

    #@2f
    .line 2706
    const-string/jumbo v2, "ro.cdma.ecmexittimer"

    #@32
    const-wide/32 v4, 0x493e0

    #@35
    .line 2705
    invoke-static {v2, v4, v5}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    #@38
    move-result-wide v0

    #@39
    .line 2707
    .local v0, "delayInMillis":J
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mExitEcmRunnable:Ljava/lang/Runnable;

    #@3b
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->postDelayed(Ljava/lang/Runnable;J)Z

    #@3e
    .line 2709
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@40
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    #@43
    .line 2691
    .end local v0    # "delayInMillis":J
    :cond_0
    return-void
.end method

.method private handleExitEmergencyCallbackMode(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 2715
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@3
    check-cast v0, Landroid/os/AsyncResult;

    #@5
    .line 2717
    .local v0, "ar":Landroid/os/AsyncResult;
    const-string/jumbo v1, "GsmCdmaPhone"

    #@8
    new-instance v2, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v3, "handleExitEmergencyCallbackMode,ar.exception , mIsPhoneInEcmState "

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    .line 2718
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@16
    .line 2717
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    .line 2718
    iget-boolean v3, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIsPhoneInEcmState:Z

    #@1c
    .line 2717
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v2

    #@24
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@27
    .line 2721
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mExitEcmRunnable:Ljava/lang/Runnable;

    #@29
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->removeCallbacks(Ljava/lang/Runnable;)V

    #@2c
    .line 2723
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mEcmExitRespRegistrant:Landroid/os/Registrant;

    #@2e
    if-eqz v1, :cond_0

    #@30
    .line 2724
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mEcmExitRespRegistrant:Landroid/os/Registrant;

    #@32
    invoke-virtual {v1, v0}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    #@35
    .line 2727
    :cond_0
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@37
    if-nez v1, :cond_3

    #@39
    .line 2728
    iget-boolean v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIsPhoneInEcmState:Z

    #@3b
    if-eqz v1, :cond_1

    #@3d
    .line 2729
    const-string/jumbo v1, "ril.cdma.inecmmode"

    #@40
    const-string/jumbo v2, "false"

    #@43
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    #@46
    .line 2730
    iput-boolean v4, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIsPhoneInEcmState:Z

    #@48
    .line 2734
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@4a
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    #@4d
    move-result v1

    #@4e
    if-eqz v1, :cond_2

    #@50
    .line 2735
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@52
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    #@55
    .line 2739
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->sendEmergencyCallbackModeChange()V

    #@58
    .line 2741
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@5a
    const/4 v2, 0x1

    #@5b
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setInternalDataEnabled(Z)Z

    #@5e
    .line 2742
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyEmergencyCallRegistrants(Z)V

    #@61
    .line 2714
    :cond_3
    return-void
.end method

.method private handleMultipartyIncallSupplementaryService(Ljava/lang/String;)Z
    .locals 2
    .param p1, "dialString"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 971
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@4
    move-result v0

    #@5
    if-le v0, v1, :cond_0

    #@7
    .line 972
    const/4 v0, 0x0

    #@8
    return v0

    #@9
    .line 975
    :cond_0
    const-string/jumbo v0, "MmiCode 3: merge calls"

    #@c
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    #@f
    .line 976
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->conference()V

    #@12
    .line 977
    return v1
.end method

.method private handleRadioAvailable()V
    .locals 2

    #@0
    .prologue
    .line 1948
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2
    const/4 v1, 0x6

    #@3
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->obtainMessage(I)Landroid/os/Message;

    #@6
    move-result-object v1

    #@7
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getBasebandVersion(Landroid/os/Message;)V

    #@a
    .line 1950
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_0

    #@10
    .line 1951
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@12
    const/16 v1, 0x9

    #@14
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->obtainMessage(I)Landroid/os/Message;

    #@17
    move-result-object v1

    #@18
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getIMEI(Landroid/os/Message;)V

    #@1b
    .line 1952
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@1d
    const/16 v1, 0xa

    #@1f
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->obtainMessage(I)Landroid/os/Message;

    #@22
    move-result-object v1

    #@23
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getIMEISV(Landroid/os/Message;)V

    #@26
    .line 1956
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@28
    const/16 v1, 0x23

    #@2a
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->obtainMessage(I)Landroid/os/Message;

    #@2d
    move-result-object v1

    #@2e
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioCapability(Landroid/os/Message;)V

    #@31
    .line 1957
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->startLceAfterRadioIsAvailable()V

    #@34
    .line 1947
    return-void

    #@35
    .line 1954
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@37
    const/16 v1, 0x15

    #@39
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->obtainMessage(I)Landroid/os/Message;

    #@3c
    move-result-object v1

    #@3d
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getDeviceIdentity(Landroid/os/Message;)V

    #@40
    goto :goto_0
.end method

.method private handleRadioOffOrNotAvailable()V
    .locals 3

    #@0
    .prologue
    .line 1974
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    #@3
    move-result v2

    #@4
    if-eqz v2, :cond_1

    #@6
    .line 1980
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPendingMMIs:Ljava/util/ArrayList;

    #@8
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@b
    move-result v2

    #@c
    add-int/lit8 v0, v2, -0x1

    #@e
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    #@10
    .line 1981
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPendingMMIs:Ljava/util/ArrayList;

    #@12
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@15
    move-result-object v2

    #@16
    check-cast v2, Lcom/android/internal/telephony/gsm/GsmMmiCode;

    #@18
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isPendingUSSD()Z

    #@1b
    move-result v2

    #@1c
    if-eqz v2, :cond_0

    #@1e
    .line 1982
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPendingMMIs:Ljava/util/ArrayList;

    #@20
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@23
    move-result-object v2

    #@24
    check-cast v2, Lcom/android/internal/telephony/gsm/GsmMmiCode;

    #@26
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->onUssdFinishedError()V

    #@29
    .line 1980
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@2b
    goto :goto_0

    #@2c
    .line 1986
    .end local v0    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    #@2e
    .line 1987
    .local v1, "imsPhone":Lcom/android/internal/telephony/Phone;
    if-eqz v1, :cond_2

    #@30
    .line 1988
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    #@33
    move-result-object v2

    #@34
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->setStateOff()V

    #@37
    .line 1990
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mRadioOffOrNotAvailableRegistrants:Landroid/os/RegistrantList;

    #@39
    invoke-virtual {v2}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@3c
    .line 1973
    return-void
.end method

.method private handleRadioOn()V
    .locals 2

    #@0
    .prologue
    .line 1962
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2
    const/16 v1, 0x28

    #@4
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->obtainMessage(I)Landroid/os/Message;

    #@7
    move-result-object v1

    #@8
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getVoiceRadioTechnology(Landroid/os/Message;)V

    #@b
    .line 1964
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    #@e
    move-result v0

    #@f
    if-nez v0, :cond_0

    #@11
    .line 1965
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    #@13
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getCdmaSubscriptionSource()I

    #@16
    move-result v0

    #@17
    iput v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCdmaSubscriptionSource:I

    #@19
    .line 1970
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->setPreferredNetworkTypeIfSimLoaded()V

    #@1c
    .line 1960
    return-void
.end method

.method private initOnce(Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 8
    .param p1, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v7, 0x0

    #@2
    const/4 v5, 0x0

    #@3
    .line 226
    instance-of v0, p1, Lcom/android/internal/telephony/test/SimulatedRadioControl;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 227
    check-cast p1, Lcom/android/internal/telephony/test/SimulatedRadioControl;

    #@9
    .end local p1    # "ci":Lcom/android/internal/telephony/CommandsInterface;
    iput-object p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSimulatedRadioControl:Lcom/android/internal/telephony/test/SimulatedRadioControl;

    #@b
    .line 230
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mTelephonyComponentFactory:Lcom/android/internal/telephony/TelephonyComponentFactory;

    #@d
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeGsmCdmaCallTracker(Lcom/android/internal/telephony/GsmCdmaPhone;)Lcom/android/internal/telephony/GsmCdmaCallTracker;

    #@10
    move-result-object v0

    #@11
    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    #@13
    .line 231
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mTelephonyComponentFactory:Lcom/android/internal/telephony/TelephonyComponentFactory;

    #@15
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeIccPhoneBookInterfaceManager(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    #@18
    move-result-object v0

    #@19
    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccPhoneBookIntManager:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    #@1b
    .line 233
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mContext:Landroid/content/Context;

    #@1d
    const-string/jumbo v1, "power"

    #@20
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@23
    move-result-object v6

    #@24
    check-cast v6, Landroid/os/PowerManager;

    #@26
    .line 234
    .local v6, "pm":Landroid/os/PowerManager;
    const-string/jumbo v0, "GsmCdmaPhone"

    #@29
    invoke-virtual {v6, v4, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    #@2c
    move-result-object v0

    #@2d
    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@2f
    .line 235
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mTelephonyComponentFactory:Lcom/android/internal/telephony/TelephonyComponentFactory;

    #@31
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeIccSmsInterfaceManager(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    #@34
    move-result-object v0

    #@35
    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccSmsInterfaceManager:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    #@37
    .line 236
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mTelephonyComponentFactory:Lcom/android/internal/telephony/TelephonyComponentFactory;

    #@39
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mContext:Landroid/content/Context;

    #@3b
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@3d
    iget v3, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPhoneId:I

    #@3f
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeIccCardProxy(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;I)Lcom/android/internal/telephony/uicc/IccCardProxy;

    #@42
    move-result-object v0

    #@43
    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccCardProxy:Lcom/android/internal/telephony/uicc/IccCardProxy;

    #@45
    .line 238
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@47
    invoke-interface {v0, p0, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    #@4a
    .line 239
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@4c
    const/16 v1, 0x8

    #@4e
    invoke-interface {v0, p0, v1, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    #@51
    .line 240
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@53
    const/4 v1, 0x5

    #@54
    invoke-interface {v0, p0, v1, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    #@57
    .line 241
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@59
    const/4 v1, 0x2

    #@5a
    invoke-interface {v0, p0, v1, v5}, Lcom/android/internal/telephony/CommandsInterface;->setOnSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5d
    .line 244
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@5f
    const/4 v1, 0x7

    #@60
    invoke-interface {v0, p0, v1, v5}, Lcom/android/internal/telephony/CommandsInterface;->setOnUSSD(Landroid/os/Handler;ILjava/lang/Object;)V

    #@63
    .line 245
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@65
    const/16 v1, 0x24

    #@67
    invoke-interface {v0, p0, v1, v5}, Lcom/android/internal/telephony/CommandsInterface;->setOnSs(Landroid/os/Handler;ILjava/lang/Object;)V

    #@6a
    .line 248
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mTelephonyComponentFactory:Lcom/android/internal/telephony/TelephonyComponentFactory;

    #@6c
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mContext:Landroid/content/Context;

    #@6e
    .line 249
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@70
    const/16 v4, 0x1b

    #@72
    move-object v3, p0

    #@73
    .line 248
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/TelephonyComponentFactory;->getCdmaSubscriptionSourceManagerInstance(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Landroid/os/Handler;ILjava/lang/Object;)Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    #@76
    move-result-object v0

    #@77
    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    #@79
    .line 250
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mTelephonyComponentFactory:Lcom/android/internal/telephony/TelephonyComponentFactory;

    #@7b
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mContext:Landroid/content/Context;

    #@7d
    invoke-virtual {v0, p0, v1, v7}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeEriManager(Lcom/android/internal/telephony/Phone;Landroid/content/Context;I)Lcom/android/internal/telephony/cdma/EriManager;

    #@80
    move-result-object v0

    #@81
    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

    #@83
    .line 252
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@85
    const/16 v1, 0x19

    #@87
    invoke-interface {v0, p0, v1, v5}, Lcom/android/internal/telephony/CommandsInterface;->setEmergencyCallbackMode(Landroid/os/Handler;ILjava/lang/Object;)V

    #@8a
    .line 253
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@8c
    const/16 v1, 0x1a

    #@8e
    invoke-interface {v0, p0, v1, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForExitEmergencyCallbackMode(Landroid/os/Handler;ILjava/lang/Object;)V

    #@91
    .line 256
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mContext:Landroid/content/Context;

    #@93
    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    #@96
    move-result-object v0

    #@97
    .line 257
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    #@9a
    move-result v1

    #@9b
    const-string/jumbo v2, ""

    #@9e
    .line 256
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->getOtaSpNumberSchemaForPhone(ILjava/lang/String;)Ljava/lang/String;

    #@a1
    move-result-object v0

    #@a2
    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCarrierOtaSpNumSchema:Ljava/lang/String;

    #@a4
    .line 260
    const-string/jumbo v0, "persist.radio.reset_on_switch"

    #@a7
    .line 259
    invoke-static {v0, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@aa
    move-result v0

    #@ab
    iput-boolean v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mResetModemOnRadioTechnologyChange:Z

    #@ad
    .line 262
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@af
    const/16 v1, 0x29

    #@b1
    invoke-interface {v0, p0, v1, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForRilConnected(Landroid/os/Handler;ILjava/lang/Object;)V

    #@b4
    .line 263
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@b6
    const/16 v1, 0x27

    #@b8
    invoke-interface {v0, p0, v1, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForVoiceRadioTechChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    #@bb
    .line 264
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mContext:Landroid/content/Context;

    #@bd
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    #@bf
    new-instance v2, Landroid/content/IntentFilter;

    #@c1
    .line 265
    const-string/jumbo v3, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    #@c4
    .line 264
    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@c7
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@ca
    .line 225
    return-void
.end method

.method private initRatSpecific(I)V
    .locals 8
    .param p1, "precisePhoneType"    # I

    #@0
    .prologue
    const/4 v7, 0x2

    #@1
    const/4 v6, 0x1

    #@2
    const/4 v5, 0x0

    #@3
    .line 269
    iget-object v4, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPendingMMIs:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    #@8
    .line 270
    iget-object v4, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccPhoneBookIntManager:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    #@a
    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateIccRecords(Lcom/android/internal/telephony/uicc/IccRecords;)V

    #@d
    .line 271
    iput-object v5, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mEsn:Ljava/lang/String;

    #@f
    .line 272
    iput-object v5, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mMeid:Ljava/lang/String;

    #@11
    .line 274
    iput p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPrecisePhoneType:I

    #@13
    .line 276
    iget-object v4, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mContext:Landroid/content/Context;

    #@15
    invoke-static {v4}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    #@18
    move-result-object v3

    #@19
    .line 277
    .local v3, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    #@1c
    move-result v4

    #@1d
    if-eqz v4, :cond_0

    #@1f
    .line 278
    iget-object v4, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@21
    invoke-interface {v4, v6}, Lcom/android/internal/telephony/CommandsInterface;->setPhoneType(I)V

    #@24
    .line 279
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    #@27
    move-result v4

    #@28
    invoke-virtual {v3, v4, v6}, Landroid/telephony/TelephonyManager;->setPhoneType(II)V

    #@2b
    .line 280
    iget-object v4, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccCardProxy:Lcom/android/internal/telephony/uicc/IccCardProxy;

    #@2d
    const/4 v5, 0x3

    #@2e
    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setVoiceRadioTech(I)V

    #@31
    .line 268
    :goto_0
    return-void

    #@32
    .line 282
    :cond_0
    const/4 v4, -0x1

    #@33
    iput v4, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCdmaSubscriptionSource:I

    #@35
    .line 284
    const-string/jumbo v4, "ril.cdma.inecmmode"

    #@38
    const-string/jumbo v5, "false"

    #@3b
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@3e
    move-result-object v0

    #@3f
    .line 285
    .local v0, "inEcm":Ljava/lang/String;
    const-string/jumbo v4, "true"

    #@42
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@45
    move-result v4

    #@46
    iput-boolean v4, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIsPhoneInEcmState:Z

    #@48
    .line 286
    iget-boolean v4, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIsPhoneInEcmState:Z

    #@4a
    if-eqz v4, :cond_1

    #@4c
    .line 288
    iget-object v4, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@4e
    .line 289
    const/16 v5, 0x1a

    #@50
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->obtainMessage(I)Landroid/os/Message;

    #@53
    move-result-object v5

    #@54
    .line 288
    invoke-interface {v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->exitEmergencyCallbackMode(Landroid/os/Message;)V

    #@57
    .line 292
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@59
    invoke-interface {v4, v7}, Lcom/android/internal/telephony/CommandsInterface;->setPhoneType(I)V

    #@5c
    .line 293
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    #@5f
    move-result v4

    #@60
    invoke-virtual {v3, v4, v7}, Landroid/telephony/TelephonyManager;->setPhoneType(II)V

    #@63
    .line 294
    iget-object v4, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccCardProxy:Lcom/android/internal/telephony/uicc/IccCardProxy;

    #@65
    const/4 v5, 0x6

    #@66
    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setVoiceRadioTech(I)V

    #@69
    .line 296
    const-string/jumbo v4, "ro.cdma.home.operator.alpha"

    #@6c
    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@6f
    move-result-object v1

    #@70
    .line 297
    .local v1, "operatorAlpha":Ljava/lang/String;
    const-string/jumbo v4, "ro.cdma.home.operator.numeric"

    #@73
    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@76
    move-result-object v2

    #@77
    .line 298
    .local v2, "operatorNumeric":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    #@79
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@7c
    const-string/jumbo v5, "init: operatorAlpha=\'"

    #@7f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v4

    #@83
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v4

    #@87
    .line 299
    const-string/jumbo v5, "\' operatorNumeric=\'"

    #@8a
    .line 298
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v4

    #@8e
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@91
    move-result-object v4

    #@92
    .line 299
    const-string/jumbo v5, "\'"

    #@95
    .line 298
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@98
    move-result-object v4

    #@99
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9c
    move-result-object v4

    #@9d
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    #@a0
    .line 300
    iget-object v4, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    #@a2
    iget v5, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPhoneId:I

    #@a4
    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@a7
    move-result-object v4

    #@a8
    if-eqz v4, :cond_2

    #@aa
    .line 301
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdmaLte()Z

    #@ad
    move-result v4

    #@ae
    .line 300
    if-eqz v4, :cond_4

    #@b0
    .line 302
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@b3
    move-result v4

    #@b4
    if-nez v4, :cond_3

    #@b6
    .line 303
    new-instance v4, Ljava/lang/StringBuilder;

    #@b8
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@bb
    const-string/jumbo v5, "init: set \'gsm.sim.operator.alpha\' to operator=\'"

    #@be
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c1
    move-result-object v4

    #@c2
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c5
    move-result-object v4

    #@c6
    const-string/jumbo v5, "\'"

    #@c9
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cc
    move-result-object v4

    #@cd
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d0
    move-result-object v4

    #@d1
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    #@d4
    .line 304
    iget v4, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPhoneId:I

    #@d6
    invoke-virtual {v3, v4, v1}, Landroid/telephony/TelephonyManager;->setSimOperatorNameForPhone(ILjava/lang/String;)V

    #@d9
    .line 306
    :cond_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@dc
    move-result v4

    #@dd
    if-nez v4, :cond_4

    #@df
    .line 307
    new-instance v4, Ljava/lang/StringBuilder;

    #@e1
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@e4
    const-string/jumbo v5, "init: set \'gsm.sim.operator.numeric\' to operator=\'"

    #@e7
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ea
    move-result-object v4

    #@eb
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ee
    move-result-object v4

    #@ef
    .line 308
    const-string/jumbo v5, "\'"

    #@f2
    .line 307
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f5
    move-result-object v4

    #@f6
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f9
    move-result-object v4

    #@fa
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    #@fd
    .line 309
    new-instance v4, Ljava/lang/StringBuilder;

    #@ff
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@102
    const-string/jumbo v5, "update icc_operator_numeric="

    #@105
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@108
    move-result-object v4

    #@109
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10c
    move-result-object v4

    #@10d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@110
    move-result-object v4

    #@111
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    #@114
    .line 310
    iget v4, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPhoneId:I

    #@116
    invoke-virtual {v3, v4, v2}, Landroid/telephony/TelephonyManager;->setSimOperatorNumericForPhone(ILjava/lang/String;)V

    #@119
    .line 312
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    #@11c
    move-result-object v4

    #@11d
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    #@120
    move-result v5

    #@121
    invoke-virtual {v4, v2, v5}, Lcom/android/internal/telephony/SubscriptionController;->setMccMnc(Ljava/lang/String;I)I

    #@124
    .line 314
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->setIsoCountryProperty(Ljava/lang/String;)V

    #@127
    .line 316
    new-instance v4, Ljava/lang/StringBuilder;

    #@129
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@12c
    const-string/jumbo v5, "update mccmnc="

    #@12f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@132
    move-result-object v4

    #@133
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@136
    move-result-object v4

    #@137
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13a
    move-result-object v4

    #@13b
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    #@13e
    .line 317
    iget-object v4, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mContext:Landroid/content/Context;

    #@140
    const/4 v5, 0x0

    #@141
    invoke-static {v4, v2, v5}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;Z)V

    #@144
    .line 322
    :cond_4
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->updateCurrentCarrierInProvider(Ljava/lang/String;)Z

    #@147
    goto/16 :goto_0
.end method

.method private isCarrierOtaSpNum(Ljava/lang/String;)Z
    .locals 11
    .param p1, "dialStr"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v10, -0x1

    #@1
    const/4 v9, 0x0

    #@2
    .line 2897
    const/4 v2, 0x0

    #@3
    .line 2898
    .local v2, "isOtaSpNum":Z
    invoke-static {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->extractSelCodeFromOtaSpNum(Ljava/lang/String;)I

    #@6
    move-result v5

    #@7
    .line 2899
    .local v5, "sysSelCodeInt":I
    if-ne v5, v10, :cond_0

    #@9
    .line 2900
    return v2

    #@a
    .line 2903
    :cond_0
    iget-object v6, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCarrierOtaSpNumSchema:Ljava/lang/String;

    #@c
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@f
    move-result v6

    #@10
    if-nez v6, :cond_6

    #@12
    .line 2904
    sget-object v6, Lcom/android/internal/telephony/GsmCdmaPhone;->pOtaSpNumSchema:Ljava/util/regex/Pattern;

    #@14
    iget-object v7, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCarrierOtaSpNumSchema:Ljava/lang/String;

    #@16
    invoke-virtual {v6, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@19
    move-result-object v3

    #@1a
    .line 2906
    .local v3, "m":Ljava/util/regex/Matcher;
    const-string/jumbo v6, "GsmCdmaPhone"

    #@1d
    new-instance v7, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    const-string/jumbo v8, "isCarrierOtaSpNum,schema"

    #@25
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v7

    #@29
    iget-object v8, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCarrierOtaSpNumSchema:Ljava/lang/String;

    #@2b
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v7

    #@2f
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v7

    #@33
    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@36
    .line 2909
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    #@39
    move-result v6

    #@3a
    if-eqz v6, :cond_5

    #@3c
    .line 2910
    sget-object v6, Lcom/android/internal/telephony/GsmCdmaPhone;->pOtaSpNumSchema:Ljava/util/regex/Pattern;

    #@3e
    iget-object v7, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCarrierOtaSpNumSchema:Ljava/lang/String;

    #@40
    invoke-virtual {v6, v7}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    #@43
    move-result-object v4

    #@44
    .line 2912
    .local v4, "sch":[Ljava/lang/String;
    aget-object v6, v4, v9

    #@46
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@49
    move-result v6

    #@4a
    if-nez v6, :cond_2

    #@4c
    aget-object v6, v4, v9

    #@4e
    const-string/jumbo v7, "SELC"

    #@51
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@54
    move-result v6

    #@55
    if-eqz v6, :cond_2

    #@57
    .line 2913
    if-eq v5, v10, :cond_1

    #@59
    .line 2914
    invoke-static {v5, v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->checkOtaSpNumBasedOnSysSelCode(I[Ljava/lang/String;)Z

    #@5c
    move-result v2

    #@5d
    .line 2942
    .end local v2    # "isOtaSpNum":Z
    .end local v3    # "m":Ljava/util/regex/Matcher;
    .end local v4    # "sch":[Ljava/lang/String;
    :goto_0
    return v2

    #@5e
    .line 2917
    .restart local v2    # "isOtaSpNum":Z
    .restart local v3    # "m":Ljava/util/regex/Matcher;
    .restart local v4    # "sch":[Ljava/lang/String;
    :cond_1
    const-string/jumbo v6, "GsmCdmaPhone"

    #@61
    const-string/jumbo v7, "isCarrierOtaSpNum,sysSelCodeInt is invalid"

    #@64
    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@67
    goto :goto_0

    #@68
    .line 2920
    :cond_2
    aget-object v6, v4, v9

    #@6a
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@6d
    move-result v6

    #@6e
    if-nez v6, :cond_4

    #@70
    aget-object v6, v4, v9

    #@72
    const-string/jumbo v7, "FC"

    #@75
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@78
    move-result v6

    #@79
    if-eqz v6, :cond_4

    #@7b
    .line 2921
    const/4 v6, 0x1

    #@7c
    aget-object v6, v4, v6

    #@7e
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@81
    move-result v1

    #@82
    .line 2922
    .local v1, "fcLen":I
    const/4 v6, 0x2

    #@83
    aget-object v0, v4, v6

    #@85
    .line 2923
    .local v0, "fc":Ljava/lang/String;
    invoke-virtual {p1, v9, v0, v9, v1}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    #@88
    move-result v6

    #@89
    if-eqz v6, :cond_3

    #@8b
    .line 2924
    const/4 v2, 0x1

    #@8c
    goto :goto_0

    #@8d
    .line 2926
    :cond_3
    const-string/jumbo v6, "GsmCdmaPhone"

    #@90
    const-string/jumbo v7, "isCarrierOtaSpNum,not otasp number"

    #@93
    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@96
    goto :goto_0

    #@97
    .line 2930
    .end local v0    # "fc":Ljava/lang/String;
    .end local v1    # "fcLen":I
    :cond_4
    const-string/jumbo v6, "GsmCdmaPhone"

    #@9a
    new-instance v7, Ljava/lang/StringBuilder;

    #@9c
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@9f
    const-string/jumbo v8, "isCarrierOtaSpNum,ota schema not supported"

    #@a2
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a5
    move-result-object v7

    #@a6
    aget-object v8, v4, v9

    #@a8
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ab
    move-result-object v7

    #@ac
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@af
    move-result-object v7

    #@b0
    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@b3
    goto :goto_0

    #@b4
    .line 2935
    .end local v4    # "sch":[Ljava/lang/String;
    :cond_5
    const-string/jumbo v6, "GsmCdmaPhone"

    #@b7
    new-instance v7, Ljava/lang/StringBuilder;

    #@b9
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@bc
    const-string/jumbo v8, "isCarrierOtaSpNum,ota schema pattern not right"

    #@bf
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c2
    move-result-object v7

    #@c3
    .line 2936
    iget-object v8, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCarrierOtaSpNumSchema:Ljava/lang/String;

    #@c5
    .line 2935
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c8
    move-result-object v7

    #@c9
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@cc
    move-result-object v7

    #@cd
    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@d0
    goto :goto_0

    #@d1
    .line 2940
    .end local v3    # "m":Ljava/util/regex/Matcher;
    :cond_6
    const-string/jumbo v6, "GsmCdmaPhone"

    #@d4
    const-string/jumbo v7, "isCarrierOtaSpNum,ota schema pattern empty"

    #@d7
    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@da
    goto :goto_0
.end method

.method private isCfEnable(I)Z
    .locals 2
    .param p1, "action"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 1591
    if-eq p1, v0, :cond_0

    #@3
    const/4 v1, 0x3

    #@4
    if-ne p1, v1, :cond_1

    #@6
    :cond_0
    :goto_0
    return v0

    #@7
    :cond_1
    const/4 v0, 0x0

    #@8
    goto :goto_0
.end method

.method private static isIs683OtaSpDialStr(Ljava/lang/String;)Z
    .locals 4
    .param p0, "dialStr"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2797
    const/4 v1, 0x0

    #@1
    .line 2798
    .local v1, "isOtaspDialString":Z
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@4
    move-result v0

    #@5
    .line 2800
    .local v0, "dialStrLen":I
    const/4 v3, 0x4

    #@6
    if-ne v0, v3, :cond_1

    #@8
    .line 2801
    const-string/jumbo v3, "*228"

    #@b
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e
    move-result v3

    #@f
    if-eqz v3, :cond_0

    #@11
    .line 2802
    const/4 v1, 0x1

    #@12
    .line 2821
    :cond_0
    :goto_0
    return v1

    #@13
    .line 2805
    :cond_1
    invoke-static {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->extractSelCodeFromOtaSpNum(Ljava/lang/String;)I

    #@16
    move-result v2

    #@17
    .line 2806
    .local v2, "sysSelCodeInt":I
    packed-switch v2, :pswitch_data_0

    #@1a
    goto :goto_0

    #@1b
    .line 2815
    :pswitch_0
    const/4 v1, 0x1

    #@1c
    .line 2816
    goto :goto_0

    #@1d
    .line 2806
    nop

    #@1e
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isManualSelProhibitedInGlobalMode()Z
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v5, 0x1

    #@2
    .line 2631
    const/4 v2, 0x0

    #@3
    .line 2632
    .local v2, "isProhibited":Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    #@6
    move-result-object v3

    #@7
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@a
    move-result-object v3

    #@b
    const v4, 0x1040066

    #@e
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    .line 2635
    .local v1, "configString":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@15
    move-result v3

    #@16
    if-nez v3, :cond_1

    #@18
    .line 2636
    const-string/jumbo v3, ";"

    #@1b
    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    .line 2638
    .local v0, "configArray":[Ljava/lang/String;
    if-eqz v0, :cond_1

    #@21
    .line 2639
    array-length v3, v0

    #@22
    if-ne v3, v5, :cond_0

    #@24
    aget-object v3, v0, v6

    #@26
    const-string/jumbo v4, "true"

    #@29
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@2c
    move-result v3

    #@2d
    if-nez v3, :cond_3

    #@2f
    .line 2640
    :cond_0
    array-length v3, v0

    #@30
    const/4 v4, 0x2

    #@31
    if-ne v3, v4, :cond_1

    #@33
    aget-object v3, v0, v5

    #@35
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@38
    move-result v3

    #@39
    if-eqz v3, :cond_2

    #@3b
    .line 2646
    .end local v0    # "configArray":[Ljava/lang/String;
    :cond_1
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    #@3d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@40
    const-string/jumbo v4, "isManualNetSelAllowedInGlobal in current carrier is "

    #@43
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v3

    #@47
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v3

    #@4b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e
    move-result-object v3

    #@4f
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    #@52
    .line 2647
    return v2

    #@53
    .line 2641
    .restart local v0    # "configArray":[Ljava/lang/String;
    :cond_2
    aget-object v3, v0, v6

    #@55
    const-string/jumbo v4, "true"

    #@58
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@5b
    move-result v3

    #@5c
    .line 2640
    if-eqz v3, :cond_1

    #@5e
    .line 2642
    aget-object v3, v0, v5

    #@60
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->isMatchGid(Ljava/lang/String;)Z

    #@63
    move-result v3

    #@64
    .line 2638
    if-eqz v3, :cond_1

    #@66
    .line 2643
    :cond_3
    const/4 v2, 0x1

    #@67
    goto :goto_0
.end method

.method private isValidCommandInterfaceCFAction(I)Z
    .locals 1
    .param p1, "commandInterfaceCFAction"    # I

    #@0
    .prologue
    .line 1579
    packed-switch p1, :pswitch_data_0

    #@3
    .line 1586
    :pswitch_0
    const/4 v0, 0x0

    #@4
    return v0

    #@5
    .line 1584
    :pswitch_1
    const/4 v0, 0x1

    #@6
    return v0

    #@7
    .line 1579
    nop

    #@8
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private isValidCommandInterfaceCFReason(I)Z
    .locals 1
    .param p1, "commandInterfaceCFReason"    # I

    #@0
    .prologue
    .line 1553
    packed-switch p1, :pswitch_data_0

    #@3
    .line 1562
    const/4 v0, 0x0

    #@4
    return v0

    #@5
    .line 1560
    :pswitch_0
    const/4 v0, 0x1

    #@6
    return v0

    #@7
    .line 1553
    nop

    #@8
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private logd(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3298
    const-string/jumbo v0, "GsmCdmaPhone"

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "[GsmCdmaPhone] "

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1a
    .line 3297
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3302
    const-string/jumbo v0, "GsmCdmaPhone"

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "[GsmCdmaPhone] "

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1a
    .line 3301
    return-void
.end method

.method private onIncomingUSSD(ILjava/lang/String;)V
    .locals 9
    .param p1, "ussdMode"    # I
    .param p2, "ussdMessage"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    .line 1882
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    #@4
    move-result v7

    #@5
    if-nez v7, :cond_0

    #@7
    .line 1883
    const-string/jumbo v7, "onIncomingUSSD: not expected on GSM"

    #@a
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    #@d
    .line 1890
    :cond_0
    if-ne p1, v8, :cond_3

    #@f
    const/4 v4, 0x1

    #@10
    .line 1893
    .local v4, "isUssdRequest":Z
    :goto_0
    if-eqz p1, :cond_5

    #@12
    .line 1894
    if-eq p1, v8, :cond_4

    #@14
    const/4 v2, 0x1

    #@15
    .line 1896
    .local v2, "isUssdError":Z
    :goto_1
    const/4 v7, 0x2

    #@16
    if-ne p1, v7, :cond_6

    #@18
    const/4 v3, 0x1

    #@19
    .line 1902
    .local v3, "isUssdRelease":Z
    :goto_2
    const/4 v0, 0x0

    #@1a
    .line 1903
    .local v0, "found":Lcom/android/internal/telephony/gsm/GsmMmiCode;
    const/4 v1, 0x0

    #@1b
    .local v1, "i":I
    iget-object v7, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPendingMMIs:Ljava/util/ArrayList;

    #@1d
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    #@20
    move-result v6

    #@21
    .local v6, "s":I
    :goto_3
    if-ge v1, v6, :cond_1

    #@23
    .line 1904
    iget-object v7, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPendingMMIs:Ljava/util/ArrayList;

    #@25
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@28
    move-result-object v7

    #@29
    check-cast v7, Lcom/android/internal/telephony/gsm/GsmMmiCode;

    #@2b
    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isPendingUSSD()Z

    #@2e
    move-result v7

    #@2f
    if-eqz v7, :cond_7

    #@31
    .line 1905
    iget-object v7, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPendingMMIs:Ljava/util/ArrayList;

    #@33
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@36
    move-result-object v0

    #@37
    .end local v0    # "found":Lcom/android/internal/telephony/gsm/GsmMmiCode;
    check-cast v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;

    #@39
    .line 1910
    :cond_1
    if-eqz v0, :cond_a

    #@3b
    .line 1913
    if-eqz v3, :cond_8

    #@3d
    .line 1914
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->onUssdRelease()V

    #@40
    .line 1881
    :cond_2
    :goto_4
    return-void

    #@41
    .line 1890
    .end local v1    # "i":I
    .end local v2    # "isUssdError":Z
    .end local v3    # "isUssdRelease":Z
    .end local v4    # "isUssdRequest":Z
    .end local v6    # "s":I
    :cond_3
    const/4 v4, 0x0

    #@42
    .restart local v4    # "isUssdRequest":Z
    goto :goto_0

    #@43
    .line 1894
    :cond_4
    const/4 v2, 0x0

    #@44
    .restart local v2    # "isUssdError":Z
    goto :goto_1

    #@45
    .line 1893
    .end local v2    # "isUssdError":Z
    :cond_5
    const/4 v2, 0x0

    #@46
    .restart local v2    # "isUssdError":Z
    goto :goto_1

    #@47
    .line 1896
    :cond_6
    const/4 v3, 0x0

    #@48
    .restart local v3    # "isUssdRelease":Z
    goto :goto_2

    #@49
    .line 1903
    .restart local v0    # "found":Lcom/android/internal/telephony/gsm/GsmMmiCode;
    .restart local v1    # "i":I
    .restart local v6    # "s":I
    :cond_7
    add-int/lit8 v1, v1, 0x1

    #@4b
    goto :goto_3

    #@4c
    .line 1915
    .end local v0    # "found":Lcom/android/internal/telephony/gsm/GsmMmiCode;
    :cond_8
    if-eqz v2, :cond_9

    #@4e
    .line 1916
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->onUssdFinishedError()V

    #@51
    goto :goto_4

    #@52
    .line 1918
    :cond_9
    invoke-virtual {v0, p2, v4}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->onUssdFinished(Ljava/lang/String;Z)V

    #@55
    goto :goto_4

    #@56
    .line 1925
    :cond_a
    if-nez v2, :cond_2

    #@58
    if-eqz p2, :cond_2

    #@5a
    .line 1930
    iget-object v7, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    #@5c
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@5f
    move-result-object v7

    #@60
    check-cast v7, Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@62
    .line 1927
    invoke-static {p2, v4, p0, v7}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->newNetworkInitiatedUssd(Ljava/lang/String;ZLcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)Lcom/android/internal/telephony/gsm/GsmMmiCode;

    #@65
    move-result-object v5

    #@66
    .line 1931
    .local v5, "mmi":Lcom/android/internal/telephony/gsm/GsmMmiCode;
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->onNetworkInitiatedUssd(Lcom/android/internal/telephony/MmiCode;)V

    #@69
    goto :goto_4
.end method

.method private onNetworkInitiatedUssd(Lcom/android/internal/telephony/MmiCode;)V
    .locals 3
    .param p1, "mmi"    # Lcom/android/internal/telephony/MmiCode;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1876
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mMmiCompleteRegistrants:Landroid/os/RegistrantList;

    #@3
    .line 1877
    new-instance v1, Landroid/os/AsyncResult;

    #@5
    invoke-direct {v1, v2, p1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@8
    .line 1876
    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    #@b
    .line 1875
    return-void
.end method

.method private phoneObjectUpdater(I)V
    .locals 13
    .param p1, "newVoiceRadioTech"    # I

    #@0
    .prologue
    const/4 v12, 0x2

    #@1
    const/4 v11, 0x1

    #@2
    const/4 v10, 0x0

    #@3
    const/4 v9, 0x0

    #@4
    .line 3008
    new-instance v7, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v8, "phoneObjectUpdater: newVoiceRadioTech="

    #@c
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v7

    #@10
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13
    move-result-object v7

    #@14
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v7

    #@18
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    #@1b
    .line 3011
    invoke-static {p1}, Landroid/telephony/ServiceState;->isLte(I)Z

    #@1e
    move-result v7

    #@1f
    if-nez v7, :cond_0

    #@21
    .line 3012
    if-nez p1, :cond_1

    #@23
    .line 3014
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    #@26
    move-result-object v7

    #@27
    const-string/jumbo v8, "carrier_config"

    #@2a
    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@2d
    move-result-object v1

    #@2e
    .line 3013
    check-cast v1, Landroid/telephony/CarrierConfigManager;

    #@30
    .line 3015
    .local v1, "configMgr":Landroid/telephony/CarrierConfigManager;
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    #@33
    move-result v7

    #@34
    invoke-virtual {v1, v7}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    #@37
    move-result-object v0

    #@38
    .line 3016
    .local v0, "b":Landroid/os/PersistableBundle;
    if-eqz v0, :cond_2

    #@3a
    .line 3018
    const-string/jumbo v7, "volte_replacement_rat_int"

    #@3d
    invoke-virtual {v0, v7}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    #@40
    move-result v6

    #@41
    .line 3019
    .local v6, "volteReplacementRat":I
    new-instance v7, Ljava/lang/StringBuilder;

    #@43
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@46
    const-string/jumbo v8, "phoneObjectUpdater: volteReplacementRat="

    #@49
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v7

    #@4d
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@50
    move-result-object v7

    #@51
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@54
    move-result-object v7

    #@55
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    #@58
    .line 3020
    if-eqz v6, :cond_1

    #@5a
    .line 3021
    move p1, v6

    #@5b
    .line 3028
    .end local v0    # "b":Landroid/os/PersistableBundle;
    .end local v1    # "configMgr":Landroid/telephony/CarrierConfigManager;
    .end local v6    # "volteReplacementRat":I
    :cond_1
    :goto_0
    iget v7, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mRilVersion:I

    #@5d
    const/4 v8, 0x6

    #@5e
    if-ne v7, v8, :cond_5

    #@60
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getLteOnCdmaMode()I

    #@63
    move-result v7

    #@64
    if-ne v7, v11, :cond_5

    #@66
    .line 3033
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneType()I

    #@69
    move-result v7

    #@6a
    if-ne v7, v12, :cond_3

    #@6c
    .line 3034
    new-instance v7, Ljava/lang/StringBuilder;

    #@6e
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@71
    const-string/jumbo v8, "phoneObjectUpdater: LTE ON CDMA property is set. Use CDMA Phone newVoiceRadioTech="

    #@74
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v7

    #@78
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v7

    #@7c
    .line 3036
    const-string/jumbo v8, " mActivePhone="

    #@7f
    .line 3034
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v7

    #@83
    .line 3036
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneName()Ljava/lang/String;

    #@86
    move-result-object v8

    #@87
    .line 3034
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v7

    #@8b
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8e
    move-result-object v7

    #@8f
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    #@92
    .line 3037
    return-void

    #@93
    .line 3024
    .restart local v0    # "b":Landroid/os/PersistableBundle;
    .restart local v1    # "configMgr":Landroid/telephony/CarrierConfigManager;
    :cond_2
    const-string/jumbo v7, "phoneObjectUpdater: didn\'t get volteReplacementRat from carrier config"

    #@96
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    #@99
    goto :goto_0

    #@9a
    .line 3039
    .end local v0    # "b":Landroid/os/PersistableBundle;
    .end local v1    # "configMgr":Landroid/telephony/CarrierConfigManager;
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    #@9c
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@9f
    const-string/jumbo v8, "phoneObjectUpdater: LTE ON CDMA property is set. Switch to CDMALTEPhone newVoiceRadioTech="

    #@a2
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a5
    move-result-object v7

    #@a6
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a9
    move-result-object v7

    #@aa
    .line 3041
    const-string/jumbo v8, " mActivePhone="

    #@ad
    .line 3039
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b0
    move-result-object v7

    #@b1
    .line 3041
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneName()Ljava/lang/String;

    #@b4
    move-result-object v8

    #@b5
    .line 3039
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b8
    move-result-object v7

    #@b9
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bc
    move-result-object v7

    #@bd
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    #@c0
    .line 3042
    const/4 p1, 0x6

    #@c1
    .line 3070
    :cond_4
    if-nez p1, :cond_a

    #@c3
    .line 3073
    new-instance v7, Ljava/lang/StringBuilder;

    #@c5
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@c8
    const-string/jumbo v8, "phoneObjectUpdater: Unknown rat ignore,  newVoiceRadioTech=Unknown. mActivePhone="

    #@cb
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ce
    move-result-object v7

    #@cf
    .line 3074
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneName()Ljava/lang/String;

    #@d2
    move-result-object v8

    #@d3
    .line 3073
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d6
    move-result-object v7

    #@d7
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@da
    move-result-object v7

    #@db
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    #@de
    .line 3075
    return-void

    #@df
    .line 3048
    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isShuttingDown()Z

    #@e2
    move-result v7

    #@e3
    if-eqz v7, :cond_6

    #@e5
    .line 3049
    const-string/jumbo v7, "Device is shutting down. No need to switch phone now."

    #@e8
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    #@eb
    .line 3050
    return-void

    #@ec
    .line 3053
    :cond_6
    invoke-static {p1}, Landroid/telephony/ServiceState;->isCdma(I)Z

    #@ef
    move-result v3

    #@f0
    .line 3054
    .local v3, "matchCdma":Z
    invoke-static {p1}, Landroid/telephony/ServiceState;->isGsm(I)Z

    #@f3
    move-result v4

    #@f4
    .line 3055
    .local v4, "matchGsm":Z
    if-eqz v3, :cond_8

    #@f6
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneType()I

    #@f9
    move-result v7

    #@fa
    if-ne v7, v12, :cond_8

    #@fc
    .line 3058
    :cond_7
    new-instance v7, Ljava/lang/StringBuilder;

    #@fe
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@101
    const-string/jumbo v8, "phoneObjectUpdater: No change ignore, newVoiceRadioTech="

    #@104
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@107
    move-result-object v7

    #@108
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@10b
    move-result-object v7

    #@10c
    .line 3060
    const-string/jumbo v8, " mActivePhone="

    #@10f
    .line 3058
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@112
    move-result-object v7

    #@113
    .line 3060
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneName()Ljava/lang/String;

    #@116
    move-result-object v8

    #@117
    .line 3058
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11a
    move-result-object v7

    #@11b
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@11e
    move-result-object v7

    #@11f
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    #@122
    .line 3061
    return-void

    #@123
    .line 3056
    :cond_8
    if-eqz v4, :cond_9

    #@125
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneType()I

    #@128
    move-result v7

    #@129
    if-eq v7, v11, :cond_7

    #@12b
    .line 3063
    :cond_9
    if-nez v3, :cond_4

    #@12d
    if-nez v4, :cond_4

    #@12f
    .line 3064
    new-instance v7, Ljava/lang/StringBuilder;

    #@131
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@134
    const-string/jumbo v8, "phoneObjectUpdater: newVoiceRadioTech="

    #@137
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13a
    move-result-object v7

    #@13b
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13e
    move-result-object v7

    #@13f
    .line 3065
    const-string/jumbo v8, " doesn\'t match either CDMA or GSM - error! No phone change"

    #@142
    .line 3064
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@145
    move-result-object v7

    #@146
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@149
    move-result-object v7

    #@14a
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    #@14d
    .line 3066
    return-void

    #@14e
    .line 3078
    .end local v3    # "matchCdma":Z
    .end local v4    # "matchGsm":Z
    :cond_a
    const/4 v5, 0x0

    #@14f
    .line 3079
    .local v5, "oldPowerState":Z
    iget-boolean v7, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mResetModemOnRadioTechnologyChange:Z

    #@151
    if-eqz v7, :cond_b

    #@153
    .line 3080
    iget-object v7, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@155
    invoke-interface {v7}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    #@158
    move-result-object v7

    #@159
    invoke-virtual {v7}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    #@15c
    move-result v7

    #@15d
    if-eqz v7, :cond_b

    #@15f
    .line 3081
    const/4 v5, 0x1

    #@160
    .line 3082
    const-string/jumbo v7, "phoneObjectUpdater: Setting Radio Power to Off"

    #@163
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    #@166
    .line 3083
    iget-object v7, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@168
    invoke-interface {v7, v9, v10}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    #@16b
    .line 3087
    :cond_b
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->switchVoiceRadioTech(I)V

    #@16e
    .line 3089
    iget-boolean v7, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mResetModemOnRadioTechnologyChange:Z

    #@170
    if-eqz v7, :cond_c

    #@172
    if-eqz v5, :cond_c

    #@174
    .line 3090
    const-string/jumbo v7, "phoneObjectUpdater: Resetting Radio"

    #@177
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    #@17a
    .line 3091
    iget-object v7, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@17c
    invoke-interface {v7, v5, v10}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    #@17f
    .line 3095
    :cond_c
    iget-object v7, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccCardProxy:Lcom/android/internal/telephony/uicc/IccCardProxy;

    #@181
    invoke-virtual {v7, p1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setVoiceRadioTech(I)V

    #@184
    .line 3098
    new-instance v2, Landroid/content/Intent;

    #@186
    const-string/jumbo v7, "android.intent.action.RADIO_TECHNOLOGY"

    #@189
    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@18c
    .line 3099
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v7, 0x20000000

    #@18e
    invoke-virtual {v2, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@191
    .line 3100
    const-string/jumbo v7, "phoneName"

    #@194
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneName()Ljava/lang/String;

    #@197
    move-result-object v8

    #@198
    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@19b
    .line 3101
    iget v7, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPhoneId:I

    #@19d
    invoke-static {v2, v7}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    #@1a0
    .line 3102
    const/4 v7, -0x1

    #@1a1
    invoke-static {v2, v10, v7}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    #@1a4
    .line 3007
    return-void
.end method

.method private processIccRecordEvents(I)V
    .locals 0
    .param p1, "eventCode"    # I

    #@0
    .prologue
    .line 2413
    packed-switch p1, :pswitch_data_0

    #@3
    .line 2412
    :goto_0
    return-void

    #@4
    .line 2415
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyCallForwardingIndicator()V

    #@7
    goto :goto_0

    #@8
    .line 2413
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private registerForIccRecordEvents()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 2651
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    #@3
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    #@9
    .line 2652
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-nez v0, :cond_0

    #@b
    .line 2653
    return-void

    #@c
    .line 2655
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    #@f
    move-result v1

    #@10
    if-eqz v1, :cond_1

    #@12
    .line 2657
    const/16 v1, 0x1c

    #@14
    .line 2656
    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForNetworkSelectionModeAutomatic(Landroid/os/Handler;ILjava/lang/Object;)V

    #@17
    .line 2658
    const/16 v1, 0x1d

    #@19
    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsEvents(Landroid/os/Handler;ILjava/lang/Object;)V

    #@1c
    .line 2659
    const/4 v1, 0x3

    #@1d
    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    #@20
    .line 2650
    :goto_0
    return-void

    #@21
    .line 2661
    :cond_1
    const/16 v1, 0x16

    #@23
    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    #@26
    goto :goto_0
.end method

.method private sendEmergencyCallbackModeChange()V
    .locals 3

    #@0
    .prologue
    .line 632
    new-instance v0, Landroid/content/Intent;

    #@2
    const-string/jumbo v1, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    #@5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@8
    .line 633
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "phoneinECMState"

    #@b
    iget-boolean v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIsPhoneInEcmState:Z

    #@d
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    #@10
    .line 634
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    #@13
    move-result v1

    #@14
    invoke-static {v0, v1}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    #@17
    .line 635
    const/4 v1, 0x0

    #@18
    const/4 v2, -0x1

    #@19
    invoke-static {v0, v1, v2}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    #@1c
    .line 636
    const-string/jumbo v1, "sendEmergencyCallbackModeChange"

    #@1f
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    #@22
    .line 630
    return-void
.end method

.method private setIsoCountryProperty(Ljava/lang/String;)V
    .locals 6
    .param p1, "operatorNumeric"    # Ljava/lang/String;

    #@0
    .prologue
    .line 332
    iget-object v4, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mContext:Landroid/content/Context;

    #@2
    invoke-static {v4}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    #@5
    move-result-object v3

    #@6
    .line 333
    .local v3, "tm":Landroid/telephony/TelephonyManager;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@9
    move-result v4

    #@a
    if-eqz v4, :cond_0

    #@c
    .line 334
    const-string/jumbo v4, "setIsoCountryProperty: clear \'gsm.sim.operator.iso-country\'"

    #@f
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    #@12
    .line 335
    iget v4, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPhoneId:I

    #@14
    const-string/jumbo v5, ""

    #@17
    invoke-virtual {v3, v4, v5}, Landroid/telephony/TelephonyManager;->setSimCountryIsoForPhone(ILjava/lang/String;)V

    #@1a
    .line 331
    :goto_0
    return-void

    #@1b
    .line 337
    :cond_0
    const-string/jumbo v2, ""

    #@1e
    .line 340
    .local v2, "iso":Ljava/lang/String;
    const/4 v4, 0x0

    #@1f
    const/4 v5, 0x3

    #@20
    :try_start_0
    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@23
    move-result-object v4

    #@24
    .line 339
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@27
    move-result v4

    #@28
    invoke-static {v4}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@2b
    move-result-object v2

    #@2c
    .line 347
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    #@2e
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@31
    const-string/jumbo v5, "setIsoCountryProperty: set \'gsm.sim.operator.iso-country\' to iso="

    #@34
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v4

    #@38
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v4

    #@3c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v4

    #@40
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    #@43
    .line 348
    iget v4, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPhoneId:I

    #@45
    invoke-virtual {v3, v4, v2}, Landroid/telephony/TelephonyManager;->setSimCountryIsoForPhone(ILjava/lang/String;)V

    #@48
    goto :goto_0

    #@49
    .line 343
    :catch_0
    move-exception v1

    #@4a
    .line 344
    .local v1, "ex":Ljava/lang/StringIndexOutOfBoundsException;
    const-string/jumbo v4, "GsmCdmaPhone"

    #@4d
    const-string/jumbo v5, "setIsoCountryProperty: countryCodeForMcc error"

    #@50
    invoke-static {v4, v5, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@53
    goto :goto_1

    #@54
    .line 341
    .end local v1    # "ex":Ljava/lang/StringIndexOutOfBoundsException;
    :catch_1
    move-exception v0

    #@55
    .line 342
    .local v0, "ex":Ljava/lang/NumberFormatException;
    const-string/jumbo v4, "GsmCdmaPhone"

    #@58
    const-string/jumbo v5, "setIsoCountryProperty: countryCodeForMcc error"

    #@5b
    invoke-static {v4, v5, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@5e
    goto :goto_1
.end method

.method private setVmSimImsi(Ljava/lang/String;)V
    .locals 4
    .param p1, "imsi"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1345
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    #@3
    move-result-object v2

    #@4
    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    #@7
    move-result-object v1

    #@8
    .line 1346
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    #@b
    move-result-object v0

    #@c
    .line 1347
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v2, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v3, "vm_sim_imsi_key"

    #@14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

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
    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    #@27
    .line 1348
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    #@2a
    .line 1344
    return-void
.end method

.method private storeVoiceMailNumber(Ljava/lang/String;)V
    .locals 4
    .param p1, "number"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1276
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    #@3
    move-result-object v2

    #@4
    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    #@7
    move-result-object v1

    #@8
    .line 1277
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    #@b
    move-result-object v0

    #@c
    .line 1278
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    #@f
    move-result v2

    #@10
    if-eqz v2, :cond_0

    #@12
    .line 1279
    new-instance v2, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v3, "vm_number_key"

    #@1a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    #@21
    move-result v3

    #@22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v2

    #@2a
    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    #@2d
    .line 1280
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    #@30
    .line 1281
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubscriberId()Ljava/lang/String;

    #@33
    move-result-object v2

    #@34
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->setVmSimImsi(Ljava/lang/String;)V

    #@37
    .line 1275
    :goto_0
    return-void

    #@38
    .line 1283
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    #@3a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@3d
    const-string/jumbo v3, "vm_number_key_cdma"

    #@40
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v2

    #@44
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    #@47
    move-result v3

    #@48
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v2

    #@4c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f
    move-result-object v2

    #@50
    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    #@53
    .line 1284
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    #@56
    goto :goto_0
.end method

.method private switchPhoneType(I)V
    .locals 2
    .param p1, "precisePhoneType"    # I

    #@0
    .prologue
    .line 365
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mExitEcmRunnable:Ljava/lang/Runnable;

    #@2
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->removeCallbacks(Ljava/lang/Runnable;)V

    #@5
    .line 367
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->initRatSpecific(I)V

    #@8
    .line 369
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    #@a
    invoke-virtual {v1}, Lcom/android/internal/telephony/ServiceStateTracker;->updatePhoneType()V

    #@d
    .line 370
    const/4 v1, 0x1

    #@e
    if-ne p1, v1, :cond_1

    #@10
    const-string/jumbo v1, "GSM"

    #@13
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->setPhoneName(Ljava/lang/String;)V

    #@16
    .line 371
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->onUpdateIccAvailability()V

    #@19
    .line 372
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    #@1b
    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->updatePhoneType()V

    #@1e
    .line 374
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@20
    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    #@23
    move-result-object v0

    #@24
    .line 375
    .local v0, "radioState":Lcom/android/internal/telephony/CommandsInterface$RadioState;
    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isAvailable()Z

    #@27
    move-result v1

    #@28
    if-eqz v1, :cond_0

    #@2a
    .line 376
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->handleRadioAvailable()V

    #@2d
    .line 377
    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    #@30
    move-result v1

    #@31
    if-eqz v1, :cond_0

    #@33
    .line 378
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->handleRadioOn()V

    #@36
    .line 381
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isAvailable()Z

    #@39
    move-result v1

    #@3a
    if-eqz v1, :cond_2

    #@3c
    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    #@3f
    move-result v1

    #@40
    if-eqz v1, :cond_2

    #@42
    .line 364
    :goto_1
    return-void

    #@43
    .line 370
    .end local v0    # "radioState":Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :cond_1
    const-string/jumbo v1, "CDMA"

    #@46
    goto :goto_0

    #@47
    .line 382
    .restart local v0    # "radioState":Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->handleRadioOffOrNotAvailable()V

    #@4a
    goto :goto_1
.end method

.method private switchVoiceRadioTech(I)V
    .locals 3
    .param p1, "newVoiceRadioTech"    # I

    #@0
    .prologue
    .line 3107
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneName()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 3109
    .local v0, "outgoingPhoneName":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v2, "Switching Voice Phone : "

    #@c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    const-string/jumbo v2, " >>> "

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    .line 3110
    invoke-static {p1}, Landroid/telephony/ServiceState;->isGsm(I)Z

    #@1e
    move-result v1

    #@1f
    if-eqz v1, :cond_0

    #@21
    const-string/jumbo v1, "GSM"

    #@24
    .line 3109
    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v1

    #@2c
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    #@2f
    .line 3112
    invoke-static {p1}, Landroid/telephony/ServiceState;->isCdma(I)Z

    #@32
    move-result v1

    #@33
    if-eqz v1, :cond_1

    #@35
    .line 3113
    const/4 v1, 0x6

    #@36
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->switchPhoneType(I)V

    #@39
    .line 3105
    :goto_1
    return-void

    #@3a
    .line 3110
    :cond_0
    const-string/jumbo v1, "CDMA"

    #@3d
    goto :goto_0

    #@3e
    .line 3114
    :cond_1
    invoke-static {p1}, Landroid/telephony/ServiceState;->isGsm(I)Z

    #@41
    move-result v1

    #@42
    if-eqz v1, :cond_2

    #@44
    .line 3115
    const/4 v1, 0x1

    #@45
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->switchPhoneType(I)V

    #@48
    goto :goto_1

    #@49
    .line 3117
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@4e
    const-string/jumbo v2, "deleteAndCreatePhone: newVoiceRadioTech="

    #@51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v1

    #@55
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@58
    move-result-object v1

    #@59
    .line 3118
    const-string/jumbo v2, " is not CDMA or GSM (error) - aborting!"

    #@5c
    .line 3117
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v1

    #@60
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@63
    move-result-object v1

    #@64
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    #@67
    .line 3119
    return-void
.end method

.method private syncClirSetting()V
    .locals 4

    #@0
    .prologue
    .line 1940
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    #@3
    move-result-object v2

    #@4
    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    #@7
    move-result-object v1

    #@8
    .line 1941
    .local v1, "sp":Landroid/content/SharedPreferences;
    new-instance v2, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v3, "clir_key"

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    #@17
    move-result v3

    #@18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    const/4 v3, -0x1

    #@21
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    #@24
    move-result v0

    #@25
    .line 1942
    .local v0, "clirSetting":I
    if-ltz v0, :cond_0

    #@27
    .line 1943
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@29
    const/4 v3, 0x0

    #@2a
    invoke-interface {v2, v0, v3}, Lcom/android/internal/telephony/CommandsInterface;->setCLIR(ILandroid/os/Message;)V

    #@2d
    .line 1939
    :cond_0
    return-void
.end method

.method private unregisterForIccRecordEvents()V
    .locals 2

    #@0
    .prologue
    .line 2666
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    #@2
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    #@8
    .line 2667
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-nez v0, :cond_0

    #@a
    .line 2668
    return-void

    #@b
    .line 2670
    :cond_0
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForNetworkSelectionModeAutomatic(Landroid/os/Handler;)V

    #@e
    .line 2671
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsEvents(Landroid/os/Handler;)V

    #@11
    .line 2672
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    #@14
    .line 2665
    return-void
.end method

.method private updateCurrentCarrierInProvider(Ljava/lang/String;)Z
    .locals 7
    .param p1, "operatorNumeric"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v5, 0x1

    #@2
    .line 2459
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdma()Z

    #@5
    move-result v3

    #@6
    if-nez v3, :cond_0

    #@8
    .line 2460
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdmaLte()Z

    #@b
    move-result v3

    #@c
    if-eqz v3, :cond_2

    #@e
    iget-object v3, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    #@10
    iget v4, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPhoneId:I

    #@12
    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@15
    move-result-object v3

    #@16
    if-nez v3, :cond_2

    #@18
    .line 2462
    :cond_0
    const-string/jumbo v3, "CDMAPhone: updateCurrentCarrierInProvider called"

    #@1b
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    #@1e
    .line 2463
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@21
    move-result v3

    #@22
    if-nez v3, :cond_1

    #@24
    .line 2465
    :try_start_0
    sget-object v3, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    #@26
    const-string/jumbo v4, "current"

    #@29
    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    #@2c
    move-result-object v2

    #@2d
    .line 2466
    .local v2, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/ContentValues;

    #@2f
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    #@32
    .line 2467
    .local v1, "map":Landroid/content/ContentValues;
    const-string/jumbo v3, "numeric"

    #@35
    invoke-virtual {v1, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@38
    .line 2468
    new-instance v3, Ljava/lang/StringBuilder;

    #@3a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@3d
    const-string/jumbo v4, "updateCurrentCarrierInProvider from system: numeric="

    #@40
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v3

    #@44
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v3

    #@48
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b
    move-result-object v3

    #@4c
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    #@4f
    .line 2469
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    #@52
    move-result-object v3

    #@53
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@56
    move-result-object v3

    #@57
    invoke-virtual {v3, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    #@5a
    .line 2472
    new-instance v3, Ljava/lang/StringBuilder;

    #@5c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@5f
    const-string/jumbo v4, "update mccmnc="

    #@62
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v3

    #@66
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v3

    #@6a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6d
    move-result-object v3

    #@6e
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    #@71
    .line 2473
    iget-object v3, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mContext:Landroid/content/Context;

    #@73
    const/4 v4, 0x0

    #@74
    invoke-static {v3, p1, v4}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    #@77
    .line 2475
    return v5

    #@78
    .line 2476
    .end local v1    # "map":Landroid/content/ContentValues;
    .end local v2    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v0

    #@79
    .line 2477
    .local v0, "e":Landroid/database/SQLException;
    const-string/jumbo v3, "GsmCdmaPhone"

    #@7c
    const-string/jumbo v4, "Can\'t store current operator"

    #@7f
    invoke-static {v3, v4, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@82
    .line 2480
    .end local v0    # "e":Landroid/database/SQLException;
    :cond_1
    return v6

    #@83
    .line 2482
    :cond_2
    const-string/jumbo v3, "updateCurrentCarrierInProvider not updated X retVal=true"

    #@86
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    #@89
    .line 2483
    return v5
.end method


# virtual methods
.method public acceptCall(I)V
    .locals 2
    .param p1, "videoState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 726
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    #@2
    .line 727
    .local v0, "imsPhone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_0

    #@4
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isRinging()Z

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_0

    #@e
    .line 728
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/Phone;->acceptCall(I)V

    #@11
    .line 725
    :goto_0
    return-void

    #@12
    .line 730
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    #@14
    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->acceptCall()V

    #@17
    goto :goto_0
.end method

.method public activateCellBroadcastSms(ILandroid/os/Message;)V
    .locals 1
    .param p1, "activate"    # I
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 2554
    const-string/jumbo v0, "[GsmCdmaPhone] activateCellBroadcastSms() is obsolete; use SmsManager"

    #@3
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    #@6
    .line 2555
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    #@9
    .line 2553
    return-void
.end method

.method public canConference()Z
    .locals 1

    #@0
    .prologue
    .line 766
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    #@6
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->canConference()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 767
    const/4 v0, 0x1

    #@d
    return v0

    #@e
    .line 769
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_1

    #@14
    .line 770
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    #@16
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->canConference()Z

    #@19
    move-result v0

    #@1a
    return v0

    #@1b
    .line 772
    :cond_1
    const-string/jumbo v0, "canConference: not possible in CDMA"

    #@1e
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    #@21
    .line 773
    const/4 v0, 0x0

    #@22
    return v0
.end method

.method public canTransfer()Z
    .locals 1

    #@0
    .prologue
    .line 821
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 822
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    #@8
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->canTransfer()Z

    #@b
    move-result v0

    #@c
    return v0

    #@d
    .line 824
    :cond_0
    const-string/jumbo v0, "canTransfer: not possible in CDMA"

    #@10
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    #@13
    .line 825
    const/4 v0, 0x0

    #@14
    return v0
.end method

.method public clearDisconnected()V
    .locals 1

    #@0
    .prologue
    .line 816
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->clearDisconnected()V

    #@5
    .line 815
    return-void
.end method

.method public conference()V
    .locals 2

    #@0
    .prologue
    .line 779
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    #@2
    if-eqz v1, :cond_0

    #@4
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    #@6
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->canConference()Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 780
    const-string/jumbo v1, "conference() - delegated to IMS phone"

    #@f
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    #@12
    .line 782
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    #@14
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->conference()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    .line 786
    :goto_0
    return-void

    #@18
    .line 783
    :catch_0
    move-exception v0

    #@19
    .line 784
    .local v0, "e":Lcom/android/internal/telephony/CallStateException;
    invoke-virtual {v0}, Lcom/android/internal/telephony/CallStateException;->toString()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    #@20
    goto :goto_0

    #@21
    .line 788
    .end local v0    # "e":Lcom/android/internal/telephony/CallStateException;
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    #@24
    move-result v1

    #@25
    if-eqz v1, :cond_1

    #@27
    .line 789
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    #@29
    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->conference()V

    #@2c
    .line 778
    :goto_1
    return-void

    #@2d
    .line 792
    :cond_1
    const-string/jumbo v1, "conference: not possible in CDMA"

    #@30
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    #@33
    goto :goto_1
.end method

.method public dial(Ljava/lang/String;I)Lcom/android/internal/telephony/Connection;
    .locals 1
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "videoState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1065
    invoke-virtual {p0, p1, v0, p2, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;ILandroid/os/Bundle;)Lcom/android/internal/telephony/Connection;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;ILandroid/os/Bundle;)Lcom/android/internal/telephony/Connection;
    .locals 17
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
    .line 1071
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    #@3
    move-result v15

    #@4
    if-nez v15, :cond_0

    #@6
    if-eqz p2, :cond_0

    #@8
    .line 1072
    new-instance v15, Lcom/android/internal/telephony/CallStateException;

    #@a
    const-string/jumbo v16, "Sending UUS information NOT supported in CDMA!"

    #@d
    invoke-direct/range {v15 .. v16}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    #@10
    throw v15

    #@11
    .line 1075
    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    #@14
    move-result v11

    #@15
    .line 1076
    .local v11, "isEmergency":Z
    move-object/from16 v0, p0

    #@17
    iget-object v9, v0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    #@19
    .line 1079
    .local v9, "imsPhone":Lcom/android/internal/telephony/Phone;
    move-object/from16 v0, p0

    #@1b
    iget-object v15, v0, Lcom/android/internal/telephony/GsmCdmaPhone;->mContext:Landroid/content/Context;

    #@1d
    const-string/jumbo v16, "carrier_config"

    #@20
    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@23
    move-result-object v6

    #@24
    check-cast v6, Landroid/telephony/CarrierConfigManager;

    #@26
    .line 1080
    .local v6, "configManager":Landroid/telephony/CarrierConfigManager;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    #@29
    move-result v15

    #@2a
    invoke-virtual {v6, v15}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    #@2d
    move-result-object v15

    #@2e
    .line 1081
    const-string/jumbo v16, "carrier_use_ims_first_for_emergency_bool"

    #@31
    .line 1080
    invoke-virtual/range {v15 .. v16}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    #@34
    move-result v4

    #@35
    .line 1083
    .local v4, "alwaysTryImsForEmergencyCarrierConfig":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isImsUseEnabled()Z

    #@38
    move-result v15

    #@39
    if-eqz v15, :cond_6

    #@3b
    .line 1084
    if-eqz v9, :cond_6

    #@3d
    .line 1085
    invoke-virtual {v9}, Lcom/android/internal/telephony/Phone;->isVolteEnabled()Z

    #@40
    move-result v15

    #@41
    if-nez v15, :cond_1

    #@43
    invoke-virtual {v9}, Lcom/android/internal/telephony/Phone;->isWifiCallingEnabled()Z

    #@46
    move-result v15

    #@47
    if-nez v15, :cond_1

    #@49
    .line 1086
    invoke-virtual {v9}, Lcom/android/internal/telephony/Phone;->isVideoEnabled()Z

    #@4c
    move-result v15

    #@4d
    if-eqz v15, :cond_6

    #@4f
    invoke-static/range {p3 .. p3}, Landroid/telecom/VideoProfile;->isVideo(I)Z

    #@52
    move-result v15

    #@53
    .line 1083
    if-eqz v15, :cond_6

    #@55
    .line 1087
    :cond_1
    invoke-virtual {v9}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    #@58
    move-result-object v15

    #@59
    invoke-virtual {v15}, Landroid/telephony/ServiceState;->getState()I

    #@5c
    move-result v15

    #@5d
    if-nez v15, :cond_5

    #@5f
    const/4 v10, 0x1

    #@60
    .line 1089
    .local v10, "imsUseEnabled":Z
    :goto_0
    if-eqz v9, :cond_8

    #@62
    if-eqz v11, :cond_8

    #@64
    if-eqz v4, :cond_8

    #@66
    .line 1092
    move-object/from16 v0, p0

    #@68
    iget-object v15, v0, Lcom/android/internal/telephony/GsmCdmaPhone;->mContext:Landroid/content/Context;

    #@6a
    invoke-static {v15}, Lcom/android/ims/ImsManager;->isNonTtyOrTtyOnVolteEnabled(Landroid/content/Context;)Z

    #@6d
    move-result v15

    #@6e
    .line 1089
    if-eqz v15, :cond_8

    #@70
    .line 1093
    invoke-virtual {v9}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    #@73
    move-result-object v15

    #@74
    invoke-virtual {v15}, Landroid/telephony/ServiceState;->getState()I

    #@77
    move-result v15

    #@78
    const/16 v16, 0x3

    #@7a
    move/from16 v0, v16

    #@7c
    if-eq v15, v0, :cond_7

    #@7e
    const/4 v13, 0x1

    #@7f
    .line 1095
    .local v13, "useImsForEmergency":Z
    :goto_1
    invoke-static/range {p1 .. p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    #@82
    move-result-object v15

    #@83
    invoke-static {v15}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    #@86
    move-result-object v7

    #@87
    .line 1097
    .local v7, "dialPart":Ljava/lang/String;
    const-string/jumbo v15, "*"

    #@8a
    invoke-virtual {v7, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@8d
    move-result v15

    #@8e
    if-nez v15, :cond_2

    #@90
    const-string/jumbo v15, "#"

    #@93
    invoke-virtual {v7, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@96
    move-result v15

    #@97
    if-eqz v15, :cond_9

    #@99
    .line 1098
    :cond_2
    const-string/jumbo v15, "#"

    #@9c
    invoke-virtual {v7, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@9f
    move-result v12

    #@a0
    .line 1100
    :goto_2
    if-eqz v9, :cond_a

    #@a2
    invoke-virtual {v9}, Lcom/android/internal/telephony/Phone;->isUtEnabled()Z

    #@a5
    move-result v14

    #@a6
    .line 1103
    :goto_3
    new-instance v15, Ljava/lang/StringBuilder;

    #@a8
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@ab
    const-string/jumbo v16, "imsUseEnabled="

    #@ae
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b1
    move-result-object v15

    #@b2
    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@b5
    move-result-object v15

    #@b6
    .line 1104
    const-string/jumbo v16, ", useImsForEmergency="

    #@b9
    .line 1103
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bc
    move-result-object v15

    #@bd
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@c0
    move-result-object v15

    #@c1
    .line 1105
    const-string/jumbo v16, ", useImsForUt="

    #@c4
    .line 1103
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c7
    move-result-object v15

    #@c8
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@cb
    move-result-object v15

    #@cc
    .line 1106
    const-string/jumbo v16, ", isUt="

    #@cf
    .line 1103
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d2
    move-result-object v15

    #@d3
    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@d6
    move-result-object v15

    #@d7
    .line 1107
    const-string/jumbo v16, ", imsPhone="

    #@da
    .line 1103
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dd
    move-result-object v15

    #@de
    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@e1
    move-result-object v15

    #@e2
    .line 1108
    const-string/jumbo v16, ", imsPhone.isVolteEnabled()="

    #@e5
    .line 1103
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e8
    move-result-object v16

    #@e9
    .line 1109
    if-eqz v9, :cond_b

    #@eb
    invoke-virtual {v9}, Lcom/android/internal/telephony/Phone;->isVolteEnabled()Z

    #@ee
    move-result v15

    #@ef
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@f2
    move-result-object v15

    #@f3
    .line 1103
    :goto_4
    move-object/from16 v0, v16

    #@f5
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f8
    move-result-object v15

    #@f9
    .line 1110
    const-string/jumbo v16, ", imsPhone.isVowifiEnabled()="

    #@fc
    .line 1103
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ff
    move-result-object v16

    #@100
    .line 1111
    if-eqz v9, :cond_c

    #@102
    invoke-virtual {v9}, Lcom/android/internal/telephony/Phone;->isWifiCallingEnabled()Z

    #@105
    move-result v15

    #@106
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@109
    move-result-object v15

    #@10a
    .line 1103
    :goto_5
    move-object/from16 v0, v16

    #@10c
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@10f
    move-result-object v15

    #@110
    .line 1112
    const-string/jumbo v16, ", imsPhone.isVideoEnabled()="

    #@113
    .line 1103
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@116
    move-result-object v16

    #@117
    .line 1113
    if-eqz v9, :cond_d

    #@119
    invoke-virtual {v9}, Lcom/android/internal/telephony/Phone;->isVideoEnabled()Z

    #@11c
    move-result v15

    #@11d
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@120
    move-result-object v15

    #@121
    .line 1103
    :goto_6
    move-object/from16 v0, v16

    #@123
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@126
    move-result-object v15

    #@127
    .line 1114
    const-string/jumbo v16, ", imsPhone.getServiceState().getState()="

    #@12a
    .line 1103
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12d
    move-result-object v16

    #@12e
    .line 1115
    if-eqz v9, :cond_e

    #@130
    invoke-virtual {v9}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    #@133
    move-result-object v15

    #@134
    invoke-virtual {v15}, Landroid/telephony/ServiceState;->getState()I

    #@137
    move-result v15

    #@138
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@13b
    move-result-object v15

    #@13c
    .line 1103
    :goto_7
    move-object/from16 v0, v16

    #@13e
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@141
    move-result-object v15

    #@142
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@145
    move-result-object v15

    #@146
    move-object/from16 v0, p0

    #@148
    invoke-direct {v0, v15}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    #@14b
    .line 1118
    move-object/from16 v0, p0

    #@14d
    iget-object v15, v0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    #@14f
    move-object/from16 v0, p0

    #@151
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaPhone;->mContext:Landroid/content/Context;

    #@153
    move-object/from16 v16, v0

    #@155
    invoke-static/range {v15 .. v16}, Lcom/android/internal/telephony/Phone;->checkWfcWifiOnlyModeBeforeDial(Lcom/android/internal/telephony/Phone;Landroid/content/Context;)V

    #@158
    .line 1120
    if-eqz v10, :cond_3

    #@15a
    if-eqz v12, :cond_4

    #@15c
    if-nez v14, :cond_4

    #@15e
    :cond_3
    if-eqz v13, :cond_f

    #@160
    .line 1122
    :cond_4
    :try_start_0
    const-string/jumbo v15, "Trying IMS PS call"

    #@163
    move-object/from16 v0, p0

    #@165
    invoke-direct {v0, v15}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    #@168
    .line 1123
    move-object/from16 v0, p1

    #@16a
    move-object/from16 v1, p2

    #@16c
    move/from16 v2, p3

    #@16e
    move-object/from16 v3, p4

    #@170
    invoke-virtual {v9, v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;ILandroid/os/Bundle;)Lcom/android/internal/telephony/Connection;
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    #@173
    move-result-object v15

    #@174
    return-object v15

    #@175
    .line 1087
    .end local v7    # "dialPart":Ljava/lang/String;
    .end local v10    # "imsUseEnabled":Z
    .end local v13    # "useImsForEmergency":Z
    :cond_5
    const/4 v10, 0x0

    #@176
    .restart local v10    # "imsUseEnabled":Z
    goto/16 :goto_0

    #@178
    .line 1083
    .end local v10    # "imsUseEnabled":Z
    :cond_6
    const/4 v10, 0x0

    #@179
    .restart local v10    # "imsUseEnabled":Z
    goto/16 :goto_0

    #@17b
    .line 1093
    :cond_7
    const/4 v13, 0x0

    #@17c
    .restart local v13    # "useImsForEmergency":Z
    goto/16 :goto_1

    #@17e
    .line 1089
    .end local v13    # "useImsForEmergency":Z
    :cond_8
    const/4 v13, 0x0

    #@17f
    .restart local v13    # "useImsForEmergency":Z
    goto/16 :goto_1

    #@181
    .line 1097
    .restart local v7    # "dialPart":Ljava/lang/String;
    :cond_9
    const/4 v12, 0x0

    #@182
    .local v12, "isUt":Z
    goto/16 :goto_2

    #@184
    .line 1100
    .end local v12    # "isUt":Z
    :cond_a
    const/4 v14, 0x0

    #@185
    .local v14, "useImsForUt":Z
    goto/16 :goto_3

    #@187
    .line 1109
    .end local v14    # "useImsForUt":Z
    :cond_b
    const-string/jumbo v15, "N/A"

    #@18a
    goto/16 :goto_4

    #@18c
    .line 1111
    :cond_c
    const-string/jumbo v15, "N/A"

    #@18f
    goto/16 :goto_5

    #@191
    .line 1113
    :cond_d
    const-string/jumbo v15, "N/A"

    #@194
    goto :goto_6

    #@195
    .line 1115
    :cond_e
    const-string/jumbo v15, "N/A"

    #@198
    goto :goto_7

    #@199
    .line 1124
    :catch_0
    move-exception v8

    #@19a
    .line 1125
    .local v8, "e":Lcom/android/internal/telephony/CallStateException;
    new-instance v15, Ljava/lang/StringBuilder;

    #@19c
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@19f
    const-string/jumbo v16, "IMS PS call exception "

    #@1a2
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a5
    move-result-object v15

    #@1a6
    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1a9
    move-result-object v15

    #@1aa
    .line 1126
    const-string/jumbo v16, "imsUseEnabled ="

    #@1ad
    .line 1125
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b0
    move-result-object v15

    #@1b1
    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1b4
    move-result-object v15

    #@1b5
    .line 1126
    const-string/jumbo v16, ", imsPhone ="

    #@1b8
    .line 1125
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1bb
    move-result-object v15

    #@1bc
    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1bf
    move-result-object v15

    #@1c0
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c3
    move-result-object v15

    #@1c4
    move-object/from16 v0, p0

    #@1c6
    invoke-direct {v0, v15}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    #@1c9
    .line 1127
    const-string/jumbo v15, "cs_fallback"

    #@1cc
    invoke-virtual {v8}, Lcom/android/internal/telephony/CallStateException;->getMessage()Ljava/lang/String;

    #@1cf
    move-result-object v16

    #@1d0
    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1d3
    move-result v15

    #@1d4
    if-nez v15, :cond_f

    #@1d6
    .line 1128
    new-instance v5, Lcom/android/internal/telephony/CallStateException;

    #@1d8
    invoke-virtual {v8}, Lcom/android/internal/telephony/CallStateException;->getMessage()Ljava/lang/String;

    #@1db
    move-result-object v15

    #@1dc
    invoke-direct {v5, v15}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    #@1df
    .line 1129
    .local v5, "ce":Lcom/android/internal/telephony/CallStateException;
    invoke-virtual {v8}, Lcom/android/internal/telephony/CallStateException;->getStackTrace()[Ljava/lang/StackTraceElement;

    #@1e2
    move-result-object v15

    #@1e3
    invoke-virtual {v5, v15}, Lcom/android/internal/telephony/CallStateException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    #@1e6
    .line 1130
    throw v5

    #@1e7
    .line 1135
    .end local v5    # "ce":Lcom/android/internal/telephony/CallStateException;
    .end local v8    # "e":Lcom/android/internal/telephony/CallStateException;
    :cond_f
    move-object/from16 v0, p0

    #@1e9
    iget-object v15, v0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    #@1eb
    if-eqz v15, :cond_10

    #@1ed
    move-object/from16 v0, p0

    #@1ef
    iget-object v15, v0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    #@1f1
    iget-object v15, v15, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@1f3
    invoke-virtual {v15}, Landroid/telephony/ServiceState;->getState()I

    #@1f6
    move-result v15

    #@1f7
    const/16 v16, 0x1

    #@1f9
    move/from16 v0, v16

    #@1fb
    if-ne v15, v0, :cond_10

    #@1fd
    .line 1136
    move-object/from16 v0, p0

    #@1ff
    iget-object v15, v0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    #@201
    iget-object v15, v15, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@203
    invoke-virtual {v15}, Landroid/telephony/ServiceState;->getDataRegState()I

    #@206
    move-result v15

    #@207
    if-eqz v15, :cond_10

    #@209
    if-eqz v11, :cond_11

    #@20b
    .line 1139
    :cond_10
    const-string/jumbo v15, "Trying (non-IMS) CS call"

    #@20e
    move-object/from16 v0, p0

    #@210
    invoke-direct {v0, v15}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    #@213
    .line 1141
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    #@216
    move-result v15

    #@217
    if-eqz v15, :cond_12

    #@219
    .line 1142
    const/4 v15, 0x0

    #@21a
    const/16 v16, 0x0

    #@21c
    move-object/from16 v0, p0

    #@21e
    move-object/from16 v1, p1

    #@220
    move/from16 v2, v16

    #@222
    move-object/from16 v3, p4

    #@224
    invoke-virtual {v0, v1, v15, v2, v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->dialInternal(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;ILandroid/os/Bundle;)Lcom/android/internal/telephony/Connection;

    #@227
    move-result-object v15

    #@228
    return-object v15

    #@229
    .line 1137
    :cond_11
    new-instance v15, Lcom/android/internal/telephony/CallStateException;

    #@22b
    const-string/jumbo v16, "cannot dial in current state"

    #@22e
    invoke-direct/range {v15 .. v16}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    #@231
    throw v15

    #@232
    .line 1144
    :cond_12
    const/4 v15, 0x0

    #@233
    move-object/from16 v0, p0

    #@235
    move-object/from16 v1, p1

    #@237
    move/from16 v2, p3

    #@239
    move-object/from16 v3, p4

    #@23b
    invoke-virtual {v0, v1, v15, v2, v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->dialInternal(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;ILandroid/os/Bundle;)Lcom/android/internal/telephony/Connection;

    #@23e
    move-result-object v15

    #@23f
    return-object v15
.end method

.method protected dialInternal(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;ILandroid/os/Bundle;)Lcom/android/internal/telephony/Connection;
    .locals 7
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
    const/4 v6, 0x0

    #@1
    .line 1154
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    #@4
    move-result-object v3

    #@5
    .line 1156
    .local v3, "newDialString":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    #@8
    move-result v4

    #@9
    if-eqz v4, :cond_3

    #@b
    .line 1158
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->handleInCallMmiCommands(Ljava/lang/String;)Z

    #@e
    move-result v4

    #@f
    if-eqz v4, :cond_0

    #@11
    .line 1159
    return-object v6

    #@12
    .line 1163
    :cond_0
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    #@15
    move-result-object v2

    #@16
    .line 1165
    .local v2, "networkPortion":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    #@18
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@1b
    move-result-object v4

    #@1c
    check-cast v4, Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@1e
    invoke-static {v2, p0, v4}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->newFromDialString(Ljava/lang/String;Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)Lcom/android/internal/telephony/gsm/GsmMmiCode;

    #@21
    move-result-object v1

    #@22
    .line 1166
    .local v1, "mmi":Lcom/android/internal/telephony/gsm/GsmMmiCode;
    new-instance v4, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    const-string/jumbo v5, "dialing w/ mmi \'"

    #@2a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v4

    #@2e
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v4

    #@32
    const-string/jumbo v5, "\'..."

    #@35
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v4

    #@39
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v4

    #@3d
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    #@40
    .line 1168
    if-nez v1, :cond_1

    #@42
    .line 1169
    iget-object v4, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    #@44
    invoke-virtual {v4, v3, p2, p4}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;Landroid/os/Bundle;)Lcom/android/internal/telephony/Connection;

    #@47
    move-result-object v4

    #@48
    return-object v4

    #@49
    .line 1170
    :cond_1
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isTemporaryModeCLIR()Z

    #@4c
    move-result v4

    #@4d
    if-eqz v4, :cond_2

    #@4f
    .line 1171
    iget-object v4, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    #@51
    iget-object v5, v1, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mDialingNumber:Ljava/lang/String;

    #@53
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->getCLIRMode()I

    #@56
    move-result v6

    #@57
    invoke-virtual {v4, v5, v6, p2, p4}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Bundle;)Lcom/android/internal/telephony/Connection;

    #@5a
    move-result-object v4

    #@5b
    return-object v4

    #@5c
    .line 1173
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPendingMMIs:Ljava/util/ArrayList;

    #@5e
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@61
    .line 1174
    iget-object v4, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mMmiRegistrants:Landroid/os/RegistrantList;

    #@63
    new-instance v5, Landroid/os/AsyncResult;

    #@65
    invoke-direct {v5, v6, v1, v6}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@68
    invoke-virtual {v4, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    #@6b
    .line 1176
    :try_start_0
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->processCode()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    #@6e
    .line 1182
    :goto_0
    return-object v6

    #@6f
    .line 1177
    :catch_0
    move-exception v0

    #@70
    .local v0, "e":Lcom/android/internal/telephony/CallStateException;
    goto :goto_0

    #@71
    .line 1185
    .end local v0    # "e":Lcom/android/internal/telephony/CallStateException;
    .end local v1    # "mmi":Lcom/android/internal/telephony/gsm/GsmMmiCode;
    .end local v2    # "networkPortion":Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    #@73
    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->dial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    #@76
    move-result-object v4

    #@77
    return-object v4
.end method

.method public disableLocationUpdates()V
    .locals 1

    #@0
    .prologue
    .line 1794
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->disableLocationUpdates()V

    #@5
    .line 1793
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 3151
    const-string/jumbo v1, "GsmCdmaPhone extends:"

    #@3
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6
    .line 3152
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@9
    .line 3153
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v2, " mPrecisePhoneType="

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    iget v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPrecisePhoneType:I

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@22
    .line 3154
    new-instance v1, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    const-string/jumbo v2, " mCT="

    #@2a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    #@30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v1

    #@34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v1

    #@38
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3b
    .line 3155
    new-instance v1, Ljava/lang/StringBuilder;

    #@3d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@40
    const-string/jumbo v2, " mSST="

    #@43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v1

    #@47
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    #@49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v1

    #@4d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50
    move-result-object v1

    #@51
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@54
    .line 3156
    new-instance v1, Ljava/lang/StringBuilder;

    #@56
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@59
    const-string/jumbo v2, " mPendingMMIs="

    #@5c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v1

    #@60
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPendingMMIs:Ljava/util/ArrayList;

    #@62
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v1

    #@66
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@69
    move-result-object v1

    #@6a
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6d
    .line 3157
    new-instance v1, Ljava/lang/StringBuilder;

    #@6f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@72
    const-string/jumbo v2, " mIccPhoneBookIntManager="

    #@75
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v1

    #@79
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccPhoneBookIntManager:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    #@7b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v1

    #@7f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@82
    move-result-object v1

    #@83
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@86
    .line 3161
    new-instance v1, Ljava/lang/StringBuilder;

    #@88
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8b
    const-string/jumbo v2, " mCdmaSSM="

    #@8e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@91
    move-result-object v1

    #@92
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    #@94
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@97
    move-result-object v1

    #@98
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9b
    move-result-object v1

    #@9c
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@9f
    .line 3162
    new-instance v1, Ljava/lang/StringBuilder;

    #@a1
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a4
    const-string/jumbo v2, " mCdmaSubscriptionSource="

    #@a7
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@aa
    move-result-object v1

    #@ab
    iget v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCdmaSubscriptionSource:I

    #@ad
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b0
    move-result-object v1

    #@b1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b4
    move-result-object v1

    #@b5
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@b8
    .line 3163
    new-instance v1, Ljava/lang/StringBuilder;

    #@ba
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@bd
    const-string/jumbo v2, " mEriManager="

    #@c0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c3
    move-result-object v1

    #@c4
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

    #@c6
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@c9
    move-result-object v1

    #@ca
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@cd
    move-result-object v1

    #@ce
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@d1
    .line 3164
    new-instance v1, Ljava/lang/StringBuilder;

    #@d3
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d6
    const-string/jumbo v2, " mWakeLock="

    #@d9
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dc
    move-result-object v1

    #@dd
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@df
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@e2
    move-result-object v1

    #@e3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e6
    move-result-object v1

    #@e7
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@ea
    .line 3165
    new-instance v1, Ljava/lang/StringBuilder;

    #@ec
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@ef
    const-string/jumbo v2, " mIsPhoneInEcmState="

    #@f2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f5
    move-result-object v1

    #@f6
    iget-boolean v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIsPhoneInEcmState:Z

    #@f8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@fb
    move-result-object v1

    #@fc
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ff
    move-result-object v1

    #@100
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@103
    .line 3168
    new-instance v1, Ljava/lang/StringBuilder;

    #@105
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@108
    const-string/jumbo v2, " mCarrierOtaSpNumSchema="

    #@10b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10e
    move-result-object v1

    #@10f
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCarrierOtaSpNumSchema:Ljava/lang/String;

    #@111
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@114
    move-result-object v1

    #@115
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@118
    move-result-object v1

    #@119
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@11c
    .line 3169
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    #@11f
    move-result v1

    #@120
    if-nez v1, :cond_0

    #@122
    .line 3170
    new-instance v1, Ljava/lang/StringBuilder;

    #@124
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@127
    const-string/jumbo v2, " getCdmaEriIconIndex()="

    #@12a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12d
    move-result-object v1

    #@12e
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getCdmaEriIconIndex()I

    #@131
    move-result v2

    #@132
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@135
    move-result-object v1

    #@136
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@139
    move-result-object v1

    #@13a
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@13d
    .line 3171
    new-instance v1, Ljava/lang/StringBuilder;

    #@13f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@142
    const-string/jumbo v2, " getCdmaEriIconMode()="

    #@145
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@148
    move-result-object v1

    #@149
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getCdmaEriIconMode()I

    #@14c
    move-result v2

    #@14d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@150
    move-result-object v1

    #@151
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@154
    move-result-object v1

    #@155
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@158
    .line 3172
    new-instance v1, Ljava/lang/StringBuilder;

    #@15a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@15d
    const-string/jumbo v2, " getCdmaEriText()="

    #@160
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@163
    move-result-object v1

    #@164
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getCdmaEriText()Ljava/lang/String;

    #@167
    move-result-object v2

    #@168
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16b
    move-result-object v1

    #@16c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16f
    move-result-object v1

    #@170
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@173
    .line 3173
    new-instance v1, Ljava/lang/StringBuilder;

    #@175
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@178
    const-string/jumbo v2, " isMinInfoReady()="

    #@17b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17e
    move-result-object v1

    #@17f
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isMinInfoReady()Z

    #@182
    move-result v2

    #@183
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@186
    move-result-object v1

    #@187
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18a
    move-result-object v1

    #@18b
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@18e
    .line 3175
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@190
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@193
    const-string/jumbo v2, " isCspPlmnEnabled()="

    #@196
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@199
    move-result-object v1

    #@19a
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isCspPlmnEnabled()Z

    #@19d
    move-result v2

    #@19e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1a1
    move-result-object v1

    #@1a2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a5
    move-result-object v1

    #@1a6
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1a9
    .line 3176
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    #@1ac
    .line 3177
    const-string/jumbo v1, "++++++++++++++++++++++++++++++++"

    #@1af
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1b2
    .line 3180
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccCardProxy:Lcom/android/internal/telephony/uicc/IccCardProxy;

    #@1b4
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccCardProxy;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@1b7
    .line 3184
    :goto_0
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    #@1ba
    .line 3185
    const-string/jumbo v1, "++++++++++++++++++++++++++++++++"

    #@1bd
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1c0
    .line 3150
    return-void

    #@1c1
    .line 3181
    :catch_0
    move-exception v0

    #@1c2
    .line 3182
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    #@1c5
    goto :goto_0
.end method

.method public enableEnhancedVoicePrivacy(ZLandroid/os/Message;)V
    .locals 1
    .param p1, "enable"    # Z
    .param p2, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    .line 798
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 799
    const-string/jumbo v0, "enableEnhancedVoicePrivacy: not expected on GSM"

    #@9
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    #@c
    .line 797
    :goto_0
    return-void

    #@d
    .line 801
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@f
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredVoicePrivacy(ZLandroid/os/Message;)V

    #@12
    goto :goto_0
.end method

.method public enableLocationUpdates()V
    .locals 1

    #@0
    .prologue
    .line 1789
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->enableLocationUpdates()V

    #@5
    .line 1788
    return-void
.end method

.method public exitEmergencyCallbackMode()V
    .locals 2

    #@0
    .prologue
    .line 2677
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_1

    #@6
    .line 2678
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 2679
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    #@c
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->exitEmergencyCallbackMode()V

    #@f
    .line 2676
    :cond_0
    :goto_0
    return-void

    #@10
    .line 2682
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@12
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    #@15
    move-result v0

    #@16
    if-eqz v0, :cond_2

    #@18
    .line 2683
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@1a
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    #@1d
    .line 2686
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@1f
    const/16 v1, 0x1a

    #@21
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->obtainMessage(I)Landroid/os/Message;

    #@24
    move-result-object v1

    #@25
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->exitEmergencyCallbackMode(Landroid/os/Message;)V

    #@28
    goto :goto_0
.end method

.method public explicitCallTransfer()V
    .locals 1

    #@0
    .prologue
    .line 831
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 832
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    #@8
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->explicitCallTransfer()V

    #@b
    .line 830
    :goto_0
    return-void

    #@c
    .line 834
    :cond_0
    const-string/jumbo v0, "explicitCallTransfer: not possible in CDMA"

    #@f
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    #@12
    goto :goto_0
.end method

.method protected finalize()V
    .locals 2

    #@0
    .prologue
    .line 388
    const-string/jumbo v0, "GsmCdmaPhone finalized"

    #@3
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    #@6
    .line 389
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@8
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_0

    #@e
    .line 390
    const-string/jumbo v0, "GsmCdmaPhone"

    #@11
    const-string/jumbo v1, "UNEXPECTED; mWakeLock is held when finalizing."

    #@14
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@17
    .line 391
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@19
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    #@1c
    .line 387
    :cond_0
    return-void
.end method

.method public getAvailableNetworks(Landroid/os/Message;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1731
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdmaLte()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_1

    #@c
    .line 1732
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@e
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getAvailableNetworks(Landroid/os/Message;)V

    #@11
    .line 1730
    :goto_0
    return-void

    #@12
    .line 1734
    :cond_1
    const-string/jumbo v0, "getAvailableNetworks: not possible in CDMA"

    #@15
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    #@18
    goto :goto_0
.end method

.method public bridge synthetic getBackgroundCall()Lcom/android/internal/telephony/Call;
    .locals 1

    #@0
    .prologue
    .line 844
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getBackgroundCall()Lcom/android/internal/telephony/GsmCdmaCall;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getBackgroundCall()Lcom/android/internal/telephony/GsmCdmaCall;
    .locals 1

    #@0
    .prologue
    .line 845
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    #@2
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    #@4
    return-object v0
.end method

.method public getCallForwardingOption(ILandroid/os/Message;)V
    .locals 5
    .param p1, "commandInterfaceCFReason"    # I
    .param p2, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 1596
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    #@5
    move-result v2

    #@6
    if-eqz v2, :cond_4

    #@8
    .line 1597
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    #@a
    .line 1598
    .local v0, "imsPhone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_1

    #@c
    .line 1599
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    #@13
    move-result v2

    #@14
    if-eqz v2, :cond_0

    #@16
    .line 1600
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isUtEnabled()Z

    #@19
    move-result v2

    #@1a
    .line 1598
    if-eqz v2, :cond_1

    #@1c
    .line 1601
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(ILandroid/os/Message;)V

    #@1f
    .line 1602
    return-void

    #@20
    .line 1605
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->isValidCommandInterfaceCFReason(I)Z

    #@23
    move-result v2

    #@24
    if-eqz v2, :cond_2

    #@26
    .line 1606
    const-string/jumbo v2, "requesting call forwarding query."

    #@29
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    #@2c
    .line 1608
    if-nez p1, :cond_3

    #@2e
    .line 1609
    const/16 v2, 0xd

    #@30
    invoke-virtual {p0, v2, p2}, Lcom/android/internal/telephony/GsmCdmaPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@33
    move-result-object v1

    #@34
    .line 1613
    .local v1, "resp":Landroid/os/Message;
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@36
    invoke-interface {v2, p1, v3, v4, v1}, Lcom/android/internal/telephony/CommandsInterface;->queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V

    #@39
    .line 1595
    .end local v0    # "imsPhone":Lcom/android/internal/telephony/Phone;
    .end local v1    # "resp":Landroid/os/Message;
    :cond_2
    :goto_1
    return-void

    #@3a
    .line 1611
    .restart local v0    # "imsPhone":Lcom/android/internal/telephony/Phone;
    :cond_3
    move-object v1, p2

    #@3b
    .restart local v1    # "resp":Landroid/os/Message;
    goto :goto_0

    #@3c
    .line 1616
    .end local v0    # "imsPhone":Lcom/android/internal/telephony/Phone;
    .end local v1    # "resp":Landroid/os/Message;
    :cond_4
    const-string/jumbo v2, "getCallForwardingOption: not possible in CDMA"

    #@3f
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    #@42
    goto :goto_1
.end method

.method public getCallTracker()Lcom/android/internal/telephony/CallTracker;
    .locals 1

    #@0
    .prologue
    .line 463
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    #@2
    return-object v0
.end method

.method public getCallWaiting(Landroid/os/Message;)V
    .locals 3
    .param p1, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1695
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_2

    #@7
    .line 1696
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    #@9
    .line 1697
    .local v0, "imsPhone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_1

    #@b
    .line 1698
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    #@12
    move-result v1

    #@13
    if-eqz v1, :cond_0

    #@15
    .line 1699
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isUtEnabled()Z

    #@18
    move-result v1

    #@19
    .line 1697
    if-eqz v1, :cond_1

    #@1b
    .line 1700
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/Phone;->getCallWaiting(Landroid/os/Message;)V

    #@1e
    .line 1701
    return-void

    #@1f
    .line 1706
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@21
    invoke-interface {v1, v2, p1}, Lcom/android/internal/telephony/CommandsInterface;->queryCallWaiting(ILandroid/os/Message;)V

    #@24
    .line 1694
    .end local v0    # "imsPhone":Lcom/android/internal/telephony/Phone;
    :goto_0
    return-void

    #@25
    .line 1708
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@27
    const/4 v2, 0x1

    #@28
    invoke-interface {v1, v2, p1}, Lcom/android/internal/telephony/CommandsInterface;->queryCallWaiting(ILandroid/os/Message;)V

    #@2b
    goto :goto_0
.end method

.method public getCdmaEriIconIndex()I
    .locals 1

    #@0
    .prologue
    .line 2972
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 2973
    invoke-super {p0}, Lcom/android/internal/telephony/Phone;->getCdmaEriIconIndex()I

    #@9
    move-result v0

    #@a
    return v0

    #@b
    .line 2975
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getServiceState()Landroid/telephony/ServiceState;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getCdmaEriIconIndex()I

    #@12
    move-result v0

    #@13
    return v0
.end method

.method public getCdmaEriIconMode()I
    .locals 1

    #@0
    .prologue
    .line 2986
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 2987
    invoke-super {p0}, Lcom/android/internal/telephony/Phone;->getCdmaEriIconMode()I

    #@9
    move-result v0

    #@a
    return v0

    #@b
    .line 2989
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getServiceState()Landroid/telephony/ServiceState;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getCdmaEriIconMode()I

    #@12
    move-result v0

    #@13
    return v0
.end method

.method public getCdmaEriText()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 2998
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    #@3
    move-result v2

    #@4
    if-eqz v2, :cond_0

    #@6
    .line 2999
    invoke-super {p0}, Lcom/android/internal/telephony/Phone;->getCdmaEriText()Ljava/lang/String;

    #@9
    move-result-object v2

    #@a
    return-object v2

    #@b
    .line 3001
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getServiceState()Landroid/telephony/ServiceState;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getCdmaRoamingIndicator()I

    #@12
    move-result v1

    #@13
    .line 3002
    .local v1, "roamInd":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getServiceState()Landroid/telephony/ServiceState;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getCdmaDefaultRoamingIndicator()I

    #@1a
    move-result v0

    #@1b
    .line 3003
    .local v0, "defRoamInd":I
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

    #@1d
    invoke-virtual {v2, v1, v0}, Lcom/android/internal/telephony/cdma/EriManager;->getCdmaEriText(II)Ljava/lang/String;

    #@20
    move-result-object v2

    #@21
    return-object v2
.end method

.method public getCdmaMin()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1493
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->getCdmaMin()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getCdmaPrlVersion()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1488
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->getPrlVersion()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getCellBroadcastSmsConfig(Landroid/os/Message;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 2565
    const-string/jumbo v0, "[GsmCdmaPhone] getCellBroadcastSmsConfig() is obsolete; use SmsManager"

    #@3
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    #@6
    .line 2566
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    #@9
    .line 2564
    return-void
.end method

.method public getCellLocation()Landroid/telephony/CellLocation;
    .locals 8

    #@0
    .prologue
    const v2, 0x7fffffff

    #@3
    const/4 v4, 0x0

    #@4
    .line 415
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 416
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    #@c
    invoke-virtual {v1}, Lcom/android/internal/telephony/ServiceStateTracker;->getCellLocation()Landroid/telephony/CellLocation;

    #@f
    move-result-object v1

    #@10
    return-object v1

    #@11
    .line 418
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    #@13
    iget-object v6, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mCellLoc:Landroid/telephony/CellLocation;

    #@15
    check-cast v6, Landroid/telephony/cdma/CdmaCellLocation;

    #@17
    .line 420
    .local v6, "loc":Landroid/telephony/cdma/CdmaCellLocation;
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@1e
    move-result-object v1

    #@1f
    .line 421
    const-string/jumbo v3, "location_mode"

    #@22
    .line 420
    invoke-static {v1, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@25
    move-result v7

    #@26
    .line 422
    .local v7, "mode":I
    if-nez v7, :cond_1

    #@28
    .line 424
    new-instance v0, Landroid/telephony/cdma/CdmaCellLocation;

    #@2a
    invoke-direct {v0}, Landroid/telephony/cdma/CdmaCellLocation;-><init>()V

    #@2d
    .line 425
    .local v0, "privateLoc":Landroid/telephony/cdma/CdmaCellLocation;
    invoke-virtual {v6}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    #@30
    move-result v1

    #@31
    .line 428
    invoke-virtual {v6}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    #@34
    move-result v4

    #@35
    invoke-virtual {v6}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    #@38
    move-result v5

    #@39
    move v3, v2

    #@3a
    .line 425
    invoke-virtual/range {v0 .. v5}, Landroid/telephony/cdma/CdmaCellLocation;->setCellLocationData(IIIII)V

    #@3d
    .line 429
    move-object v6, v0

    #@3e
    .line 431
    .end local v0    # "privateLoc":Landroid/telephony/cdma/CdmaCellLocation;
    :cond_1
    return-object v6
.end method

.method public getDataActivityState()Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;
    .locals 3

    #@0
    .prologue
    .line 543
    sget-object v0, Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;->NONE:Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;

    #@2
    .line 545
    .local v0, "ret":Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    #@4
    invoke-virtual {v1}, Lcom/android/internal/telephony/ServiceStateTracker;->getCurrentDataConnectionState()I

    #@7
    move-result v1

    #@8
    if-nez v1, :cond_0

    #@a
    .line 546
    invoke-static {}, Lcom/android/internal/telephony/GsmCdmaPhone;->-getcom-android-internal-telephony-DctConstants$ActivitySwitchesValues()[I

    #@d
    move-result-object v1

    #@e
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@10
    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getActivity()Lcom/android/internal/telephony/DctConstants$Activity;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v2}, Lcom/android/internal/telephony/DctConstants$Activity;->ordinal()I

    #@17
    move-result v2

    #@18
    aget v1, v1, v2

    #@1a
    packed-switch v1, :pswitch_data_0

    #@1d
    .line 564
    sget-object v0, Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;->NONE:Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;

    #@1f
    .line 569
    :cond_0
    :goto_0
    return-object v0

    #@20
    .line 548
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;->DATAIN:Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;

    #@22
    goto :goto_0

    #@23
    .line 552
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;->DATAOUT:Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;

    #@25
    goto :goto_0

    #@26
    .line 556
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;->DATAINANDOUT:Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;

    #@28
    goto :goto_0

    #@29
    .line 560
    :pswitch_3
    sget-object v0, Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;->DORMANT:Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;

    #@2b
    goto :goto_0

    #@2c
    .line 546
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public getDataCallList(Landroid/os/Message;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1779
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getDataCallList(Landroid/os/Message;)V

    #@5
    .line 1778
    return-void
.end method

.method public getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 3
    .param p1, "apnType"    # Ljava/lang/String;

    #@0
    .prologue
    .line 495
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    #@2
    .line 497
    .local v0, "ret":Lcom/android/internal/telephony/PhoneConstants$DataState;
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    #@4
    if-nez v1, :cond_0

    #@6
    .line 501
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    #@8
    .line 537
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "getDataConnectionState apnType="

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    const-string/jumbo v2, " ret="

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v1

    #@27
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    #@2a
    .line 538
    return-object v0

    #@2b
    .line 502
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    #@2d
    invoke-virtual {v1}, Lcom/android/internal/telephony/ServiceStateTracker;->getCurrentDataConnectionState()I

    #@30
    move-result v1

    #@31
    if-eqz v1, :cond_1

    #@33
    .line 503
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdma()Z

    #@36
    move-result v1

    #@37
    if-nez v1, :cond_3

    #@39
    .line 504
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    #@3c
    move-result v1

    #@3d
    if-eqz v1, :cond_1

    #@3f
    const-string/jumbo v1, "emergency"

    #@42
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@45
    move-result v1

    #@46
    if-eqz v1, :cond_3

    #@48
    .line 513
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/GsmCdmaPhone;->-getcom-android-internal-telephony-DctConstants$StateSwitchesValues()[I

    #@4b
    move-result-object v1

    #@4c
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@4e
    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getState(Ljava/lang/String;)Lcom/android/internal/telephony/DctConstants$State;

    #@51
    move-result-object v2

    #@52
    invoke-virtual {v2}, Lcom/android/internal/telephony/DctConstants$State;->ordinal()I

    #@55
    move-result v2

    #@56
    aget v1, v1, v2

    #@58
    packed-switch v1, :pswitch_data_0

    #@5b
    goto :goto_0

    #@5c
    .line 522
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    #@5e
    iget-object v1, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    #@60
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    #@62
    if-eq v1, v2, :cond_2

    #@64
    .line 523
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    #@66
    invoke-virtual {v1}, Lcom/android/internal/telephony/ServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    #@69
    move-result v1

    #@6a
    if-eqz v1, :cond_4

    #@6c
    .line 526
    :cond_2
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    #@6e
    goto :goto_0

    #@6f
    .line 511
    :cond_3
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    #@71
    goto :goto_0

    #@72
    .line 517
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    #@74
    goto :goto_0

    #@75
    .line 524
    :cond_4
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->SUSPENDED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    #@77
    goto :goto_0

    #@78
    .line 532
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTING:Lcom/android/internal/telephony/PhoneConstants$DataState;

    #@7a
    goto :goto_0

    #@7b
    .line 513
    nop

    #@7c
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getDataEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 1849
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getDataEnabled()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getDataRoamingEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 1799
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getDataOnRoamingEnabled()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    .line 1371
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    #@3
    move-result v3

    #@4
    if-eqz v3, :cond_0

    #@6
    .line 1372
    iget-object v3, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImei:Ljava/lang/String;

    #@8
    return-object v3

    #@9
    .line 1375
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mContext:Landroid/content/Context;

    #@b
    const-string/jumbo v4, "carrier_config"

    #@e
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    .line 1374
    check-cast v0, Landroid/telephony/CarrierConfigManager;

    #@14
    .line 1376
    .local v0, "configManager":Landroid/telephony/CarrierConfigManager;
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    #@17
    move-result v3

    #@18
    invoke-virtual {v0, v3}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    #@1b
    move-result-object v3

    #@1c
    .line 1377
    const-string/jumbo v4, "force_imei_bool"

    #@1f
    .line 1376
    invoke-virtual {v3, v4}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    #@22
    move-result v1

    #@23
    .line 1378
    .local v1, "force_imei":Z
    if-eqz v1, :cond_1

    #@25
    iget-object v3, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImei:Ljava/lang/String;

    #@27
    return-object v3

    #@28
    .line 1380
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getMeid()Ljava/lang/String;

    #@2b
    move-result-object v2

    #@2c
    .line 1381
    .local v2, "id":Ljava/lang/String;
    if-eqz v2, :cond_2

    #@2e
    const-string/jumbo v3, "^0*$"

    #@31
    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    #@34
    move-result v3

    #@35
    if-eqz v3, :cond_3

    #@37
    .line 1382
    :cond_2
    const-string/jumbo v3, "getDeviceId(): MEID is not initialized use ESN"

    #@3a
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    #@3d
    .line 1383
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getEsn()Ljava/lang/String;

    #@40
    move-result-object v2

    #@41
    .line 1385
    :cond_3
    return-object v2
.end method

.method public getDeviceSvn()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1391
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdmaLte()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_1

    #@c
    .line 1392
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImeiSv:Ljava/lang/String;

    #@e
    return-object v0

    #@f
    .line 1394
    :cond_1
    const-string/jumbo v0, "getDeviceSvn(): return 0"

    #@12
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    #@15
    .line 1395
    const-string/jumbo v0, "0"

    #@18
    return-object v0
.end method

.method public getDtmfToneDelayKey()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 3317
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 3318
    const-string/jumbo v0, "gsm_dtmf_tone_delay_int"

    #@9
    .line 3317
    :goto_0
    return-object v0

    #@a
    .line 3319
    :cond_0
    const-string/jumbo v0, "cdma_dtmf_tone_delay_int"

    #@d
    goto :goto_0
.end method

.method public getEnhancedVoicePrivacy(Landroid/os/Message;)V
    .locals 1
    .param p1, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    .line 807
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 808
    const-string/jumbo v0, "getEnhancedVoicePrivacy: not expected on GSM"

    #@9
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    #@c
    .line 806
    :goto_0
    return-void

    #@d
    .line 810
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@f
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getPreferredVoicePrivacy(Landroid/os/Message;)V

    #@12
    goto :goto_0
.end method

.method public getEsn()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1411
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1412
    const-string/jumbo v0, "[GsmCdmaPhone] getEsn() is a CDMA method"

    #@9
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    #@c
    .line 1413
    const-string/jumbo v0, "0"

    #@f
    return-object v0

    #@10
    .line 1415
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mEsn:Ljava/lang/String;

    #@12
    return-object v0
.end method

.method public bridge synthetic getForegroundCall()Lcom/android/internal/telephony/Call;
    .locals 1

    #@0
    .prologue
    .line 839
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getForegroundCall()Lcom/android/internal/telephony/GsmCdmaCall;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getForegroundCall()Lcom/android/internal/telephony/GsmCdmaCall;
    .locals 1

    #@0
    .prologue
    .line 840
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    #@2
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    #@4
    return-object v0
.end method

.method public getFullIccSerialNumber()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 756
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    #@3
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    #@9
    .line 757
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    #@c
    move-result v2

    #@d
    if-nez v2, :cond_0

    #@f
    if-nez v0, :cond_0

    #@11
    .line 759
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    #@13
    iget v3, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPhoneId:I

    #@15
    const/4 v4, 0x1

    #@16
    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(II)Lcom/android/internal/telephony/uicc/IccRecords;

    #@19
    move-result-object v0

    #@1a
    .line 761
    :cond_0
    if-eqz v0, :cond_1

    #@1c
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getFullIccId()Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    :cond_1
    return-object v1
.end method

.method public getGroupIdLevel1()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1452
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    #@4
    move-result v2

    #@5
    if-eqz v2, :cond_1

    #@7
    .line 1453
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    #@9
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    #@f
    .line 1454
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    #@11
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getGid1()Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    :cond_0
    return-object v1

    #@16
    .line 1455
    .end local v0    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdma()Z

    #@19
    move-result v2

    #@1a
    if-eqz v2, :cond_2

    #@1c
    .line 1456
    const-string/jumbo v2, "GID1 is not available in CDMA"

    #@1f
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    #@22
    .line 1457
    return-object v1

    #@23
    .line 1459
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    #@25
    if-eqz v1, :cond_3

    #@27
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    #@29
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->getGid1()Ljava/lang/String;

    #@2c
    move-result-object v1

    #@2d
    :goto_0
    return-object v1

    #@2e
    :cond_3
    const-string/jumbo v1, ""

    #@31
    goto :goto_0
.end method

.method public getGroupIdLevel2()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1465
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    #@4
    move-result v2

    #@5
    if-eqz v2, :cond_1

    #@7
    .line 1466
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    #@9
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    #@f
    .line 1467
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    #@11
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getGid2()Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    :cond_0
    return-object v1

    #@16
    .line 1468
    .end local v0    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdma()Z

    #@19
    move-result v2

    #@1a
    if-eqz v2, :cond_2

    #@1c
    .line 1469
    const-string/jumbo v2, "GID2 is not available in CDMA"

    #@1f
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    #@22
    .line 1470
    return-object v1

    #@23
    .line 1472
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    #@25
    if-eqz v1, :cond_3

    #@27
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    #@29
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->getGid2()Ljava/lang/String;

    #@2c
    move-result-object v1

    #@2d
    :goto_0
    return-object v1

    #@2e
    :cond_3
    const-string/jumbo v1, ""

    #@31
    goto :goto_0
.end method

.method public getIccCard()Lcom/android/internal/telephony/IccCard;
    .locals 1

    #@0
    .prologue
    .line 3146
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccCardProxy:Lcom/android/internal/telephony/uicc/IccCardProxy;

    #@2
    return-object v0
.end method

.method public getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    .locals 1

    #@0
    .prologue
    .line 2512
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccPhoneBookIntManager:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    #@2
    return-object v0
.end method

.method public getIccRecordsLoaded()Z
    .locals 1

    #@0
    .prologue
    .line 3141
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccCardProxy:Lcom/android/internal/telephony/uicc/IccCardProxy;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getIccRecordsLoaded()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getIccSerialNumber()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 746
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    #@3
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    #@9
    .line 747
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    #@c
    move-result v2

    #@d
    if-nez v2, :cond_0

    #@f
    if-nez v0, :cond_0

    #@11
    .line 749
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    #@13
    iget v3, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPhoneId:I

    #@15
    const/4 v4, 0x1

    #@16
    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(II)Lcom/android/internal/telephony/uicc/IccRecords;

    #@19
    move-result-object v0

    #@1a
    .line 751
    :cond_0
    if-eqz v0, :cond_1

    #@1c
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getIccId()Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    :cond_1
    return-object v1
.end method

.method public getIccSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;
    .locals 1

    #@0
    .prologue
    .line 3125
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccSmsInterfaceManager:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    #@2
    return-object v0
.end method

.method public getImei()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1406
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImei:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getIsimRecords()Lcom/android/internal/telephony/uicc/IsimRecords;
    .locals 1

    #@0
    .prologue
    .line 1401
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIsimUiccRecords:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    #@2
    return-object v0
.end method

.method public getLine1AlphaTag()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1516
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    #@4
    move-result v2

    #@5
    if-eqz v2, :cond_1

    #@7
    .line 1517
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    #@9
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    #@f
    .line 1518
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    #@11
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getMsisdnAlphaTag()Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    :cond_0
    return-object v1

    #@16
    .line 1520
    .end local v0    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_1
    const-string/jumbo v2, "getLine1AlphaTag: not possible in CDMA"

    #@19
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    #@1c
    .line 1521
    return-object v1
.end method

.method public getLine1Number()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1478
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    #@4
    move-result v2

    #@5
    if-eqz v2, :cond_1

    #@7
    .line 1479
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    #@9
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    #@f
    .line 1480
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    #@11
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getMsisdnNumber()Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    :cond_0
    return-object v1

    #@16
    .line 1482
    .end local v0    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    #@18
    invoke-virtual {v1}, Lcom/android/internal/telephony/ServiceStateTracker;->getMdnNumber()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    return-object v1
.end method

.method public getMeid()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1421
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1422
    const-string/jumbo v0, "[GsmCdmaPhone] getMeid() is a CDMA method"

    #@9
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    #@c
    .line 1423
    const-string/jumbo v0, "0"

    #@f
    return-object v0

    #@10
    .line 1425
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mMeid:Ljava/lang/String;

    #@12
    return-object v0
.end method

.method public getMsisdn()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1503
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    #@4
    move-result v2

    #@5
    if-eqz v2, :cond_1

    #@7
    .line 1504
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    #@9
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    #@f
    .line 1505
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    #@11
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getMsisdnNumber()Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    :cond_0
    return-object v1

    #@16
    .line 1506
    .end local v0    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdmaLte()Z

    #@19
    move-result v2

    #@1a
    if-eqz v2, :cond_3

    #@1c
    .line 1507
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    #@1e
    if-eqz v2, :cond_2

    #@20
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    #@22
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->getMsisdnNumber()Ljava/lang/String;

    #@25
    move-result-object v1

    #@26
    :cond_2
    return-object v1

    #@27
    .line 1509
    :cond_3
    const-string/jumbo v2, "getMsisdn: not expected on CDMA"

    #@2a
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    #@2d
    .line 1510
    return-object v1
.end method

.method public getMute()Z
    .locals 1

    #@0
    .prologue
    .line 1774
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->getMute()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getNai()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v4, 0x2

    #@2
    .line 1431
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    #@4
    iget v3, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPhoneId:I

    #@6
    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(II)Lcom/android/internal/telephony/uicc/IccRecords;

    #@9
    move-result-object v0

    #@a
    .line 1432
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    const-string/jumbo v2, "GsmCdmaPhone"

    #@d
    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@10
    move-result v2

    #@11
    if-eqz v2, :cond_0

    #@13
    .line 1433
    const-string/jumbo v2, "GsmCdmaPhone"

    #@16
    new-instance v3, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v4, "IccRecords is "

    #@1e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v3

    #@22
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v3

    #@26
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v3

    #@2a
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@2d
    .line 1435
    :cond_0
    if-eqz v0, :cond_1

    #@2f
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getNAI()Ljava/lang/String;

    #@32
    move-result-object v1

    #@33
    :cond_1
    return-object v1
.end method

.method public getNeighboringCids(Landroid/os/Message;)V
    .locals 2
    .param p1, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1740
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_1

    #@6
    .line 1741
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@8
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/CommandsInterface;->getNeighboringCids(Landroid/os/Message;)V

    #@b
    .line 1739
    :cond_0
    :goto_0
    return-void

    #@c
    .line 1751
    :cond_1
    if-eqz p1, :cond_0

    #@e
    .line 1752
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@10
    .line 1753
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    #@12
    .line 1752
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@15
    .line 1754
    .local v0, "ce":Lcom/android/internal/telephony/CommandException;
    invoke-static {p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    #@18
    move-result-object v1

    #@19
    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@1b
    .line 1755
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    #@1e
    goto :goto_0
.end method

.method public getOutgoingCallerIdDisplay(Landroid/os/Message;)V
    .locals 2
    .param p1, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1661
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_1

    #@6
    .line 1662
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    #@8
    .line 1663
    .local v0, "imsPhone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_0

    #@a
    .line 1664
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    #@11
    move-result v1

    #@12
    if-nez v1, :cond_0

    #@14
    .line 1665
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/Phone;->getOutgoingCallerIdDisplay(Landroid/os/Message;)V

    #@17
    .line 1666
    return-void

    #@18
    .line 1668
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@1a
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/CommandsInterface;->getCLIR(Landroid/os/Message;)V

    #@1d
    .line 1660
    .end local v0    # "imsPhone":Lcom/android/internal/telephony/Phone;
    :goto_0
    return-void

    #@1e
    .line 1670
    :cond_1
    const-string/jumbo v1, "getOutgoingCallerIdDisplay: not possible in CDMA"

    #@21
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    #@24
    goto :goto_0
.end method

.method public getPendingMmiCodes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/android/internal/telephony/MmiCode;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 490
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPendingMMIs:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method public getPhoneType()I
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 449
    iget v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPrecisePhoneType:I

    #@3
    if-ne v0, v1, :cond_0

    #@5
    .line 450
    return v1

    #@6
    .line 452
    :cond_0
    const/4 v0, 0x2

    #@7
    return v0
.end method

.method public getRingingCall()Lcom/android/internal/telephony/Call;
    .locals 2

    #@0
    .prologue
    .line 850
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    #@2
    .line 858
    .local v0, "imsPhone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_0

    #@4
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isRinging()Z

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_0

    #@e
    .line 859
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    #@11
    move-result-object v1

    #@12
    return-object v1

    #@13
    .line 861
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    #@15
    iget-object v1, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    #@17
    return-object v1
.end method

.method public getServiceState()Landroid/telephony/ServiceState;
    .locals 2

    #@0
    .prologue
    .line 397
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    #@6
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@8
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_2

    #@e
    .line 398
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    #@10
    if-eqz v0, :cond_2

    #@12
    .line 400
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    #@14
    if-nez v0, :cond_1

    #@16
    new-instance v0, Landroid/telephony/ServiceState;

    #@18
    invoke-direct {v0}, Landroid/telephony/ServiceState;-><init>()V

    #@1b
    .line 401
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    #@1d
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    #@20
    move-result-object v1

    #@21
    .line 399
    invoke-static {v0, v1}, Landroid/telephony/ServiceState;->mergeServiceStates(Landroid/telephony/ServiceState;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;

    #@24
    move-result-object v0

    #@25
    return-object v0

    #@26
    .line 400
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    #@28
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@2a
    goto :goto_0

    #@2b
    .line 405
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    #@2d
    if-eqz v0, :cond_3

    #@2f
    .line 406
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    #@31
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@33
    return-object v0

    #@34
    .line 409
    :cond_3
    new-instance v0, Landroid/telephony/ServiceState;

    #@36
    invoke-direct {v0}, Landroid/telephony/ServiceState;-><init>()V

    #@39
    return-object v0
.end method

.method public getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;
    .locals 1

    #@0
    .prologue
    .line 458
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    #@2
    return-object v0
.end method

.method public getState()Lcom/android/internal/telephony/PhoneConstants$State;
    .locals 2

    #@0
    .prologue
    .line 437
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 438
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    #@6
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    #@9
    move-result-object v0

    #@a
    .line 439
    .local v0, "imsState":Lcom/android/internal/telephony/PhoneConstants$State;
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    #@c
    if-eq v0, v1, :cond_0

    #@e
    .line 440
    return-object v0

    #@f
    .line 444
    .end local v0    # "imsState":Lcom/android/internal/telephony/PhoneConstants$State;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    #@11
    iget-object v1, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    #@13
    return-object v1
.end method

.method public getSubscriberId()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1440
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    #@4
    move-result v2

    #@5
    if-eqz v2, :cond_1

    #@7
    .line 1441
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    #@9
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    #@f
    .line 1442
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    #@11
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getIMSI()Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    :cond_0
    return-object v1

    #@16
    .line 1443
    .end local v0    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdma()Z

    #@19
    move-result v1

    #@1a
    if-eqz v1, :cond_2

    #@1c
    .line 1444
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    #@1e
    invoke-virtual {v1}, Lcom/android/internal/telephony/ServiceStateTracker;->getImsi()Ljava/lang/String;

    #@21
    move-result-object v1

    #@22
    return-object v1

    #@23
    .line 1446
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    #@25
    if-eqz v1, :cond_3

    #@27
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    #@29
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->getIMSI()Ljava/lang/String;

    #@2c
    move-result-object v1

    #@2d
    :goto_0
    return-object v1

    #@2e
    :cond_3
    const-string/jumbo v1, ""

    #@31
    goto :goto_0
.end method

.method public getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "defValue"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1568
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdmaLte()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_2

    #@c
    .line 1569
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getUnitTestMode()Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_1

    #@12
    .line 1570
    const/4 v0, 0x0

    #@13
    return-object v0

    #@14
    .line 1572
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPhoneId:I

    #@16
    invoke-static {v0, p1, p2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    return-object v0

    #@1b
    .line 1574
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/Phone;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    return-object v0
.end method

.method public getUiccCardApplication()Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .locals 3

    #@0
    .prologue
    .line 2334
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 2335
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    #@8
    iget v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPhoneId:I

    #@a
    const/4 v2, 0x1

    #@b
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@e
    move-result-object v0

    #@f
    return-object v0

    #@10
    .line 2337
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    #@12
    iget v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPhoneId:I

    #@14
    const/4 v2, 0x2

    #@15
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@18
    move-result-object v0

    #@19
    return-object v0
.end method

.method public getVoiceMailAlphaTag()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 1353
    const-string/jumbo v1, ""

    #@3
    .line 1355
    .local v1, "ret":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    #@6
    move-result v2

    #@7
    if-eqz v2, :cond_0

    #@9
    .line 1356
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    #@b
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    #@11
    .line 1358
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_2

    #@13
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getVoiceMailAlphaTag()Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    .line 1361
    .end local v0    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    #@19
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@1c
    move-result v2

    #@1d
    if-nez v2, :cond_3

    #@1f
    .line 1362
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mContext:Landroid/content/Context;

    #@21
    .line 1363
    const v3, 0x1040004

    #@24
    .line 1362
    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@27
    move-result-object v2

    #@28
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@2b
    move-result-object v2

    #@2c
    return-object v2

    #@2d
    .line 1358
    .restart local v0    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_2
    const-string/jumbo v1, ""

    #@30
    goto :goto_0

    #@31
    .line 1366
    .end local v0    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_3
    return-object v1
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .locals 11

    #@0
    .prologue
    const/4 v10, 0x1

    #@1
    const/4 v9, 0x0

    #@2
    const/4 v8, 0x0

    #@3
    .line 1290
    const/4 v3, 0x0

    #@4
    .line 1291
    .local v3, "number":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    #@7
    move-result v6

    #@8
    if-eqz v6, :cond_3

    #@a
    .line 1293
    iget-object v6, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    #@c
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@f
    move-result-object v4

    #@10
    check-cast v4, Lcom/android/internal/telephony/uicc/IccRecords;

    #@12
    .line 1294
    .local v4, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v4, :cond_2

    #@14
    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/IccRecords;->getVoiceMailNumber()Ljava/lang/String;

    #@17
    move-result-object v3

    #@18
    .line 1295
    .local v3, "number":Ljava/lang/String;
    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@1b
    move-result v6

    #@1c
    if-eqz v6, :cond_0

    #@1e
    .line 1296
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    #@21
    move-result-object v6

    #@22
    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    #@25
    move-result-object v5

    #@26
    .line 1297
    .local v5, "sp":Landroid/content/SharedPreferences;
    new-instance v6, Ljava/lang/StringBuilder;

    #@28
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@2b
    const-string/jumbo v7, "vm_number_key"

    #@2e
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v6

    #@32
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    #@35
    move-result v7

    #@36
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@39
    move-result-object v6

    #@3a
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v6

    #@3e
    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@41
    move-result-object v3

    #@42
    .line 1304
    .end local v4    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    .end local v5    # "sp":Landroid/content/SharedPreferences;
    :cond_0
    :goto_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@45
    move-result v6

    #@46
    if-eqz v6, :cond_5

    #@48
    .line 1305
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    #@4b
    move-result-object v6

    #@4c
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@4f
    move-result-object v6

    #@50
    .line 1306
    const v7, 0x1070042

    #@53
    .line 1305
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    #@56
    move-result-object v2

    #@57
    .line 1307
    .local v2, "listArray":[Ljava/lang/String;
    if-eqz v2, :cond_5

    #@59
    array-length v6, v2

    #@5a
    if-lez v6, :cond_5

    #@5c
    .line 1308
    const/4 v1, 0x0

    #@5d
    .local v1, "i":I
    :goto_2
    array-length v6, v2

    #@5e
    if-ge v1, v6, :cond_5

    #@60
    .line 1309
    aget-object v6, v2, v1

    #@62
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@65
    move-result v6

    #@66
    if-nez v6, :cond_1

    #@68
    .line 1310
    aget-object v6, v2, v1

    #@6a
    const-string/jumbo v7, ";"

    #@6d
    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@70
    move-result-object v0

    #@71
    .line 1311
    .local v0, "defaultVMNumberArray":[Ljava/lang/String;
    if-eqz v0, :cond_1

    #@73
    array-length v6, v0

    #@74
    if-lez v6, :cond_1

    #@76
    .line 1312
    array-length v6, v0

    #@77
    if-ne v6, v10, :cond_4

    #@79
    .line 1313
    aget-object v3, v0, v9

    #@7b
    .line 1308
    .end local v0    # "defaultVMNumberArray":[Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@7d
    goto :goto_2

    #@7e
    .line 1294
    .end local v1    # "i":I
    .end local v2    # "listArray":[Ljava/lang/String;
    .local v3, "number":Ljava/lang/String;
    .restart local v4    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_2
    const-string/jumbo v3, ""

    #@81
    goto :goto_0

    #@82
    .line 1300
    .end local v4    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    #@85
    move-result-object v6

    #@86
    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    #@89
    move-result-object v5

    #@8a
    .line 1301
    .restart local v5    # "sp":Landroid/content/SharedPreferences;
    new-instance v6, Ljava/lang/StringBuilder;

    #@8c
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@8f
    const-string/jumbo v7, "vm_number_key_cdma"

    #@92
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v6

    #@96
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    #@99
    move-result v7

    #@9a
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@9d
    move-result-object v6

    #@9e
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a1
    move-result-object v6

    #@a2
    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@a5
    move-result-object v3

    #@a6
    .local v3, "number":Ljava/lang/String;
    goto :goto_1

    #@a7
    .line 1314
    .end local v5    # "sp":Landroid/content/SharedPreferences;
    .restart local v0    # "defaultVMNumberArray":[Ljava/lang/String;
    .restart local v1    # "i":I
    .restart local v2    # "listArray":[Ljava/lang/String;
    :cond_4
    array-length v6, v0

    #@a8
    const/4 v7, 0x2

    #@a9
    if-ne v6, v7, :cond_1

    #@ab
    .line 1315
    aget-object v6, v0, v10

    #@ad
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@b0
    move-result v6

    #@b1
    if-nez v6, :cond_1

    #@b3
    .line 1316
    aget-object v6, v0, v10

    #@b5
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/GsmCdmaPhone;->isMatchGid(Ljava/lang/String;)Z

    #@b8
    move-result v6

    #@b9
    .line 1314
    if-eqz v6, :cond_1

    #@bb
    .line 1317
    aget-object v3, v0, v9

    #@bd
    .line 1326
    .end local v0    # "defaultVMNumberArray":[Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "listArray":[Ljava/lang/String;
    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    #@c0
    move-result v6

    #@c1
    if-nez v6, :cond_6

    #@c3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@c6
    move-result v6

    #@c7
    if-eqz v6, :cond_6

    #@c9
    .line 1328
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    #@cc
    move-result-object v6

    #@cd
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@d0
    move-result-object v6

    #@d1
    const v7, 0x1120063

    #@d4
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@d7
    move-result v6

    #@d8
    if-eqz v6, :cond_7

    #@da
    .line 1330
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getLine1Number()Ljava/lang/String;

    #@dd
    move-result-object v3

    #@de
    .line 1336
    :cond_6
    :goto_3
    return-object v3

    #@df
    .line 1332
    :cond_7
    const-string/jumbo v3, "*86"

    #@e2
    goto :goto_3
.end method

.method public getWakeLock()Landroid/os/PowerManager$WakeLock;
    .locals 1

    #@0
    .prologue
    .line 3324
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@2
    return-object v0
.end method

.method public handleInCallMmiCommands(Ljava/lang/String;)Z
    .locals 5
    .param p1, "dialString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1006
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    #@4
    move-result v3

    #@5
    if-nez v3, :cond_0

    #@7
    .line 1007
    const-string/jumbo v3, "method handleInCallMmiCommands is NOT supported in CDMA!"

    #@a
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    #@d
    .line 1008
    return v4

    #@e
    .line 1011
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    #@10
    .line 1012
    .local v1, "imsPhone":Lcom/android/internal/telephony/Phone;
    if-eqz v1, :cond_1

    #@12
    .line 1013
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    #@15
    move-result-object v3

    #@16
    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    #@19
    move-result v3

    #@1a
    if-nez v3, :cond_1

    #@1c
    .line 1014
    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/Phone;->handleInCallMmiCommands(Ljava/lang/String;)Z

    #@1f
    move-result v3

    #@20
    return v3

    #@21
    .line 1017
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isInCall()Z

    #@24
    move-result v3

    #@25
    if-nez v3, :cond_2

    #@27
    .line 1018
    return v4

    #@28
    .line 1021
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@2b
    move-result v3

    #@2c
    if-eqz v3, :cond_3

    #@2e
    .line 1022
    return v4

    #@2f
    .line 1025
    :cond_3
    const/4 v2, 0x0

    #@30
    .line 1026
    .local v2, "result":Z
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    #@33
    move-result v0

    #@34
    .line 1027
    .local v0, "ch":C
    packed-switch v0, :pswitch_data_0

    #@37
    .line 1050
    .end local v2    # "result":Z
    :goto_0
    return v2

    #@38
    .line 1029
    .restart local v2    # "result":Z
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->handleCallDeflectionIncallSupplementaryService(Ljava/lang/String;)Z

    #@3b
    move-result v2

    #@3c
    .local v2, "result":Z
    goto :goto_0

    #@3d
    .line 1032
    .local v2, "result":Z
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->handleCallWaitingIncallSupplementaryService(Ljava/lang/String;)Z

    #@40
    move-result v2

    #@41
    .local v2, "result":Z
    goto :goto_0

    #@42
    .line 1035
    .local v2, "result":Z
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->handleCallHoldIncallSupplementaryService(Ljava/lang/String;)Z

    #@45
    move-result v2

    #@46
    .local v2, "result":Z
    goto :goto_0

    #@47
    .line 1038
    .local v2, "result":Z
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->handleMultipartyIncallSupplementaryService(Ljava/lang/String;)Z

    #@4a
    move-result v2

    #@4b
    .local v2, "result":Z
    goto :goto_0

    #@4c
    .line 1041
    .local v2, "result":Z
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->handleEctIncallSupplementaryService(Ljava/lang/String;)Z

    #@4f
    move-result v2

    #@50
    .local v2, "result":Z
    goto :goto_0

    #@51
    .line 1044
    .local v2, "result":Z
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->handleCcbsIncallSupplementaryService(Ljava/lang/String;)Z

    #@54
    move-result v2

    #@55
    .local v2, "result":Z
    goto :goto_0

    #@56
    .line 1027
    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 26
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1998
    move-object/from16 v0, p1

    #@2
    iget v0, v0, Landroid/os/Message;->what:I

    #@4
    move/from16 v23, v0

    #@6
    packed-switch v23, :pswitch_data_0

    #@9
    .line 2329
    :pswitch_0
    invoke-super/range {p0 .. p1}, Lcom/android/internal/telephony/Phone;->handleMessage(Landroid/os/Message;)V

    #@c
    .line 1994
    :cond_0
    :goto_0
    return-void

    #@d
    .line 2000
    :pswitch_1
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->handleRadioAvailable()V

    #@10
    goto :goto_0

    #@11
    .line 2005
    :pswitch_2
    move-object/from16 v0, p1

    #@13
    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@15
    check-cast v4, Landroid/os/AsyncResult;

    #@17
    .line 2007
    .local v4, "ar":Landroid/os/AsyncResult;
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@19
    move-object/from16 v23, v0

    #@1b
    if-nez v23, :cond_0

    #@1d
    .line 2010
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@1f
    move-object/from16 v20, v0

    #@21
    check-cast v20, [Ljava/lang/String;

    #@23
    .line 2011
    .local v20, "respId":[Ljava/lang/String;
    const/16 v23, 0x0

    #@25
    aget-object v23, v20, v23

    #@27
    move-object/from16 v0, v23

    #@29
    move-object/from16 v1, p0

    #@2b
    iput-object v0, v1, Lcom/android/internal/telephony/GsmCdmaPhone;->mImei:Ljava/lang/String;

    #@2d
    .line 2012
    const/16 v23, 0x1

    #@2f
    aget-object v23, v20, v23

    #@31
    move-object/from16 v0, v23

    #@33
    move-object/from16 v1, p0

    #@35
    iput-object v0, v1, Lcom/android/internal/telephony/GsmCdmaPhone;->mImeiSv:Ljava/lang/String;

    #@37
    .line 2013
    const/16 v23, 0x2

    #@39
    aget-object v23, v20, v23

    #@3b
    move-object/from16 v0, v23

    #@3d
    move-object/from16 v1, p0

    #@3f
    iput-object v0, v1, Lcom/android/internal/telephony/GsmCdmaPhone;->mEsn:Ljava/lang/String;

    #@41
    .line 2014
    const/16 v23, 0x3

    #@43
    aget-object v23, v20, v23

    #@45
    move-object/from16 v0, v23

    #@47
    move-object/from16 v1, p0

    #@49
    iput-object v0, v1, Lcom/android/internal/telephony/GsmCdmaPhone;->mMeid:Ljava/lang/String;

    #@4b
    goto :goto_0

    #@4c
    .line 2019
    .end local v4    # "ar":Landroid/os/AsyncResult;
    .end local v20    # "respId":[Ljava/lang/String;
    :pswitch_3
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->handleEnterEmergencyCallbackMode(Landroid/os/Message;)V

    #@4f
    goto :goto_0

    #@50
    .line 2024
    :pswitch_4
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->handleExitEmergencyCallbackMode(Landroid/os/Message;)V

    #@53
    goto :goto_0

    #@54
    .line 2029
    :pswitch_5
    const-string/jumbo v23, "Event EVENT_RUIM_RECORDS_LOADED Received"

    #@57
    move-object/from16 v0, p0

    #@59
    move-object/from16 v1, v23

    #@5b
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    #@5e
    .line 2030
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->updateCurrentCarrierInProvider()Z

    #@61
    goto :goto_0

    #@62
    .line 2034
    :pswitch_6
    const-string/jumbo v23, "Event EVENT_RADIO_ON Received"

    #@65
    move-object/from16 v0, p0

    #@67
    move-object/from16 v1, v23

    #@69
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    #@6c
    .line 2035
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->handleRadioOn()V

    #@6f
    goto :goto_0

    #@70
    .line 2039
    :pswitch_7
    move-object/from16 v0, p1

    #@72
    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@74
    check-cast v4, Landroid/os/AsyncResult;

    #@76
    .line 2040
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@78
    move-object/from16 v23, v0

    #@7a
    if-nez v23, :cond_1

    #@7c
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@7e
    move-object/from16 v23, v0

    #@80
    if-eqz v23, :cond_1

    #@82
    .line 2041
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@84
    move-object/from16 v23, v0

    #@86
    check-cast v23, Ljava/lang/Integer;

    #@88
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    #@8b
    move-result v23

    #@8c
    move/from16 v0, v23

    #@8e
    move-object/from16 v1, p0

    #@90
    iput v0, v1, Lcom/android/internal/telephony/GsmCdmaPhone;->mRilVersion:I

    #@92
    goto/16 :goto_0

    #@94
    .line 2043
    :cond_1
    const-string/jumbo v23, "Unexpected exception on EVENT_RIL_CONNECTED"

    #@97
    move-object/from16 v0, p0

    #@99
    move-object/from16 v1, v23

    #@9b
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    #@9e
    .line 2044
    const/16 v23, -0x1

    #@a0
    move/from16 v0, v23

    #@a2
    move-object/from16 v1, p0

    #@a4
    iput v0, v1, Lcom/android/internal/telephony/GsmCdmaPhone;->mRilVersion:I

    #@a6
    goto/16 :goto_0

    #@a8
    .line 2050
    .end local v4    # "ar":Landroid/os/AsyncResult;
    :pswitch_8
    move-object/from16 v0, p1

    #@aa
    iget v0, v0, Landroid/os/Message;->what:I

    #@ac
    move/from16 v23, v0

    #@ae
    const/16 v24, 0x27

    #@b0
    move/from16 v0, v23

    #@b2
    move/from16 v1, v24

    #@b4
    if-ne v0, v1, :cond_2

    #@b6
    .line 2051
    const-string/jumbo v22, "EVENT_VOICE_RADIO_TECH_CHANGED"

    #@b9
    .line 2052
    .local v22, "what":Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p1

    #@bb
    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@bd
    check-cast v4, Landroid/os/AsyncResult;

    #@bf
    .line 2053
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@c1
    move-object/from16 v23, v0

    #@c3
    if-nez v23, :cond_4

    #@c5
    .line 2054
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@c7
    move-object/from16 v23, v0

    #@c9
    if-eqz v23, :cond_3

    #@cb
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@cd
    move-object/from16 v23, v0

    #@cf
    check-cast v23, [I

    #@d1
    move-object/from16 v0, v23

    #@d3
    array-length v0, v0

    #@d4
    move/from16 v23, v0

    #@d6
    if-eqz v23, :cond_3

    #@d8
    .line 2055
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@da
    move-object/from16 v23, v0

    #@dc
    check-cast v23, [I

    #@de
    const/16 v24, 0x0

    #@e0
    aget v15, v23, v24

    #@e2
    .line 2056
    .local v15, "newVoiceTech":I
    new-instance v23, Ljava/lang/StringBuilder;

    #@e4
    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    #@e7
    move-object/from16 v0, v23

    #@e9
    move-object/from16 v1, v22

    #@eb
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ee
    move-result-object v23

    #@ef
    const-string/jumbo v24, ": newVoiceTech="

    #@f2
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f5
    move-result-object v23

    #@f6
    move-object/from16 v0, v23

    #@f8
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@fb
    move-result-object v23

    #@fc
    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ff
    move-result-object v23

    #@100
    move-object/from16 v0, p0

    #@102
    move-object/from16 v1, v23

    #@104
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    #@107
    .line 2057
    move-object/from16 v0, p0

    #@109
    invoke-direct {v0, v15}, Lcom/android/internal/telephony/GsmCdmaPhone;->phoneObjectUpdater(I)V

    #@10c
    goto/16 :goto_0

    #@10e
    .line 2051
    .end local v4    # "ar":Landroid/os/AsyncResult;
    .end local v15    # "newVoiceTech":I
    .end local v22    # "what":Ljava/lang/String;
    :cond_2
    const-string/jumbo v22, "EVENT_REQUEST_VOICE_RADIO_TECH_DONE"

    #@111
    .restart local v22    # "what":Ljava/lang/String;
    goto :goto_1

    #@112
    .line 2059
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    :cond_3
    new-instance v23, Ljava/lang/StringBuilder;

    #@114
    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    #@117
    move-object/from16 v0, v23

    #@119
    move-object/from16 v1, v22

    #@11b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11e
    move-result-object v23

    #@11f
    const-string/jumbo v24, ": has no tech!"

    #@122
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@125
    move-result-object v23

    #@126
    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@129
    move-result-object v23

    #@12a
    move-object/from16 v0, p0

    #@12c
    move-object/from16 v1, v23

    #@12e
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    #@131
    goto/16 :goto_0

    #@133
    .line 2062
    :cond_4
    new-instance v23, Ljava/lang/StringBuilder;

    #@135
    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    #@138
    move-object/from16 v0, v23

    #@13a
    move-object/from16 v1, v22

    #@13c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13f
    move-result-object v23

    #@140
    const-string/jumbo v24, ": exception="

    #@143
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@146
    move-result-object v23

    #@147
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@149
    move-object/from16 v24, v0

    #@14b
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@14e
    move-result-object v23

    #@14f
    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@152
    move-result-object v23

    #@153
    move-object/from16 v0, p0

    #@155
    move-object/from16 v1, v23

    #@157
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    #@15a
    goto/16 :goto_0

    #@15c
    .line 2067
    .end local v4    # "ar":Landroid/os/AsyncResult;
    .end local v22    # "what":Ljava/lang/String;
    :pswitch_9
    move-object/from16 v0, p1

    #@15e
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@160
    move/from16 v23, v0

    #@162
    move-object/from16 v0, p0

    #@164
    move/from16 v1, v23

    #@166
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->phoneObjectUpdater(I)V

    #@169
    goto/16 :goto_0

    #@16b
    .line 2073
    :pswitch_a
    move-object/from16 v0, p0

    #@16d
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaPhone;->mContext:Landroid/content/Context;

    #@16f
    move-object/from16 v23, v0

    #@171
    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@174
    move-result-object v23

    #@175
    const v24, 0x1120099

    #@178
    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@17b
    move-result v23

    #@17c
    if-nez v23, :cond_5

    #@17e
    .line 2075
    move-object/from16 v0, p0

    #@180
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@182
    move-object/from16 v23, v0

    #@184
    const/16 v24, 0x28

    #@186
    move-object/from16 v0, p0

    #@188
    move/from16 v1, v24

    #@18a
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->obtainMessage(I)Landroid/os/Message;

    #@18d
    move-result-object v24

    #@18e
    invoke-interface/range {v23 .. v24}, Lcom/android/internal/telephony/CommandsInterface;->getVoiceRadioTechnology(Landroid/os/Message;)V

    #@191
    .line 2078
    :cond_5
    move-object/from16 v0, p0

    #@193
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaPhone;->mContext:Landroid/content/Context;

    #@195
    move-object/from16 v23, v0

    #@197
    move-object/from16 v0, p0

    #@199
    iget v0, v0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPhoneId:I

    #@19b
    move/from16 v24, v0

    #@19d
    const/16 v25, 0x1

    #@19f
    invoke-static/range {v23 .. v25}, Lcom/android/ims/ImsManager;->updateImsServiceConfig(Landroid/content/Context;IZ)V

    #@1a2
    .line 2082
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    #@1a5
    move-result-object v23

    #@1a6
    const-string/jumbo v24, "carrier_config"

    #@1a9
    invoke-virtual/range {v23 .. v24}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@1ac
    move-result-object v8

    #@1ad
    .line 2081
    check-cast v8, Landroid/telephony/CarrierConfigManager;

    #@1af
    .line 2083
    .local v8, "configMgr":Landroid/telephony/CarrierConfigManager;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    #@1b2
    move-result v23

    #@1b3
    move/from16 v0, v23

    #@1b5
    invoke-virtual {v8, v0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    #@1b8
    move-result-object v5

    #@1b9
    .line 2084
    .local v5, "b":Landroid/os/PersistableBundle;
    if-eqz v5, :cond_7

    #@1bb
    .line 2086
    const-string/jumbo v23, "broadcast_emergency_call_state_changes_bool"

    #@1be
    .line 2085
    move-object/from16 v0, v23

    #@1c0
    invoke-virtual {v5, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    #@1c3
    move-result v6

    #@1c4
    .line 2087
    .local v6, "broadcastEmergencyCallStateChanges":Z
    new-instance v23, Ljava/lang/StringBuilder;

    #@1c6
    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    #@1c9
    const-string/jumbo v24, "broadcastEmergencyCallStateChanges = "

    #@1cc
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1cf
    move-result-object v23

    #@1d0
    move-object/from16 v0, v23

    #@1d2
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1d5
    move-result-object v23

    #@1d6
    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d9
    move-result-object v23

    #@1da
    move-object/from16 v0, p0

    #@1dc
    move-object/from16 v1, v23

    #@1de
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    #@1e1
    .line 2089
    move-object/from16 v0, p0

    #@1e3
    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/GsmCdmaPhone;->setBroadcastEmergencyCallStateChanges(Z)V

    #@1e6
    .line 2095
    .end local v6    # "broadcastEmergencyCallStateChanges":Z
    :goto_2
    if-eqz v5, :cond_8

    #@1e8
    .line 2097
    const-string/jumbo v23, "cdma_roaming_mode_int"

    #@1eb
    .line 2096
    move-object/from16 v0, v23

    #@1ed
    invoke-virtual {v5, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    #@1f0
    move-result v9

    #@1f1
    .line 2099
    .local v9, "config_cdma_roaming_mode":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    #@1f4
    move-result-object v23

    #@1f5
    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@1f8
    move-result-object v23

    #@1f9
    .line 2100
    const-string/jumbo v24, "roaming_settings"

    #@1fc
    .line 2101
    const/16 v25, -0x1

    #@1fe
    .line 2099
    invoke-static/range {v23 .. v25}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@201
    move-result v10

    #@202
    .line 2102
    .local v10, "current_cdma_roaming_mode":I
    packed-switch v9, :pswitch_data_1

    #@205
    .line 2126
    :cond_6
    :goto_3
    new-instance v23, Ljava/lang/StringBuilder;

    #@207
    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    #@20a
    const-string/jumbo v24, "Invalid cdma_roaming_mode settings: "

    #@20d
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@210
    move-result-object v23

    #@211
    move-object/from16 v0, v23

    #@213
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@216
    move-result-object v23

    #@217
    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21a
    move-result-object v23

    #@21b
    move-object/from16 v0, p0

    #@21d
    move-object/from16 v1, v23

    #@21f
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    #@222
    .line 2134
    .end local v9    # "config_cdma_roaming_mode":I
    .end local v10    # "current_cdma_roaming_mode":I
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->prepareEri()V

    #@225
    .line 2135
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    #@228
    move-result v23

    #@229
    if-nez v23, :cond_0

    #@22b
    .line 2136
    move-object/from16 v0, p0

    #@22d
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    #@22f
    move-object/from16 v23, v0

    #@231
    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/ServiceStateTracker;->pollState()V

    #@234
    goto/16 :goto_0

    #@236
    .line 2091
    :cond_7
    const-string/jumbo v23, "didn\'t get broadcastEmergencyCallStateChanges from carrier config"

    #@239
    move-object/from16 v0, p0

    #@23b
    move-object/from16 v1, v23

    #@23d
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    #@240
    goto :goto_2

    #@241
    .line 2109
    .restart local v9    # "config_cdma_roaming_mode":I
    .restart local v10    # "current_cdma_roaming_mode":I
    :pswitch_b
    new-instance v23, Ljava/lang/StringBuilder;

    #@243
    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    #@246
    const-string/jumbo v24, "cdma_roaming_mode is going to changed to "

    #@249
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24c
    move-result-object v23

    #@24d
    move-object/from16 v0, v23

    #@24f
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@252
    move-result-object v23

    #@253
    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@256
    move-result-object v23

    #@257
    move-object/from16 v0, p0

    #@259
    move-object/from16 v1, v23

    #@25b
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    #@25e
    .line 2112
    const/16 v23, 0x2c

    #@260
    move-object/from16 v0, p0

    #@262
    move/from16 v1, v23

    #@264
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->obtainMessage(I)Landroid/os/Message;

    #@267
    move-result-object v23

    #@268
    .line 2111
    move-object/from16 v0, p0

    #@26a
    move-object/from16 v1, v23

    #@26c
    invoke-virtual {v0, v9, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->setCdmaRoamingPreference(ILandroid/os/Message;)V

    #@26f
    goto :goto_4

    #@270
    .line 2118
    :pswitch_c
    if-eq v10, v9, :cond_6

    #@272
    .line 2119
    new-instance v23, Ljava/lang/StringBuilder;

    #@274
    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    #@277
    const-string/jumbo v24, "cdma_roaming_mode is going to changed to "

    #@27a
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27d
    move-result-object v23

    #@27e
    move-object/from16 v0, v23

    #@280
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@283
    move-result-object v23

    #@284
    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@287
    move-result-object v23

    #@288
    move-object/from16 v0, p0

    #@28a
    move-object/from16 v1, v23

    #@28c
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    #@28f
    .line 2122
    const/16 v23, 0x2c

    #@291
    move-object/from16 v0, p0

    #@293
    move/from16 v1, v23

    #@295
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->obtainMessage(I)Landroid/os/Message;

    #@298
    move-result-object v23

    #@299
    .line 2121
    move-object/from16 v0, p0

    #@29b
    move-object/from16 v1, v23

    #@29d
    invoke-virtual {v0, v10, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->setCdmaRoamingPreference(ILandroid/os/Message;)V

    #@2a0
    goto/16 :goto_3

    #@2a2
    .line 2130
    .end local v9    # "config_cdma_roaming_mode":I
    .end local v10    # "current_cdma_roaming_mode":I
    :cond_8
    const-string/jumbo v23, "didn\'t get the cdma_roaming_mode changes from the carrier config."

    #@2a5
    move-object/from16 v0, p0

    #@2a7
    move-object/from16 v1, v23

    #@2a9
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    #@2ac
    goto/16 :goto_4

    #@2ae
    .line 2142
    .end local v5    # "b":Landroid/os/PersistableBundle;
    .end local v8    # "configMgr":Landroid/telephony/CarrierConfigManager;
    :pswitch_d
    const-string/jumbo v23, "cdma_roaming_mode change is done"

    #@2b1
    move-object/from16 v0, p0

    #@2b3
    move-object/from16 v1, v23

    #@2b5
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    #@2b8
    goto/16 :goto_0

    #@2ba
    .line 2146
    :pswitch_e
    const-string/jumbo v23, "EVENT_CDMA_SUBSCRIPTION_SOURCE_CHANGED"

    #@2bd
    move-object/from16 v0, p0

    #@2bf
    move-object/from16 v1, v23

    #@2c1
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    #@2c4
    .line 2147
    move-object/from16 v0, p0

    #@2c6
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    #@2c8
    move-object/from16 v23, v0

    #@2ca
    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getCdmaSubscriptionSource()I

    #@2cd
    move-result v23

    #@2ce
    move/from16 v0, v23

    #@2d0
    move-object/from16 v1, p0

    #@2d2
    iput v0, v1, Lcom/android/internal/telephony/GsmCdmaPhone;->mCdmaSubscriptionSource:I

    #@2d4
    goto/16 :goto_0

    #@2d6
    .line 2151
    :pswitch_f
    const-string/jumbo v23, "Event EVENT_REGISTERED_TO_NETWORK Received"

    #@2d9
    move-object/from16 v0, p0

    #@2db
    move-object/from16 v1, v23

    #@2dd
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    #@2e0
    .line 2152
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    #@2e3
    move-result v23

    #@2e4
    if-eqz v23, :cond_0

    #@2e6
    .line 2153
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->syncClirSetting()V

    #@2e9
    goto/16 :goto_0

    #@2eb
    .line 2158
    :pswitch_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    #@2ee
    move-result v23

    #@2ef
    if-eqz v23, :cond_9

    #@2f1
    .line 2159
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->updateCurrentCarrierInProvider()Z

    #@2f4
    .line 2163
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getVmSimImsi()Ljava/lang/String;

    #@2f7
    move-result-object v12

    #@2f8
    .line 2164
    .local v12, "imsi":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubscriberId()Ljava/lang/String;

    #@2fb
    move-result-object v13

    #@2fc
    .line 2165
    .local v13, "imsiFromSIM":Ljava/lang/String;
    if-eqz v12, :cond_9

    #@2fe
    if-eqz v13, :cond_9

    #@300
    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@303
    move-result v23

    #@304
    if-eqz v23, :cond_a

    #@306
    .line 2171
    .end local v12    # "imsi":Ljava/lang/String;
    .end local v13    # "imsiFromSIM":Ljava/lang/String;
    :cond_9
    :goto_5
    move-object/from16 v0, p0

    #@308
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSimRecordsLoadedRegistrants:Landroid/os/RegistrantList;

    #@30a
    move-object/from16 v23, v0

    #@30c
    invoke-virtual/range {v23 .. v23}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@30f
    goto/16 :goto_0

    #@311
    .line 2166
    .restart local v12    # "imsi":Ljava/lang/String;
    .restart local v13    # "imsiFromSIM":Ljava/lang/String;
    :cond_a
    const/16 v23, 0x0

    #@313
    move-object/from16 v0, p0

    #@315
    move-object/from16 v1, v23

    #@317
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->storeVoiceMailNumber(Ljava/lang/String;)V

    #@31a
    .line 2167
    const/16 v23, 0x0

    #@31c
    move-object/from16 v0, p0

    #@31e
    move-object/from16 v1, v23

    #@320
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->setVmSimImsi(Ljava/lang/String;)V

    #@323
    goto :goto_5

    #@324
    .line 2175
    .end local v12    # "imsi":Ljava/lang/String;
    .end local v13    # "imsiFromSIM":Ljava/lang/String;
    :pswitch_11
    move-object/from16 v0, p1

    #@326
    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@328
    check-cast v4, Landroid/os/AsyncResult;

    #@32a
    .line 2177
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@32c
    move-object/from16 v23, v0

    #@32e
    if-nez v23, :cond_0

    #@330
    .line 2181
    new-instance v23, Ljava/lang/StringBuilder;

    #@332
    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    #@335
    const-string/jumbo v24, "Baseband version: "

    #@338
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33b
    move-result-object v23

    #@33c
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@33e
    move-object/from16 v24, v0

    #@340
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@343
    move-result-object v23

    #@344
    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@347
    move-result-object v23

    #@348
    move-object/from16 v0, p0

    #@34a
    move-object/from16 v1, v23

    #@34c
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    #@34f
    .line 2182
    move-object/from16 v0, p0

    #@351
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaPhone;->mContext:Landroid/content/Context;

    #@353
    move-object/from16 v23, v0

    #@355
    invoke-static/range {v23 .. v23}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    #@358
    move-result-object v24

    #@359
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    #@35c
    move-result v25

    #@35d
    .line 2183
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@35f
    move-object/from16 v23, v0

    #@361
    check-cast v23, Ljava/lang/String;

    #@363
    .line 2182
    move-object/from16 v0, v24

    #@365
    move/from16 v1, v25

    #@367
    move-object/from16 v2, v23

    #@369
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setBasebandVersionForPhone(ILjava/lang/String;)V

    #@36c
    goto/16 :goto_0

    #@36e
    .line 2187
    .end local v4    # "ar":Landroid/os/AsyncResult;
    :pswitch_12
    move-object/from16 v0, p1

    #@370
    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@372
    check-cast v4, Landroid/os/AsyncResult;

    #@374
    .line 2189
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@376
    move-object/from16 v23, v0

    #@378
    if-nez v23, :cond_0

    #@37a
    .line 2193
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@37c
    move-object/from16 v23, v0

    #@37e
    check-cast v23, Ljava/lang/String;

    #@380
    move-object/from16 v0, v23

    #@382
    move-object/from16 v1, p0

    #@384
    iput-object v0, v1, Lcom/android/internal/telephony/GsmCdmaPhone;->mImei:Ljava/lang/String;

    #@386
    goto/16 :goto_0

    #@388
    .line 2197
    .end local v4    # "ar":Landroid/os/AsyncResult;
    :pswitch_13
    move-object/from16 v0, p1

    #@38a
    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@38c
    check-cast v4, Landroid/os/AsyncResult;

    #@38e
    .line 2199
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@390
    move-object/from16 v23, v0

    #@392
    if-nez v23, :cond_0

    #@394
    .line 2203
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@396
    move-object/from16 v23, v0

    #@398
    check-cast v23, Ljava/lang/String;

    #@39a
    move-object/from16 v0, v23

    #@39c
    move-object/from16 v1, p0

    #@39e
    iput-object v0, v1, Lcom/android/internal/telephony/GsmCdmaPhone;->mImeiSv:Ljava/lang/String;

    #@3a0
    goto/16 :goto_0

    #@3a2
    .line 2207
    .end local v4    # "ar":Landroid/os/AsyncResult;
    :pswitch_14
    move-object/from16 v0, p1

    #@3a4
    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@3a6
    check-cast v4, Landroid/os/AsyncResult;

    #@3a8
    .line 2209
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@3aa
    move-object/from16 v21, v0

    #@3ac
    check-cast v21, [Ljava/lang/String;

    #@3ae
    .line 2211
    .local v21, "ussdResult":[Ljava/lang/String;
    move-object/from16 v0, v21

    #@3b0
    array-length v0, v0

    #@3b1
    move/from16 v23, v0

    #@3b3
    const/16 v24, 0x1

    #@3b5
    move/from16 v0, v23

    #@3b7
    move/from16 v1, v24

    #@3b9
    if-le v0, v1, :cond_0

    #@3bb
    .line 2213
    const/16 v23, 0x0

    #@3bd
    :try_start_0
    aget-object v23, v21, v23

    #@3bf
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@3c2
    move-result v23

    #@3c3
    const/16 v24, 0x1

    #@3c5
    aget-object v24, v21, v24

    #@3c7
    move-object/from16 v0, p0

    #@3c9
    move/from16 v1, v23

    #@3cb
    move-object/from16 v2, v24

    #@3cd
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->onIncomingUSSD(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@3d0
    goto/16 :goto_0

    #@3d2
    .line 2214
    :catch_0
    move-exception v11

    #@3d3
    .line 2215
    .local v11, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v23, "GsmCdmaPhone"

    #@3d6
    const-string/jumbo v24, "error parsing USSD"

    #@3d9
    invoke-static/range {v23 .. v24}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@3dc
    goto/16 :goto_0

    #@3de
    .line 2221
    .end local v4    # "ar":Landroid/os/AsyncResult;
    .end local v11    # "e":Ljava/lang/NumberFormatException;
    .end local v21    # "ussdResult":[Ljava/lang/String;
    :pswitch_15
    const-string/jumbo v23, "Event EVENT_RADIO_OFF_OR_NOT_AVAILABLE Received"

    #@3e1
    move-object/from16 v0, p0

    #@3e3
    move-object/from16 v1, v23

    #@3e5
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    #@3e8
    .line 2222
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->handleRadioOffOrNotAvailable()V

    #@3eb
    goto/16 :goto_0

    #@3ed
    .line 2227
    :pswitch_16
    const-string/jumbo v23, "Event EVENT_SSN Received"

    #@3f0
    move-object/from16 v0, p0

    #@3f2
    move-object/from16 v1, v23

    #@3f4
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    #@3f7
    .line 2228
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    #@3fa
    move-result v23

    #@3fb
    if-eqz v23, :cond_0

    #@3fd
    .line 2229
    move-object/from16 v0, p1

    #@3ff
    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@401
    check-cast v4, Landroid/os/AsyncResult;

    #@403
    .line 2230
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@405
    move-object/from16 v16, v0

    #@407
    check-cast v16, Lcom/android/internal/telephony/gsm/SuppServiceNotification;

    #@409
    .line 2231
    .local v16, "not":Lcom/android/internal/telephony/gsm/SuppServiceNotification;
    move-object/from16 v0, p0

    #@40b
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSsnRegistrants:Landroid/os/RegistrantList;

    #@40d
    move-object/from16 v23, v0

    #@40f
    move-object/from16 v0, v23

    #@411
    invoke-virtual {v0, v4}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    #@414
    goto/16 :goto_0

    #@416
    .line 2236
    .end local v4    # "ar":Landroid/os/AsyncResult;
    .end local v16    # "not":Lcom/android/internal/telephony/gsm/SuppServiceNotification;
    :pswitch_17
    move-object/from16 v0, p1

    #@418
    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@41a
    check-cast v4, Landroid/os/AsyncResult;

    #@41c
    .line 2237
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    #@41e
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    #@420
    move-object/from16 v23, v0

    #@422
    invoke-virtual/range {v23 .. v23}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@425
    move-result-object v18

    #@426
    check-cast v18, Lcom/android/internal/telephony/uicc/IccRecords;

    #@428
    .line 2238
    .local v18, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    iget-object v7, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    #@42a
    check-cast v7, Lcom/android/internal/telephony/GsmCdmaPhone$Cfu;

    #@42c
    .line 2239
    .local v7, "cfu":Lcom/android/internal/telephony/GsmCdmaPhone$Cfu;
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@42e
    move-object/from16 v23, v0

    #@430
    if-nez v23, :cond_b

    #@432
    if-eqz v18, :cond_b

    #@434
    .line 2240
    move-object/from16 v0, p1

    #@436
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@438
    move/from16 v23, v0

    #@43a
    const/16 v24, 0x1

    #@43c
    move/from16 v0, v23

    #@43e
    move/from16 v1, v24

    #@440
    if-ne v0, v1, :cond_c

    #@442
    const/16 v23, 0x1

    #@444
    :goto_6
    iget-object v0, v7, Lcom/android/internal/telephony/GsmCdmaPhone$Cfu;->mSetCfNumber:Ljava/lang/String;

    #@446
    move-object/from16 v24, v0

    #@448
    const/16 v25, 0x1

    #@44a
    move-object/from16 v0, p0

    #@44c
    move/from16 v1, v25

    #@44e
    move/from16 v2, v23

    #@450
    move-object/from16 v3, v24

    #@452
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    #@455
    .line 2242
    :cond_b
    iget-object v0, v7, Lcom/android/internal/telephony/GsmCdmaPhone$Cfu;->mOnComplete:Landroid/os/Message;

    #@457
    move-object/from16 v23, v0

    #@459
    if-eqz v23, :cond_0

    #@45b
    .line 2243
    iget-object v0, v7, Lcom/android/internal/telephony/GsmCdmaPhone$Cfu;->mOnComplete:Landroid/os/Message;

    #@45d
    move-object/from16 v23, v0

    #@45f
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@461
    move-object/from16 v24, v0

    #@463
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@465
    move-object/from16 v25, v0

    #@467
    invoke-static/range {v23 .. v25}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    #@46a
    .line 2244
    iget-object v0, v7, Lcom/android/internal/telephony/GsmCdmaPhone$Cfu;->mOnComplete:Landroid/os/Message;

    #@46c
    move-object/from16 v23, v0

    #@46e
    invoke-virtual/range {v23 .. v23}, Landroid/os/Message;->sendToTarget()V

    #@471
    goto/16 :goto_0

    #@473
    .line 2240
    :cond_c
    const/16 v23, 0x0

    #@475
    goto :goto_6

    #@476
    .line 2249
    .end local v4    # "ar":Landroid/os/AsyncResult;
    .end local v7    # "cfu":Lcom/android/internal/telephony/GsmCdmaPhone$Cfu;
    .end local v18    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    :pswitch_18
    move-object/from16 v0, p1

    #@478
    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@47a
    check-cast v4, Landroid/os/AsyncResult;

    #@47c
    .line 2250
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    #@47f
    move-result v23

    #@480
    if-eqz v23, :cond_d

    #@482
    const-class v23, Lcom/android/internal/telephony/uicc/IccVmNotSupportedException;

    #@484
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@486
    move-object/from16 v24, v0

    #@488
    invoke-virtual/range {v23 .. v24}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    #@48b
    move-result v23

    #@48c
    if-nez v23, :cond_e

    #@48e
    .line 2251
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    #@491
    move-result v23

    #@492
    if-nez v23, :cond_f

    #@494
    const-class v23, Lcom/android/internal/telephony/uicc/IccException;

    #@496
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@498
    move-object/from16 v24, v0

    #@49a
    invoke-virtual/range {v23 .. v24}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    #@49d
    move-result v23

    #@49e
    .line 2250
    if-eqz v23, :cond_f

    #@4a0
    .line 2252
    :cond_e
    move-object/from16 v0, p0

    #@4a2
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaPhone;->mVmNumber:Ljava/lang/String;

    #@4a4
    move-object/from16 v23, v0

    #@4a6
    move-object/from16 v0, p0

    #@4a8
    move-object/from16 v1, v23

    #@4aa
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->storeVoiceMailNumber(Ljava/lang/String;)V

    #@4ad
    .line 2253
    const/16 v23, 0x0

    #@4af
    move-object/from16 v0, v23

    #@4b1
    iput-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@4b3
    .line 2255
    :cond_f
    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    #@4b5
    move-object/from16 v17, v0

    #@4b7
    check-cast v17, Landroid/os/Message;

    #@4b9
    .line 2256
    .local v17, "onComplete":Landroid/os/Message;
    if-eqz v17, :cond_0

    #@4bb
    .line 2257
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@4bd
    move-object/from16 v23, v0

    #@4bf
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@4c1
    move-object/from16 v24, v0

    #@4c3
    move-object/from16 v0, v17

    #@4c5
    move-object/from16 v1, v23

    #@4c7
    move-object/from16 v2, v24

    #@4c9
    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    #@4cc
    .line 2258
    invoke-virtual/range {v17 .. v17}, Landroid/os/Message;->sendToTarget()V

    #@4cf
    goto/16 :goto_0

    #@4d1
    .line 2264
    .end local v4    # "ar":Landroid/os/AsyncResult;
    .end local v17    # "onComplete":Landroid/os/Message;
    :pswitch_19
    move-object/from16 v0, p1

    #@4d3
    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@4d5
    check-cast v4, Landroid/os/AsyncResult;

    #@4d7
    .line 2265
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@4d9
    move-object/from16 v23, v0

    #@4db
    if-nez v23, :cond_10

    #@4dd
    .line 2266
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@4df
    move-object/from16 v23, v0

    #@4e1
    check-cast v23, [Lcom/android/internal/telephony/CallForwardInfo;

    #@4e3
    move-object/from16 v0, p0

    #@4e5
    move-object/from16 v1, v23

    #@4e7
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->handleCfuQueryResult([Lcom/android/internal/telephony/CallForwardInfo;)V

    #@4ea
    .line 2268
    :cond_10
    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    #@4ec
    move-object/from16 v17, v0

    #@4ee
    check-cast v17, Landroid/os/Message;

    #@4f0
    .line 2269
    .restart local v17    # "onComplete":Landroid/os/Message;
    if-eqz v17, :cond_0

    #@4f2
    .line 2270
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@4f4
    move-object/from16 v23, v0

    #@4f6
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@4f8
    move-object/from16 v24, v0

    #@4fa
    move-object/from16 v0, v17

    #@4fc
    move-object/from16 v1, v23

    #@4fe
    move-object/from16 v2, v24

    #@500
    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    #@503
    .line 2271
    invoke-virtual/range {v17 .. v17}, Landroid/os/Message;->sendToTarget()V

    #@506
    goto/16 :goto_0

    #@508
    .line 2277
    .end local v4    # "ar":Landroid/os/AsyncResult;
    .end local v17    # "onComplete":Landroid/os/Message;
    :pswitch_1a
    move-object/from16 v0, p1

    #@50a
    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@50c
    check-cast v4, Landroid/os/AsyncResult;

    #@50e
    .line 2278
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    #@510
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    #@512
    move-object/from16 v23, v0

    #@514
    move-object/from16 v0, v23

    #@516
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@518
    move-object/from16 v23, v0

    #@51a
    invoke-virtual/range {v23 .. v23}, Landroid/telephony/ServiceState;->getIsManualSelection()Z

    #@51d
    move-result v23

    #@51e
    if-eqz v23, :cond_11

    #@520
    .line 2279
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@522
    move-object/from16 v23, v0

    #@524
    check-cast v23, Landroid/os/Message;

    #@526
    move-object/from16 v0, p0

    #@528
    move-object/from16 v1, v23

    #@52a
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    #@52d
    .line 2280
    const-string/jumbo v23, "SET_NETWORK_SELECTION_AUTOMATIC: set to automatic"

    #@530
    move-object/from16 v0, p0

    #@532
    move-object/from16 v1, v23

    #@534
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    #@537
    goto/16 :goto_0

    #@539
    .line 2283
    :cond_11
    const-string/jumbo v23, "SET_NETWORK_SELECTION_AUTOMATIC: already automatic, ignore"

    #@53c
    move-object/from16 v0, p0

    #@53e
    move-object/from16 v1, v23

    #@540
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    #@543
    goto/16 :goto_0

    #@545
    .line 2288
    .end local v4    # "ar":Landroid/os/AsyncResult;
    :pswitch_1b
    move-object/from16 v0, p1

    #@547
    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@549
    check-cast v4, Landroid/os/AsyncResult;

    #@54b
    .line 2289
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@54d
    move-object/from16 v23, v0

    #@54f
    check-cast v23, Ljava/lang/Integer;

    #@551
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    #@554
    move-result v23

    #@555
    move-object/from16 v0, p0

    #@557
    move/from16 v1, v23

    #@559
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->processIccRecordEvents(I)V

    #@55c
    goto/16 :goto_0

    #@55e
    .line 2293
    .end local v4    # "ar":Landroid/os/AsyncResult;
    :pswitch_1c
    move-object/from16 v0, p1

    #@560
    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@562
    check-cast v4, Landroid/os/AsyncResult;

    #@564
    .line 2294
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@566
    move-object/from16 v23, v0

    #@568
    if-nez v23, :cond_12

    #@56a
    .line 2295
    move-object/from16 v0, p1

    #@56c
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@56e
    move/from16 v23, v0

    #@570
    move-object/from16 v0, p0

    #@572
    move/from16 v1, v23

    #@574
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->saveClirSetting(I)V

    #@577
    .line 2297
    :cond_12
    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    #@579
    move-object/from16 v17, v0

    #@57b
    check-cast v17, Landroid/os/Message;

    #@57d
    .line 2298
    .restart local v17    # "onComplete":Landroid/os/Message;
    if-eqz v17, :cond_0

    #@57f
    .line 2299
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@581
    move-object/from16 v23, v0

    #@583
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@585
    move-object/from16 v24, v0

    #@587
    move-object/from16 v0, v17

    #@589
    move-object/from16 v1, v23

    #@58b
    move-object/from16 v2, v24

    #@58d
    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    #@590
    .line 2300
    invoke-virtual/range {v17 .. v17}, Landroid/os/Message;->sendToTarget()V

    #@593
    goto/16 :goto_0

    #@595
    .line 2305
    .end local v4    # "ar":Landroid/os/AsyncResult;
    .end local v17    # "onComplete":Landroid/os/Message;
    :pswitch_1d
    move-object/from16 v0, p1

    #@597
    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@599
    check-cast v4, Landroid/os/AsyncResult;

    #@59b
    .line 2306
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    const-string/jumbo v23, "Event EVENT_SS received"

    #@59e
    move-object/from16 v0, p0

    #@5a0
    move-object/from16 v1, v23

    #@5a2
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    #@5a5
    .line 2307
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    #@5a8
    move-result v23

    #@5a9
    if-eqz v23, :cond_0

    #@5ab
    .line 2311
    new-instance v14, Lcom/android/internal/telephony/gsm/GsmMmiCode;

    #@5ad
    move-object/from16 v0, p0

    #@5af
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaPhone;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    #@5b1
    move-object/from16 v23, v0

    #@5b3
    invoke-virtual/range {v23 .. v23}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@5b6
    move-result-object v23

    #@5b7
    check-cast v23, Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@5b9
    move-object/from16 v0, p0

    #@5bb
    move-object/from16 v1, v23

    #@5bd
    invoke-direct {v14, v0, v1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;-><init>(Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)V

    #@5c0
    .line 2312
    .local v14, "mmi":Lcom/android/internal/telephony/gsm/GsmMmiCode;
    invoke-virtual {v14, v4}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->processSsData(Landroid/os/AsyncResult;)V

    #@5c3
    goto/16 :goto_0

    #@5c5
    .line 2317
    .end local v4    # "ar":Landroid/os/AsyncResult;
    .end local v14    # "mmi":Lcom/android/internal/telephony/gsm/GsmMmiCode;
    :pswitch_1e
    move-object/from16 v0, p1

    #@5c7
    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@5c9
    check-cast v4, Landroid/os/AsyncResult;

    #@5cb
    .line 2318
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@5cd
    move-object/from16 v19, v0

    #@5cf
    check-cast v19, Lcom/android/internal/telephony/RadioCapability;

    #@5d1
    .line 2319
    .local v19, "rc":Lcom/android/internal/telephony/RadioCapability;
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@5d3
    move-object/from16 v23, v0

    #@5d5
    if-eqz v23, :cond_13

    #@5d7
    .line 2320
    const-string/jumbo v23, "GsmCdmaPhone"

    #@5da
    const-string/jumbo v24, "get phone radio capability fail, no need to change mRadioCapability"

    #@5dd
    invoke-static/range {v23 .. v24}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@5e0
    .line 2325
    :goto_7
    const-string/jumbo v23, "GsmCdmaPhone"

    #@5e3
    new-instance v24, Ljava/lang/StringBuilder;

    #@5e5
    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    #@5e8
    const-string/jumbo v25, "EVENT_GET_RADIO_CAPABILITY: phone rc: "

    #@5eb
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5ee
    move-result-object v24

    #@5ef
    move-object/from16 v0, v24

    #@5f1
    move-object/from16 v1, v19

    #@5f3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5f6
    move-result-object v24

    #@5f7
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5fa
    move-result-object v24

    #@5fb
    invoke-static/range {v23 .. v24}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@5fe
    goto/16 :goto_0

    #@600
    .line 2323
    :cond_13
    move-object/from16 v0, p0

    #@602
    move-object/from16 v1, v19

    #@604
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->radioCapabilityUpdated(Lcom/android/internal/telephony/RadioCapability;)V

    #@607
    goto :goto_7

    #@608
    .line 1998
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_16
        :pswitch_10
        :pswitch_0
        :pswitch_6
        :pswitch_11
        :pswitch_14
        :pswitch_15
        :pswitch_12
        :pswitch_13
        :pswitch_0
        :pswitch_17
        :pswitch_19
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1c
        :pswitch_f
        :pswitch_18
        :pswitch_2
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_e
        :pswitch_1a
        :pswitch_1b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1e
        :pswitch_1d
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_9
        :pswitch_a
        :pswitch_d
    .end packed-switch

    #@664
    .line 2102
    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_b
    .end packed-switch
.end method

.method public handlePinMmi(Ljava/lang/String;)Z
    .locals 5
    .param p1, "dialString"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1192
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    #@4
    move-result v2

    #@5
    if-eqz v2, :cond_0

    #@7
    .line 1193
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    #@9
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@c
    move-result-object v2

    #@d
    check-cast v2, Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@f
    invoke-static {p1, p0, v2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->newFromDialString(Ljava/lang/String;Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)Lcom/android/internal/telephony/gsm/GsmMmiCode;

    #@12
    move-result-object v1

    #@13
    .line 1198
    .local v1, "mmi":Lcom/android/internal/telephony/MmiCode;
    :goto_0
    if-eqz v1, :cond_1

    #@15
    invoke-interface {v1}, Lcom/android/internal/telephony/MmiCode;->isPinPukCommand()Z

    #@18
    move-result v2

    #@19
    if-eqz v2, :cond_1

    #@1b
    .line 1199
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPendingMMIs:Ljava/util/ArrayList;

    #@1d
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@20
    .line 1200
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mMmiRegistrants:Landroid/os/RegistrantList;

    #@22
    new-instance v3, Landroid/os/AsyncResult;

    #@24
    invoke-direct {v3, v4, v1, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@27
    invoke-virtual {v2, v3}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    #@2a
    .line 1202
    :try_start_0
    invoke-interface {v1}, Lcom/android/internal/telephony/MmiCode;->processCode()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    #@2d
    .line 1206
    :goto_1
    const/4 v2, 0x1

    #@2e
    return v2

    #@2f
    .line 1195
    .end local v1    # "mmi":Lcom/android/internal/telephony/MmiCode;
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    #@31
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@34
    move-result-object v2

    #@35
    check-cast v2, Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@37
    invoke-static {p1, p0, v2}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->newFromDialString(Ljava/lang/String;Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)Lcom/android/internal/telephony/cdma/CdmaMmiCode;

    #@3a
    move-result-object v1

    #@3b
    .restart local v1    # "mmi":Lcom/android/internal/telephony/MmiCode;
    goto :goto_0

    #@3c
    .line 1203
    :catch_0
    move-exception v0

    #@3d
    .local v0, "e":Lcom/android/internal/telephony/CallStateException;
    goto :goto_1

    #@3e
    .line 1209
    .end local v0    # "e":Lcom/android/internal/telephony/CallStateException;
    :cond_1
    const-string/jumbo v2, "Mmi is null or unrecognized!"

    #@41
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    #@44
    .line 1210
    const/4 v2, 0x0

    #@45
    return v2
.end method

.method public handleTimerInEmergencyCallbackMode(I)V
    .locals 6
    .param p1, "action"    # I

    #@0
    .prologue
    .line 2758
    packed-switch p1, :pswitch_data_0

    #@3
    .line 2770
    const-string/jumbo v2, "GsmCdmaPhone"

    #@6
    new-instance v3, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v4, "handleTimerInEmergencyCallbackMode, unsupported action "

    #@e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v3

    #@12
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@15
    move-result-object v3

    #@16
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v3

    #@1a
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1d
    .line 2757
    :goto_0
    return-void

    #@1e
    .line 2760
    :pswitch_0
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mExitEcmRunnable:Ljava/lang/Runnable;

    #@20
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->removeCallbacks(Ljava/lang/Runnable;)V

    #@23
    .line 2761
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

    #@25
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    #@27
    invoke-virtual {v2, v3}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    #@2a
    goto :goto_0

    #@2b
    .line 2765
    :pswitch_1
    const-string/jumbo v2, "ro.cdma.ecmexittimer"

    #@2e
    const-wide/32 v4, 0x493e0

    #@31
    .line 2764
    invoke-static {v2, v4, v5}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    #@34
    move-result-wide v0

    #@35
    .line 2766
    .local v0, "delayInMillis":J
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mExitEcmRunnable:Ljava/lang/Runnable;

    #@37
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->postDelayed(Ljava/lang/Runnable;J)Z

    #@3a
    .line 2767
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

    #@3c
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #@3e
    invoke-virtual {v2, v3}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    #@41
    goto :goto_0

    #@42
    .line 2758
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isCspPlmnEnabled()Z
    .locals 2

    #@0
    .prologue
    .line 2594
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    #@2
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    #@8
    .line 2595
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    #@a
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->isCspPlmnEnabled()Z

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

.method public isEriFileLoaded()Z
    .locals 1

    #@0
    .prologue
    .line 2542
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/EriManager;->isEriFileLoaded()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isInCall()Z
    .locals 4

    #@0
    .prologue
    .line 1054
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getForegroundCall()Lcom/android/internal/telephony/GsmCdmaCall;

    #@3
    move-result-object v3

    #@4
    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@7
    move-result-object v1

    #@8
    .line 1055
    .local v1, "foregroundCallState":Lcom/android/internal/telephony/Call$State;
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getBackgroundCall()Lcom/android/internal/telephony/GsmCdmaCall;

    #@b
    move-result-object v3

    #@c
    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@f
    move-result-object v0

    #@10
    .line 1056
    .local v0, "backgroundCallState":Lcom/android/internal/telephony/Call$State;
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getRingingCall()Lcom/android/internal/telephony/Call;

    #@13
    move-result-object v3

    #@14
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    #@17
    move-result-object v2

    #@18
    .line 1058
    .local v2, "ringingCallState":Lcom/android/internal/telephony/Call$State;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    #@1b
    move-result v3

    #@1c
    if-nez v3, :cond_0

    #@1e
    .line 1059
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    #@21
    move-result v3

    #@22
    .line 1058
    if-nez v3, :cond_0

    #@24
    .line 1060
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    #@27
    move-result v3

    #@28
    .line 1058
    :goto_0
    return v3

    #@29
    :cond_0
    const/4 v3, 0x1

    #@2a
    goto :goto_0
.end method

.method public isInEcm()Z
    .locals 1

    #@0
    .prologue
    .line 622
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 623
    const/4 v0, 0x0

    #@7
    return v0

    #@8
    .line 625
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIsPhoneInEcmState:Z

    #@a
    return v0
.end method

.method public isInEmergencyCall()Z
    .locals 1

    #@0
    .prologue
    .line 606
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 607
    const/4 v0, 0x0

    #@7
    return v0

    #@8
    .line 609
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    #@a
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isInEmergencyCall()Z

    #@d
    move-result v0

    #@e
    return v0
.end method

.method public isManualNetSelAllowed()Z
    .locals 5

    #@0
    .prologue
    .line 2600
    sget v0, Lcom/android/internal/telephony/Phone;->PREFERRED_NT_MODE:I

    #@2
    .line 2601
    .local v0, "nwMode":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    #@5
    move-result v1

    #@6
    .line 2603
    .local v1, "subId":I
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mContext:Landroid/content/Context;

    #@8
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@b
    move-result-object v2

    #@c
    .line 2604
    new-instance v3, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v4, "preferred_network_mode"

    #@14
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v3

    #@18
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v3

    #@1c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v3

    #@20
    .line 2603
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@23
    move-result v0

    #@24
    .line 2606
    new-instance v2, Ljava/lang/StringBuilder;

    #@26
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@29
    const-string/jumbo v3, "isManualNetSelAllowed in mode = "

    #@2c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v2

    #@30
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@33
    move-result-object v2

    #@34
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v2

    #@38
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    #@3b
    .line 2611
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isManualSelProhibitedInGlobalMode()Z

    #@3e
    move-result v2

    #@3f
    if-eqz v2, :cond_1

    #@41
    .line 2612
    const/16 v2, 0xa

    #@43
    if-eq v0, v2, :cond_0

    #@45
    .line 2613
    const/4 v2, 0x7

    #@46
    if-ne v0, v2, :cond_1

    #@48
    .line 2614
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    #@4a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@4d
    const-string/jumbo v3, "Manual selection not supported in mode = "

    #@50
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v2

    #@54
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@57
    move-result-object v2

    #@58
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5b
    move-result-object v2

    #@5c
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    #@5f
    .line 2615
    const/4 v2, 0x0

    #@60
    return v2

    #@61
    .line 2617
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    #@63
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@66
    const-string/jumbo v3, "Manual selection is supported in mode = "

    #@69
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v2

    #@6d
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@70
    move-result-object v2

    #@71
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@74
    move-result-object v2

    #@75
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    #@78
    .line 2627
    const/4 v2, 0x1

    #@79
    return v2
.end method

.method public isMinInfoReady()Z
    .locals 1

    #@0
    .prologue
    .line 1498
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->isMinInfoReady()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isOtaSpNumber(Ljava/lang/String;)Z
    .locals 5
    .param p1, "dialStr"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2954
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    #@3
    move-result v2

    #@4
    if-eqz v2, :cond_0

    #@6
    .line 2955
    invoke-super {p0, p1}, Lcom/android/internal/telephony/Phone;->isOtaSpNumber(Ljava/lang/String;)Z

    #@9
    move-result v2

    #@a
    return v2

    #@b
    .line 2957
    :cond_0
    const/4 v1, 0x0

    #@c
    .line 2958
    .local v1, "isOtaSpNum":Z
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    .line 2959
    .local v0, "dialableStr":Ljava/lang/String;
    if-eqz v0, :cond_1

    #@12
    .line 2960
    invoke-static {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isIs683OtaSpDialStr(Ljava/lang/String;)Z

    #@15
    move-result v1

    #@16
    .line 2961
    .local v1, "isOtaSpNum":Z
    if-nez v1, :cond_1

    #@18
    .line 2962
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isCarrierOtaSpNum(Ljava/lang/String;)Z

    #@1b
    move-result v1

    #@1c
    .line 2965
    .end local v1    # "isOtaSpNum":Z
    :cond_1
    const-string/jumbo v2, "GsmCdmaPhone"

    #@1f
    new-instance v3, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string/jumbo v4, "isOtaSpNumber "

    #@27
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v3

    #@2b
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v3

    #@2f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v3

    #@33
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@36
    .line 2966
    return v1
.end method

.method public isPhoneTypeCdma()Z
    .locals 2

    #@0
    .prologue
    .line 357
    iget v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPrecisePhoneType:I

    #@2
    const/4 v1, 0x2

    #@3
    if-ne v0, v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :goto_0
    return v0

    #@7
    :cond_0
    const/4 v0, 0x0

    #@8
    goto :goto_0
.end method

.method public isPhoneTypeCdmaLte()Z
    .locals 2

    #@0
    .prologue
    .line 361
    iget v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPrecisePhoneType:I

    #@2
    const/4 v1, 0x6

    #@3
    if-ne v0, v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :goto_0
    return v0

    #@7
    :cond_0
    const/4 v0, 0x0

    #@8
    goto :goto_0
.end method

.method public isPhoneTypeGsm()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 353
    iget v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPrecisePhoneType:I

    #@3
    if-ne v1, v0, :cond_0

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method public isUtEnabled()Z
    .locals 2

    #@0
    .prologue
    .line 3307
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    #@2
    .line 3308
    .local v0, "imsPhone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_0

    #@4
    .line 3309
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isUtEnabled()Z

    #@7
    move-result v1

    #@8
    return v1

    #@9
    .line 3311
    :cond_0
    const-string/jumbo v1, "isUtEnabled: called for GsmCdma"

    #@c
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    #@f
    .line 3312
    const/4 v1, 0x0

    #@10
    return v1
.end method

.method public needsOtaServiceProvisioning()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 2585
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 2586
    return v0

    #@8
    .line 2588
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    #@a
    invoke-virtual {v1}, Lcom/android/internal/telephony/ServiceStateTracker;->getOtasp()I

    #@d
    move-result v1

    #@e
    const/4 v2, 0x3

    #@f
    if-eq v1, v2, :cond_1

    #@11
    const/4 v0, 0x1

    #@12
    :cond_1
    return v0
.end method

.method public notifyCallForwardingIndicator()V
    .locals 1

    #@0
    .prologue
    .line 682
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    #@2
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifyCallForwardingChanged(Lcom/android/internal/telephony/Phone;)V

    #@5
    .line 681
    return-void
.end method

.method public notifyDisconnect(Lcom/android/internal/telephony/Connection;)V
    .locals 3
    .param p1, "cn"    # Lcom/android/internal/telephony/Connection;

    #@0
    .prologue
    .line 595
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mDisconnectRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    #@5
    .line 597
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    #@7
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()I

    #@a
    move-result v1

    #@b
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getPreciseDisconnectCause()I

    #@e
    move-result v2

    #@f
    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/PhoneNotifier;->notifyDisconnectCause(II)V

    #@12
    .line 594
    return-void
.end method

.method public notifyEcbmTimerReset(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "flag"    # Ljava/lang/Boolean;

    #@0
    .prologue
    .line 3256
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    #@5
    .line 3255
    return-void
.end method

.method public notifyEmergencyCallRegistrants(Z)V
    .locals 2
    .param p1, "started"    # Z

    #@0
    .prologue
    .line 2748
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mEmergencyCallToggledRegistrants:Landroid/os/RegistrantList;

    #@2
    if-eqz p1, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    #@c
    .line 2747
    return-void

    #@d
    .line 2748
    :cond_0
    const/4 v0, 0x0

    #@e
    goto :goto_0
.end method

.method public notifyLocationChanged()V
    .locals 1

    #@0
    .prologue
    .line 677
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    #@2
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifyCellLocation(Lcom/android/internal/telephony/Phone;)V

    #@5
    .line 676
    return-void
.end method

.method public notifyNewRingingConnection(Lcom/android/internal/telephony/Connection;)V
    .locals 0
    .param p1, "c"    # Lcom/android/internal/telephony/Connection;

    #@0
    .prologue
    .line 591
    invoke-super {p0, p1}, Lcom/android/internal/telephony/Phone;->notifyNewRingingConnectionP(Lcom/android/internal/telephony/Connection;)V

    #@3
    .line 590
    return-void
.end method

.method public notifyPhoneStateChanged()V
    .locals 1

    #@0
    .prologue
    .line 577
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    #@2
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifyPhoneState(Lcom/android/internal/telephony/Phone;)V

    #@5
    .line 576
    return-void
.end method

.method public notifyPreciseCallStateChanged()V
    .locals 0

    #@0
    .prologue
    .line 587
    invoke-super {p0}, Lcom/android/internal/telephony/Phone;->notifyPreciseCallStateChangedP()V

    #@3
    .line 585
    return-void
.end method

.method public notifyServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 0
    .param p1, "ss"    # Landroid/telephony/ServiceState;

    #@0
    .prologue
    .line 673
    invoke-super {p0, p1}, Lcom/android/internal/telephony/Phone;->notifyServiceStateChangedP(Landroid/telephony/ServiceState;)V

    #@3
    .line 672
    return-void
.end method

.method public notifySuppServiceFailed(Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;)V
    .locals 1
    .param p1, "code"    # Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    #@0
    .prologue
    .line 669
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSuppServiceFailedRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    #@5
    .line 668
    return-void
.end method

.method public notifyUnknownConnection(Lcom/android/internal/telephony/Connection;)V
    .locals 0
    .param p1, "cn"    # Lcom/android/internal/telephony/Connection;

    #@0
    .prologue
    .line 601
    invoke-super {p0, p1}, Lcom/android/internal/telephony/Phone;->notifyUnknownConnectionP(Lcom/android/internal/telephony/Connection;)V

    #@3
    .line 600
    return-void
.end method

.method public onMMIDone(Lcom/android/internal/telephony/MmiCode;)V
    .locals 3
    .param p1, "mmi"    # Lcom/android/internal/telephony/MmiCode;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1869
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPendingMMIs:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_1

    #@f
    invoke-interface {p1}, Lcom/android/internal/telephony/MmiCode;->isUssdRequest()Z

    #@12
    move-result v0

    #@13
    if-nez v0, :cond_0

    #@15
    move-object v0, p1

    #@16
    .line 1870
    check-cast v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;

    #@18
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isSsInfo()Z

    #@1b
    move-result v0

    #@1c
    .line 1869
    if-eqz v0, :cond_1

    #@1e
    .line 1871
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mMmiCompleteRegistrants:Landroid/os/RegistrantList;

    #@20
    new-instance v1, Landroid/os/AsyncResult;

    #@22
    invoke-direct {v1, v2, p1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@25
    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    #@28
    .line 1862
    :cond_1
    return-void
.end method

.method protected onUpdateIccAvailability()V
    .locals 9

    #@0
    .prologue
    const/4 v8, 0x3

    #@1
    const/4 v7, 0x1

    #@2
    const/4 v6, 0x0

    #@3
    .line 2343
    iget-object v4, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    #@5
    if-nez v4, :cond_0

    #@7
    .line 2344
    return-void

    #@8
    .line 2347
    :cond_0
    const/4 v3, 0x0

    #@9
    .line 2350
    .local v3, "newUiccApplication":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    #@c
    move-result v4

    #@d
    if-nez v4, :cond_1

    #@f
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdmaLte()Z

    #@12
    move-result v4

    #@13
    if-eqz v4, :cond_3

    #@15
    .line 2352
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    #@17
    iget v5, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPhoneId:I

    #@19
    invoke-virtual {v4, v5, v8}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@1c
    move-result-object v3

    #@1d
    .line 2353
    .local v3, "newUiccApplication":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    const/4 v1, 0x0

    #@1e
    .line 2355
    .local v1, "newIsimUiccRecords":Lcom/android/internal/telephony/uicc/IsimUiccRecords;
    if-eqz v3, :cond_2

    #@20
    .line 2356
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    #@23
    move-result-object v1

    #@24
    .end local v1    # "newIsimUiccRecords":Lcom/android/internal/telephony/uicc/IsimUiccRecords;
    check-cast v1, Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    #@26
    .line 2357
    .local v1, "newIsimUiccRecords":Lcom/android/internal/telephony/uicc/IsimUiccRecords;
    const-string/jumbo v4, "New ISIM application found"

    #@29
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    #@2c
    .line 2359
    .end local v1    # "newIsimUiccRecords":Lcom/android/internal/telephony/uicc/IsimUiccRecords;
    :cond_2
    iput-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIsimUiccRecords:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    #@2e
    .line 2363
    .end local v3    # "newUiccApplication":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :cond_3
    iget-object v4, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    #@30
    if-eqz v4, :cond_4

    #@32
    .line 2364
    iget-object v4, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    #@34
    invoke-virtual {v4, p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    #@37
    .line 2366
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdmaLte()Z

    #@3a
    move-result v4

    #@3b
    if-eqz v4, :cond_b

    #@3d
    .line 2367
    iget-object v4, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    #@3f
    iget v5, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPhoneId:I

    #@41
    invoke-virtual {v4, v5, v7}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@44
    move-result-object v3

    #@45
    .line 2369
    .restart local v3    # "newUiccApplication":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    const/4 v2, 0x0

    #@46
    .line 2370
    .local v2, "newSimRecords":Lcom/android/internal/telephony/uicc/SIMRecords;
    if-eqz v3, :cond_5

    #@48
    .line 2371
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    #@4b
    move-result-object v2

    #@4c
    .end local v2    # "newSimRecords":Lcom/android/internal/telephony/uicc/SIMRecords;
    check-cast v2, Lcom/android/internal/telephony/uicc/SIMRecords;

    #@4e
    .line 2373
    :cond_5
    iput-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    #@50
    .line 2374
    iget-object v4, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    #@52
    if-eqz v4, :cond_6

    #@54
    .line 2375
    iget-object v4, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    #@56
    invoke-virtual {v4, p0, v8, v6}, Lcom/android/internal/telephony/uicc/SIMRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    #@59
    .line 2382
    .end local v3    # "newUiccApplication":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :cond_6
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getUiccCardApplication()Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@5c
    move-result-object v3

    #@5d
    .line 2383
    .restart local v3    # "newUiccApplication":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    #@60
    move-result v4

    #@61
    if-nez v4, :cond_7

    #@63
    if-nez v3, :cond_7

    #@65
    .line 2384
    const-string/jumbo v4, "can\'t find 3GPP2 application; trying APP_FAM_3GPP"

    #@68
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    #@6b
    .line 2385
    iget-object v4, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    #@6d
    iget v5, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPhoneId:I

    #@6f
    invoke-virtual {v4, v5, v7}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@72
    move-result-object v3

    #@73
    .line 2389
    :cond_7
    iget-object v4, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    #@75
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@78
    move-result-object v0

    #@79
    check-cast v0, Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@7b
    .line 2390
    .local v0, "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eq v0, v3, :cond_a

    #@7d
    .line 2391
    if-eqz v0, :cond_9

    #@7f
    .line 2392
    const-string/jumbo v4, "Removing stale icc objects."

    #@82
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    #@85
    .line 2393
    iget-object v4, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    #@87
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@8a
    move-result-object v4

    #@8b
    if-eqz v4, :cond_8

    #@8d
    .line 2394
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->unregisterForIccRecordEvents()V

    #@90
    .line 2395
    iget-object v4, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccPhoneBookIntManager:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    #@92
    invoke-virtual {v4, v6}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateIccRecords(Lcom/android/internal/telephony/uicc/IccRecords;)V

    #@95
    .line 2397
    :cond_8
    iget-object v4, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    #@97
    invoke-virtual {v4, v6}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    #@9a
    .line 2398
    iget-object v4, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    #@9c
    invoke-virtual {v4, v6}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    #@9f
    .line 2400
    :cond_9
    if-eqz v3, :cond_a

    #@a1
    .line 2402
    new-instance v4, Ljava/lang/StringBuilder;

    #@a3
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@a6
    const-string/jumbo v5, "New Uicc application found. type = "

    #@a9
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ac
    move-result-object v4

    #@ad
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    #@b0
    move-result-object v5

    #@b1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@b4
    move-result-object v4

    #@b5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b8
    move-result-object v4

    #@b9
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    #@bc
    .line 2404
    iget-object v4, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    #@be
    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    #@c1
    .line 2405
    iget-object v4, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    #@c3
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    #@c6
    move-result-object v5

    #@c7
    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    #@ca
    .line 2406
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->registerForIccRecordEvents()V

    #@cd
    .line 2407
    iget-object v5, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccPhoneBookIntManager:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    #@cf
    iget-object v4, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    #@d1
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@d4
    move-result-object v4

    #@d5
    check-cast v4, Lcom/android/internal/telephony/uicc/IccRecords;

    #@d7
    invoke-virtual {v5, v4}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateIccRecords(Lcom/android/internal/telephony/uicc/IccRecords;)V

    #@da
    .line 2342
    :cond_a
    return-void

    #@db
    .line 2378
    .end local v0    # "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .end local v3    # "newUiccApplication":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :cond_b
    iput-object v6, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    #@dd
    goto/16 :goto_0
.end method

.method public prepareEri()V
    .locals 2

    #@0
    .prologue
    .line 2528
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 2529
    const-string/jumbo v0, "GsmCdmaPhone"

    #@7
    const-string/jumbo v1, "PrepareEri: Trying to access stale objects"

    #@a
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    .line 2530
    return-void

    #@e
    .line 2532
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

    #@10
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/EriManager;->loadEriFile()V

    #@13
    .line 2533
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

    #@15
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/EriManager;->isEriFileLoaded()Z

    #@18
    move-result v0

    #@19
    if-eqz v0, :cond_1

    #@1b
    .line 2535
    const-string/jumbo v0, "ERI read, notify registrants"

    #@1e
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    #@21
    .line 2536
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mEriFileLoadedRegistrants:Landroid/os/RegistrantList;

    #@23
    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@26
    .line 2527
    :cond_1
    return-void
.end method

.method public registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1839
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 1838
    return-void
.end method

.method public registerForCdmaOtaStatusChange(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1809
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerForCdmaOtaProvision(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 1808
    return-void
.end method

.method public registerForEcmTimerReset(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 3268
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 3267
    return-void
.end method

.method public registerForEriFileLoaded(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 2517
    new-instance v0, Landroid/os/Registrant;

    #@2
    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 2518
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mEriFileLoadedRegistrants:Landroid/os/RegistrantList;

    #@7
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    #@a
    .line 2516
    return-void
.end method

.method public registerForSimRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 716
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSimRecordsLoadedRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 715
    return-void
.end method

.method public registerForSubscriptionInfoReady(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1819
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForSubscriptionInfoReady(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 1818
    return-void
.end method

.method public registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 704
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSsnRegistrants:Landroid/os/RegistrantList;

    #@3
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    #@6
    .line 705
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSsnRegistrants:Landroid/os/RegistrantList;

    #@8
    invoke-virtual {v0}, Landroid/os/RegistrantList;->size()I

    #@b
    move-result v0

    #@c
    if-ne v0, v2, :cond_0

    #@e
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@10
    const/4 v1, 0x0

    #@11
    invoke-interface {v0, v2, v1}, Lcom/android/internal/telephony/CommandsInterface;->setSuppServiceNotifications(ZLandroid/os/Message;)V

    #@14
    .line 703
    :cond_0
    return-void
.end method

.method public rejectCall()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 736
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->rejectCall()V

    #@5
    .line 735
    return-void
.end method

.method public sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V
    .locals 5
    .param p1, "dtmfString"    # Ljava/lang/String;
    .param p2, "on"    # I
    .param p3, "off"    # I
    .param p4, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1252
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    #@3
    move-result v2

    #@4
    if-eqz v2, :cond_1

    #@6
    .line 1253
    const-string/jumbo v2, "[GsmCdmaPhone] sendBurstDtmf() is a CDMA method"

    #@9
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    #@c
    .line 1251
    :cond_0
    :goto_0
    return-void

    #@d
    .line 1255
    :cond_1
    const/4 v0, 0x1

    #@e
    .line 1256
    .local v0, "check":Z
    const/4 v1, 0x0

    #@f
    .local v1, "itr":I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@12
    move-result v2

    #@13
    if-ge v1, v2, :cond_2

    #@15
    .line 1257
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    #@18
    move-result v2

    #@19
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    #@1c
    move-result v2

    #@1d
    if-nez v2, :cond_3

    #@1f
    .line 1258
    const-string/jumbo v2, "GsmCdmaPhone"

    #@22
    .line 1259
    new-instance v3, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    const-string/jumbo v4, "sendDtmf called with invalid character \'"

    #@2a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v3

    #@2e
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    #@31
    move-result v4

    #@32
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@35
    move-result-object v3

    #@36
    const-string/jumbo v4, "\'"

    #@39
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v3

    #@3d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v3

    #@41
    .line 1258
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@44
    .line 1260
    const/4 v0, 0x0

    #@45
    .line 1264
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    #@47
    iget-object v2, v2, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    #@49
    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    #@4b
    if-ne v2, v3, :cond_0

    #@4d
    if-eqz v0, :cond_0

    #@4f
    .line 1265
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@51
    invoke-interface {v2, p1, p2, p3, p4}, Lcom/android/internal/telephony/CommandsInterface;->sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V

    #@54
    goto :goto_0

    #@55
    .line 1256
    :cond_3
    add-int/lit8 v1, v1, 0x1

    #@57
    goto :goto_1
.end method

.method public sendDtmf(C)V
    .locals 2
    .param p1, "c"    # C

    #@0
    .prologue
    .line 1227
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_1

    #@6
    .line 1228
    new-instance v0, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v1, "sendDtmf called with invalid character \'"

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    const-string/jumbo v1, "\'"

    #@19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v0

    #@21
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    #@24
    .line 1226
    :cond_0
    :goto_0
    return-void

    #@25
    .line 1230
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    #@27
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    #@29
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    #@2b
    if-ne v0, v1, :cond_0

    #@2d
    .line 1231
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2f
    const/4 v1, 0x0

    #@30
    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->sendDtmf(CLandroid/os/Message;)V

    #@33
    goto :goto_0
.end method

.method public sendEmergencyCallStateChange(Z)V
    .locals 3
    .param p1, "callActive"    # Z

    #@0
    .prologue
    .line 641
    iget-boolean v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mBroadcastEmergencyCallStateChanges:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 642
    if-eqz p1, :cond_1

    #@6
    .line 643
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getServiceState()Landroid/telephony/ServiceState;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    #@d
    move-result v1

    #@e
    const/16 v2, 0x12

    #@10
    if-ne v1, v2, :cond_1

    #@12
    .line 646
    const/4 v1, 0x0

    #@13
    iput-boolean v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSendEmergencyCallEnd:Z

    #@15
    .line 647
    const-string/jumbo v1, "GsmCdmaPhone"

    #@18
    const-string/jumbo v2, "sendEmergencyCallStateChange: not sending call start intent as voice tech is IWLAN"

    #@1b
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1e
    .line 640
    :cond_0
    :goto_0
    return-void

    #@1f
    .line 649
    :cond_1
    if-nez p1, :cond_2

    #@21
    iget-boolean v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSendEmergencyCallEnd:Z

    #@23
    if-eqz v1, :cond_3

    #@25
    .line 650
    :cond_2
    new-instance v0, Landroid/content/Intent;

    #@27
    const-string/jumbo v1, "android.intent.action.EMERGENCY_CALL_STATE_CHANGED"

    #@2a
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@2d
    .line 651
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "phoneInEmergencyCall"

    #@30
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    #@33
    .line 652
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    #@36
    move-result v1

    #@37
    invoke-static {v0, v1}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    #@3a
    .line 653
    const/4 v1, 0x0

    #@3b
    const/4 v2, -0x1

    #@3c
    invoke-static {v0, v1, v2}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    #@3f
    .line 654
    const-string/jumbo v1, "GsmCdmaPhone"

    #@42
    const-string/jumbo v2, "sendEmergencyCallStateChange"

    #@45
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@48
    goto :goto_0

    #@49
    .line 656
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_3
    const-string/jumbo v1, "GsmCdmaPhone"

    #@4c
    const-string/jumbo v2, "sendEmergencyCallStateChange: not sending call end intent as start was not sent"

    #@4f
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@52
    .line 658
    const/4 v1, 0x1

    #@53
    iput-boolean v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSendEmergencyCallEnd:Z

    #@55
    goto :goto_0
.end method

.method public sendUssdResponse(Ljava/lang/String;)V
    .locals 4
    .param p1, "ussdMessge"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1215
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 1216
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    #@9
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@c
    move-result-object v1

    #@d
    check-cast v1, Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@f
    invoke-static {p1, p0, v1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->newFromUssdUserInput(Ljava/lang/String;Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)Lcom/android/internal/telephony/gsm/GsmMmiCode;

    #@12
    move-result-object v0

    #@13
    .line 1217
    .local v0, "mmi":Lcom/android/internal/telephony/gsm/GsmMmiCode;
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPendingMMIs:Ljava/util/ArrayList;

    #@15
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@18
    .line 1218
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mMmiRegistrants:Landroid/os/RegistrantList;

    #@1a
    new-instance v2, Landroid/os/AsyncResult;

    #@1c
    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@1f
    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    #@22
    .line 1219
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sendUssd(Ljava/lang/String;)V

    #@25
    .line 1214
    .end local v0    # "mmi":Lcom/android/internal/telephony/gsm/GsmMmiCode;
    :goto_0
    return-void

    #@26
    .line 1221
    :cond_0
    const-string/jumbo v1, "sendUssdResponse: not possible in CDMA"

    #@29
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    #@2c
    goto :goto_0
.end method

.method public setBroadcastEmergencyCallStateChanges(Z)V
    .locals 0
    .param p1, "broadcast"    # Z

    #@0
    .prologue
    .line 665
    iput-boolean p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mBroadcastEmergencyCallStateChanges:Z

    #@2
    .line 664
    return-void
.end method

.method public setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V
    .locals 9
    .param p1, "commandInterfaceCFAction"    # I
    .param p2, "commandInterfaceCFReason"    # I
    .param p3, "dialingNumber"    # Ljava/lang/String;
    .param p4, "timerSeconds"    # I
    .param p5, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 1626
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_5

    #@8
    .line 1627
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    #@a
    .line 1628
    .local v0, "imsPhone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_1

    #@c
    .line 1629
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    #@13
    move-result v1

    #@14
    if-eqz v1, :cond_0

    #@16
    .line 1630
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isUtEnabled()Z

    #@19
    move-result v1

    #@1a
    .line 1628
    if-eqz v1, :cond_1

    #@1c
    :cond_0
    move v1, p1

    #@1d
    move v2, p2

    #@1e
    move-object v3, p3

    #@1f
    move v4, p4

    #@20
    move-object v5, p5

    #@21
    .line 1631
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    #@24
    .line 1633
    return-void

    #@25
    .line 1636
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->isValidCommandInterfaceCFAction(I)Z

    #@28
    move-result v1

    #@29
    if-eqz v1, :cond_2

    #@2b
    .line 1637
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/GsmCdmaPhone;->isValidCommandInterfaceCFReason(I)Z

    #@2e
    move-result v1

    #@2f
    .line 1636
    if-eqz v1, :cond_2

    #@31
    .line 1640
    if-nez p2, :cond_4

    #@33
    .line 1641
    new-instance v8, Lcom/android/internal/telephony/GsmCdmaPhone$Cfu;

    #@35
    invoke-direct {v8, p3, p5}, Lcom/android/internal/telephony/GsmCdmaPhone$Cfu;-><init>(Ljava/lang/String;Landroid/os/Message;)V

    #@38
    .line 1643
    .local v8, "cfu":Lcom/android/internal/telephony/GsmCdmaPhone$Cfu;
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->isCfEnable(I)Z

    #@3b
    move-result v1

    #@3c
    if-eqz v1, :cond_3

    #@3e
    move v1, v4

    #@3f
    .line 1642
    :goto_0
    const/16 v3, 0xc

    #@41
    invoke-virtual {p0, v3, v1, v2, v8}, Lcom/android/internal/telephony/GsmCdmaPhone;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@44
    move-result-object v7

    #@45
    .line 1647
    .end local v8    # "cfu":Lcom/android/internal/telephony/GsmCdmaPhone$Cfu;
    .local v7, "resp":Landroid/os/Message;
    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@47
    move v2, p1

    #@48
    move v3, p2

    #@49
    move-object v5, p3

    #@4a
    move v6, p4

    #@4b
    invoke-interface/range {v1 .. v7}, Lcom/android/internal/telephony/CommandsInterface;->setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V

    #@4e
    .line 1625
    .end local v0    # "imsPhone":Lcom/android/internal/telephony/Phone;
    .end local v7    # "resp":Landroid/os/Message;
    :cond_2
    :goto_2
    return-void

    #@4f
    .restart local v0    # "imsPhone":Lcom/android/internal/telephony/Phone;
    .restart local v8    # "cfu":Lcom/android/internal/telephony/GsmCdmaPhone$Cfu;
    :cond_3
    move v1, v2

    #@50
    .line 1643
    goto :goto_0

    #@51
    .line 1645
    .end local v8    # "cfu":Lcom/android/internal/telephony/GsmCdmaPhone$Cfu;
    :cond_4
    move-object v7, p5

    #@52
    .restart local v7    # "resp":Landroid/os/Message;
    goto :goto_1

    #@53
    .line 1655
    .end local v0    # "imsPhone":Lcom/android/internal/telephony/Phone;
    .end local v7    # "resp":Landroid/os/Message;
    :cond_5
    const-string/jumbo v1, "setCallForwardingOption: not possible in CDMA"

    #@56
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    #@59
    goto :goto_2
.end method

.method public setCallWaiting(ZLandroid/os/Message;)V
    .locals 3
    .param p1, "enable"    # Z
    .param p2, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1714
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_2

    #@6
    .line 1715
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    #@8
    .line 1716
    .local v0, "imsPhone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_1

    #@a
    .line 1717
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    #@11
    move-result v1

    #@12
    if-eqz v1, :cond_0

    #@14
    .line 1718
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isUtEnabled()Z

    #@17
    move-result v1

    #@18
    .line 1716
    if-eqz v1, :cond_1

    #@1a
    .line 1719
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setCallWaiting(ZLandroid/os/Message;)V

    #@1d
    .line 1720
    return-void

    #@1e
    .line 1723
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@20
    const/4 v2, 0x1

    #@21
    invoke-interface {v1, p1, v2, p2}, Lcom/android/internal/telephony/CommandsInterface;->setCallWaiting(ZILandroid/os/Message;)V

    #@24
    .line 1713
    .end local v0    # "imsPhone":Lcom/android/internal/telephony/Phone;
    :goto_0
    return-void

    #@25
    .line 1725
    :cond_2
    const-string/jumbo v1, "method setCallWaiting is NOT supported in CDMA!"

    #@28
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    #@2b
    goto :goto_0
.end method

.method public setCellBroadcastSmsConfig([ILandroid/os/Message;)V
    .locals 1
    .param p1, "configValuesArray"    # [I
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 2576
    const-string/jumbo v0, "[GsmCdmaPhone] setCellBroadcastSmsConfig() is obsolete; use SmsManager"

    #@3
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    #@6
    .line 2577
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    #@9
    .line 2575
    return-void
.end method

.method public setDataEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    #@0
    .prologue
    .line 1854
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setDataEnabled(Z)V

    #@5
    .line 1853
    return-void
.end method

.method public setDataRoamingEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    #@0
    .prologue
    .line 1804
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setDataOnRoamingEnabled(Z)V

    #@5
    .line 1803
    return-void
.end method

.method public setImsRegistrationState(Z)V
    .locals 1
    .param p1, "registered"    # Z

    #@0
    .prologue
    .line 3136
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->setImsRegistrationState(Z)V

    #@5
    .line 3135
    return-void
.end method

.method protected setIsInEmergencyCall()V
    .locals 1

    #@0
    .prologue
    .line 615
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 616
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    #@8
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->setIsInEmergencyCall()V

    #@b
    .line 614
    :cond_0
    return-void
.end method

.method public setLine1Number(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z
    .locals 3
    .param p1, "alphaTag"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1527
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_1

    #@7
    .line 1528
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    #@9
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    #@f
    .line 1529
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    #@11
    .line 1530
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccRecords;->setMsisdnNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    #@14
    .line 1531
    const/4 v1, 0x1

    #@15
    return v1

    #@16
    .line 1533
    :cond_0
    return v2

    #@17
    .line 1536
    .end local v0    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_1
    const-string/jumbo v1, "setLine1Number: not possible in CDMA"

    #@1a
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    #@1d
    .line 1537
    return v2
.end method

.method public setMute(Z)V
    .locals 1
    .param p1, "muted"    # Z

    #@0
    .prologue
    .line 1769
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->setMute(Z)V

    #@5
    .line 1768
    return-void
.end method

.method public setOnEcbModeExitResponse(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1829
    new-instance v0, Landroid/os/Registrant;

    #@2
    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mEcmExitRespRegistrant:Landroid/os/Registrant;

    #@7
    .line 1828
    return-void
.end method

.method public setOperatorBrandOverride(Ljava/lang/String;)Z
    .locals 6
    .param p1, "brand"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 3190
    iget-object v3, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    #@3
    if-nez v3, :cond_0

    #@5
    .line 3191
    return v5

    #@6
    .line 3194
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    #@8
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    #@b
    move-result v4

    #@c
    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    #@f
    move-result-object v0

    #@10
    .line 3195
    .local v0, "card":Lcom/android/internal/telephony/uicc/UiccCard;
    if-nez v0, :cond_1

    #@12
    .line 3196
    return v5

    #@13
    .line 3199
    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/UiccCard;->setOperatorBrandOverride(Ljava/lang/String;)Z

    #@16
    move-result v2

    #@17
    .line 3202
    .local v2, "status":Z
    if-eqz v2, :cond_3

    #@19
    .line 3203
    iget-object v3, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    #@1b
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@1e
    move-result-object v1

    #@1f
    check-cast v1, Lcom/android/internal/telephony/uicc/IccRecords;

    #@21
    .line 3204
    .local v1, "iccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v1, :cond_2

    #@23
    .line 3205
    iget-object v3, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mContext:Landroid/content/Context;

    #@25
    invoke-static {v3}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    #@28
    move-result-object v3

    #@29
    .line 3206
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    #@2c
    move-result v4

    #@2d
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccRecords;->getServiceProviderName()Ljava/lang/String;

    #@30
    move-result-object v5

    #@31
    .line 3205
    invoke-virtual {v3, v4, v5}, Landroid/telephony/TelephonyManager;->setSimOperatorNameForPhone(ILjava/lang/String;)V

    #@34
    .line 3208
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    #@36
    if-eqz v3, :cond_3

    #@38
    .line 3209
    iget-object v3, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    #@3a
    invoke-virtual {v3}, Lcom/android/internal/telephony/ServiceStateTracker;->pollState()V

    #@3d
    .line 3212
    .end local v1    # "iccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_3
    return v2
.end method

.method public setOutgoingCallerIdDisplay(ILandroid/os/Message;)V
    .locals 4
    .param p1, "commandInterfaceCLIRMode"    # I
    .param p2, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1676
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_1

    #@7
    .line 1677
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    #@9
    .line 1678
    .local v0, "imsPhone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_0

    #@b
    .line 1679
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    #@12
    move-result v1

    #@13
    if-nez v1, :cond_0

    #@15
    .line 1680
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setOutgoingCallerIdDisplay(ILandroid/os/Message;)V

    #@18
    .line 1681
    return-void

    #@19
    .line 1686
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@1b
    .line 1687
    const/16 v2, 0x12

    #@1d
    invoke-virtual {p0, v2, p1, v3, p2}, Lcom/android/internal/telephony/GsmCdmaPhone;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@20
    move-result-object v2

    #@21
    .line 1686
    invoke-interface {v1, p1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setCLIR(ILandroid/os/Message;)V

    #@24
    .line 1675
    .end local v0    # "imsPhone":Lcom/android/internal/telephony/Phone;
    :goto_0
    return-void

    #@25
    .line 1689
    :cond_1
    const-string/jumbo v1, "setOutgoingCallerIdDisplay: not possible in CDMA"

    #@28
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    #@2b
    goto :goto_0
.end method

.method public setRadioPower(Z)V
    .locals 1
    .param p1, "power"    # Z

    #@0
    .prologue
    .line 1272
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->setRadioPower(Z)V

    #@5
    .line 1271
    return-void
.end method

.method public setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 691
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getUnitTestMode()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 692
    return-void

    #@7
    .line 694
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    #@a
    move-result v0

    #@b
    if-nez v0, :cond_1

    #@d
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdmaLte()Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_2

    #@13
    .line 695
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPhoneId:I

    #@15
    invoke-static {v0, p1, p2}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    #@18
    .line 690
    :goto_0
    return-void

    #@19
    .line 697
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/Phone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    #@1c
    goto :goto_0
.end method

.method public setUiTTYMode(ILandroid/os/Message;)V
    .locals 1
    .param p1, "uiTtyMode"    # I
    .param p2, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1762
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1763
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    #@6
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setUiTTYMode(ILandroid/os/Message;)V

    #@9
    .line 1761
    :cond_0
    return-void
.end method

.method public setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 4
    .param p1, "alphaTag"    # Ljava/lang/String;
    .param p2, "voiceMailNumber"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1544
    iput-object p2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mVmNumber:Ljava/lang/String;

    #@3
    .line 1545
    const/16 v2, 0x14

    #@5
    invoke-virtual {p0, v2, v3, v3, p3}, Lcom/android/internal/telephony/GsmCdmaPhone;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@8
    move-result-object v1

    #@9
    .line 1546
    .local v1, "resp":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    #@b
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    #@11
    .line 1547
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    #@13
    .line 1548
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mVmNumber:Ljava/lang/String;

    #@15
    invoke-virtual {v0, p1, v2, v1}, Lcom/android/internal/telephony/uicc/IccRecords;->setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    #@18
    .line 1542
    :cond_0
    return-void
.end method

.method public setVoiceMessageWaiting(II)V
    .locals 2
    .param p1, "line"    # I
    .param p2, "countWaiting"    # I

    #@0
    .prologue
    .line 3285
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_1

    #@6
    .line 3286
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    #@8
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    #@e
    .line 3287
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    #@10
    .line 3288
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/uicc/IccRecords;->setVoiceMessageWaiting(II)V

    #@13
    .line 3284
    .end local v0    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    :goto_0
    return-void

    #@14
    .line 3290
    .restart local v0    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_0
    const-string/jumbo v1, "SIM Records not found, MWI not updated"

    #@17
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    #@1a
    goto :goto_0

    #@1b
    .line 3293
    .end local v0    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/GsmCdmaPhone;->setVoiceMessageCount(I)V

    #@1e
    goto :goto_0
.end method

.method public startDtmf(C)V
    .locals 2
    .param p1, "c"    # C

    #@0
    .prologue
    .line 1238
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 1239
    new-instance v0, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v1, "startDtmf called with invalid character \'"

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    const-string/jumbo v1, "\'"

    #@19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v0

    #@21
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    #@24
    .line 1237
    :goto_0
    return-void

    #@25
    .line 1241
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@27
    const/4 v1, 0x0

    #@28
    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->startDtmf(CLandroid/os/Message;)V

    #@2b
    goto :goto_0
.end method

.method public stopDtmf()V
    .locals 2

    #@0
    .prologue
    .line 1247
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->stopDtmf(Landroid/os/Message;)V

    #@6
    .line 1246
    return-void
.end method

.method public switchHoldingAndActive()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 741
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->switchWaitingOrHoldingAndActive()V

    #@5
    .line 740
    return-void
.end method

.method public unregisterForCallWaiting(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 1844
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->unregisterForCallWaiting(Landroid/os/Handler;)V

    #@5
    .line 1843
    return-void
.end method

.method public unregisterForCdmaOtaStatusChange(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 1814
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCdmaOtaProvision(Landroid/os/Handler;)V

    #@5
    .line 1813
    return-void
.end method

.method public unregisterForEcmTimerReset(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 3273
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 3272
    return-void
.end method

.method public unregisterForEriFileLoaded(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 2523
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mEriFileLoadedRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 2522
    return-void
.end method

.method public unregisterForSimRecordsLoaded(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 721
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSimRecordsLoadedRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 720
    return-void
.end method

.method public unregisterForSubscriptionInfoReady(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 1824
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForSubscriptionInfoReady(Landroid/os/Handler;)V

    #@5
    .line 1823
    return-void
.end method

.method public unregisterForSuppServiceNotification(Landroid/os/Handler;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 710
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSsnRegistrants:Landroid/os/RegistrantList;

    #@3
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@6
    .line 711
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSsnRegistrants:Landroid/os/RegistrantList;

    #@8
    invoke-virtual {v0}, Landroid/os/RegistrantList;->size()I

    #@b
    move-result v0

    #@c
    if-nez v0, :cond_0

    #@e
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@10
    const/4 v1, 0x0

    #@11
    invoke-interface {v0, v2, v1}, Lcom/android/internal/telephony/CommandsInterface;->setSuppServiceNotifications(ZLandroid/os/Message;)V

    #@14
    .line 709
    :cond_0
    return-void
.end method

.method public unsetOnEcbModeExitResponse(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 1834
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mEcmExitRespRegistrant:Landroid/os/Registrant;

    #@2
    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    #@5
    .line 1833
    return-void
.end method

.method public updateCurrentCarrierInProvider()Z
    .locals 9

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    .line 2427
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    #@4
    move-result v6

    #@5
    if-nez v6, :cond_0

    #@7
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdmaLte()Z

    #@a
    move-result v6

    #@b
    if-eqz v6, :cond_2

    #@d
    .line 2428
    :cond_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    #@10
    move-result v6

    #@11
    int-to-long v0, v6

    #@12
    .line 2429
    .local v0, "currentDds":J
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getOperatorNumeric()Ljava/lang/String;

    #@15
    move-result-object v4

    #@16
    .line 2431
    .local v4, "operatorNumeric":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v7, "updateCurrentCarrierInProvider: mSubId = "

    #@1e
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v6

    #@22
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    #@25
    move-result v7

    #@26
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@29
    move-result-object v6

    #@2a
    .line 2432
    const-string/jumbo v7, " currentDds = "

    #@2d
    .line 2431
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v6

    #@31
    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@34
    move-result-object v6

    #@35
    .line 2432
    const-string/jumbo v7, " operatorNumeric = "

    #@38
    .line 2431
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v6

    #@3c
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v6

    #@40
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v6

    #@44
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    #@47
    .line 2434
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@4a
    move-result v6

    #@4b
    if-nez v6, :cond_1

    #@4d
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    #@50
    move-result v6

    #@51
    int-to-long v6, v6

    #@52
    cmp-long v6, v6, v0

    #@54
    if-nez v6, :cond_1

    #@56
    .line 2436
    :try_start_0
    sget-object v6, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    #@58
    const-string/jumbo v7, "current"

    #@5b
    invoke-static {v6, v7}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    #@5e
    move-result-object v5

    #@5f
    .line 2437
    .local v5, "uri":Landroid/net/Uri;
    new-instance v3, Landroid/content/ContentValues;

    #@61
    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    #@64
    .line 2438
    .local v3, "map":Landroid/content/ContentValues;
    const-string/jumbo v6, "numeric"

    #@67
    invoke-virtual {v3, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@6a
    .line 2439
    iget-object v6, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mContext:Landroid/content/Context;

    #@6c
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@6f
    move-result-object v6

    #@70
    invoke-virtual {v6, v5, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    #@73
    .line 2440
    return v8

    #@74
    .line 2441
    .end local v3    # "map":Landroid/content/ContentValues;
    .end local v5    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v2

    #@75
    .line 2442
    .local v2, "e":Landroid/database/SQLException;
    const-string/jumbo v6, "GsmCdmaPhone"

    #@78
    const-string/jumbo v7, "Can\'t store current operator"

    #@7b
    invoke-static {v6, v7, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@7e
    .line 2445
    .end local v2    # "e":Landroid/database/SQLException;
    :cond_1
    const/4 v6, 0x0

    #@7f
    return v6

    #@80
    .line 2447
    .end local v0    # "currentDds":J
    .end local v4    # "operatorNumeric":Ljava/lang/String;
    :cond_2
    return v8
.end method

.method public updatePhoneObject(I)V
    .locals 3
    .param p1, "voiceRadioTech"    # I

    #@0
    .prologue
    .line 3130
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "updatePhoneObject: radioTechnology="

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
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    #@17
    .line 3131
    const/16 v0, 0x2a

    #@19
    const/4 v1, 0x0

    #@1a
    const/4 v2, 0x0

    #@1b
    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@1e
    move-result-object v0

    #@1f
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->sendMessage(Landroid/os/Message;)Z

    #@22
    .line 3129
    return-void
.end method

.method public updateServiceLocation()V
    .locals 1

    #@0
    .prologue
    .line 1784
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->enableSingleLocationUpdate()V

    #@5
    .line 1783
    return-void
.end method

.method public updateVoiceMail()V
    .locals 5

    #@0
    .prologue
    .line 468
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    #@3
    move-result v3

    #@4
    if-eqz v3, :cond_2

    #@6
    .line 469
    const/4 v0, 0x0

    #@7
    .line 470
    .local v0, "countVoiceMessages":I
    iget-object v3, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    #@9
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@c
    move-result-object v2

    #@d
    check-cast v2, Lcom/android/internal/telephony/uicc/IccRecords;

    #@f
    .line 471
    .local v2, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v2, :cond_0

    #@11
    .line 473
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/IccRecords;->getVoiceMessageCount()I

    #@14
    move-result v0

    #@15
    .line 475
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getStoredVoiceMessageCount()I

    #@18
    move-result v1

    #@19
    .line 476
    .local v1, "countVoiceMessagesStored":I
    const/4 v3, -0x1

    #@1a
    if-ne v0, v3, :cond_1

    #@1c
    if-eqz v1, :cond_1

    #@1e
    .line 477
    move v0, v1

    #@1f
    .line 479
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string/jumbo v4, "updateVoiceMail countVoiceMessages = "

    #@27
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v3

    #@2b
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v3

    #@2f
    .line 480
    const-string/jumbo v4, " subId "

    #@32
    .line 479
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v3

    #@36
    .line 480
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    #@39
    move-result v4

    #@3a
    .line 479
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v3

    #@3e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v3

    #@42
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    #@45
    .line 481
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->setVoiceMessageCount(I)V

    #@48
    .line 467
    .end local v0    # "countVoiceMessages":I
    .end local v1    # "countVoiceMessagesStored":I
    .end local v2    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    :goto_0
    return-void

    #@49
    .line 483
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getStoredVoiceMessageCount()I

    #@4c
    move-result v3

    #@4d
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->setVoiceMessageCount(I)V

    #@50
    goto :goto_0
.end method
