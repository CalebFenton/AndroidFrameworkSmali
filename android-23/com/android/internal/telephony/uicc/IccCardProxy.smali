.class public Lcom/android/internal/telephony/uicc/IccCardProxy;
.super Landroid/os/Handler;
.source "IccCardProxy.java"

# interfaces
.implements Lcom/android/internal/telephony/IccCard;


# static fields
.field private static synthetic -com_android_internal_telephony_IccCardConstants$StateSwitchesValues:[I = null

.field private static synthetic -com_android_internal_telephony_uicc_IccCardApplicationStatus$AppStateSwitchesValues:[I = null

.field public static final ACTION_INTERNAL_SIM_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.internal_sim_state_changed"

.field private static final DBG:Z = true

.field private static final EVENT_APP_READY:I = 0x6

.field private static final EVENT_CARRIER_PRIVILIGES_LOADED:I = 0x1f7

.field private static final EVENT_CDMA_SUBSCRIPTION_SOURCE_CHANGED:I = 0xb

.field private static final EVENT_ICC_ABSENT:I = 0x4

.field private static final EVENT_ICC_CHANGED:I = 0x3

.field private static final EVENT_ICC_LOCKED:I = 0x5

.field private static final EVENT_ICC_RECORD_EVENTS:I = 0x1f4

.field private static final EVENT_IMSI_READY:I = 0x8

.field private static final EVENT_NETWORK_LOCKED:I = 0x9

.field private static final EVENT_RADIO_OFF_OR_UNAVAILABLE:I = 0x1

.field private static final EVENT_RADIO_ON:I = 0x2

.field private static final EVENT_RECORDS_LOADED:I = 0x7

.field private static final EVENT_SUBSCRIPTION_ACTIVATED:I = 0x1f5

.field private static final EVENT_SUBSCRIPTION_DEACTIVATED:I = 0x1f6

.field private static final LOG_TAG:Ljava/lang/String; = "IccCardProxy"


# instance fields
.field private mAbsentRegistrants:Landroid/os/RegistrantList;

.field private mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

.field private mCi:Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field private mCurrentAppType:I

.field private mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

.field private mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

.field private mInitialized:Z

.field private final mLock:Ljava/lang/Object;

.field private mNetworkLockedRegistrants:Landroid/os/RegistrantList;

.field private mPhoneId:Ljava/lang/Integer;

.field private mPinLockedRegistrants:Landroid/os/RegistrantList;

.field private mQuietMode:Z

.field private mRadioOn:Z

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

.field private mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

.field private mUiccController:Lcom/android/internal/telephony/uicc/UiccController;


# direct methods
.method private static synthetic -getcom_android_internal_telephony_IccCardConstants$StateSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->-com_android_internal_telephony_IccCardConstants$StateSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->-com_android_internal_telephony_IccCardConstants$StateSwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/IccCardConstants$State;->values()[Lcom/android/internal/telephony/IccCardConstants$State;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    #@10
    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    #@13
    move-result v1

    #@14
    const/4 v2, 0x1

    #@15
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_8

    #@17
    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->CARD_IO_ERROR:Lcom/android/internal/telephony/IccCardConstants$State;

    #@19
    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    #@1c
    move-result v1

    #@1d
    const/4 v2, 0x2

    #@1e
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_7

    #@20
    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    #@22
    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    #@25
    move-result v1

    #@26
    const/4 v2, 0x3

    #@27
    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_6

    #@29
    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

    #@2b
    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    #@2e
    move-result v1

    #@2f
    const/4 v2, 0x4

    #@30
    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_5

    #@32
    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    #@34
    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    #@37
    move-result v1

    #@38
    const/4 v2, 0x5

    #@39
    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    #@3b
    :goto_4
    :try_start_5
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    #@3d
    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    #@40
    move-result v1

    #@41
    const/4 v2, 0x6

    #@42
    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_3

    #@44
    :goto_5
    :try_start_6
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    #@46
    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    #@49
    move-result v1

    #@4a
    const/4 v2, 0x7

    #@4b
    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_2

    #@4d
    :goto_6
    :try_start_7
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    #@4f
    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    #@52
    move-result v1

    #@53
    const/16 v2, 0x8

    #@55
    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_1

    #@57
    :goto_7
    :try_start_8
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    #@59
    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    #@5c
    move-result v1

    #@5d
    const/16 v2, 0xf

    #@5f
    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_0

    #@61
    :goto_8
    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->-com_android_internal_telephony_IccCardConstants$StateSwitchesValues:[I

    #@63
    return-object v0

    #@64
    :catch_0
    move-exception v1

    #@65
    goto :goto_8

    #@66
    :catch_1
    move-exception v1

    #@67
    goto :goto_7

    #@68
    :catch_2
    move-exception v1

    #@69
    goto :goto_6

    #@6a
    :catch_3
    move-exception v1

    #@6b
    goto :goto_5

    #@6c
    :catch_4
    move-exception v1

    #@6d
    goto :goto_4

    #@6e
    :catch_5
    move-exception v1

    #@6f
    goto :goto_3

    #@70
    :catch_6
    move-exception v1

    #@71
    goto :goto_2

    #@72
    :catch_7
    move-exception v1

    #@73
    goto :goto_1

    #@74
    :catch_8
    move-exception v1

    #@75
    goto :goto_0
.end method

.method private static synthetic -getcom_android_internal_telephony_uicc_IccCardApplicationStatus$AppStateSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->-com_android_internal_telephony_uicc_IccCardApplicationStatus$AppStateSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->-com_android_internal_telephony_uicc_IccCardApplicationStatus$AppStateSwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->values()[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_DETECTED:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    #@10
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->ordinal()I

    #@13
    move-result v1

    #@14
    const/4 v2, 0x1

    #@15
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    #@17
    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_PIN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    #@19
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->ordinal()I

    #@1c
    move-result v1

    #@1d
    const/4 v2, 0x2

    #@1e
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    #@20
    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    #@22
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->ordinal()I

    #@25
    move-result v1

    #@26
    const/4 v2, 0x3

    #@27
    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    #@29
    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    #@2b
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->ordinal()I

    #@2e
    move-result v1

    #@2f
    const/4 v2, 0x4

    #@30
    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    #@32
    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_SUBSCRIPTION_PERSO:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    #@34
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->ordinal()I

    #@37
    move-result v1

    #@38
    const/4 v2, 0x5

    #@39
    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    #@3b
    :goto_4
    :try_start_5
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    #@3d
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->ordinal()I

    #@40
    move-result v1

    #@41
    const/4 v2, 0x6

    #@42
    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    #@44
    :goto_5
    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->-com_android_internal_telephony_uicc_IccCardApplicationStatus$AppStateSwitchesValues:[I

    #@46
    return-object v0

    #@47
    :catch_0
    move-exception v1

    #@48
    goto :goto_5

    #@49
    :catch_1
    move-exception v1

    #@4a
    goto :goto_4

    #@4b
    :catch_2
    move-exception v1

    #@4c
    goto :goto_3

    #@4d
    :catch_3
    move-exception v1

    #@4e
    goto :goto_2

    #@4f
    :catch_4
    move-exception v1

    #@50
    goto :goto_1

    #@51
    :catch_5
    move-exception v1

    #@52
    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p3, "phoneId"    # I

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    const/4 v2, 0x0

    #@3
    .line 119
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #@6
    .line 94
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhoneId:Ljava/lang/Integer;

    #@8
    .line 96
    new-instance v0, Ljava/lang/Object;

    #@a
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@d
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    #@f
    .line 101
    new-instance v0, Landroid/os/RegistrantList;

    #@11
    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    #@14
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mAbsentRegistrants:Landroid/os/RegistrantList;

    #@16
    .line 102
    new-instance v0, Landroid/os/RegistrantList;

    #@18
    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    #@1b
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    #@1d
    .line 103
    new-instance v0, Landroid/os/RegistrantList;

    #@1f
    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    #@22
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;

    #@24
    .line 105
    iput v4, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCurrentAppType:I

    #@26
    .line 106
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    #@28
    .line 107
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    #@2a
    .line 108
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@2c
    .line 109
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@2e
    .line 110
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    #@30
    .line 111
    iput-boolean v3, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mRadioOn:Z

    #@32
    .line 112
    iput-boolean v3, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mQuietMode:Z

    #@34
    .line 114
    iput-boolean v3, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mInitialized:Z

    #@36
    .line 115
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    #@38
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    #@3a
    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    #@3c
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@3f
    const-string/jumbo v1, "ctor: ci="

    #@42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v0

    #@46
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v0

    #@4a
    const-string/jumbo v1, " phoneId="

    #@4d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v0

    #@51
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@54
    move-result-object v0

    #@55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@58
    move-result-object v0

    #@59
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    #@5c
    .line 121
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mContext:Landroid/content/Context;

    #@5e
    .line 122
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@60
    .line 123
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@63
    move-result-object v0

    #@64
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhoneId:Ljava/lang/Integer;

    #@66
    .line 124
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mContext:Landroid/content/Context;

    #@68
    .line 125
    const-string/jumbo v1, "phone"

    #@6b
    .line 124
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@6e
    move-result-object v0

    #@6f
    check-cast v0, Landroid/telephony/TelephonyManager;

    #@71
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    #@73
    .line 127
    const/16 v0, 0xb

    #@75
    .line 126
    invoke-static {p1, p2, p0, v0, v2}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getInstance(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Landroid/os/Handler;ILjava/lang/Object;)Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    #@78
    move-result-object v0

    #@79
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    #@7b
    .line 128
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    #@7e
    move-result-object v0

    #@7f
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    #@81
    .line 129
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    #@83
    const/4 v1, 0x3

    #@84
    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    #@87
    .line 130
    const/4 v0, 0x2

    #@88
    invoke-interface {p2, p0, v0, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    #@8b
    .line 131
    invoke-interface {p2, p0, v4, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    #@8e
    .line 133
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->resetProperties()V

    #@91
    .line 134
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

    #@93
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;Z)V

    #@96
    .line 119
    return-void
.end method

.method private HandleDetectedState()V
    .locals 0

    #@0
    .prologue
    .line 378
    return-void
.end method

.method private broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 469
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 470
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhoneId:Ljava/lang/Integer;

    #@5
    if-eqz v1, :cond_0

    #@7
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhoneId:Ljava/lang/Integer;

    #@9
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@c
    move-result v1

    #@d
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSlotId(I)Z

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_0

    #@13
    .line 476
    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mQuietMode:Z

    #@15
    if-eqz v1, :cond_1

    #@17
    .line 477
    new-instance v1, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v3, "broadcastIccStateChangedIntent: QuietMode NOT Broadcasting intent ACTION_SIM_STATE_CHANGED  value="

    #@1f
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    .line 479
    const-string/jumbo v3, " reason="

    #@2a
    .line 477
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v1

    #@32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v1

    #@36
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@39
    monitor-exit v2

    #@3a
    .line 480
    return-void

    #@3b
    .line 471
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    #@3d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@40
    const-string/jumbo v3, "broadcastIccStateChangedIntent: mPhoneId="

    #@43
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v1

    #@47
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhoneId:Ljava/lang/Integer;

    #@49
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v1

    #@4d
    .line 472
    const-string/jumbo v3, " is invalid; Return!!"

    #@50
    .line 471
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v1

    #@54
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57
    move-result-object v1

    #@58
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->loge(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@5b
    monitor-exit v2

    #@5c
    .line 473
    return-void

    #@5d
    .line 483
    :cond_1
    :try_start_2
    new-instance v0, Landroid/content/Intent;

    #@5f
    const-string/jumbo v1, "android.intent.action.SIM_STATE_CHANGED"

    #@62
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@65
    .line 488
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    #@67
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@6a
    .line 489
    const-string/jumbo v1, "phoneName"

    #@6d
    const-string/jumbo v3, "Phone"

    #@70
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@73
    .line 490
    const-string/jumbo v1, "ss"

    #@76
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@79
    .line 491
    const-string/jumbo v1, "reason"

    #@7c
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@7f
    .line 492
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhoneId:Ljava/lang/Integer;

    #@81
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@84
    move-result v1

    #@85
    invoke-static {v0, v1}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    #@88
    .line 493
    new-instance v1, Ljava/lang/StringBuilder;

    #@8a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8d
    const-string/jumbo v3, "broadcastIccStateChangedIntent intent ACTION_SIM_STATE_CHANGED value="

    #@90
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@93
    move-result-object v1

    #@94
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@97
    move-result-object v1

    #@98
    .line 494
    const-string/jumbo v3, " reason="

    #@9b
    .line 493
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9e
    move-result-object v1

    #@9f
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a2
    move-result-object v1

    #@a3
    .line 494
    const-string/jumbo v3, " for mPhoneId="

    #@a6
    .line 493
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a9
    move-result-object v1

    #@aa
    .line 494
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhoneId:Ljava/lang/Integer;

    #@ac
    .line 493
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@af
    move-result-object v1

    #@b0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b3
    move-result-object v1

    #@b4
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    #@b7
    .line 495
    const-string/jumbo v1, "android.permission.READ_PHONE_STATE"

    #@ba
    .line 496
    const/4 v3, -0x1

    #@bb
    .line 495
    invoke-static {v0, v1, v3}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@be
    monitor-exit v2

    #@bf
    .line 468
    return-void

    #@c0
    .line 469
    .end local v0    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v1

    #@c1
    monitor-exit v2

    #@c2
    throw v1
.end method

.method private broadcastInternalIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 501
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 502
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhoneId:Ljava/lang/Integer;

    #@5
    if-nez v1, :cond_0

    #@7
    .line 503
    const-string/jumbo v1, "broadcastInternalIccStateChangedIntent: Card Index is not set; Return!!"

    #@a
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->loge(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    monitor-exit v2

    #@e
    .line 504
    return-void

    #@f
    .line 507
    :cond_0
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    #@11
    const-string/jumbo v1, "android.intent.action.internal_sim_state_changed"

    #@14
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@17
    .line 508
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x24000000

    #@19
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@1c
    .line 510
    const-string/jumbo v1, "phoneName"

    #@1f
    const-string/jumbo v3, "Phone"

    #@22
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@25
    .line 511
    const-string/jumbo v1, "ss"

    #@28
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@2b
    .line 512
    const-string/jumbo v1, "reason"

    #@2e
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@31
    .line 513
    const-string/jumbo v1, "phone"

    #@34
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhoneId:Ljava/lang/Integer;

    #@36
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    #@39
    .line 514
    new-instance v1, Ljava/lang/StringBuilder;

    #@3b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@3e
    const-string/jumbo v3, "Sending intent ACTION_INTERNAL_SIM_STATE_CHANGED for mPhoneId : "

    #@41
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v1

    #@45
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhoneId:Ljava/lang/Integer;

    #@47
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v1

    #@4b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e
    move-result-object v1

    #@4f
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    #@52
    .line 515
    const/4 v1, 0x0

    #@53
    const/4 v3, -0x1

    #@54
    invoke-static {v0, v1, v3}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@57
    monitor-exit v2

    #@58
    .line 500
    return-void

    #@59
    .line 501
    .end local v0    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v1

    #@5a
    monitor-exit v2

    #@5b
    throw v1
.end method

.method private getIccStateIntentString(Lcom/android/internal/telephony/IccCardConstants$State;)Ljava/lang/String;
    .locals 2
    .param p1, "state"    # Lcom/android/internal/telephony/IccCardConstants$State;

    #@0
    .prologue
    .line 594
    invoke-static {}, Lcom/android/internal/telephony/uicc/IccCardProxy;->-getcom_android_internal_telephony_IccCardConstants$StateSwitchesValues()[I

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    #@7
    move-result v1

    #@8
    aget v0, v0, v1

    #@a
    packed-switch v0, :pswitch_data_0

    #@d
    .line 603
    const-string/jumbo v0, "UNKNOWN"

    #@10
    return-object v0

    #@11
    .line 595
    :pswitch_0
    const-string/jumbo v0, "ABSENT"

    #@14
    return-object v0

    #@15
    .line 596
    :pswitch_1
    const-string/jumbo v0, "LOCKED"

    #@18
    return-object v0

    #@19
    .line 597
    :pswitch_2
    const-string/jumbo v0, "LOCKED"

    #@1c
    return-object v0

    #@1d
    .line 598
    :pswitch_3
    const-string/jumbo v0, "LOCKED"

    #@20
    return-object v0

    #@21
    .line 599
    :pswitch_4
    const-string/jumbo v0, "READY"

    #@24
    return-object v0

    #@25
    .line 600
    :pswitch_5
    const-string/jumbo v0, "NOT_READY"

    #@28
    return-object v0

    #@29
    .line 601
    :pswitch_6
    const-string/jumbo v0, "LOCKED"

    #@2c
    return-object v0

    #@2d
    .line 602
    :pswitch_7
    const-string/jumbo v0, "CARD_IO_ERROR"

    #@30
    return-object v0

    #@31
    .line 594
    nop

    #@32
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_7
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_1
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method private getIccStateReason(Lcom/android/internal/telephony/IccCardConstants$State;)Ljava/lang/String;
    .locals 2
    .param p1, "state"    # Lcom/android/internal/telephony/IccCardConstants$State;

    #@0
    .prologue
    .line 612
    invoke-static {}, Lcom/android/internal/telephony/uicc/IccCardProxy;->-getcom_android_internal_telephony_IccCardConstants$StateSwitchesValues()[I

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    #@7
    move-result v1

    #@8
    aget v0, v0, v1

    #@a
    packed-switch v0, :pswitch_data_0

    #@d
    .line 618
    :pswitch_0
    const/4 v0, 0x0

    #@e
    return-object v0

    #@f
    .line 613
    :pswitch_1
    const-string/jumbo v0, "PIN"

    #@12
    return-object v0

    #@13
    .line 614
    :pswitch_2
    const-string/jumbo v0, "PUK"

    #@16
    return-object v0

    #@17
    .line 615
    :pswitch_3
    const-string/jumbo v0, "NETWORK"

    #@1a
    return-object v0

    #@1b
    .line 616
    :pswitch_4
    const-string/jumbo v0, "PERM_DISABLED"

    #@1e
    return-object v0

    #@1f
    .line 617
    :pswitch_5
    const-string/jumbo v0, "CARD_IO_ERROR"

    #@22
    return-object v0

    #@23
    .line 612
    nop

    #@24
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 914
    const-string/jumbo v0, "IccCardProxy"

    #@3
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 913
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 918
    const-string/jumbo v0, "IccCardProxy"

    #@3
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 917
    return-void
.end method

.method private onRecordsLoaded()V
    .locals 2

    #@0
    .prologue
    .line 340
    const-string/jumbo v0, "LOADED"

    #@3
    const/4 v1, 0x0

    #@4
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->broadcastInternalIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    #@7
    .line 339
    return-void
.end method

.method private onSubscriptionActivated()V
    .locals 0

    #@0
    .prologue
    .line 329
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->updateIccAvailability()V

    #@3
    .line 330
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->updateStateProperty()V

    #@6
    .line 328
    return-void
.end method

.method private onSubscriptionDeactivated()V
    .locals 0

    #@0
    .prologue
    .line 334
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->resetProperties()V

    #@3
    .line 335
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->updateIccAvailability()V

    #@6
    .line 336
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->updateStateProperty()V

    #@9
    .line 333
    return-void
.end method

.method private processLockedState()V
    .locals 5

    #@0
    .prologue
    .line 550
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v3

    #@3
    .line 551
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    if-nez v2, :cond_0

    #@7
    monitor-exit v3

    #@8
    .line 553
    return-void

    #@9
    .line 555
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@b
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPin1State()Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    #@e
    move-result-object v1

    #@f
    .line 556
    .local v1, "pin1State":Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;
    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_ENABLED_PERM_BLOCKED:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    #@11
    if-ne v1, v2, :cond_1

    #@13
    .line 557
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    #@15
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@18
    monitor-exit v3

    #@19
    .line 558
    return-void

    #@1a
    .line 561
    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@1c
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    #@1f
    move-result-object v0

    #@20
    .line 562
    .local v0, "appState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;
    invoke-static {}, Lcom/android/internal/telephony/uicc/IccCardProxy;->-getcom_android_internal_telephony_uicc_IccCardApplicationStatus$AppStateSwitchesValues()[I

    #@23
    move-result-object v2

    #@24
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->ordinal()I

    #@27
    move-result v4

    #@28
    aget v2, v2, v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@2a
    packed-switch v2, :pswitch_data_0

    #@2d
    :goto_0
    :pswitch_0
    monitor-exit v3

    #@2e
    .line 549
    return-void

    #@2f
    .line 564
    :pswitch_1
    :try_start_3
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    #@31
    invoke-virtual {v2}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@34
    .line 565
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    #@36
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@39
    goto :goto_0

    #@3a
    .line 550
    .end local v0    # "appState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;
    .end local v1    # "pin1State":Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;
    :catchall_0
    move-exception v2

    #@3b
    monitor-exit v3

    #@3c
    throw v2

    #@3d
    .line 568
    .restart local v0    # "appState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;
    .restart local v1    # "pin1State":Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;
    :pswitch_2
    :try_start_4
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    #@3f
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@42
    goto :goto_0

    #@43
    .line 562
    nop

    #@44
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private registerUiccCardEvents()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 439
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 440
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    #@7
    const/4 v1, 0x4

    #@8
    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccCard;->registerForAbsent(Landroid/os/Handler;ILjava/lang/Object;)V

    #@b
    .line 442
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@d
    if-eqz v0, :cond_1

    #@f
    .line 443
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@11
    const/4 v1, 0x6

    #@12
    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->registerForReady(Landroid/os/Handler;ILjava/lang/Object;)V

    #@15
    .line 444
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@17
    const/4 v1, 0x5

    #@18
    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->registerForLocked(Landroid/os/Handler;ILjava/lang/Object;)V

    #@1b
    .line 445
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@1d
    const/16 v1, 0x9

    #@1f
    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->registerForNetworkLocked(Landroid/os/Handler;ILjava/lang/Object;)V

    #@22
    .line 447
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@24
    if-eqz v0, :cond_2

    #@26
    .line 448
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@28
    const/16 v1, 0x8

    #@2a
    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForImsiReady(Landroid/os/Handler;ILjava/lang/Object;)V

    #@2d
    .line 449
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@2f
    const/4 v1, 0x7

    #@30
    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    #@33
    .line 450
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@35
    const/16 v1, 0x1f4

    #@37
    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsEvents(Landroid/os/Handler;ILjava/lang/Object;)V

    #@3a
    .line 438
    :cond_2
    return-void
.end method

.method private setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 1
    .param p1, "newState"    # Lcom/android/internal/telephony/IccCardConstants$State;

    #@0
    .prologue
    .line 581
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;Z)V

    #@4
    .line 580
    return-void
.end method

.method private setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;Z)V
    .locals 4
    .param p1, "newState"    # Lcom/android/internal/telephony/IccCardConstants$State;
    .param p2, "override"    # Z

    #@0
    .prologue
    .line 520
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 521
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhoneId:Ljava/lang/Integer;

    #@5
    if-eqz v0, :cond_0

    #@7
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhoneId:Ljava/lang/Integer;

    #@9
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@c
    move-result v0

    #@d
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSlotId(I)Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_0

    #@13
    .line 526
    if-nez p2, :cond_1

    #@15
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    #@17
    if-ne p1, v0, :cond_1

    #@19
    .line 527
    new-instance v0, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    const-string/jumbo v2, "setExternalState: !override and newstate unchanged from "

    #@21
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v0

    #@29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v0

    #@2d
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->loge(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@30
    monitor-exit v1

    #@31
    .line 528
    return-void

    #@32
    .line 522
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    #@34
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@37
    const-string/jumbo v2, "setExternalState: mPhoneId="

    #@3a
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v0

    #@3e
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhoneId:Ljava/lang/Integer;

    #@40
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v0

    #@44
    const-string/jumbo v2, " is invalid; Return!!"

    #@47
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v0

    #@4b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e
    move-result-object v0

    #@4f
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->loge(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@52
    monitor-exit v1

    #@53
    .line 523
    return-void

    #@54
    .line 530
    :cond_1
    :try_start_2
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    #@56
    .line 531
    new-instance v0, Ljava/lang/StringBuilder;

    #@58
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5b
    const-string/jumbo v2, "setExternalState: set mPhoneId="

    #@5e
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v0

    #@62
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhoneId:Ljava/lang/Integer;

    #@64
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v0

    #@68
    const-string/jumbo v2, " mExternalState="

    #@6b
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v0

    #@6f
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    #@71
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v0

    #@75
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@78
    move-result-object v0

    #@79
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->loge(Ljava/lang/String;)V

    #@7c
    .line 532
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    #@7e
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhoneId:Ljava/lang/Integer;

    #@80
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@83
    move-result v2

    #@84
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    #@87
    move-result-object v3

    #@88
    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCardConstants$State;->toString()Ljava/lang/String;

    #@8b
    move-result-object v3

    #@8c
    invoke-virtual {v0, v2, v3}, Landroid/telephony/TelephonyManager;->setSimStateForPhone(ILjava/lang/String;)V

    #@8f
    .line 535
    const-string/jumbo v0, "LOCKED"

    #@92
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    #@94
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getIccStateIntentString(Lcom/android/internal/telephony/IccCardConstants$State;)Ljava/lang/String;

    #@97
    move-result-object v2

    #@98
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9b
    move-result v0

    #@9c
    if-eqz v0, :cond_3

    #@9e
    .line 536
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    #@a0
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getIccStateIntentString(Lcom/android/internal/telephony/IccCardConstants$State;)Ljava/lang/String;

    #@a3
    move-result-object v0

    #@a4
    .line 537
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    #@a6
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getIccStateReason(Lcom/android/internal/telephony/IccCardConstants$State;)Ljava/lang/String;

    #@a9
    move-result-object v2

    #@aa
    .line 536
    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->broadcastInternalIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    #@ad
    .line 543
    :goto_0
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    #@af
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    #@b1
    if-ne v0, v2, :cond_2

    #@b3
    .line 544
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mAbsentRegistrants:Landroid/os/RegistrantList;

    #@b5
    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@b8
    :cond_2
    monitor-exit v1

    #@b9
    .line 519
    return-void

    #@ba
    .line 539
    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    #@bc
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getIccStateIntentString(Lcom/android/internal/telephony/IccCardConstants$State;)Ljava/lang/String;

    #@bf
    move-result-object v0

    #@c0
    .line 540
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    #@c2
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getIccStateReason(Lcom/android/internal/telephony/IccCardConstants$State;)Ljava/lang/String;

    #@c5
    move-result-object v2

    #@c6
    .line 539
    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@c9
    goto :goto_0

    #@ca
    .line 520
    :catchall_0
    move-exception v0

    #@cb
    monitor-exit v1

    #@cc
    throw v0
.end method

.method private setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 907
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhoneId:Ljava/lang/Integer;

    #@2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@5
    move-result v0

    #@6
    invoke-static {v0, p1, p2}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    #@9
    .line 906
    return-void
.end method

.method private unregisterUiccCardEvents()V
    .locals 1

    #@0
    .prologue
    .line 455
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    #@6
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccCard;->unregisterForAbsent(Landroid/os/Handler;)V

    #@9
    .line 456
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@b
    if-eqz v0, :cond_1

    #@d
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@f
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->unregisterForReady(Landroid/os/Handler;)V

    #@12
    .line 457
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@14
    if-eqz v0, :cond_2

    #@16
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@18
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->unregisterForLocked(Landroid/os/Handler;)V

    #@1b
    .line 458
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@1d
    if-eqz v0, :cond_3

    #@1f
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@21
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->unregisterForNetworkLocked(Landroid/os/Handler;)V

    #@24
    .line 459
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@26
    if-eqz v0, :cond_4

    #@28
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@2a
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForImsiReady(Landroid/os/Handler;)V

    #@2d
    .line 460
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@2f
    if-eqz v0, :cond_5

    #@31
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@33
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    #@36
    .line 461
    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@38
    if-eqz v0, :cond_6

    #@3a
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@3c
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsEvents(Landroid/os/Handler;)V

    #@3f
    .line 454
    :cond_6
    return-void
.end method

.method private updateExternalState()V
    .locals 2

    #@0
    .prologue
    .line 387
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 388
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

    #@6
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    #@9
    .line 389
    return-void

    #@a
    .line 392
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    #@c
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    #@f
    move-result-object v0

    #@10
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    #@12
    if-ne v0, v1, :cond_2

    #@14
    .line 393
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mRadioOn:Z

    #@16
    if-eqz v0, :cond_1

    #@18
    .line 394
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    #@1a
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    #@1d
    .line 398
    :goto_0
    return-void

    #@1e
    .line 396
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

    #@20
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    #@23
    goto :goto_0

    #@24
    .line 401
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    #@26
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    #@29
    move-result-object v0

    #@2a
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ERROR:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    #@2c
    if-ne v0, v1, :cond_3

    #@2e
    .line 402
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->CARD_IO_ERROR:Lcom/android/internal/telephony/IccCardConstants$State;

    #@30
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    #@33
    .line 403
    return-void

    #@34
    .line 406
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@36
    if-nez v0, :cond_4

    #@38
    .line 407
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

    #@3a
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    #@3d
    .line 408
    return-void

    #@3e
    .line 411
    :cond_4
    invoke-static {}, Lcom/android/internal/telephony/uicc/IccCardProxy;->-getcom_android_internal_telephony_uicc_IccCardApplicationStatus$AppStateSwitchesValues()[I

    #@41
    move-result-object v0

    #@42
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@44
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    #@47
    move-result-object v1

    #@48
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->ordinal()I

    #@4b
    move-result v1

    #@4c
    aget v0, v0, v1

    #@4e
    packed-switch v0, :pswitch_data_0

    #@51
    .line 383
    :goto_1
    return-void

    #@52
    .line 413
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    #@54
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    #@57
    goto :goto_1

    #@58
    .line 416
    :pswitch_1
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->HandleDetectedState()V

    #@5b
    goto :goto_1

    #@5c
    .line 419
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    #@5e
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    #@61
    goto :goto_1

    #@62
    .line 422
    :pswitch_3
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    #@64
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    #@67
    goto :goto_1

    #@68
    .line 425
    :pswitch_4
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@6a
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPersoSubState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    #@6d
    move-result-object v0

    #@6e
    .line 426
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    #@70
    .line 425
    if-ne v0, v1, :cond_5

    #@72
    .line 427
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    #@74
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    #@77
    goto :goto_1

    #@78
    .line 429
    :cond_5
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    #@7a
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    #@7d
    goto :goto_1

    #@7e
    .line 433
    :pswitch_5
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    #@80
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    #@83
    goto :goto_1

    #@84
    .line 411
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method private updateIccAvailability()V
    .locals 7

    #@0
    .prologue
    .line 344
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v5

    #@3
    .line 345
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    #@5
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhoneId:Ljava/lang/Integer;

    #@7
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    #@a
    move-result v6

    #@b
    invoke-virtual {v4, v6}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    #@e
    move-result-object v1

    #@f
    .line 346
    .local v1, "newCard":Lcom/android/internal/telephony/uicc/UiccCard;
    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    #@11
    .line 347
    .local v3, "state":Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    const/4 v0, 0x0

    #@12
    .line 348
    .local v0, "newApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    const/4 v2, 0x0

    #@13
    .line 349
    .local v2, "newRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v1, :cond_0

    #@15
    .line 350
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    #@18
    move-result-object v3

    #@19
    .line 351
    iget v4, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCurrentAppType:I

    #@1b
    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@1e
    move-result-object v0

    #@1f
    .line 352
    .local v0, "newApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v0, :cond_0

    #@21
    .line 353
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    #@24
    move-result-object v2

    #@25
    .line 357
    .end local v0    # "newApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .end local v2    # "newRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@27
    if-ne v4, v2, :cond_1

    #@29
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@2b
    if-eq v4, v0, :cond_3

    #@2d
    .line 358
    :cond_1
    :goto_0
    const-string/jumbo v4, "Icc changed. Reregestering."

    #@30
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    #@33
    .line 359
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->unregisterUiccCardEvents()V

    #@36
    .line 360
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    #@38
    .line 361
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@3a
    .line 362
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@3c
    .line 363
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->registerUiccCardEvents()V

    #@3f
    .line 365
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->updateExternalState()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@42
    monitor-exit v5

    #@43
    .line 343
    return-void

    #@44
    .line 357
    :cond_3
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@46
    if-eq v4, v1, :cond_2

    #@48
    goto :goto_0

    #@49
    .line 344
    .end local v1    # "newCard":Lcom/android/internal/telephony/uicc/UiccCard;
    .end local v3    # "state":Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    :catchall_0
    move-exception v4

    #@4a
    monitor-exit v5

    #@4b
    throw v4
.end method

.method private updateQuietMode()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    .line 172
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    #@3
    monitor-enter v5

    #@4
    .line 173
    :try_start_0
    iget-boolean v3, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mQuietMode:Z

    #@6
    .line 175
    .local v3, "oldQuietMode":Z
    const/4 v0, -0x1

    #@7
    .line 176
    .local v0, "cdmaSource":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getLteOnCdmaModeStatic()I

    #@a
    move-result v4

    #@b
    if-ne v4, v6, :cond_0

    #@d
    const/4 v1, 0x1

    #@e
    .line 178
    .local v1, "isLteOnCdmaMode":Z
    :goto_0
    iget v4, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCurrentAppType:I

    #@10
    if-ne v4, v6, :cond_1

    #@12
    .line 179
    const/4 v2, 0x0

    #@13
    .line 180
    .local v2, "newQuietMode":Z
    new-instance v4, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v6, "updateQuietMode: 3GPP subscription -> newQuietMode="

    #@1b
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v4

    #@1f
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@22
    move-result-object v4

    #@23
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v4

    #@27
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    #@2a
    .line 200
    :goto_1
    iget-boolean v4, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mQuietMode:Z

    #@2c
    if-nez v4, :cond_6

    #@2e
    if-eqz v2, :cond_6

    #@30
    .line 203
    const-string/jumbo v4, "Switching to QuietMode."

    #@33
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    #@36
    .line 204
    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    #@38
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    #@3b
    .line 205
    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mQuietMode:Z

    #@3d
    .line 217
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    #@3f
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@42
    const-string/jumbo v6, "updateQuietMode: QuietMode is "

    #@45
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v4

    #@49
    iget-boolean v6, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mQuietMode:Z

    #@4b
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v4

    #@4f
    const-string/jumbo v6, " (app_type="

    #@52
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v4

    #@56
    .line 218
    iget v6, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCurrentAppType:I

    #@58
    .line 217
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v4

    #@5c
    .line 218
    const-string/jumbo v6, " isLteOnCdmaMode="

    #@5f
    .line 217
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v4

    #@63
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@66
    move-result-object v4

    #@67
    .line 219
    const-string/jumbo v6, " cdmaSource="

    #@6a
    .line 217
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v4

    #@6e
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@71
    move-result-object v4

    #@72
    .line 219
    const-string/jumbo v6, ")"

    #@75
    .line 217
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v4

    #@79
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7c
    move-result-object v4

    #@7d
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    #@80
    .line 221
    const/4 v4, 0x1

    #@81
    iput-boolean v4, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mInitialized:Z

    #@83
    .line 222
    const/4 v4, 0x3

    #@84
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/IccCardProxy;->obtainMessage(I)Landroid/os/Message;

    #@87
    move-result-object v4

    #@88
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/IccCardProxy;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8b
    monitor-exit v5

    #@8c
    .line 171
    return-void

    #@8d
    .line 176
    .end local v1    # "isLteOnCdmaMode":Z
    .end local v2    # "newQuietMode":Z
    :cond_0
    const/4 v1, 0x0

    #@8e
    .restart local v1    # "isLteOnCdmaMode":Z
    goto :goto_0

    #@8f
    .line 182
    :cond_1
    if-eqz v1, :cond_2

    #@91
    .line 183
    :try_start_1
    const-string/jumbo v4, "updateQuietMode: is cdma/lte device, force IccCardProxy into 3gpp mode"

    #@94
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    #@97
    .line 184
    const/4 v4, 0x1

    #@98
    iput v4, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCurrentAppType:I

    #@9a
    .line 186
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    #@9c
    if-eqz v4, :cond_3

    #@9e
    .line 187
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    #@a0
    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getCdmaSubscriptionSource()I

    #@a3
    move-result v0

    #@a4
    .line 189
    :goto_3
    if-ne v0, v6, :cond_5

    #@a6
    .line 190
    iget v4, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCurrentAppType:I

    #@a8
    const/4 v6, 0x2

    #@a9
    if-ne v4, v6, :cond_5

    #@ab
    .line 191
    if-eqz v1, :cond_4

    #@ad
    const/4 v2, 0x0

    #@ae
    .line 193
    .restart local v2    # "newQuietMode":Z
    :goto_4
    new-instance v4, Ljava/lang/StringBuilder;

    #@b0
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@b3
    const-string/jumbo v6, "updateQuietMode: cdmaSource="

    #@b6
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b9
    move-result-object v4

    #@ba
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@bd
    move-result-object v4

    #@be
    .line 194
    const-string/jumbo v6, " mCurrentAppType="

    #@c1
    .line 193
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c4
    move-result-object v4

    #@c5
    .line 194
    iget v6, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCurrentAppType:I

    #@c7
    .line 193
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@ca
    move-result-object v4

    #@cb
    .line 195
    const-string/jumbo v6, " isLteOnCdmaMode="

    #@ce
    .line 193
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d1
    move-result-object v4

    #@d2
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@d5
    move-result-object v4

    #@d6
    .line 196
    const-string/jumbo v6, " newQuietMode="

    #@d9
    .line 193
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dc
    move-result-object v4

    #@dd
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@e0
    move-result-object v4

    #@e1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e4
    move-result-object v4

    #@e5
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@e8
    goto/16 :goto_1

    #@ea
    .line 172
    .end local v0    # "cdmaSource":I
    .end local v1    # "isLteOnCdmaMode":Z
    .end local v2    # "newQuietMode":Z
    .end local v3    # "oldQuietMode":Z
    :catchall_0
    move-exception v4

    #@eb
    monitor-exit v5

    #@ec
    throw v4

    #@ed
    .line 187
    .restart local v0    # "cdmaSource":I
    .restart local v1    # "isLteOnCdmaMode":Z
    .restart local v3    # "oldQuietMode":Z
    :cond_3
    const/4 v0, -0x1

    #@ee
    goto :goto_3

    #@ef
    .line 191
    :cond_4
    const/4 v2, 0x1

    #@f0
    .restart local v2    # "newQuietMode":Z
    goto :goto_4

    #@f1
    .line 189
    .end local v2    # "newQuietMode":Z
    :cond_5
    const/4 v2, 0x0

    #@f2
    .restart local v2    # "newQuietMode":Z
    goto :goto_4

    #@f3
    .line 206
    :cond_6
    :try_start_2
    iget-boolean v4, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mQuietMode:Z

    #@f5
    if-eqz v4, :cond_7

    #@f7
    if-nez v2, :cond_7

    #@f9
    .line 208
    new-instance v4, Ljava/lang/StringBuilder;

    #@fb
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@fe
    const-string/jumbo v6, "updateQuietMode: Switching out from QuietMode. Force broadcast of current state="

    #@101
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@104
    move-result-object v4

    #@105
    .line 209
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    #@107
    .line 208
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@10a
    move-result-object v4

    #@10b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10e
    move-result-object v4

    #@10f
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    #@112
    .line 211
    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mQuietMode:Z

    #@114
    .line 212
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    #@116
    const/4 v6, 0x1

    #@117
    invoke-direct {p0, v4, v6}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;Z)V

    #@11a
    goto/16 :goto_2

    #@11c
    .line 214
    :cond_7
    const-string/jumbo v4, "updateQuietMode: no changes don\'t setExternalState"

    #@11f
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@122
    goto/16 :goto_2
.end method

.method private updateStateProperty()V
    .locals 3

    #@0
    .prologue
    .line 465
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    #@2
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhoneId:Ljava/lang/Integer;

    #@4
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@7
    move-result v1

    #@8
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    #@b
    move-result-object v2

    #@c
    invoke-virtual {v2}, Lcom/android/internal/telephony/IccCardConstants$State;->toString()Ljava/lang/String;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setSimStateForPhone(ILjava/lang/String;)V

    #@13
    .line 464
    return-void
.end method


# virtual methods
.method public changeIccFdnPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "oldPassword"    # Ljava/lang/String;
    .param p2, "newPassword"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    .line 866
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 867
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@5
    if-eqz v1, :cond_1

    #@7
    .line 868
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@9
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->changeIccFdnPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    :cond_0
    monitor-exit v2

    #@d
    .line 865
    return-void

    #@e
    .line 869
    :cond_1
    if-eqz p3, :cond_0

    #@10
    .line 870
    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    #@12
    const-string/jumbo v1, "ICC card is absent."

    #@15
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@18
    .line 871
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    #@1b
    move-result-object v1

    #@1c
    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@1e
    .line 872
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@21
    monitor-exit v2

    #@22
    .line 873
    return-void

    #@23
    .line 866
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    #@24
    monitor-exit v2

    #@25
    throw v1
.end method

.method public changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "oldPassword"    # Ljava/lang/String;
    .param p2, "newPassword"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    .line 852
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 853
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@5
    if-eqz v1, :cond_1

    #@7
    .line 854
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@9
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    :cond_0
    monitor-exit v2

    #@d
    .line 851
    return-void

    #@e
    .line 855
    :cond_1
    if-eqz p3, :cond_0

    #@10
    .line 856
    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    #@12
    const-string/jumbo v1, "ICC card is absent."

    #@15
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@18
    .line 857
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    #@1b
    move-result-object v1

    #@1c
    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@1e
    .line 858
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@21
    monitor-exit v2

    #@22
    .line 859
    return-void

    #@23
    .line 852
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    #@24
    monitor-exit v2

    #@25
    throw v1
.end method

.method public dispose()V
    .locals 2

    #@0
    .prologue
    .line 138
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 139
    :try_start_0
    const-string/jumbo v0, "Disposing"

    #@6
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    #@9
    .line 141
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    #@b
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccController;->unregisterForIccChanged(Landroid/os/Handler;)V

    #@e
    .line 142
    const/4 v0, 0x0

    #@f
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    #@11
    .line 143
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@13
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    #@16
    .line 144
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@18
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    #@1b
    .line 145
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    #@1d
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->dispose(Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    monitor-exit v1

    #@21
    .line 137
    return-void

    #@22
    .line 138
    :catchall_0
    move-exception v0

    #@23
    monitor-exit v1

    #@24
    throw v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 922
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v2, "IccCardProxy: "

    #@8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@17
    .line 923
    new-instance v1, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v2, " mContext="

    #@1f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mContext:Landroid/content/Context;

    #@25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v1

    #@2d
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@30
    .line 924
    new-instance v1, Ljava/lang/StringBuilder;

    #@32
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@35
    const-string/jumbo v2, " mCi="

    #@38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v1

    #@3c
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@3e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v1

    #@42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v1

    #@46
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@49
    .line 925
    new-instance v1, Ljava/lang/StringBuilder;

    #@4b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@4e
    const-string/jumbo v2, " mAbsentRegistrants: size="

    #@51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v1

    #@55
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mAbsentRegistrants:Landroid/os/RegistrantList;

    #@57
    invoke-virtual {v2}, Landroid/os/RegistrantList;->size()I

    #@5a
    move-result v2

    #@5b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v1

    #@5f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@62
    move-result-object v1

    #@63
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@66
    .line 926
    const/4 v0, 0x0

    #@67
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mAbsentRegistrants:Landroid/os/RegistrantList;

    #@69
    invoke-virtual {v1}, Landroid/os/RegistrantList;->size()I

    #@6c
    move-result v1

    #@6d
    if-ge v0, v1, :cond_0

    #@6f
    .line 927
    new-instance v1, Ljava/lang/StringBuilder;

    #@71
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@74
    const-string/jumbo v2, "  mAbsentRegistrants["

    #@77
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v1

    #@7b
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v1

    #@7f
    const-string/jumbo v2, "]="

    #@82
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v2

    #@86
    .line 928
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mAbsentRegistrants:Landroid/os/RegistrantList;

    #@88
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->get(I)Ljava/lang/Object;

    #@8b
    move-result-object v1

    #@8c
    check-cast v1, Landroid/os/Registrant;

    #@8e
    invoke-virtual {v1}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    #@91
    move-result-object v1

    #@92
    .line 927
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v1

    #@96
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@99
    move-result-object v1

    #@9a
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@9d
    .line 926
    add-int/lit8 v0, v0, 0x1

    #@9f
    goto :goto_0

    #@a0
    .line 930
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@a2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a5
    const-string/jumbo v2, " mPinLockedRegistrants: size="

    #@a8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ab
    move-result-object v1

    #@ac
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    #@ae
    invoke-virtual {v2}, Landroid/os/RegistrantList;->size()I

    #@b1
    move-result v2

    #@b2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b5
    move-result-object v1

    #@b6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b9
    move-result-object v1

    #@ba
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@bd
    .line 931
    const/4 v0, 0x0

    #@be
    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    #@c0
    invoke-virtual {v1}, Landroid/os/RegistrantList;->size()I

    #@c3
    move-result v1

    #@c4
    if-ge v0, v1, :cond_1

    #@c6
    .line 932
    new-instance v1, Ljava/lang/StringBuilder;

    #@c8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@cb
    const-string/jumbo v2, "  mPinLockedRegistrants["

    #@ce
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d1
    move-result-object v1

    #@d2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@d5
    move-result-object v1

    #@d6
    const-string/jumbo v2, "]="

    #@d9
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dc
    move-result-object v2

    #@dd
    .line 933
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    #@df
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->get(I)Ljava/lang/Object;

    #@e2
    move-result-object v1

    #@e3
    check-cast v1, Landroid/os/Registrant;

    #@e5
    invoke-virtual {v1}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    #@e8
    move-result-object v1

    #@e9
    .line 932
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@ec
    move-result-object v1

    #@ed
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f0
    move-result-object v1

    #@f1
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@f4
    .line 931
    add-int/lit8 v0, v0, 0x1

    #@f6
    goto :goto_1

    #@f7
    .line 935
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    #@f9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@fc
    const-string/jumbo v2, " mNetworkLockedRegistrants: size="

    #@ff
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@102
    move-result-object v1

    #@103
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;

    #@105
    invoke-virtual {v2}, Landroid/os/RegistrantList;->size()I

    #@108
    move-result v2

    #@109
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@10c
    move-result-object v1

    #@10d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@110
    move-result-object v1

    #@111
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@114
    .line 936
    const/4 v0, 0x0

    #@115
    :goto_2
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;

    #@117
    invoke-virtual {v1}, Landroid/os/RegistrantList;->size()I

    #@11a
    move-result v1

    #@11b
    if-ge v0, v1, :cond_2

    #@11d
    .line 937
    new-instance v1, Ljava/lang/StringBuilder;

    #@11f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@122
    const-string/jumbo v2, "  mNetworkLockedRegistrants["

    #@125
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@128
    move-result-object v1

    #@129
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12c
    move-result-object v1

    #@12d
    const-string/jumbo v2, "]="

    #@130
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@133
    move-result-object v2

    #@134
    .line 938
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;

    #@136
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->get(I)Ljava/lang/Object;

    #@139
    move-result-object v1

    #@13a
    check-cast v1, Landroid/os/Registrant;

    #@13c
    invoke-virtual {v1}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    #@13f
    move-result-object v1

    #@140
    .line 937
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@143
    move-result-object v1

    #@144
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@147
    move-result-object v1

    #@148
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@14b
    .line 936
    add-int/lit8 v0, v0, 0x1

    #@14d
    goto :goto_2

    #@14e
    .line 940
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    #@150
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@153
    const-string/jumbo v2, " mCurrentAppType="

    #@156
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@159
    move-result-object v1

    #@15a
    iget v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCurrentAppType:I

    #@15c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@15f
    move-result-object v1

    #@160
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@163
    move-result-object v1

    #@164
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@167
    .line 941
    new-instance v1, Ljava/lang/StringBuilder;

    #@169
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@16c
    const-string/jumbo v2, " mUiccController="

    #@16f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@172
    move-result-object v1

    #@173
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    #@175
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@178
    move-result-object v1

    #@179
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17c
    move-result-object v1

    #@17d
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@180
    .line 942
    new-instance v1, Ljava/lang/StringBuilder;

    #@182
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@185
    const-string/jumbo v2, " mUiccCard="

    #@188
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18b
    move-result-object v1

    #@18c
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    #@18e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@191
    move-result-object v1

    #@192
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@195
    move-result-object v1

    #@196
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@199
    .line 943
    new-instance v1, Ljava/lang/StringBuilder;

    #@19b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@19e
    const-string/jumbo v2, " mUiccApplication="

    #@1a1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a4
    move-result-object v1

    #@1a5
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@1a7
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1aa
    move-result-object v1

    #@1ab
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1ae
    move-result-object v1

    #@1af
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1b2
    .line 944
    new-instance v1, Ljava/lang/StringBuilder;

    #@1b4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1b7
    const-string/jumbo v2, " mIccRecords="

    #@1ba
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1bd
    move-result-object v1

    #@1be
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@1c0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1c3
    move-result-object v1

    #@1c4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c7
    move-result-object v1

    #@1c8
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1cb
    .line 945
    new-instance v1, Ljava/lang/StringBuilder;

    #@1cd
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1d0
    const-string/jumbo v2, " mCdmaSSM="

    #@1d3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d6
    move-result-object v1

    #@1d7
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    #@1d9
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1dc
    move-result-object v1

    #@1dd
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e0
    move-result-object v1

    #@1e1
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1e4
    .line 946
    new-instance v1, Ljava/lang/StringBuilder;

    #@1e6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1e9
    const-string/jumbo v2, " mRadioOn="

    #@1ec
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ef
    move-result-object v1

    #@1f0
    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mRadioOn:Z

    #@1f2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1f5
    move-result-object v1

    #@1f6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f9
    move-result-object v1

    #@1fa
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1fd
    .line 947
    new-instance v1, Ljava/lang/StringBuilder;

    #@1ff
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@202
    const-string/jumbo v2, " mQuietMode="

    #@205
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@208
    move-result-object v1

    #@209
    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mQuietMode:Z

    #@20b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@20e
    move-result-object v1

    #@20f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@212
    move-result-object v1

    #@213
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@216
    .line 948
    new-instance v1, Ljava/lang/StringBuilder;

    #@218
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@21b
    const-string/jumbo v2, " mInitialized="

    #@21e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@221
    move-result-object v1

    #@222
    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mInitialized:Z

    #@224
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@227
    move-result-object v1

    #@228
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22b
    move-result-object v1

    #@22c
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@22f
    .line 949
    new-instance v1, Ljava/lang/StringBuilder;

    #@231
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@234
    const-string/jumbo v2, " mExternalState="

    #@237
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23a
    move-result-object v1

    #@23b
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    #@23d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@240
    move-result-object v1

    #@241
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@244
    move-result-object v1

    #@245
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@248
    .line 951
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    #@24b
    .line 921
    return-void
.end method

.method public getIccFdnAvailable()Z
    .locals 2

    #@0
    .prologue
    .line 806
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@2
    if-eqz v1, :cond_0

    #@4
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@6
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccFdnAvailable()Z

    #@9
    move-result v0

    #@a
    .line 807
    :goto_0
    return v0

    #@b
    .line 806
    :cond_0
    const/4 v0, 0x0

    #@c
    .local v0, "retValue":Z
    goto :goto_0
.end method

.method public getIccFdnEnabled()Z
    .locals 3

    #@0
    .prologue
    .line 798
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 799
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 800
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@9
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccFdnEnabled()Z

    #@c
    move-result v1

    #@d
    .line 799
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@10
    move-result-object v0

    #@11
    .line 801
    .local v0, "retValue":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    move-result v1

    #@15
    monitor-exit v2

    #@16
    return v1

    #@17
    .line 800
    .end local v0    # "retValue":Ljava/lang/Boolean;
    :cond_0
    const/4 v1, 0x0

    #@18
    goto :goto_0

    #@19
    .line 798
    :catchall_0
    move-exception v1

    #@1a
    monitor-exit v2

    #@1b
    throw v1
.end method

.method public getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 639
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    #@3
    monitor-enter v1

    #@4
    .line 640
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 641
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@a
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    move-result-object v0

    #@e
    monitor-exit v1

    #@f
    return-object v0

    #@10
    :cond_0
    monitor-exit v1

    #@11
    .line 643
    return-object v2

    #@12
    .line 639
    :catchall_0
    move-exception v0

    #@13
    monitor-exit v1

    #@14
    throw v0
.end method

.method public getIccLockEnabled()Z
    .locals 3

    #@0
    .prologue
    .line 788
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 790
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 791
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@9
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccLockEnabled()Z

    #@c
    move-result v1

    #@d
    .line 790
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@10
    move-result-object v0

    #@11
    .line 792
    .local v0, "retValue":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    move-result v1

    #@15
    monitor-exit v2

    #@16
    return v1

    #@17
    .line 791
    .end local v0    # "retValue":Ljava/lang/Boolean;
    :cond_0
    const/4 v1, 0x0

    #@18
    goto :goto_0

    #@19
    .line 788
    :catchall_0
    move-exception v1

    #@1a
    monitor-exit v2

    #@1b
    throw v1
.end method

.method public getIccPin2Blocked()Z
    .locals 2

    #@0
    .prologue
    .line 812
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@2
    if-eqz v1, :cond_0

    #@4
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@6
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccPin2Blocked()Z

    #@9
    move-result v1

    #@a
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@d
    move-result-object v0

    #@e
    .line 813
    .local v0, "retValue":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    #@11
    move-result v1

    #@12
    return v1

    #@13
    .line 812
    .end local v0    # "retValue":Ljava/lang/Boolean;
    :cond_0
    const/4 v1, 0x0

    #@14
    goto :goto_0
.end method

.method public getIccPuk2Blocked()Z
    .locals 2

    #@0
    .prologue
    .line 818
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@2
    if-eqz v1, :cond_0

    #@4
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@6
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccPuk2Blocked()Z

    #@9
    move-result v1

    #@a
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@d
    move-result-object v0

    #@e
    .line 819
    .local v0, "retValue":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    #@11
    move-result v1

    #@12
    return v1

    #@13
    .line 818
    .end local v0    # "retValue":Ljava/lang/Boolean;
    :cond_0
    const/4 v1, 0x0

    #@14
    goto :goto_0
.end method

.method public getIccRecord()Lcom/android/internal/telephony/uicc/IccRecords;
    .locals 1

    #@0
    .prologue
    .line 911
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@2
    return-object v0
.end method

.method public getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;
    .locals 2

    #@0
    .prologue
    .line 632
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 633
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return-object v1

    #@7
    .line 632
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method public getIccRecordsLoaded()Z
    .locals 2

    #@0
    .prologue
    .line 585
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 586
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 587
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@9
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getRecordsLoaded()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    move-result v0

    #@d
    monitor-exit v1

    #@e
    return v0

    #@f
    .line 589
    :cond_0
    const/4 v0, 0x0

    #@10
    monitor-exit v1

    #@11
    return v0

    #@12
    .line 585
    :catchall_0
    move-exception v0

    #@13
    monitor-exit v1

    #@14
    throw v0
.end method

.method public getServiceProviderName()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 880
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    #@3
    monitor-enter v1

    #@4
    .line 881
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 882
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@a
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getServiceProviderName()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    move-result-object v0

    #@e
    monitor-exit v1

    #@f
    return-object v0

    #@10
    :cond_0
    monitor-exit v1

    #@11
    .line 884
    return-object v2

    #@12
    .line 880
    :catchall_0
    move-exception v0

    #@13
    monitor-exit v1

    #@14
    throw v0
.end method

.method public getState()Lcom/android/internal/telephony/IccCardConstants$State;
    .locals 2

    #@0
    .prologue
    .line 625
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 626
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return-object v1

    #@7
    .line 625
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    const/4 v7, 0x0

    #@3
    .line 228
    iget v4, p1, Landroid/os/Message;->what:I

    #@5
    sparse-switch v4, :sswitch_data_0

    #@8
    .line 323
    new-instance v4, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v5, "Unhandled message with number: "

    #@10
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v4

    #@14
    iget v5, p1, Landroid/os/Message;->what:I

    #@16
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v4

    #@1a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v4

    #@1e
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/IccCardProxy;->loge(Ljava/lang/String;)V

    #@21
    .line 227
    :cond_0
    :goto_0
    return-void

    #@22
    .line 230
    :sswitch_0
    iput-boolean v6, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mRadioOn:Z

    #@24
    .line 231
    sget-object v4, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    #@26
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@28
    invoke-interface {v5}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    #@2b
    move-result-object v5

    #@2c
    if-ne v4, v5, :cond_0

    #@2e
    .line 232
    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

    #@30
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    #@33
    goto :goto_0

    #@34
    .line 236
    :sswitch_1
    iput-boolean v5, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mRadioOn:Z

    #@36
    .line 237
    iget-boolean v4, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mInitialized:Z

    #@38
    if-nez v4, :cond_0

    #@3a
    .line 238
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->updateQuietMode()V

    #@3d
    goto :goto_0

    #@3e
    .line 242
    :sswitch_2
    iget-boolean v4, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mInitialized:Z

    #@40
    if-eqz v4, :cond_0

    #@42
    .line 243
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->updateIccAvailability()V

    #@45
    goto :goto_0

    #@46
    .line 247
    :sswitch_3
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mAbsentRegistrants:Landroid/os/RegistrantList;

    #@48
    invoke-virtual {v4}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@4b
    .line 248
    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    #@4d
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    #@50
    goto :goto_0

    #@51
    .line 251
    :sswitch_4
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->processLockedState()V

    #@54
    goto :goto_0

    #@55
    .line 254
    :sswitch_5
    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    #@57
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    #@5a
    goto :goto_0

    #@5b
    .line 258
    :sswitch_6
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@5d
    if-eqz v4, :cond_1

    #@5f
    .line 259
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@61
    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    #@64
    move-result-object v3

    #@65
    .line 260
    .local v3, "operator":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    #@67
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@6a
    const-string/jumbo v5, "operator="

    #@6d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v4

    #@71
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v4

    #@75
    const-string/jumbo v5, " mPhoneId="

    #@78
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v4

    #@7c
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhoneId:Ljava/lang/Integer;

    #@7e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v4

    #@82
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@85
    move-result-object v4

    #@86
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    #@89
    .line 262
    if-eqz v3, :cond_4

    #@8b
    .line 263
    new-instance v4, Ljava/lang/StringBuilder;

    #@8d
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@90
    const-string/jumbo v5, "update icc_operator_numeric="

    #@93
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@96
    move-result-object v4

    #@97
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v4

    #@9b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9e
    move-result-object v4

    #@9f
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    #@a2
    .line 264
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    #@a4
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhoneId:Ljava/lang/Integer;

    #@a6
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    #@a9
    move-result v5

    #@aa
    invoke-virtual {v4, v5, v3}, Landroid/telephony/TelephonyManager;->setSimOperatorNumericForPhone(ILjava/lang/String;)V

    #@ad
    .line 265
    const/4 v4, 0x3

    #@ae
    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@b1
    move-result-object v1

    #@b2
    .line 266
    .local v1, "countryCode":Ljava/lang/String;
    if-eqz v1, :cond_3

    #@b4
    .line 267
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    #@b6
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhoneId:Ljava/lang/Integer;

    #@b8
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    #@bb
    move-result v5

    #@bc
    .line 268
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@bf
    move-result v6

    #@c0
    invoke-static {v6}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    #@c3
    move-result-object v6

    #@c4
    .line 267
    invoke-virtual {v4, v5, v6}, Landroid/telephony/TelephonyManager;->setSimCountryIsoForPhone(ILjava/lang/String;)V

    #@c7
    .line 276
    .end local v1    # "countryCode":Ljava/lang/String;
    .end local v3    # "operator":Ljava/lang/String;
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    #@c9
    if-eqz v4, :cond_2

    #@cb
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    #@cd
    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccCard;->areCarrierPriviligeRulesLoaded()Z

    #@d0
    move-result v4

    #@d1
    if-eqz v4, :cond_5

    #@d3
    .line 280
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->onRecordsLoaded()V

    #@d6
    goto/16 :goto_0

    #@d8
    .line 270
    .restart local v1    # "countryCode":Ljava/lang/String;
    .restart local v3    # "operator":Ljava/lang/String;
    :cond_3
    const-string/jumbo v4, "EVENT_RECORDS_LOADED Country code is null"

    #@db
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/IccCardProxy;->loge(Ljava/lang/String;)V

    #@de
    goto :goto_1

    #@df
    .line 273
    .end local v1    # "countryCode":Ljava/lang/String;
    :cond_4
    const-string/jumbo v4, "EVENT_RECORDS_LOADED Operator name is null"

    #@e2
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/IccCardProxy;->loge(Ljava/lang/String;)V

    #@e5
    goto :goto_1

    #@e6
    .line 277
    .end local v3    # "operator":Ljava/lang/String;
    :cond_5
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    #@e8
    .line 278
    const/16 v5, 0x1f7

    #@ea
    .line 277
    invoke-virtual {v4, p0, v5, v7}, Lcom/android/internal/telephony/uicc/UiccCard;->registerForCarrierPrivilegeRulesLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    #@ed
    goto/16 :goto_0

    #@ef
    .line 284
    :sswitch_7
    const-string/jumbo v4, "IMSI"

    #@f2
    invoke-direct {p0, v4, v7}, Lcom/android/internal/telephony/uicc/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    #@f5
    goto/16 :goto_0

    #@f7
    .line 287
    :sswitch_8
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;

    #@f9
    invoke-virtual {v4}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@fc
    .line 288
    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    #@fe
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    #@101
    goto/16 :goto_0

    #@103
    .line 291
    :sswitch_9
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->updateQuietMode()V

    #@106
    goto/16 :goto_0

    #@108
    .line 294
    :sswitch_a
    const-string/jumbo v4, "EVENT_SUBSCRIPTION_ACTIVATED"

    #@10b
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    #@10e
    .line 295
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->onSubscriptionActivated()V

    #@111
    goto/16 :goto_0

    #@113
    .line 299
    :sswitch_b
    const-string/jumbo v4, "EVENT_SUBSCRIPTION_DEACTIVATED"

    #@116
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    #@119
    .line 300
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->onSubscriptionDeactivated()V

    #@11c
    goto/16 :goto_0

    #@11e
    .line 304
    :sswitch_c
    iget v4, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCurrentAppType:I

    #@120
    if-ne v4, v5, :cond_0

    #@122
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@124
    if-eqz v4, :cond_0

    #@126
    .line 305
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@128
    check-cast v0, Landroid/os/AsyncResult;

    #@12a
    .line 306
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@12c
    check-cast v4, Ljava/lang/Integer;

    #@12e
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    #@131
    move-result v2

    #@132
    .line 307
    .local v2, "eventCode":I
    const/4 v4, 0x2

    #@133
    if-ne v2, v4, :cond_0

    #@135
    .line 308
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    #@137
    .line 309
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhoneId:Ljava/lang/Integer;

    #@139
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    #@13c
    move-result v5

    #@13d
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@13f
    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/IccRecords;->getServiceProviderName()Ljava/lang/String;

    #@142
    move-result-object v6

    #@143
    .line 308
    invoke-virtual {v4, v5, v6}, Landroid/telephony/TelephonyManager;->setSimOperatorNameForPhone(ILjava/lang/String;)V

    #@146
    goto/16 :goto_0

    #@148
    .line 315
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "eventCode":I
    :sswitch_d
    const-string/jumbo v4, "EVENT_CARRIER_PRIVILEGES_LOADED"

    #@14b
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    #@14e
    .line 316
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    #@150
    if-eqz v4, :cond_6

    #@152
    .line 317
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    #@154
    invoke-virtual {v4, p0}, Lcom/android/internal/telephony/uicc/UiccCard;->unregisterForCarrierPrivilegeRulesLoaded(Landroid/os/Handler;)V

    #@157
    .line 319
    :cond_6
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->onRecordsLoaded()V

    #@15a
    goto/16 :goto_0

    #@15c
    .line 228
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_6
        0x8 -> :sswitch_7
        0x9 -> :sswitch_8
        0xb -> :sswitch_9
        0x1f4 -> :sswitch_c
        0x1f5 -> :sswitch_a
        0x1f6 -> :sswitch_b
        0x1f7 -> :sswitch_d
    .end sparse-switch
.end method

.method public hasIccCard()Z
    .locals 3

    #@0
    .prologue
    .line 898
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 899
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    #@5
    if-eqz v0, :cond_0

    #@7
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    #@9
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    #@c
    move-result-object v0

    #@d
    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    if-eq v0, v2, :cond_0

    #@11
    .line 900
    const/4 v0, 0x1

    #@12
    monitor-exit v1

    #@13
    return v0

    #@14
    .line 902
    :cond_0
    const/4 v0, 0x0

    #@15
    monitor-exit v1

    #@16
    return v0

    #@17
    .line 898
    :catchall_0
    move-exception v0

    #@18
    monitor-exit v1

    #@19
    throw v0
.end method

.method public isApplicationOnIcc(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Z
    .locals 3
    .param p1, "type"    # Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    #@0
    .prologue
    .line 890
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 891
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    #@5
    if-eqz v1, :cond_0

    #@7
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    #@9
    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/uicc/UiccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Z

    #@c
    move-result v1

    #@d
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@10
    move-result-object v0

    #@11
    .line 892
    .local v0, "retValue":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    move-result v1

    #@15
    monitor-exit v2

    #@16
    return v1

    #@17
    .line 891
    .end local v0    # "retValue":Ljava/lang/Boolean;
    :cond_0
    const/4 v1, 0x0

    #@18
    goto :goto_0

    #@19
    .line 890
    :catchall_0
    move-exception v1

    #@1a
    monitor-exit v2

    #@1b
    throw v1
.end method

.method public registerForAbsent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 652
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 653
    :try_start_0
    new-instance v0, Landroid/os/Registrant;

    #@5
    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    #@8
    .line 655
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mAbsentRegistrants:Landroid/os/RegistrantList;

    #@a
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    #@d
    .line 657
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    #@10
    move-result-object v1

    #@11
    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    #@13
    if-ne v1, v3, :cond_0

    #@15
    .line 658
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    :cond_0
    monitor-exit v2

    #@19
    .line 651
    return-void

    #@1a
    .line 652
    .end local v0    # "r":Landroid/os/Registrant;
    :catchall_0
    move-exception v1

    #@1b
    monitor-exit v2

    #@1c
    throw v1
.end method

.method public registerForLocked(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 698
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 699
    :try_start_0
    new-instance v0, Landroid/os/Registrant;

    #@5
    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    #@8
    .line 701
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    #@a
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    #@d
    .line 703
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardConstants$State;->isPinLocked()Z

    #@14
    move-result v1

    #@15
    if-eqz v1, :cond_0

    #@17
    .line 704
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    :cond_0
    monitor-exit v2

    #@1b
    .line 697
    return-void

    #@1c
    .line 698
    .end local v0    # "r":Landroid/os/Registrant;
    :catchall_0
    move-exception v1

    #@1d
    monitor-exit v2

    #@1e
    throw v1
.end method

.method public registerForNetworkLocked(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 675
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 676
    :try_start_0
    new-instance v0, Landroid/os/Registrant;

    #@5
    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    #@8
    .line 678
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;

    #@a
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    #@d
    .line 680
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    #@10
    move-result-object v1

    #@11
    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    #@13
    if-ne v1, v3, :cond_0

    #@15
    .line 681
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    :cond_0
    monitor-exit v2

    #@19
    .line 674
    return-void

    #@1a
    .line 675
    .end local v0    # "r":Landroid/os/Registrant;
    :catchall_0
    move-exception v1

    #@1b
    monitor-exit v2

    #@1c
    throw v1
.end method

.method resetProperties()V
    .locals 3

    #@0
    .prologue
    .line 370
    iget v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCurrentAppType:I

    #@2
    const/4 v1, 0x1

    #@3
    if-ne v0, v1, :cond_0

    #@5
    .line 371
    const-string/jumbo v0, "update icc_operator_numeric="

    #@8
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    #@b
    .line 372
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    #@d
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhoneId:Ljava/lang/Integer;

    #@f
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@12
    move-result v1

    #@13
    const-string/jumbo v2, ""

    #@16
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setSimOperatorNumericForPhone(ILjava/lang/String;)V

    #@19
    .line 373
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    #@1b
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhoneId:Ljava/lang/Integer;

    #@1d
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@20
    move-result v1

    #@21
    const-string/jumbo v2, ""

    #@24
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setSimCountryIsoForPhone(ILjava/lang/String;)V

    #@27
    .line 374
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    #@29
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhoneId:Ljava/lang/Integer;

    #@2b
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@2e
    move-result v1

    #@2f
    const-string/jumbo v2, ""

    #@32
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setSimOperatorNameForPhone(ILjava/lang/String;)V

    #@35
    .line 369
    :cond_0
    return-void
.end method

.method public setIccFdnEnabled(ZLjava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "enabled"    # Z
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    .line 838
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 839
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@5
    if-eqz v1, :cond_1

    #@7
    .line 840
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@9
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->setIccFdnEnabled(ZLjava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    :cond_0
    monitor-exit v2

    #@d
    .line 837
    return-void

    #@e
    .line 841
    :cond_1
    if-eqz p3, :cond_0

    #@10
    .line 842
    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    #@12
    const-string/jumbo v1, "ICC card is absent."

    #@15
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@18
    .line 843
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    #@1b
    move-result-object v1

    #@1c
    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@1e
    .line 844
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@21
    monitor-exit v2

    #@22
    .line 845
    return-void

    #@23
    .line 838
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    #@24
    monitor-exit v2

    #@25
    throw v1
.end method

.method public setIccLockEnabled(ZLjava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "enabled"    # Z
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    .line 824
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 825
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@5
    if-eqz v1, :cond_1

    #@7
    .line 826
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@9
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->setIccLockEnabled(ZLjava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    :cond_0
    monitor-exit v2

    #@d
    .line 823
    return-void

    #@e
    .line 827
    :cond_1
    if-eqz p3, :cond_0

    #@10
    .line 828
    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    #@12
    const-string/jumbo v1, "ICC card is absent."

    #@15
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@18
    .line 829
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    #@1b
    move-result-object v1

    #@1c
    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@1e
    .line 830
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@21
    monitor-exit v2

    #@22
    .line 831
    return-void

    #@23
    .line 824
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    #@24
    monitor-exit v2

    #@25
    throw v1
.end method

.method public setVoiceRadioTech(I)V
    .locals 3
    .param p1, "radioTech"    # I

    #@0
    .prologue
    .line 154
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 156
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "Setting radio tech "

    #@b
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    invoke-static {p1}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    #@1e
    .line 158
    invoke-static {p1}, Landroid/telephony/ServiceState;->isGsm(I)Z

    #@21
    move-result v0

    #@22
    if-eqz v0, :cond_0

    #@24
    .line 159
    const/4 v0, 0x1

    #@25
    iput v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCurrentAppType:I

    #@27
    .line 163
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->updateQuietMode()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2a
    monitor-exit v1

    #@2b
    .line 153
    return-void

    #@2c
    .line 161
    :cond_0
    const/4 v0, 0x2

    #@2d
    :try_start_1
    iput v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCurrentAppType:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2f
    goto :goto_0

    #@30
    .line 154
    :catchall_0
    move-exception v0

    #@31
    monitor-exit v1

    #@32
    throw v0
.end method

.method public supplyNetworkDepersonalization(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    .line 774
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 775
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@5
    if-eqz v1, :cond_1

    #@7
    .line 776
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@9
    invoke-virtual {v1, p1, p2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->supplyNetworkDepersonalization(Ljava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    :cond_0
    monitor-exit v2

    #@d
    .line 773
    return-void

    #@e
    .line 777
    :cond_1
    if-eqz p2, :cond_0

    #@10
    .line 778
    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    #@12
    const-string/jumbo v1, "CommandsInterface is not set."

    #@15
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@18
    .line 779
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {p2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    #@1b
    move-result-object v1

    #@1c
    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@1e
    .line 780
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@21
    monitor-exit v2

    #@22
    .line 781
    return-void

    #@23
    .line 774
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    #@24
    monitor-exit v2

    #@25
    throw v1
.end method

.method public supplyPin(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    .line 718
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 719
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@5
    if-eqz v1, :cond_1

    #@7
    .line 720
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@9
    invoke-virtual {v1, p1, p2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->supplyPin(Ljava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    :cond_0
    monitor-exit v2

    #@d
    .line 717
    return-void

    #@e
    .line 721
    :cond_1
    if-eqz p2, :cond_0

    #@10
    .line 722
    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    #@12
    const-string/jumbo v1, "ICC card is absent."

    #@15
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@18
    .line 723
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {p2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    #@1b
    move-result-object v1

    #@1c
    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@1e
    .line 724
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@21
    monitor-exit v2

    #@22
    .line 725
    return-void

    #@23
    .line 718
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    #@24
    monitor-exit v2

    #@25
    throw v1
.end method

.method public supplyPin2(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "pin2"    # Ljava/lang/String;
    .param p2, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    .line 746
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 747
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@5
    if-eqz v1, :cond_1

    #@7
    .line 748
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@9
    invoke-virtual {v1, p1, p2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->supplyPin2(Ljava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    :cond_0
    monitor-exit v2

    #@d
    .line 745
    return-void

    #@e
    .line 749
    :cond_1
    if-eqz p2, :cond_0

    #@10
    .line 750
    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    #@12
    const-string/jumbo v1, "ICC card is absent."

    #@15
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@18
    .line 751
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {p2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    #@1b
    move-result-object v1

    #@1c
    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@1e
    .line 752
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@21
    monitor-exit v2

    #@22
    .line 753
    return-void

    #@23
    .line 746
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    #@24
    monitor-exit v2

    #@25
    throw v1
.end method

.method public supplyPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "puk"    # Ljava/lang/String;
    .param p2, "newPin"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    .line 732
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 733
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@5
    if-eqz v1, :cond_1

    #@7
    .line 734
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@9
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->supplyPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    :cond_0
    monitor-exit v2

    #@d
    .line 731
    return-void

    #@e
    .line 735
    :cond_1
    if-eqz p3, :cond_0

    #@10
    .line 736
    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    #@12
    const-string/jumbo v1, "ICC card is absent."

    #@15
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@18
    .line 737
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    #@1b
    move-result-object v1

    #@1c
    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@1e
    .line 738
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@21
    monitor-exit v2

    #@22
    .line 739
    return-void

    #@23
    .line 732
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    #@24
    monitor-exit v2

    #@25
    throw v1
.end method

.method public supplyPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "puk2"    # Ljava/lang/String;
    .param p2, "newPin2"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    .line 760
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 761
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@5
    if-eqz v1, :cond_1

    #@7
    .line 762
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@9
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->supplyPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    :cond_0
    monitor-exit v2

    #@d
    .line 759
    return-void

    #@e
    .line 763
    :cond_1
    if-eqz p3, :cond_0

    #@10
    .line 764
    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    #@12
    const-string/jumbo v1, "ICC card is absent."

    #@15
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@18
    .line 765
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    #@1b
    move-result-object v1

    #@1c
    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@1e
    .line 766
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@21
    monitor-exit v2

    #@22
    .line 767
    return-void

    #@23
    .line 760
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    #@24
    monitor-exit v2

    #@25
    throw v1
.end method

.method public unregisterForAbsent(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 665
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 666
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mAbsentRegistrants:Landroid/os/RegistrantList;

    #@5
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 664
    return-void

    #@a
    .line 665
    :catchall_0
    move-exception v0

    #@b
    monitor-exit v1

    #@c
    throw v0
.end method

.method public unregisterForLocked(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 711
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 712
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    #@5
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 710
    return-void

    #@a
    .line 711
    :catchall_0
    move-exception v0

    #@b
    monitor-exit v1

    #@c
    throw v0
.end method

.method public unregisterForNetworkLocked(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 688
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 689
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;

    #@5
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 687
    return-void

    #@a
    .line 688
    :catchall_0
    move-exception v0

    #@b
    monitor-exit v1

    #@c
    throw v0
.end method
