.class public Landroid/telephony/TelephonyManager;
.super Ljava/lang/Object;
.source "TelephonyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/TelephonyManager$WifiCallingChoices;,
        Landroid/telephony/TelephonyManager$MultiSimVariants;
    }
.end annotation


# static fields
.field private static synthetic -android_telephony_TelephonyManager$MultiSimVariantsSwitchesValues:[I = null

.field public static final ACTION_CONFIGURE_VOICEMAIL:Ljava/lang/String; = "android.telephony.action.CONFIGURE_VOICEMAIL"

.field public static final ACTION_EMERGENCY_ASSISTANCE:Ljava/lang/String; = "android.telephony.action.EMERGENCY_ASSISTANCE"

.field public static final ACTION_PHONE_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.PHONE_STATE"

.field public static final ACTION_PRECISE_CALL_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.PRECISE_CALL_STATE"

.field public static final ACTION_PRECISE_DATA_CONNECTION_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.PRECISE_DATA_CONNECTION_STATE_CHANGED"

.field public static final ACTION_RESPOND_VIA_MESSAGE:Ljava/lang/String; = "android.intent.action.RESPOND_VIA_MESSAGE"

.field public static final CALL_STATE_IDLE:I = 0x0

.field public static final CALL_STATE_OFFHOOK:I = 0x2

.field public static final CALL_STATE_RINGING:I = 0x1

.field public static final CARRIER_PRIVILEGE_STATUS_ERROR_LOADING_RULES:I = -0x2

.field public static final CARRIER_PRIVILEGE_STATUS_HAS_ACCESS:I = 0x1

.field public static final CARRIER_PRIVILEGE_STATUS_NO_ACCESS:I = 0x0

.field public static final CARRIER_PRIVILEGE_STATUS_RULES_NOT_LOADED:I = -0x1

.field public static final DATA_ACTIVITY_DORMANT:I = 0x4

.field public static final DATA_ACTIVITY_IN:I = 0x1

.field public static final DATA_ACTIVITY_INOUT:I = 0x3

.field public static final DATA_ACTIVITY_NONE:I = 0x0

.field public static final DATA_ACTIVITY_OUT:I = 0x2

.field public static final DATA_CONNECTED:I = 0x2

.field public static final DATA_CONNECTING:I = 0x1

.field public static final DATA_DISCONNECTED:I = 0x0

.field public static final DATA_SUSPENDED:I = 0x3

.field public static final DATA_UNKNOWN:I = -0x1

.field public static final EMERGENCY_ASSISTANCE_ENABLED:Z = false

.field public static final EXTRA_BACKGROUND_CALL_STATE:Ljava/lang/String; = "background_state"

.field public static final EXTRA_DATA_APN:Ljava/lang/String; = "apn"

.field public static final EXTRA_DATA_APN_TYPE:Ljava/lang/String; = "apnType"

.field public static final EXTRA_DATA_CHANGE_REASON:Ljava/lang/String; = "reason"

.field public static final EXTRA_DATA_FAILURE_CAUSE:Ljava/lang/String; = "failCause"

.field public static final EXTRA_DATA_LINK_PROPERTIES_KEY:Ljava/lang/String; = "linkProperties"

.field public static final EXTRA_DATA_NETWORK_TYPE:Ljava/lang/String; = "networkType"

.field public static final EXTRA_DATA_STATE:Ljava/lang/String; = "state"

.field public static final EXTRA_DISCONNECT_CAUSE:Ljava/lang/String; = "disconnect_cause"

.field public static final EXTRA_FOREGROUND_CALL_STATE:Ljava/lang/String; = "foreground_state"

.field public static final EXTRA_INCOMING_NUMBER:Ljava/lang/String; = "incoming_number"

.field public static final EXTRA_PRECISE_DISCONNECT_CAUSE:Ljava/lang/String; = "precise_disconnect_cause"

.field public static final EXTRA_RINGING_CALL_STATE:Ljava/lang/String; = "ringing_state"

.field public static final EXTRA_STATE:Ljava/lang/String; = "state"

.field public static final EXTRA_STATE_IDLE:Ljava/lang/String;

.field public static final EXTRA_STATE_OFFHOOK:Ljava/lang/String;

.field public static final EXTRA_STATE_RINGING:Ljava/lang/String;

.field public static final NETWORK_CLASS_2_G:I = 0x1

.field public static final NETWORK_CLASS_3_G:I = 0x2

.field public static final NETWORK_CLASS_4_G:I = 0x3

.field public static final NETWORK_CLASS_UNKNOWN:I = 0x0

.field public static final NETWORK_TYPE_1xRTT:I = 0x7

.field public static final NETWORK_TYPE_CDMA:I = 0x4

.field public static final NETWORK_TYPE_EDGE:I = 0x2

.field public static final NETWORK_TYPE_EHRPD:I = 0xe

.field public static final NETWORK_TYPE_EVDO_0:I = 0x5

.field public static final NETWORK_TYPE_EVDO_A:I = 0x6

.field public static final NETWORK_TYPE_EVDO_B:I = 0xc

.field public static final NETWORK_TYPE_GPRS:I = 0x1

.field public static final NETWORK_TYPE_GSM:I = 0x10

.field public static final NETWORK_TYPE_HSDPA:I = 0x8

.field public static final NETWORK_TYPE_HSPA:I = 0xa

.field public static final NETWORK_TYPE_HSPAP:I = 0xf

.field public static final NETWORK_TYPE_HSUPA:I = 0x9

.field public static final NETWORK_TYPE_IDEN:I = 0xb

.field public static final NETWORK_TYPE_IWLAN:I = 0x12

.field public static final NETWORK_TYPE_LTE:I = 0xd

.field public static final NETWORK_TYPE_TD_SCDMA:I = 0x11

.field public static final NETWORK_TYPE_UMTS:I = 0x3

.field public static final NETWORK_TYPE_UNKNOWN:I = 0x0

.field public static final PHONE_TYPE_CDMA:I = 0x2

.field public static final PHONE_TYPE_GSM:I = 0x1

.field public static final PHONE_TYPE_NONE:I = 0x0

.field public static final PHONE_TYPE_SIP:I = 0x3

.field public static final SIM_ACTIVATION_RESULT_CANCELED:I = 0x4

.field public static final SIM_ACTIVATION_RESULT_COMPLETE:I = 0x0

.field public static final SIM_ACTIVATION_RESULT_FAILED:I = 0x3

.field public static final SIM_ACTIVATION_RESULT_IN_PROGRESS:I = 0x2

.field public static final SIM_ACTIVATION_RESULT_NOT_SUPPORTED:I = 0x1

.field public static final SIM_STATE_ABSENT:I = 0x1

.field public static final SIM_STATE_CARD_IO_ERROR:I = 0x8

.field public static final SIM_STATE_NETWORK_LOCKED:I = 0x4

.field public static final SIM_STATE_NOT_READY:I = 0x6

.field public static final SIM_STATE_PERM_DISABLED:I = 0x7

.field public static final SIM_STATE_PIN_REQUIRED:I = 0x2

.field public static final SIM_STATE_PUK_REQUIRED:I = 0x3

.field public static final SIM_STATE_READY:I = 0x5

.field public static final SIM_STATE_UNKNOWN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "TelephonyManager"

.field public static final VVM_TYPE_CVVM:Ljava/lang/String; = "vvm_type_cvvm"

.field public static final VVM_TYPE_OMTP:Ljava/lang/String; = "vvm_type_omtp"

.field private static multiSimConfig:Ljava/lang/String;

.field private static sInstance:Landroid/telephony/TelephonyManager;

.field private static final sKernelCmdLine:Ljava/lang/String;

.field private static final sLteOnCdmaProductType:Ljava/lang/String;

.field private static final sProductTypePattern:Ljava/util/regex/Pattern;

.field private static sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;


# direct methods
.method private static synthetic -getandroid_telephony_TelephonyManager$MultiSimVariantsSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Landroid/telephony/TelephonyManager;->-android_telephony_TelephonyManager$MultiSimVariantsSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Landroid/telephony/TelephonyManager;->-android_telephony_TelephonyManager$MultiSimVariantsSwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager$MultiSimVariants;->values()[Landroid/telephony/TelephonyManager$MultiSimVariants;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Landroid/telephony/TelephonyManager$MultiSimVariants;->DSDA:Landroid/telephony/TelephonyManager$MultiSimVariants;

    #@10
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager$MultiSimVariants;->ordinal()I

    #@13
    move-result v1

    #@14
    const/4 v2, 0x1

    #@15
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    #@17
    :goto_0
    :try_start_1
    sget-object v1, Landroid/telephony/TelephonyManager$MultiSimVariants;->DSDS:Landroid/telephony/TelephonyManager$MultiSimVariants;

    #@19
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager$MultiSimVariants;->ordinal()I

    #@1c
    move-result v1

    #@1d
    const/4 v2, 0x2

    #@1e
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    #@20
    :goto_1
    :try_start_2
    sget-object v1, Landroid/telephony/TelephonyManager$MultiSimVariants;->TSTS:Landroid/telephony/TelephonyManager$MultiSimVariants;

    #@22
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager$MultiSimVariants;->ordinal()I

    #@25
    move-result v1

    #@26
    const/4 v2, 0x3

    #@27
    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    #@29
    :goto_2
    :try_start_3
    sget-object v1, Landroid/telephony/TelephonyManager$MultiSimVariants;->UNKNOWN:Landroid/telephony/TelephonyManager$MultiSimVariants;

    #@2b
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager$MultiSimVariants;->ordinal()I

    #@2e
    move-result v1

    #@2f
    const/4 v2, 0x4

    #@30
    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    #@32
    :goto_3
    sput-object v0, Landroid/telephony/TelephonyManager;->-android_telephony_TelephonyManager$MultiSimVariantsSwitchesValues:[I

    #@34
    return-object v0

    #@35
    :catch_0
    move-exception v1

    #@36
    goto :goto_3

    #@37
    :catch_1
    move-exception v1

    #@38
    goto :goto_2

    #@39
    :catch_2
    move-exception v1

    #@3a
    goto :goto_1

    #@3b
    :catch_3
    move-exception v1

    #@3c
    goto :goto_0
.end method

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 93
    const-string/jumbo v0, "persist.radio.multisim.config"

    #@3
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    .line 92
    sput-object v0, Landroid/telephony/TelephonyManager;->multiSimConfig:Ljava/lang/String;

    #@9
    .line 129
    new-instance v0, Landroid/telephony/TelephonyManager;

    #@b
    invoke-direct {v0}, Landroid/telephony/TelephonyManager;-><init>()V

    #@e
    sput-object v0, Landroid/telephony/TelephonyManager;->sInstance:Landroid/telephony/TelephonyManager;

    #@10
    .line 317
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    #@12
    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    sput-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    #@18
    .line 323
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    #@1a
    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    #@1d
    move-result-object v0

    #@1e
    sput-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    #@20
    .line 329
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    #@22
    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    #@25
    move-result-object v0

    #@26
    sput-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    #@28
    .line 1109
    invoke-static {}, Landroid/telephony/TelephonyManager;->getProcCmdLine()Ljava/lang/String;

    #@2b
    move-result-object v0

    #@2c
    sput-object v0, Landroid/telephony/TelephonyManager;->sKernelCmdLine:Ljava/lang/String;

    #@2e
    .line 1113
    const-string/jumbo v0, "\\sproduct_type\\s*=\\s*(\\w+)"

    #@31
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@34
    move-result-object v0

    #@35
    .line 1112
    sput-object v0, Landroid/telephony/TelephonyManager;->sProductTypePattern:Ljava/util/regex/Pattern;

    #@37
    .line 1117
    const-string/jumbo v0, "telephony.lteOnCdmaProductType"

    #@3a
    const-string/jumbo v1, ""

    #@3d
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@40
    move-result-object v0

    #@41
    .line 1116
    sput-object v0, Landroid/telephony/TelephonyManager;->sLteOnCdmaProductType:Ljava/lang/String;

    #@43
    .line 70
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 126
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    #@6
    .line 125
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 110
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    #@6
    move-result-object v0

    #@7
    .line 111
    .local v0, "appContext":Landroid/content/Context;
    if-eqz v0, :cond_1

    #@9
    .line 112
    iput-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    #@b
    .line 116
    :goto_0
    iget-object v1, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    #@d
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    #@10
    move-result-object v1

    #@11
    iput-object v1, p0, Landroid/telephony/TelephonyManager;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    #@13
    .line 118
    sget-object v1, Landroid/telephony/TelephonyManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    #@15
    if-nez v1, :cond_0

    #@17
    .line 120
    const-string/jumbo v1, "telephony.registry"

    #@1a
    .line 119
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@1d
    move-result-object v1

    #@1e
    invoke-static {v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    #@21
    move-result-object v1

    #@22
    sput-object v1, Landroid/telephony/TelephonyManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    #@24
    .line 109
    :cond_0
    return-void

    #@25
    .line 114
    :cond_1
    iput-object p1, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    #@27
    goto :goto_0
.end method

.method public static from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 195
    const-string/jumbo v0, "phone"

    #@3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroid/telephony/TelephonyManager;

    #@9
    return-object v0
.end method

.method public static getDefault()Landroid/telephony/TelephonyManager;
    .locals 1

    #@0
    .prologue
    .line 134
    sget-object v0, Landroid/telephony/TelephonyManager;->sInstance:Landroid/telephony/TelephonyManager;

    #@2
    return-object v0
.end method

.method private static getDefaultPhone()I
    .locals 1

    #@0
    .prologue
    .line 3180
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    #@3
    move-result v0

    #@4
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method private static getDefaultSubscription()I
    .locals 1

    #@0
    .prologue
    .line 3173
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method private getITelephony()Lcom/android/internal/telephony/ITelephony;
    .locals 1

    #@0
    .prologue
    .line 2632
    const-string/jumbo v0, "phone"

    #@3
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@6
    move-result-object v0

    #@7
    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public static getIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 4
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 3262
    invoke-static {p0, p1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 3263
    .local v1, "v":Ljava/lang/String;
    if-eqz v1, :cond_0

    #@6
    .line 3264
    const-string/jumbo v3, ","

    #@9
    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@c
    move-result-object v2

    #@d
    .line 3265
    .local v2, "valArray":[Ljava/lang/String;
    if-ltz p2, :cond_0

    #@f
    array-length v3, v2

    #@10
    if-ge p2, v3, :cond_0

    #@12
    aget-object v3, v2, p2

    #@14
    if-eqz v3, :cond_0

    #@16
    .line 3267
    :try_start_0
    aget-object v3, v2, p2

    #@18
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@1b
    move-result v3

    #@1c
    return v3

    #@1d
    .line 3268
    :catch_0
    move-exception v0

    #@1e
    .line 3273
    .end local v2    # "valArray":[Ljava/lang/String;
    :cond_0
    new-instance v3, Landroid/provider/Settings$SettingNotFoundException;

    #@20
    invoke-direct {v3, p1}, Landroid/provider/Settings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    #@23
    throw v3
.end method

.method public static getIntWithSubId(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 7
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 4309
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8
    move-result-object v4

    #@9
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@c
    move-result-object v4

    #@d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10
    move-result-object v4

    #@11
    invoke-static {p0, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    move-result v4

    #@15
    return v4

    #@16
    .line 4310
    :catch_0
    move-exception v1

    #@17
    .line 4312
    .local v1, "e":Landroid/provider/Settings$SettingNotFoundException;
    :try_start_1
    invoke-static {p0, p1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    #@1a
    move-result v3

    #@1b
    .line 4313
    .local v3, "val":I
    new-instance v4, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v4

    #@24
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@27
    move-result-object v4

    #@28
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v4

    #@2c
    invoke-static {p0, v4, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    #@2f
    .line 4318
    move v0, v3

    #@30
    .line 4319
    .local v0, "default_val":I
    const-string/jumbo v4, "mobile_data"

    #@33
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@36
    move-result v4

    #@37
    if-eqz v4, :cond_3

    #@39
    .line 4320
    const-string/jumbo v4, "true"

    #@3c
    .line 4321
    const-string/jumbo v5, "ro.com.android.mobiledata"

    #@3f
    const-string/jumbo v6, "true"

    #@42
    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@45
    move-result-object v5

    #@46
    .line 4320
    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@49
    move-result v4

    #@4a
    if-eqz v4, :cond_2

    #@4c
    .line 4321
    const/4 v0, 0x1

    #@4d
    .line 4327
    :cond_0
    :goto_0
    if-eq v0, v3, :cond_1

    #@4f
    .line 4328
    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    #@52
    .line 4331
    :cond_1
    return v3

    #@53
    .line 4321
    :cond_2
    const/4 v0, 0x0

    #@54
    goto :goto_0

    #@55
    .line 4322
    :cond_3
    const-string/jumbo v4, "data_roaming"

    #@58
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5b
    move-result v4

    #@5c
    if-eqz v4, :cond_0

    #@5e
    .line 4323
    const-string/jumbo v4, "true"

    #@61
    .line 4324
    const-string/jumbo v5, "ro.com.android.dataroaming"

    #@64
    const-string/jumbo v6, "false"

    #@67
    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@6a
    move-result-object v5

    #@6b
    .line 4323
    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    #@6e
    move-result v4

    #@6f
    if-eqz v4, :cond_4

    #@71
    .line 4324
    const/4 v0, 0x1

    #@72
    goto :goto_0

    #@73
    :cond_4
    const/4 v0, 0x0

    #@74
    goto :goto_0

    #@75
    .line 4332
    .end local v0    # "default_val":I
    .end local v3    # "val":I
    :catch_1
    move-exception v2

    #@76
    .line 4333
    .local v2, "exc":Landroid/provider/Settings$SettingNotFoundException;
    new-instance v4, Landroid/provider/Settings$SettingNotFoundException;

    #@78
    invoke-direct {v4, p1}, Landroid/provider/Settings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    #@7b
    throw v4
.end method

.method public static getLteOnCdmaModeStatic()I
    .locals 7

    #@0
    .prologue
    const/4 v5, -0x1

    #@1
    .line 1132
    const-string/jumbo v2, ""

    #@4
    .line 1134
    .local v2, "productType":Ljava/lang/String;
    const-string/jumbo v4, "telephony.lteOnCdmaDevice"

    #@7
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    #@a
    move-result v0

    #@b
    .line 1136
    .local v0, "curVal":I
    move v3, v0

    #@c
    .line 1137
    .local v3, "retVal":I
    if-ne v3, v5, :cond_0

    #@e
    .line 1138
    sget-object v4, Landroid/telephony/TelephonyManager;->sProductTypePattern:Ljava/util/regex/Pattern;

    #@10
    sget-object v5, Landroid/telephony/TelephonyManager;->sKernelCmdLine:Ljava/lang/String;

    #@12
    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@15
    move-result-object v1

    #@16
    .line 1139
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    #@19
    move-result v4

    #@1a
    if-eqz v4, :cond_2

    #@1c
    .line 1140
    const/4 v4, 0x1

    #@1d
    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@20
    move-result-object v2

    #@21
    .line 1141
    sget-object v4, Landroid/telephony/TelephonyManager;->sLteOnCdmaProductType:Ljava/lang/String;

    #@23
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@26
    move-result v4

    #@27
    if-eqz v4, :cond_1

    #@29
    .line 1142
    const/4 v3, 0x1

    #@2a
    .line 1151
    .end local v1    # "matcher":Ljava/util/regex/Matcher;
    :cond_0
    :goto_0
    const-string/jumbo v4, "TelephonyManager"

    #@2d
    new-instance v5, Ljava/lang/StringBuilder;

    #@2f
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@32
    const-string/jumbo v6, "getLteOnCdmaMode="

    #@35
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v5

    #@39
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v5

    #@3d
    const-string/jumbo v6, " curVal="

    #@40
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v5

    #@44
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@47
    move-result-object v5

    #@48
    .line 1152
    const-string/jumbo v6, " product_type=\'"

    #@4b
    .line 1151
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v5

    #@4f
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v5

    #@53
    .line 1153
    const-string/jumbo v6, "\' lteOnCdmaProductType=\'"

    #@56
    .line 1151
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v5

    #@5a
    .line 1153
    sget-object v6, Landroid/telephony/TelephonyManager;->sLteOnCdmaProductType:Ljava/lang/String;

    #@5c
    .line 1151
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v5

    #@60
    .line 1153
    const-string/jumbo v6, "\'"

    #@63
    .line 1151
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v5

    #@67
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6a
    move-result-object v5

    #@6b
    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@6e
    .line 1154
    return v3

    #@6f
    .line 1144
    .restart local v1    # "matcher":Ljava/util/regex/Matcher;
    :cond_1
    const/4 v3, 0x0

    #@70
    goto :goto_0

    #@71
    .line 1147
    :cond_2
    const/4 v3, 0x0

    #@72
    goto :goto_0
.end method

.method public static getNetworkClass(I)I
    .locals 1
    .param p0, "networkType"    # I

    #@0
    .prologue
    .line 1521
    packed-switch p0, :pswitch_data_0

    #@3
    .line 1544
    const/4 v0, 0x0

    #@4
    return v0

    #@5
    .line 1528
    :pswitch_0
    const/4 v0, 0x1

    #@6
    return v0

    #@7
    .line 1539
    :pswitch_1
    const/4 v0, 0x2

    #@8
    return v0

    #@9
    .line 1542
    :pswitch_2
    const/4 v0, 0x3

    #@a
    return v0

    #@b
    .line 1521
    nop

    #@c
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getNetworkTypeName(I)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I

    #@0
    .prologue
    .line 1568
    packed-switch p0, :pswitch_data_0

    #@3
    .line 1606
    const-string/jumbo v0, "UNKNOWN"

    #@6
    return-object v0

    #@7
    .line 1570
    :pswitch_0
    const-string/jumbo v0, "GPRS"

    #@a
    return-object v0

    #@b
    .line 1572
    :pswitch_1
    const-string/jumbo v0, "EDGE"

    #@e
    return-object v0

    #@f
    .line 1574
    :pswitch_2
    const-string/jumbo v0, "UMTS"

    #@12
    return-object v0

    #@13
    .line 1576
    :pswitch_3
    const-string/jumbo v0, "HSDPA"

    #@16
    return-object v0

    #@17
    .line 1578
    :pswitch_4
    const-string/jumbo v0, "HSUPA"

    #@1a
    return-object v0

    #@1b
    .line 1580
    :pswitch_5
    const-string/jumbo v0, "HSPA"

    #@1e
    return-object v0

    #@1f
    .line 1582
    :pswitch_6
    const-string/jumbo v0, "CDMA"

    #@22
    return-object v0

    #@23
    .line 1584
    :pswitch_7
    const-string/jumbo v0, "CDMA - EvDo rev. 0"

    #@26
    return-object v0

    #@27
    .line 1586
    :pswitch_8
    const-string/jumbo v0, "CDMA - EvDo rev. A"

    #@2a
    return-object v0

    #@2b
    .line 1588
    :pswitch_9
    const-string/jumbo v0, "CDMA - EvDo rev. B"

    #@2e
    return-object v0

    #@2f
    .line 1590
    :pswitch_a
    const-string/jumbo v0, "CDMA - 1xRTT"

    #@32
    return-object v0

    #@33
    .line 1592
    :pswitch_b
    const-string/jumbo v0, "LTE"

    #@36
    return-object v0

    #@37
    .line 1594
    :pswitch_c
    const-string/jumbo v0, "CDMA - eHRPD"

    #@3a
    return-object v0

    #@3b
    .line 1596
    :pswitch_d
    const-string/jumbo v0, "iDEN"

    #@3e
    return-object v0

    #@3f
    .line 1598
    :pswitch_e
    const-string/jumbo v0, "HSPA+"

    #@42
    return-object v0

    #@43
    .line 1600
    :pswitch_f
    const-string/jumbo v0, "GSM"

    #@46
    return-object v0

    #@47
    .line 1602
    :pswitch_10
    const-string/jumbo v0, "TD_SCDMA"

    #@4a
    return-object v0

    #@4b
    .line 1604
    :pswitch_11
    const-string/jumbo v0, "IWLAN"

    #@4e
    return-object v0

    #@4f
    .line 1568
    nop

    #@50
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_a
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_d
        :pswitch_9
        :pswitch_b
        :pswitch_c
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method

.method private getOpPackageName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 142
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 143
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    #@6
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    return-object v0

    #@b
    .line 145
    :cond_0
    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    return-object v0
.end method

.method public static getPhoneType(I)I
    .locals 3
    .param p0, "networkMode"    # I

    #@0
    .prologue
    const/4 v2, 0x2

    #@1
    const/4 v1, 0x1

    #@2
    .line 1049
    packed-switch p0, :pswitch_data_0

    #@5
    .line 1076
    return v1

    #@6
    .line 1053
    :pswitch_0
    return v2

    #@7
    .line 1062
    :pswitch_1
    return v1

    #@8
    .line 1067
    :pswitch_2
    return v2

    #@9
    .line 1070
    :pswitch_3
    invoke-static {}, Landroid/telephony/TelephonyManager;->getLteOnCdmaModeStatic()I

    #@c
    move-result v0

    #@d
    if-ne v0, v1, :cond_0

    #@f
    .line 1071
    return v2

    #@10
    .line 1073
    :cond_0
    return v1

    #@11
    .line 1049
    nop

    #@12
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method private getPhoneTypeFromNetworkType()I
    .locals 1

    #@0
    .prologue
    .line 1024
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultPhone()I

    #@3
    move-result v0

    #@4
    invoke-direct {p0, v0}, Landroid/telephony/TelephonyManager;->getPhoneTypeFromNetworkType(I)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method private getPhoneTypeFromNetworkType(I)I
    .locals 3
    .param p1, "phoneId"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1032
    const-string/jumbo v1, "ro.telephony.default_network"

    #@4
    invoke-static {p1, v1, v2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    .line 1033
    .local v0, "mode":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@a
    .line 1034
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@d
    move-result v1

    #@e
    invoke-static {v1}, Landroid/telephony/TelephonyManager;->getPhoneType(I)I

    #@11
    move-result v1

    #@12
    return v1

    #@13
    .line 1036
    :cond_0
    const/4 v1, 0x0

    #@14
    return v1
.end method

.method private getPhoneTypeFromProperty()I
    .locals 1

    #@0
    .prologue
    .line 1010
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultPhone()I

    #@3
    move-result v0

    #@4
    invoke-direct {p0, v0}, Landroid/telephony/TelephonyManager;->getPhoneTypeFromProperty(I)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method private getPhoneTypeFromProperty(I)I
    .locals 3
    .param p1, "phoneId"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1016
    const-string/jumbo v1, "gsm.current.phone-type"

    #@4
    .line 1015
    invoke-static {p1, v1, v2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    .line 1017
    .local v0, "type":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@a
    const-string/jumbo v1, ""

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_1

    #@13
    .line 1018
    :cond_0
    invoke-direct {p0, p1}, Landroid/telephony/TelephonyManager;->getPhoneTypeFromNetworkType(I)I

    #@16
    move-result v1

    #@17
    return v1

    #@18
    .line 1020
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@1b
    move-result v1

    #@1c
    return v1
.end method

.method private static getProcCmdLine()Ljava/lang/String;
    .locals 10

    #@0
    .prologue
    .line 1085
    const-string/jumbo v1, ""

    #@3
    .line 1086
    .local v1, "cmdline":Ljava/lang/String;
    const/4 v5, 0x0

    #@4
    .line 1088
    .local v5, "is":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    #@6
    const-string/jumbo v7, "/proc/cmdline"

    #@9
    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    .line 1089
    .end local v5    # "is":Ljava/io/FileInputStream;
    .local v6, "is":Ljava/io/FileInputStream;
    const/16 v7, 0x800

    #@e
    :try_start_1
    new-array v0, v7, [B

    #@10
    .line 1090
    .local v0, "buffer":[B
    invoke-virtual {v6, v0}, Ljava/io/FileInputStream;->read([B)I

    #@13
    move-result v3

    #@14
    .line 1091
    .local v3, "count":I
    if-lez v3, :cond_0

    #@16
    .line 1092
    new-instance v2, Ljava/lang/String;

    #@18
    const/4 v7, 0x0

    #@19
    invoke-direct {v2, v0, v7, v3}, Ljava/lang/String;-><init>([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@1c
    .end local v1    # "cmdline":Ljava/lang/String;
    .local v2, "cmdline":Ljava/lang/String;
    move-object v1, v2

    #@1d
    .line 1097
    .end local v2    # "cmdline":Ljava/lang/String;
    .restart local v1    # "cmdline":Ljava/lang/String;
    :cond_0
    if-eqz v6, :cond_1

    #@1f
    .line 1099
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    #@22
    :cond_1
    :goto_0
    move-object v5, v6

    #@23
    .line 1104
    .end local v0    # "buffer":[B
    .end local v3    # "count":I
    .end local v6    # "is":Ljava/io/FileInputStream;
    :cond_2
    :goto_1
    const-string/jumbo v7, "TelephonyManager"

    #@26
    new-instance v8, Ljava/lang/StringBuilder;

    #@28
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@2b
    const-string/jumbo v9, "/proc/cmdline="

    #@2e
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v8

    #@32
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v8

    #@36
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v8

    #@3a
    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@3d
    .line 1105
    return-object v1

    #@3e
    .line 1100
    .restart local v0    # "buffer":[B
    .restart local v3    # "count":I
    .restart local v6    # "is":Ljava/io/FileInputStream;
    :catch_0
    move-exception v4

    #@3f
    .local v4, "e":Ljava/io/IOException;
    goto :goto_0

    #@40
    .line 1094
    .end local v0    # "buffer":[B
    .end local v3    # "count":I
    .end local v4    # "e":Ljava/io/IOException;
    .end local v6    # "is":Ljava/io/FileInputStream;
    .restart local v5    # "is":Ljava/io/FileInputStream;
    :catch_1
    move-exception v4

    #@41
    .line 1095
    .end local v5    # "is":Ljava/io/FileInputStream;
    .restart local v4    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    const-string/jumbo v7, "TelephonyManager"

    #@44
    new-instance v8, Ljava/lang/StringBuilder;

    #@46
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@49
    const-string/jumbo v9, "No /proc/cmdline exception="

    #@4c
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v8

    #@50
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v8

    #@54
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57
    move-result-object v8

    #@58
    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@5b
    .line 1097
    if-eqz v5, :cond_2

    #@5d
    .line 1099
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    #@60
    goto :goto_1

    #@61
    .line 1100
    :catch_2
    move-exception v4

    #@62
    goto :goto_1

    #@63
    .line 1096
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    #@64
    .line 1097
    :goto_3
    if-eqz v5, :cond_3

    #@66
    .line 1099
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    #@69
    .line 1096
    :cond_3
    :goto_4
    throw v7

    #@6a
    .line 1100
    :catch_3
    move-exception v4

    #@6b
    .restart local v4    # "e":Ljava/io/IOException;
    goto :goto_4

    #@6c
    .line 1096
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v6    # "is":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v7

    #@6d
    move-object v5, v6

    #@6e
    .end local v6    # "is":Ljava/io/FileInputStream;
    .local v5, "is":Ljava/io/FileInputStream;
    goto :goto_3

    #@6f
    .line 1094
    .end local v5    # "is":Ljava/io/FileInputStream;
    .restart local v6    # "is":Ljava/io/FileInputStream;
    :catch_4
    move-exception v4

    #@70
    .restart local v4    # "e":Ljava/io/IOException;
    move-object v5, v6

    #@71
    .end local v6    # "is":Ljava/io/FileInputStream;
    .restart local v5    # "is":Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method private getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;
    .locals 1

    #@0
    .prologue
    .line 2495
    const-string/jumbo v0, "iphonesubinfo"

    #@3
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@6
    move-result-object v0

    #@7
    invoke-static {v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IPhoneSubInfo;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method private getTelecomService()Lcom/android/internal/telecom/ITelecomService;
    .locals 1

    #@0
    .prologue
    .line 2639
    const-string/jumbo v0, "telecom"

    #@3
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@6
    move-result-object v0

    #@7
    invoke-static {v0}, Lcom/android/internal/telecom/ITelecomService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/ITelecomService;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public static getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "phoneId"    # I
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "defaultVal"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3333
    const/4 v1, 0x0

    #@1
    .line 3334
    .local v1, "propVal":Ljava/lang/String;
    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    .line 3335
    .local v0, "prop":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@7
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@a
    move-result v3

    #@b
    if-lez v3, :cond_0

    #@d
    .line 3336
    const-string/jumbo v3, ","

    #@10
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@13
    move-result-object v2

    #@14
    .line 3337
    .local v2, "values":[Ljava/lang/String;
    if-ltz p0, :cond_0

    #@16
    array-length v3, v2

    #@17
    if-ge p0, v3, :cond_0

    #@19
    aget-object v3, v2, p0

    #@1b
    if-eqz v3, :cond_0

    #@1d
    .line 3338
    aget-object v1, v2, p0

    #@1f
    .line 3341
    .end local v1    # "propVal":Ljava/lang/String;
    .end local v2    # "values":[Ljava/lang/String;
    :cond_0
    if-nez v1, :cond_1

    #@21
    .end local p2    # "defaultVal":Ljava/lang/String;
    :goto_0
    return-object p2

    #@22
    .restart local p2    # "defaultVal":Ljava/lang/String;
    :cond_1
    move-object p2, v1

    #@23
    goto :goto_0
.end method

.method public static putIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    .locals 8
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "value"    # I

    #@0
    .prologue
    .line 3293
    const-string/jumbo v0, ""

    #@3
    .line 3294
    .local v0, "data":Ljava/lang/String;
    const/4 v4, 0x0

    #@4
    .line 3295
    .local v4, "valArray":[Ljava/lang/String;
    invoke-static {p0, p1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v3

    #@8
    .line 3297
    .local v3, "v":Ljava/lang/String;
    const v5, 0x7fffffff

    #@b
    if-ne p2, v5, :cond_0

    #@d
    .line 3298
    new-instance v5, Ljava/lang/RuntimeException;

    #@f
    new-instance v6, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v7, "putIntAtIndex index == MAX_VALUE index="

    #@17
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v6

    #@1b
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v6

    #@1f
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v6

    #@23
    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@26
    throw v5

    #@27
    .line 3300
    :cond_0
    if-gez p2, :cond_1

    #@29
    .line 3301
    new-instance v5, Ljava/lang/RuntimeException;

    #@2b
    new-instance v6, Ljava/lang/StringBuilder;

    #@2d
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@30
    const-string/jumbo v7, "putIntAtIndex index < 0 index="

    #@33
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v6

    #@37
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v6

    #@3b
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v6

    #@3f
    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@42
    throw v5

    #@43
    .line 3303
    :cond_1
    if-eqz v3, :cond_2

    #@45
    .line 3304
    const-string/jumbo v5, ","

    #@48
    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@4b
    move-result-object v4

    #@4c
    .line 3308
    .end local v4    # "valArray":[Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    #@4d
    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_4

    #@4f
    .line 3309
    const-string/jumbo v2, ""

    #@52
    .line 3310
    .local v2, "str":Ljava/lang/String;
    if-eqz v4, :cond_3

    #@54
    array-length v5, v4

    #@55
    if-ge v1, v5, :cond_3

    #@57
    .line 3311
    aget-object v2, v4, v1

    #@59
    .line 3313
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    #@5b
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@5e
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v5

    #@62
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v5

    #@66
    const-string/jumbo v6, ","

    #@69
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v5

    #@6d
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@70
    move-result-object v0

    #@71
    .line 3308
    add-int/lit8 v1, v1, 0x1

    #@73
    goto :goto_0

    #@74
    .line 3316
    .end local v2    # "str":Ljava/lang/String;
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    #@76
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@79
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v5

    #@7d
    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@80
    move-result-object v5

    #@81
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@84
    move-result-object v0

    #@85
    .line 3319
    if-eqz v4, :cond_5

    #@87
    .line 3320
    add-int/lit8 v1, p2, 0x1

    #@89
    :goto_1
    array-length v5, v4

    #@8a
    if-ge v1, v5, :cond_5

    #@8c
    .line 3321
    new-instance v5, Ljava/lang/StringBuilder;

    #@8e
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@91
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@94
    move-result-object v5

    #@95
    const-string/jumbo v6, ","

    #@98
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v5

    #@9c
    aget-object v6, v4, v1

    #@9e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v5

    #@a2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a5
    move-result-object v0

    #@a6
    .line 3320
    add-int/lit8 v1, v1, 0x1

    #@a8
    goto :goto_1

    #@a9
    .line 3324
    :cond_5
    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    #@ac
    move-result v5

    #@ad
    return v5
.end method

.method public static setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p0, "phoneId"    # I
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3194
    const-string/jumbo v3, ""

    #@3
    .line 3195
    .local v3, "propVal":Ljava/lang/String;
    const/4 v1, 0x0

    #@4
    .line 3196
    .local v1, "p":[Ljava/lang/String;
    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v2

    #@8
    .line 3198
    .local v2, "prop":Ljava/lang/String;
    if-nez p2, :cond_0

    #@a
    .line 3199
    const-string/jumbo p2, ""

    #@d
    .line 3202
    :cond_0
    if-eqz v2, :cond_1

    #@f
    .line 3203
    const-string/jumbo v5, ","

    #@12
    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    .line 3206
    .end local v1    # "p":[Ljava/lang/String;
    :cond_1
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    #@19
    move-result v5

    #@1a
    if-nez v5, :cond_2

    #@1c
    .line 3207
    const-string/jumbo v5, "TelephonyManager"

    #@1f
    new-instance v6, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string/jumbo v7, "setTelephonyProperty: invalid phoneId="

    #@27
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v6

    #@2b
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v6

    #@2f
    .line 3208
    const-string/jumbo v7, " property="

    #@32
    .line 3207
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v6

    #@36
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v6

    #@3a
    .line 3208
    const-string/jumbo v7, " value: "

    #@3d
    .line 3207
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v6

    #@41
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v6

    #@45
    .line 3208
    const-string/jumbo v7, " prop="

    #@48
    .line 3207
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v6

    #@4c
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v6

    #@50
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@53
    move-result-object v6

    #@54
    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@57
    .line 3209
    return-void

    #@58
    .line 3212
    :cond_2
    const/4 v0, 0x0

    #@59
    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_4

    #@5b
    .line 3213
    const-string/jumbo v4, ""

    #@5e
    .line 3214
    .local v4, "str":Ljava/lang/String;
    if-eqz v1, :cond_3

    #@60
    array-length v5, v1

    #@61
    if-ge v0, v5, :cond_3

    #@63
    .line 3215
    aget-object v4, v1, v0

    #@65
    .line 3217
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    #@67
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@6a
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v5

    #@6e
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v5

    #@72
    const-string/jumbo v6, ","

    #@75
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v5

    #@79
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7c
    move-result-object v3

    #@7d
    .line 3212
    add-int/lit8 v0, v0, 0x1

    #@7f
    goto :goto_0

    #@80
    .line 3220
    .end local v4    # "str":Ljava/lang/String;
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    #@82
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@85
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v5

    #@89
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v5

    #@8d
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@90
    move-result-object v3

    #@91
    .line 3221
    if-eqz v1, :cond_5

    #@93
    .line 3222
    add-int/lit8 v0, p0, 0x1

    #@95
    :goto_1
    array-length v5, v1

    #@96
    if-ge v0, v5, :cond_5

    #@98
    .line 3223
    new-instance v5, Ljava/lang/StringBuilder;

    #@9a
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@9d
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a0
    move-result-object v5

    #@a1
    const-string/jumbo v6, ","

    #@a4
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v5

    #@a8
    aget-object v6, v1, v0

    #@aa
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ad
    move-result-object v5

    #@ae
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b1
    move-result-object v3

    #@b2
    .line 3222
    add-int/lit8 v0, v0, 0x1

    #@b4
    goto :goto_1

    #@b5
    .line 3227
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@b8
    move-result v5

    #@b9
    const/16 v6, 0x1f

    #@bb
    if-gt v5, v6, :cond_6

    #@bd
    .line 3228
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@c0
    move-result v5

    #@c1
    const/16 v6, 0x5b

    #@c3
    if-le v5, v6, :cond_7

    #@c5
    .line 3229
    :cond_6
    const-string/jumbo v5, "TelephonyManager"

    #@c8
    new-instance v6, Ljava/lang/StringBuilder;

    #@ca
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@cd
    const-string/jumbo v7, "setTelephonyProperty: property to long phoneId="

    #@d0
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d3
    move-result-object v6

    #@d4
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@d7
    move-result-object v6

    #@d8
    .line 3230
    const-string/jumbo v7, " property="

    #@db
    .line 3229
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@de
    move-result-object v6

    #@df
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e2
    move-result-object v6

    #@e3
    .line 3230
    const-string/jumbo v7, " value: "

    #@e6
    .line 3229
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e9
    move-result-object v6

    #@ea
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ed
    move-result-object v6

    #@ee
    .line 3230
    const-string/jumbo v7, " propVal="

    #@f1
    .line 3229
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f4
    move-result-object v6

    #@f5
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f8
    move-result-object v6

    #@f9
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@fc
    move-result-object v6

    #@fd
    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@100
    .line 3231
    return-void

    #@101
    .line 3234
    :cond_7
    const-string/jumbo v5, "TelephonyManager"

    #@104
    new-instance v6, Ljava/lang/StringBuilder;

    #@106
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@109
    const-string/jumbo v7, "setTelephonyProperty: success phoneId="

    #@10c
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10f
    move-result-object v6

    #@110
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@113
    move-result-object v6

    #@114
    .line 3235
    const-string/jumbo v7, " property="

    #@117
    .line 3234
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11a
    move-result-object v6

    #@11b
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11e
    move-result-object v6

    #@11f
    .line 3235
    const-string/jumbo v7, " value: "

    #@122
    .line 3234
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@125
    move-result-object v6

    #@126
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@129
    move-result-object v6

    #@12a
    .line 3235
    const-string/jumbo v7, " propVal="

    #@12d
    .line 3234
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@130
    move-result-object v6

    #@131
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@134
    move-result-object v6

    #@135
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@138
    move-result-object v6

    #@139
    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@13c
    .line 3236
    invoke-static {p1, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@13f
    .line 3193
    return-void
.end method


# virtual methods
.method public answerRingingCall()V
    .locals 4

    #@0
    .prologue
    .line 3873
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    #@3
    move-result-object v1

    #@4
    .line 3874
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    #@6
    .line 3875
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->answerRingingCall()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 3871
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return-void

    #@a
    .line 3876
    :catch_0
    move-exception v0

    #@b
    .line 3877
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManager"

    #@e
    const-string/jumbo v3, "Error calling ITelephony#answerRingingCall"

    #@11
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@14
    goto :goto_0
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3848
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    #@3
    move-result-object v1

    #@4
    .line 3849
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    #@6
    .line 3850
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->call(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 3846
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return-void

    #@a
    .line 3851
    :catch_0
    move-exception v0

    #@b
    .line 3852
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManager"

    #@e
    const-string/jumbo v3, "Error calling ITelephony#call"

    #@11
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@14
    goto :goto_0
.end method

.method public canChangeDtmfToneLength()Z
    .locals 5

    #@0
    .prologue
    .line 4230
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    #@3
    move-result-object v2

    #@4
    .line 4231
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    #@6
    .line 4232
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->canChangeDtmfToneLength()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result v3

    #@a
    return v3

    #@b
    .line 4236
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    #@c
    .line 4237
    .local v1, "e":Ljava/lang/SecurityException;
    const-string/jumbo v3, "TelephonyManager"

    #@f
    const-string/jumbo v4, "Permission error calling ITelephony#canChangeDtmfToneLength"

    #@12
    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@15
    .line 4239
    .end local v1    # "e":Ljava/lang/SecurityException;
    :cond_0
    :goto_0
    const/4 v3, 0x0

    #@16
    return v3

    #@17
    .line 4234
    :catch_1
    move-exception v0

    #@18
    .line 4235
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "TelephonyManager"

    #@1b
    const-string/jumbo v4, "Error calling ITelephony#canChangeDtmfToneLength"

    #@1e
    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@21
    goto :goto_0
.end method

.method public checkCarrierPrivilegesForPackage(Ljava/lang/String;)I
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3785
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    #@3
    move-result-object v2

    #@4
    .line 3786
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    #@6
    .line 3787
    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->checkCarrierPrivilegesForPackage(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result v3

    #@a
    return v3

    #@b
    .line 3790
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    #@c
    .line 3791
    .local v1, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "TelephonyManager"

    #@f
    const-string/jumbo v4, "checkCarrierPrivilegesForPackage NPE"

    #@12
    invoke-static {v3, v4, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@15
    .line 3793
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :cond_0
    :goto_0
    const/4 v3, 0x0

    #@16
    return v3

    #@17
    .line 3788
    :catch_1
    move-exception v0

    #@18
    .line 3789
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v3, "TelephonyManager"

    #@1b
    const-string/jumbo v4, "checkCarrierPrivilegesForPackage RemoteException"

    #@1e
    invoke-static {v3, v4, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@21
    goto :goto_0
.end method

.method public checkCarrierPrivilegesForPackageAnyPhone(Ljava/lang/String;)I
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3800
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    #@3
    move-result-object v2

    #@4
    .line 3801
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    #@6
    .line 3802
    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->checkCarrierPrivilegesForPackageAnyPhone(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result v3

    #@a
    return v3

    #@b
    .line 3805
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    #@c
    .line 3806
    .local v1, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "TelephonyManager"

    #@f
    const-string/jumbo v4, "checkCarrierPrivilegesForPackageAnyPhone NPE"

    #@12
    invoke-static {v3, v4, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@15
    .line 3808
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :cond_0
    :goto_0
    const/4 v3, 0x0

    #@16
    return v3

    #@17
    .line 3803
    :catch_1
    move-exception v0

    #@18
    .line 3804
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v3, "TelephonyManager"

    #@1b
    const-string/jumbo v4, "checkCarrierPrivilegesForPackageAnyPhone RemoteException"

    #@1e
    invoke-static {v3, v4, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@21
    goto :goto_0
.end method

.method public dial(Ljava/lang/String;)V
    .locals 4
    .param p1, "number"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3836
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    #@3
    move-result-object v1

    #@4
    .line 3837
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    #@6
    .line 3838
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->dial(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 3834
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return-void

    #@a
    .line 3839
    :catch_0
    move-exception v0

    #@b
    .line 3840
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManager"

    #@e
    const-string/jumbo v3, "Error calling ITelephony#dial"

    #@11
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@14
    goto :goto_0
.end method

.method public disableDataConnectivity()Z
    .locals 4

    #@0
    .prologue
    .line 4101
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    #@3
    move-result-object v1

    #@4
    .line 4102
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    #@6
    .line 4103
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->disableDataConnectivity()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result v2

    #@a
    return v2

    #@b
    .line 4104
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    #@c
    .line 4105
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManager"

    #@f
    const-string/jumbo v3, "Error calling ITelephony#disableDataConnectivity"

    #@12
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@15
    .line 4107
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    #@16
    return v2
.end method

.method public disableLocationUpdates()V
    .locals 1

    #@0
    .prologue
    .line 890
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->disableLocationUpdates(I)V

    #@7
    .line 889
    return-void
.end method

.method public disableLocationUpdates(I)V
    .locals 3
    .param p1, "subId"    # I

    #@0
    .prologue
    .line 896
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    #@3
    move-result-object v2

    #@4
    .line 897
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    #@6
    .line 898
    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->disableLocationUpdatesForSubscriber(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    #@9
    .line 894
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return-void

    #@a
    .line 899
    :catch_0
    move-exception v0

    #@b
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    #@c
    .line 900
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    #@d
    .local v1, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public enableDataConnectivity()Z
    .locals 4

    #@0
    .prologue
    .line 4088
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    #@3
    move-result-object v1

    #@4
    .line 4089
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    #@6
    .line 4090
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->enableDataConnectivity()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result v2

    #@a
    return v2

    #@b
    .line 4091
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    #@c
    .line 4092
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManager"

    #@f
    const-string/jumbo v3, "Error calling ITelephony#enableDataConnectivity"

    #@12
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@15
    .line 4094
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    #@16
    return v2
.end method

.method public enableLocationUpdates()V
    .locals 1

    #@0
    .prologue
    .line 856
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->enableLocationUpdates(I)V

    #@7
    .line 855
    return-void
.end method

.method public enableLocationUpdates(I)V
    .locals 3
    .param p1, "subId"    # I

    #@0
    .prologue
    .line 872
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    #@3
    move-result-object v2

    #@4
    .line 873
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    #@6
    .line 874
    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->enableLocationUpdatesForSubscriber(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    #@9
    .line 870
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return-void

    #@a
    .line 875
    :catch_0
    move-exception v0

    #@b
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    #@c
    .line 876
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    #@d
    .local v1, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public enableVideoCalling(Z)V
    .locals 4
    .param p1, "enable"    # Z

    #@0
    .prologue
    .line 4202
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    #@3
    move-result-object v1

    #@4
    .line 4203
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    #@6
    .line 4204
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->enableVideoCalling(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 4200
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return-void

    #@a
    .line 4205
    :catch_0
    move-exception v0

    #@b
    .line 4206
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManager"

    #@e
    const-string/jumbo v3, "Error calling ITelephony#enableVideoCalling"

    #@11
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@14
    goto :goto_0
.end method

.method public endCall()Z
    .locals 4

    #@0
    .prologue
    .line 3860
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    #@3
    move-result-object v1

    #@4
    .line 3861
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    #@6
    .line 3862
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->endCall()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result v2

    #@a
    return v2

    #@b
    .line 3863
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    #@c
    .line 3864
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManager"

    #@f
    const-string/jumbo v3, "Error calling ITelephony#endCall"

    #@12
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@15
    .line 3866
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    #@16
    return v2
.end method

.method public factoryReset(I)V
    .locals 5
    .param p1, "subId"    # I

    #@0
    .prologue
    .line 4747
    :try_start_0
    const-string/jumbo v2, "TelephonyManager"

    #@3
    new-instance v3, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v4, "factoryReset: subId="

    #@b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v3

    #@f
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12
    move-result-object v3

    #@13
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v3

    #@17
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1a
    .line 4748
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    #@1d
    move-result-object v1

    #@1e
    .line 4749
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    #@20
    .line 4750
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->factoryReset(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@23
    .line 4745
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return-void

    #@24
    .line 4751
    :catch_0
    move-exception v0

    #@25
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getAllCellInfo()Ljava/util/List;
    .locals 5
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
    const/4 v4, 0x0

    #@1
    .line 2847
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    #@4
    move-result-object v2

    #@5
    .line 2848
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v2, :cond_0

    #@7
    .line 2849
    return-object v4

    #@8
    .line 2850
    :cond_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    #@b
    move-result-object v3

    #@c
    invoke-interface {v2, v3}, Lcom/android/internal/telephony/ITelephony;->getAllCellInfo(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    move-result-object v3

    #@10
    return-object v3

    #@11
    .line 2853
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    #@12
    .line 2854
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v4

    #@13
    .line 2851
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    #@14
    .line 2852
    .local v0, "ex":Landroid/os/RemoteException;
    return-object v4
.end method

.method public getCallState()I
    .locals 4

    #@0
    .prologue
    .line 2519
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    #@3
    move-result-object v1

    #@4
    .line 2520
    .local v1, "telecom":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v1, :cond_0

    #@6
    .line 2521
    invoke-interface {v1}, Lcom/android/internal/telecom/ITelecomService;->getCallState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result v2

    #@a
    return v2

    #@b
    .line 2523
    .end local v1    # "telecom":Lcom/android/internal/telecom/ITelecomService;
    :catch_0
    move-exception v0

    #@c
    .line 2524
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManager"

    #@f
    const-string/jumbo v3, "Error calling ITelecomService#getCallState"

    #@12
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@15
    .line 2526
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    #@16
    return v2
.end method

.method public getCallState(I)I
    .locals 4
    .param p1, "subId"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 2538
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    #@4
    move-result-object v2

    #@5
    .line 2539
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v2, :cond_0

    #@7
    .line 2540
    return v3

    #@8
    .line 2541
    :cond_0
    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->getCallStateForSubscriber(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result v3

    #@c
    return v3

    #@d
    .line 2545
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    #@e
    .line 2547
    .local v1, "ex":Ljava/lang/NullPointerException;
    return v3

    #@f
    .line 2542
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    #@10
    .line 2544
    .local v0, "ex":Landroid/os/RemoteException;
    return v3
.end method

.method public getCarrierPackageNamesForIntent(Landroid/content/Intent;)Ljava/util/List;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 3814
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultPhone()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, p1, v0}, Landroid/telephony/TelephonyManager;->getCarrierPackageNamesForIntentAndPhone(Landroid/content/Intent;I)Ljava/util/List;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getCarrierPackageNamesForIntentAndPhone(Landroid/content/Intent;I)Ljava/util/List;
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "phoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 3821
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    #@4
    move-result-object v2

    #@5
    .line 3822
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    #@7
    .line 3823
    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/ITelephony;->getCarrierPackageNamesForIntentAndPhone(Landroid/content/Intent;I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    move-result-object v3

    #@b
    return-object v3

    #@c
    .line 3826
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    #@d
    .line 3827
    .local v1, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "TelephonyManager"

    #@10
    const-string/jumbo v4, "getCarrierPackageNamesForIntentAndPhone NPE"

    #@13
    invoke-static {v3, v4, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@16
    .line 3829
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :cond_0
    :goto_0
    return-object v5

    #@17
    .line 3824
    :catch_1
    move-exception v0

    #@18
    .line 3825
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v3, "TelephonyManager"

    #@1b
    const-string/jumbo v4, "getCarrierPackageNamesForIntentAndPhone RemoteException"

    #@1e
    invoke-static {v3, v4, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@21
    goto :goto_0
.end method

.method public getCdmaEriIconIndex()I
    .locals 1

    #@0
    .prologue
    .line 2693
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getCdmaEriIconIndex(I)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public getCdmaEriIconIndex(I)I
    .locals 5
    .param p1, "subId"    # I

    #@0
    .prologue
    const/4 v4, -0x1

    #@1
    .line 2705
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    #@4
    move-result-object v2

    #@5
    .line 2706
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v2, :cond_0

    #@7
    .line 2707
    return v4

    #@8
    .line 2708
    :cond_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    #@b
    move-result-object v3

    #@c
    invoke-interface {v2, p1, v3}, Lcom/android/internal/telephony/ITelephony;->getCdmaEriIconIndexForSubscriber(ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    move-result v3

    #@10
    return v3

    #@11
    .line 2712
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    #@12
    .line 2713
    .local v1, "ex":Ljava/lang/NullPointerException;
    return v4

    #@13
    .line 2709
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    #@14
    .line 2711
    .local v0, "ex":Landroid/os/RemoteException;
    return v4
.end method

.method public getCdmaEriIconMode()I
    .locals 1

    #@0
    .prologue
    .line 2728
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getCdmaEriIconMode(I)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public getCdmaEriIconMode(I)I
    .locals 5
    .param p1, "subId"    # I

    #@0
    .prologue
    const/4 v4, -0x1

    #@1
    .line 2743
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    #@4
    move-result-object v2

    #@5
    .line 2744
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v2, :cond_0

    #@7
    .line 2745
    return v4

    #@8
    .line 2746
    :cond_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    #@b
    move-result-object v3

    #@c
    invoke-interface {v2, p1, v3}, Lcom/android/internal/telephony/ITelephony;->getCdmaEriIconModeForSubscriber(ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    move-result v3

    #@10
    return v3

    #@11
    .line 2750
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    #@12
    .line 2751
    .local v1, "ex":Ljava/lang/NullPointerException;
    return v4

    #@13
    .line 2747
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    #@14
    .line 2749
    .local v0, "ex":Landroid/os/RemoteException;
    return v4
.end method

.method public getCdmaEriText()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 2764
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getCdmaEriText(I)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getCdmaEriText(I)Ljava/lang/String;
    .locals 5
    .param p1, "subId"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 2777
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    #@4
    move-result-object v2

    #@5
    .line 2778
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v2, :cond_0

    #@7
    .line 2779
    return-object v4

    #@8
    .line 2780
    :cond_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    #@b
    move-result-object v3

    #@c
    invoke-interface {v2, p1, v3}, Lcom/android/internal/telephony/ITelephony;->getCdmaEriTextForSubscriber(ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    move-result-object v3

    #@10
    return-object v3

    #@11
    .line 2784
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    #@12
    .line 2785
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v4

    #@13
    .line 2781
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    #@14
    .line 2783
    .local v0, "ex":Landroid/os/RemoteException;
    return-object v4
.end method

.method public getCdmaMdn()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 3742
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getCdmaMdn(I)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getCdmaMdn(I)Ljava/lang/String;
    .locals 4
    .param p1, "subId"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 3749
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    #@4
    move-result-object v2

    #@5
    .line 3750
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v2, :cond_0

    #@7
    .line 3751
    return-object v3

    #@8
    .line 3752
    :cond_0
    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->getCdmaMdn(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result-object v3

    #@c
    return-object v3

    #@d
    .line 3755
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    #@e
    .line 3756
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v3

    #@f
    .line 3753
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    #@10
    .line 3754
    .local v0, "ex":Landroid/os/RemoteException;
    return-object v3
.end method

.method public getCdmaMin()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 3763
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getCdmaMin(I)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getCdmaMin(I)Ljava/lang/String;
    .locals 4
    .param p1, "subId"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 3770
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    #@4
    move-result-object v2

    #@5
    .line 3771
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v2, :cond_0

    #@7
    .line 3772
    return-object v3

    #@8
    .line 3773
    :cond_0
    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->getCdmaMin(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result-object v3

    #@c
    return-object v3

    #@d
    .line 3776
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    #@e
    .line 3777
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v3

    #@f
    .line 3774
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    #@10
    .line 3775
    .local v0, "ex":Landroid/os/RemoteException;
    return-object v3
.end method

.method public getCellLocation()Landroid/telephony/CellLocation;
    .locals 9

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 821
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    #@4
    move-result-object v4

    #@5
    .line 822
    .local v4, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v4, :cond_0

    #@7
    .line 823
    const-string/jumbo v5, "TelephonyManager"

    #@a
    const-string/jumbo v6, "getCellLocation returning null because telephony is null"

    #@d
    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@10
    .line 824
    return-object v8

    #@11
    .line 826
    :cond_0
    iget-object v5, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    #@13
    invoke-virtual {v5}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@16
    move-result-object v5

    #@17
    invoke-interface {v4, v5}, Lcom/android/internal/telephony/ITelephony;->getCellLocation(Ljava/lang/String;)Landroid/os/Bundle;

    #@1a
    move-result-object v0

    #@1b
    .line 827
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    #@1e
    move-result v5

    #@1f
    if-eqz v5, :cond_1

    #@21
    .line 828
    const-string/jumbo v5, "TelephonyManager"

    #@24
    const-string/jumbo v6, "getCellLocation returning null because bundle is empty"

    #@27
    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@2a
    .line 829
    return-object v8

    #@2b
    .line 831
    :cond_1
    invoke-static {v0}, Landroid/telephony/CellLocation;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/CellLocation;

    #@2e
    move-result-object v1

    #@2f
    .line 832
    .local v1, "cl":Landroid/telephony/CellLocation;
    invoke-virtual {v1}, Landroid/telephony/CellLocation;->isEmpty()Z

    #@32
    move-result v5

    #@33
    if-eqz v5, :cond_2

    #@35
    .line 833
    const-string/jumbo v5, "TelephonyManager"

    #@38
    const-string/jumbo v6, "getCellLocation returning null because CellLocation is empty"

    #@3b
    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    #@3e
    .line 834
    return-object v8

    #@3f
    .line 836
    :cond_2
    return-object v1

    #@40
    .line 840
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "cl":Landroid/telephony/CellLocation;
    .end local v4    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v3

    #@41
    .line 841
    .local v3, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v5, "TelephonyManager"

    #@44
    new-instance v6, Ljava/lang/StringBuilder;

    #@46
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@49
    const-string/jumbo v7, "getCellLocation returning null due to NullPointerException "

    #@4c
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v6

    #@50
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v6

    #@54
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57
    move-result-object v6

    #@58
    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@5b
    .line 842
    return-object v8

    #@5c
    .line 837
    .end local v3    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v2

    #@5d
    .line 838
    .local v2, "ex":Landroid/os/RemoteException;
    const-string/jumbo v5, "TelephonyManager"

    #@60
    new-instance v6, Ljava/lang/StringBuilder;

    #@62
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@65
    const-string/jumbo v7, "getCellLocation returning null due to RemoteException "

    #@68
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v6

    #@6c
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v6

    #@70
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@73
    move-result-object v6

    #@74
    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@77
    .line 839
    return-object v8
.end method

.method public getCellNetworkScanResults(I)Lcom/android/internal/telephony/CellNetworkScanResult;
    .locals 6
    .param p1, "subId"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 3543
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    #@4
    move-result-object v2

    #@5
    .line 3544
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    #@7
    .line 3545
    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->getCellNetworkScanResults(I)Lcom/android/internal/telephony/CellNetworkScanResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    move-result-object v3

    #@b
    return-object v3

    #@c
    .line 3548
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    #@d
    .line 3549
    .local v1, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "TelephonyManager"

    #@10
    const-string/jumbo v4, "getCellNetworkScanResults NPE"

    #@13
    invoke-static {v3, v4, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@16
    .line 3551
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :cond_0
    :goto_0
    return-object v5

    #@17
    .line 3546
    :catch_1
    move-exception v0

    #@18
    .line 3547
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v3, "TelephonyManager"

    #@1b
    const-string/jumbo v4, "getCellNetworkScanResults RemoteException"

    #@1e
    invoke-static {v3, v4, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@21
    goto :goto_0
.end method

.method public getCompleteVoiceMailNumber()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 2302
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getCompleteVoiceMailNumber(I)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getCompleteVoiceMailNumber(I)Ljava/lang/String;
    .locals 4
    .param p1, "subId"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 2316
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    #@4
    move-result-object v2

    #@5
    .line 2317
    .local v2, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v2, :cond_0

    #@7
    .line 2318
    return-object v3

    #@8
    .line 2319
    :cond_0
    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getCompleteVoiceMailNumberForSubscriber(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result-object v3

    #@c
    return-object v3

    #@d
    .line 2322
    .end local v2    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_0
    move-exception v1

    #@e
    .line 2324
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v3

    #@f
    .line 2320
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    #@10
    .line 2321
    .local v0, "ex":Landroid/os/RemoteException;
    return-object v3
.end method

.method public getCurrentPhoneType()I
    .locals 1

    #@0
    .prologue
    .line 951
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType(I)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public getCurrentPhoneType(I)I
    .locals 5
    .param p1, "subId"    # I

    #@0
    .prologue
    const/4 v4, -0x1

    #@1
    .line 967
    if-ne p1, v4, :cond_0

    #@3
    .line 970
    const/4 v2, 0x0

    #@4
    .line 975
    .local v2, "phoneId":I
    :goto_0
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    #@7
    move-result-object v3

    #@8
    .line 976
    .local v3, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v3, :cond_1

    #@a
    if-eq p1, v4, :cond_1

    #@c
    .line 977
    invoke-interface {v3, p1}, Lcom/android/internal/telephony/ITelephony;->getActivePhoneTypeForSubscriber(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    move-result v4

    #@10
    return v4

    #@11
    .line 972
    .end local v2    # "phoneId":I
    .end local v3    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    #@14
    move-result v2

    #@15
    .restart local v2    # "phoneId":I
    goto :goto_0

    #@16
    .line 980
    .restart local v3    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_1
    :try_start_1
    invoke-direct {p0, v2}, Landroid/telephony/TelephonyManager;->getPhoneTypeFromProperty(I)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    #@19
    move-result v4

    #@1a
    return v4

    #@1b
    .line 986
    .end local v3    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    #@1c
    .line 989
    .local v1, "ex":Ljava/lang/NullPointerException;
    invoke-direct {p0, v2}, Landroid/telephony/TelephonyManager;->getPhoneTypeFromProperty(I)I

    #@1f
    move-result v4

    #@20
    return v4

    #@21
    .line 982
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    #@22
    .line 985
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-direct {p0, v2}, Landroid/telephony/TelephonyManager;->getPhoneTypeFromProperty(I)I

    #@25
    move-result v4

    #@26
    return v4
.end method

.method public getDataActivity()I
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 2577
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    #@4
    move-result-object v2

    #@5
    .line 2578
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v2, :cond_0

    #@7
    .line 2579
    return v3

    #@8
    .line 2580
    :cond_0
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getDataActivity()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result v3

    #@c
    return v3

    #@d
    .line 2584
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    #@e
    .line 2586
    .local v1, "ex":Ljava/lang/NullPointerException;
    return v3

    #@f
    .line 2581
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    #@10
    .line 2583
    .local v0, "ex":Landroid/os/RemoteException;
    return v3
.end method

.method public getDataEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 4158
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getDataEnabled(I)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public getDataEnabled(I)Z
    .locals 7
    .param p1, "subId"    # I

    #@0
    .prologue
    .line 4164
    const/4 v2, 0x0

    #@1
    .line 4166
    .local v2, "retVal":Z
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    #@4
    move-result-object v3

    #@5
    .line 4167
    .local v3, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v3, :cond_0

    #@7
    .line 4168
    invoke-interface {v3, p1}, Lcom/android/internal/telephony/ITelephony;->getDataEnabled(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    #@a
    move-result v2

    #@b
    .line 4173
    .end local v2    # "retVal":Z
    .end local v3    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    const-string/jumbo v4, "TelephonyManager"

    #@e
    new-instance v5, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v6, "getDataEnabled: retVal="

    #@16
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v5

    #@1a
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v5

    #@1e
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v5

    #@22
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@25
    .line 4174
    return v2

    #@26
    .line 4169
    .restart local v2    # "retVal":Z
    :catch_0
    move-exception v0

    #@27
    .line 4170
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "TelephonyManager"

    #@2a
    const-string/jumbo v5, "Error calling ITelephony#getDataEnabled"

    #@2d
    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@30
    goto :goto_0

    #@31
    .line 4171
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    #@32
    .local v1, "e":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDataNetworkType()I
    .locals 1

    #@0
    .prologue
    .line 1434
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getDataNetworkType(I)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public getDataNetworkType(I)I
    .locals 5
    .param p1, "subId"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1451
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    #@4
    move-result-object v2

    #@5
    .line 1452
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    #@7
    .line 1453
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    #@a
    move-result-object v3

    #@b
    invoke-interface {v2, p1, v3}, Lcom/android/internal/telephony/ITelephony;->getDataNetworkTypeForSubscriber(ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    move-result v3

    #@f
    return v3

    #@10
    .line 1456
    :cond_0
    return v4

    #@11
    .line 1461
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    #@12
    .line 1463
    .local v1, "ex":Ljava/lang/NullPointerException;
    return v4

    #@13
    .line 1458
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    #@14
    .line 1460
    .local v0, "ex":Landroid/os/RemoteException;
    return v4
.end method

.method public getDataState()I
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 2616
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    #@4
    move-result-object v2

    #@5
    .line 2617
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v2, :cond_0

    #@7
    .line 2618
    return v3

    #@8
    .line 2619
    :cond_0
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getDataState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result v3

    #@c
    return v3

    #@d
    .line 2623
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    #@e
    .line 2624
    .local v1, "ex":Ljava/lang/NullPointerException;
    return v3

    #@f
    .line 2620
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    #@10
    .line 2622
    .local v0, "ex":Landroid/os/RemoteException;
    return v3
.end method

.method public getDefaultSim()I
    .locals 1

    #@0
    .prologue
    .line 3185
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    #@3
    move-result v0

    #@4
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 703
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    #@4
    move-result-object v2

    #@5
    .line 704
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v2, :cond_0

    #@7
    .line 705
    return-object v4

    #@8
    .line 706
    :cond_0
    iget-object v3, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    #@a
    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@d
    move-result-object v3

    #@e
    invoke-interface {v2, v3}, Lcom/android/internal/telephony/ITelephony;->getDeviceId(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    move-result-object v3

    #@12
    return-object v3

    #@13
    .line 709
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    #@14
    .line 710
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v4

    #@15
    .line 707
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    #@16
    .line 708
    .local v0, "ex":Landroid/os/RemoteException;
    return-object v4
.end method

.method public getDeviceId(I)Ljava/lang/String;
    .locals 4
    .param p1, "slotId"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 726
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    #@4
    move-result-object v2

    #@5
    .line 727
    .local v2, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v2, :cond_0

    #@7
    .line 728
    return-object v3

    #@8
    .line 729
    :cond_0
    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDeviceIdForPhone(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result-object v3

    #@c
    return-object v3

    #@d
    .line 732
    .end local v2    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_0
    move-exception v1

    #@e
    .line 733
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v3

    #@f
    .line 730
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    #@10
    .line 731
    .local v0, "ex":Landroid/os/RemoteException;
    return-object v3
.end method

.method public getDeviceSoftwareVersion()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 662
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDefaultSim()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getDeviceSoftwareVersion(I)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getDeviceSoftwareVersion(I)Ljava/lang/String;
    .locals 7
    .param p1, "slotId"    # I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 678
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    #@4
    move-result-object v3

    #@5
    .line 679
    .local v3, "subId":[I
    if-eqz v3, :cond_0

    #@7
    array-length v4, v3

    #@8
    if-nez v4, :cond_1

    #@a
    .line 680
    :cond_0
    return-object v6

    #@b
    .line 683
    :cond_1
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    #@e
    move-result-object v2

    #@f
    .line 684
    .local v2, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v2, :cond_2

    #@11
    .line 685
    return-object v6

    #@12
    .line 686
    :cond_2
    const/4 v4, 0x0

    #@13
    aget v4, v3, v4

    #@15
    iget-object v5, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    #@17
    invoke-virtual {v5}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@1a
    move-result-object v5

    #@1b
    invoke-interface {v2, v4, v5}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDeviceSvnUsingSubId(ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    #@1e
    move-result-object v4

    #@1f
    return-object v4

    #@20
    .line 689
    .end local v2    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_0
    move-exception v1

    #@21
    .line 690
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v6

    #@22
    .line 687
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    #@23
    .line 688
    .local v0, "ex":Landroid/os/RemoteException;
    return-object v6
.end method

.method public getGroupIdLevel1()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 2021
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    #@4
    move-result-object v2

    #@5
    .line 2022
    .local v2, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v2, :cond_0

    #@7
    .line 2023
    return-object v4

    #@8
    .line 2024
    :cond_0
    iget-object v3, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    #@a
    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@d
    move-result-object v3

    #@e
    invoke-interface {v2, v3}, Lcom/android/internal/telephony/IPhoneSubInfo;->getGroupIdLevel1(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    move-result-object v3

    #@12
    return-object v3

    #@13
    .line 2027
    .end local v2    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_0
    move-exception v1

    #@14
    .line 2029
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v4

    #@15
    .line 2025
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    #@16
    .line 2026
    .local v0, "ex":Landroid/os/RemoteException;
    return-object v4
.end method

.method public getGroupIdLevel1(I)Ljava/lang/String;
    .locals 5
    .param p1, "subId"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 2045
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    #@4
    move-result-object v2

    #@5
    .line 2046
    .local v2, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v2, :cond_0

    #@7
    .line 2047
    return-object v4

    #@8
    .line 2048
    :cond_0
    iget-object v3, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    #@a
    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@d
    move-result-object v3

    #@e
    invoke-interface {v2, p1, v3}, Lcom/android/internal/telephony/IPhoneSubInfo;->getGroupIdLevel1ForSubscriber(ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    move-result-object v3

    #@12
    return-object v3

    #@13
    .line 2051
    .end local v2    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_0
    move-exception v1

    #@14
    .line 2053
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v4

    #@15
    .line 2049
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    #@16
    .line 2050
    .local v0, "ex":Landroid/os/RemoteException;
    return-object v4
.end method

.method public getIccSimChallengeResponse(IILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "subId"    # I
    .param p2, "appType"    # I
    .param p3, "data"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 3427
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    #@4
    move-result-object v2

    #@5
    .line 3428
    .local v2, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v2, :cond_0

    #@7
    .line 3429
    return-object v3

    #@8
    .line 3430
    :cond_0
    invoke-interface {v2, p1, p2, p3}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIccSimChallengeResponse(IILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result-object v3

    #@c
    return-object v3

    #@d
    .line 3433
    .end local v2    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_0
    move-exception v1

    #@e
    .line 3435
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v3

    #@f
    .line 3431
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    #@10
    .line 3432
    .local v0, "ex":Landroid/os/RemoteException;
    return-object v3
.end method

.method public getIccSimChallengeResponse(ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "appType"    # I
    .param p2, "data"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3448
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0, p1, p2}, Landroid/telephony/TelephonyManager;->getIccSimChallengeResponse(IILjava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getImei()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 745
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDefaultSim()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getImei(I)Ljava/lang/String;
    .locals 7
    .param p1, "slotId"    # I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 758
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    #@4
    move-result-object v3

    #@5
    .line 760
    .local v3, "subId":[I
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    #@8
    move-result-object v2

    #@9
    .line 761
    .local v2, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v2, :cond_0

    #@b
    .line 762
    return-object v6

    #@c
    .line 763
    :cond_0
    const/4 v4, 0x0

    #@d
    aget v4, v3, v4

    #@f
    iget-object v5, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    #@11
    invoke-virtual {v5}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@14
    move-result-object v5

    #@15
    invoke-interface {v2, v4, v5}, Lcom/android/internal/telephony/IPhoneSubInfo;->getImeiForSubscriber(ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    #@18
    move-result-object v4

    #@19
    return-object v4

    #@1a
    .line 766
    .end local v2    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_0
    move-exception v1

    #@1b
    .line 767
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v6

    #@1c
    .line 764
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    #@1d
    .line 765
    .local v0, "ex":Landroid/os/RemoteException;
    return-object v6
.end method

.method public getIsimChallengeResponse(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "nonce"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 3404
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    #@4
    move-result-object v2

    #@5
    .line 3405
    .local v2, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v2, :cond_0

    #@7
    .line 3406
    return-object v3

    #@8
    .line 3407
    :cond_0
    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimChallengeResponse(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result-object v3

    #@c
    return-object v3

    #@d
    .line 3410
    .end local v2    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_0
    move-exception v1

    #@e
    .line 3412
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v3

    #@f
    .line 3408
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    #@10
    .line 3409
    .local v0, "ex":Landroid/os/RemoteException;
    return-object v3
.end method

.method public getIsimDomain()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 2458
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    #@4
    move-result-object v2

    #@5
    .line 2459
    .local v2, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v2, :cond_0

    #@7
    .line 2460
    return-object v3

    #@8
    .line 2461
    :cond_0
    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimDomain()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result-object v3

    #@c
    return-object v3

    #@d
    .line 2464
    .end local v2    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_0
    move-exception v1

    #@e
    .line 2466
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v3

    #@f
    .line 2462
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    #@10
    .line 2463
    .local v0, "ex":Landroid/os/RemoteException;
    return-object v3
.end method

.method public getIsimImpi()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 2439
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    #@4
    move-result-object v2

    #@5
    .line 2440
    .local v2, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v2, :cond_0

    #@7
    .line 2441
    return-object v3

    #@8
    .line 2442
    :cond_0
    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimImpi()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result-object v3

    #@c
    return-object v3

    #@d
    .line 2445
    .end local v2    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_0
    move-exception v1

    #@e
    .line 2447
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v3

    #@f
    .line 2443
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    #@10
    .line 2444
    .local v0, "ex":Landroid/os/RemoteException;
    return-object v3
.end method

.method public getIsimImpu()[Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 2478
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    #@4
    move-result-object v2

    #@5
    .line 2479
    .local v2, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v2, :cond_0

    #@7
    .line 2480
    return-object v3

    #@8
    .line 2481
    :cond_0
    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimImpu()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result-object v3

    #@c
    return-object v3

    #@d
    .line 2484
    .end local v2    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_0
    move-exception v1

    #@e
    .line 2486
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v3

    #@f
    .line 2482
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    #@10
    .line 2483
    .local v0, "ex":Landroid/os/RemoteException;
    return-object v3
.end method

.method public getIsimIst()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 3362
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    #@4
    move-result-object v2

    #@5
    .line 3363
    .local v2, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v2, :cond_0

    #@7
    .line 3364
    return-object v3

    #@8
    .line 3365
    :cond_0
    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimIst()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result-object v3

    #@c
    return-object v3

    #@d
    .line 3368
    .end local v2    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_0
    move-exception v1

    #@e
    .line 3370
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v3

    #@f
    .line 3366
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    #@10
    .line 3367
    .local v0, "ex":Landroid/os/RemoteException;
    return-object v3
.end method

.method public getIsimPcscf()[Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 3382
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    #@4
    move-result-object v2

    #@5
    .line 3383
    .local v2, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v2, :cond_0

    #@7
    .line 3384
    return-object v3

    #@8
    .line 3385
    :cond_0
    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimPcscf()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result-object v3

    #@c
    return-object v3

    #@d
    .line 3388
    .end local v2    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_0
    move-exception v1

    #@e
    .line 3390
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v3

    #@f
    .line 3386
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    #@10
    .line 3387
    .local v0, "ex":Landroid/os/RemoteException;
    return-object v3
.end method

.method public getLine1AlphaTag()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 2164
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getLine1AlphaTagForSubscriber(I)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getLine1AlphaTagForSubscriber(I)Ljava/lang/String;
    .locals 7
    .param p1, "subId"    # I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 2179
    const/4 v0, 0x0

    #@2
    .line 2181
    .local v0, "alphaTag":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    #@5
    move-result-object v4

    #@6
    .line 2182
    .local v4, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v4, :cond_0

    #@8
    .line 2184
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    #@b
    move-result-object v5

    #@c
    .line 2183
    invoke-interface {v4, p1, v5}, Lcom/android/internal/telephony/ITelephony;->getLine1AlphaTagForDisplay(ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3

    #@f
    move-result-object v0

    #@10
    .line 2188
    .end local v0    # "alphaTag":Ljava/lang/String;
    .end local v4    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    #@12
    .line 2189
    return-object v0

    #@13
    .line 2192
    :cond_1
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    #@16
    move-result-object v3

    #@17
    .line 2193
    .local v3, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v3, :cond_2

    #@19
    .line 2194
    return-object v6

    #@1a
    .line 2195
    :cond_2
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    #@1d
    move-result-object v5

    #@1e
    invoke-interface {v3, p1, v5}, Lcom/android/internal/telephony/IPhoneSubInfo;->getLine1AlphaTagForSubscriber(ILjava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    #@21
    move-result-object v5

    #@22
    return-object v5

    #@23
    .line 2198
    .end local v3    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_0
    move-exception v2

    #@24
    .line 2200
    .local v2, "ex":Ljava/lang/NullPointerException;
    return-object v6

    #@25
    .line 2196
    .end local v2    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    #@26
    .line 2197
    .local v1, "ex":Landroid/os/RemoteException;
    return-object v6

    #@27
    .line 2185
    .end local v1    # "ex":Landroid/os/RemoteException;
    .restart local v0    # "alphaTag":Ljava/lang/String;
    :catch_2
    move-exception v1

    #@28
    .restart local v1    # "ex":Landroid/os/RemoteException;
    goto :goto_0

    #@29
    .line 2186
    .end local v1    # "ex":Landroid/os/RemoteException;
    :catch_3
    move-exception v2

    #@2a
    .restart local v2    # "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getLine1Number()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 2069
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getLine1NumberForSubscriber(I)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getLine1NumberForSubscriber(I)Ljava/lang/String;
    .locals 7
    .param p1, "subId"    # I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 2087
    const/4 v3, 0x0

    #@2
    .line 2089
    .local v3, "number":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    #@5
    move-result-object v4

    #@6
    .line 2090
    .local v4, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v4, :cond_0

    #@8
    .line 2091
    iget-object v5, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    #@a
    invoke-virtual {v5}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@d
    move-result-object v5

    #@e
    invoke-interface {v4, p1, v5}, Lcom/android/internal/telephony/ITelephony;->getLine1NumberForDisplay(ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3

    #@11
    move-result-object v3

    #@12
    .line 2095
    .end local v3    # "number":Ljava/lang/String;
    .end local v4    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    #@14
    .line 2096
    return-object v3

    #@15
    .line 2099
    :cond_1
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    #@18
    move-result-object v2

    #@19
    .line 2100
    .local v2, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v2, :cond_2

    #@1b
    .line 2101
    return-object v6

    #@1c
    .line 2102
    :cond_2
    iget-object v5, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    #@1e
    invoke-virtual {v5}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@21
    move-result-object v5

    #@22
    invoke-interface {v2, p1, v5}, Lcom/android/internal/telephony/IPhoneSubInfo;->getLine1NumberForSubscriber(ILjava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    #@25
    move-result-object v5

    #@26
    return-object v5

    #@27
    .line 2105
    .end local v2    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_0
    move-exception v1

    #@28
    .line 2107
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v6

    #@29
    .line 2103
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    #@2a
    .line 2104
    .local v0, "ex":Landroid/os/RemoteException;
    return-object v6

    #@2b
    .line 2092
    .end local v0    # "ex":Landroid/os/RemoteException;
    .restart local v3    # "number":Ljava/lang/String;
    :catch_2
    move-exception v0

    #@2c
    .restart local v0    # "ex":Landroid/os/RemoteException;
    goto :goto_0

    #@2d
    .line 2093
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_3
    move-exception v1

    #@2e
    .restart local v1    # "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getLocaleFromDefaultSim()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 4759
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    #@4
    move-result-object v1

    #@5
    .line 4760
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    #@7
    .line 4761
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getLocaleFromDefaultSim()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    move-result-object v2

    #@b
    return-object v2

    #@c
    .line 4763
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    #@d
    .line 4765
    :cond_0
    return-object v2
.end method

.method public getLteOnCdmaMode()I
    .locals 1

    #@0
    .prologue
    .line 1938
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getLteOnCdmaMode(I)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public getLteOnCdmaMode(I)I
    .locals 5
    .param p1, "subId"    # I

    #@0
    .prologue
    const/4 v4, -0x1

    #@1
    .line 1957
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    #@4
    move-result-object v2

    #@5
    .line 1958
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v2, :cond_0

    #@7
    .line 1959
    return v4

    #@8
    .line 1960
    :cond_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    #@b
    move-result-object v3

    #@c
    invoke-interface {v2, p1, v3}, Lcom/android/internal/telephony/ITelephony;->getLteOnCdmaModeForSubscriber(ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    move-result v3

    #@10
    return v3

    #@11
    .line 1964
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    #@12
    .line 1966
    .local v1, "ex":Ljava/lang/NullPointerException;
    return v4

    #@13
    .line 1961
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    #@14
    .line 1963
    .local v0, "ex":Landroid/os/RemoteException;
    return v4
.end method

.method public getMergedSubscriberIds()[Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 2214
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    #@4
    move-result-object v2

    #@5
    .line 2215
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    #@7
    .line 2216
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    #@a
    move-result-object v3

    #@b
    invoke-interface {v2, v3}, Lcom/android/internal/telephony/ITelephony;->getMergedSubscriberIds(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    #@e
    move-result-object v3

    #@f
    return-object v3

    #@10
    .line 2217
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    #@11
    .line 2220
    :cond_0
    :goto_0
    return-object v4

    #@12
    .line 2218
    :catch_1
    move-exception v1

    #@13
    .local v1, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getMmsUAProfUrl()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 2893
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    #@3
    if-nez v0, :cond_0

    #@5
    return-object v1

    #@6
    .line 2894
    :cond_0
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    #@8
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@b
    move-result-object v0

    #@c
    .line 2895
    const v1, 0x1040036

    #@f
    .line 2894
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    return-object v0
.end method

.method public getMmsUserAgent()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 2884
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    #@3
    if-nez v0, :cond_0

    #@5
    return-object v1

    #@6
    .line 2885
    :cond_0
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    #@8
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@b
    move-result-object v0

    #@c
    .line 2886
    const v1, 0x1040035

    #@f
    .line 2885
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    return-object v0
.end method

.method public getModemActivityInfo()Landroid/telephony/ModemActivityInfo;
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 4774
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    #@4
    move-result-object v1

    #@5
    .line 4775
    .local v1, "service":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    #@7
    .line 4776
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getModemActivityInfo()Landroid/telephony/ModemActivityInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    move-result-object v2

    #@b
    return-object v2

    #@c
    .line 4778
    .end local v1    # "service":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    #@d
    .line 4779
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManager"

    #@10
    const-string/jumbo v3, "Error calling ITelephony#getModemActivityInfo"

    #@13
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@16
    .line 4781
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    return-object v4
.end method

.method public getMsisdn()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 2233
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getMsisdn(I)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getMsisdn(I)Ljava/lang/String;
    .locals 5
    .param p1, "subId"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 2248
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    #@4
    move-result-object v2

    #@5
    .line 2249
    .local v2, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v2, :cond_0

    #@7
    .line 2250
    return-object v4

    #@8
    .line 2251
    :cond_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    #@b
    move-result-object v3

    #@c
    invoke-interface {v2, p1, v3}, Lcom/android/internal/telephony/IPhoneSubInfo;->getMsisdnForSubscriber(ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    move-result-object v3

    #@10
    return-object v3

    #@11
    .line 2254
    .end local v2    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_0
    move-exception v1

    #@12
    .line 2256
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v4

    #@13
    .line 2252
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    #@14
    .line 2253
    .local v0, "ex":Landroid/os/RemoteException;
    return-object v4
.end method

.method public getMultiSimConfiguration()Landroid/telephony/TelephonyManager$MultiSimVariants;
    .locals 2

    #@0
    .prologue
    .line 158
    const-string/jumbo v1, "persist.radio.multisim.config"

    #@3
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    .line 159
    .local v0, "mSimConfig":Ljava/lang/String;
    const-string/jumbo v1, "dsds"

    #@a
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_0

    #@10
    .line 160
    sget-object v1, Landroid/telephony/TelephonyManager$MultiSimVariants;->DSDS:Landroid/telephony/TelephonyManager$MultiSimVariants;

    #@12
    return-object v1

    #@13
    .line 161
    :cond_0
    const-string/jumbo v1, "dsda"

    #@16
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@19
    move-result v1

    #@1a
    if-eqz v1, :cond_1

    #@1c
    .line 162
    sget-object v1, Landroid/telephony/TelephonyManager$MultiSimVariants;->DSDA:Landroid/telephony/TelephonyManager$MultiSimVariants;

    #@1e
    return-object v1

    #@1f
    .line 163
    :cond_1
    const-string/jumbo v1, "tsts"

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@25
    move-result v1

    #@26
    if-eqz v1, :cond_2

    #@28
    .line 164
    sget-object v1, Landroid/telephony/TelephonyManager$MultiSimVariants;->TSTS:Landroid/telephony/TelephonyManager$MultiSimVariants;

    #@2a
    return-object v1

    #@2b
    .line 166
    :cond_2
    sget-object v1, Landroid/telephony/TelephonyManager$MultiSimVariants;->UNKNOWN:Landroid/telephony/TelephonyManager$MultiSimVariants;

    #@2d
    return-object v1
.end method

.method public getNai()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 777
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDefaultSim()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getNai(I)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getNai(I)Ljava/lang/String;
    .locals 9
    .param p1, "slotId"    # I

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 787
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    #@4
    move-result-object v4

    #@5
    .line 789
    .local v4, "subId":[I
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    #@8
    move-result-object v2

    #@9
    .line 790
    .local v2, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v2, :cond_0

    #@b
    .line 791
    return-object v8

    #@c
    .line 792
    :cond_0
    const/4 v5, 0x0

    #@d
    aget v5, v4, v5

    #@f
    iget-object v6, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    #@11
    invoke-virtual {v6}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@14
    move-result-object v6

    #@15
    invoke-interface {v2, v5, v6}, Lcom/android/internal/telephony/IPhoneSubInfo;->getNaiForSubscriber(ILjava/lang/String;)Ljava/lang/String;

    #@18
    move-result-object v3

    #@19
    .line 793
    .local v3, "nai":Ljava/lang/String;
    const-string/jumbo v5, "TelephonyManager"

    #@1c
    const/4 v6, 0x2

    #@1d
    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@20
    move-result v5

    #@21
    if-eqz v5, :cond_1

    #@23
    .line 794
    const-string/jumbo v5, "TelephonyManager"

    #@26
    new-instance v6, Ljava/lang/StringBuilder;

    #@28
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@2b
    const-string/jumbo v7, "Nai = "

    #@2e
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v6

    #@32
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v6

    #@36
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v6

    #@3a
    invoke-static {v5, v6}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    #@3d
    .line 796
    :cond_1
    return-object v3

    #@3e
    .line 799
    .end local v2    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    .end local v3    # "nai":Ljava/lang/String;
    :catch_0
    move-exception v1

    #@3f
    .line 800
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v8

    #@40
    .line 797
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    #@41
    .line 798
    .local v0, "ex":Landroid/os/RemoteException;
    return-object v8
.end method

.method public getNeighboringCellInfo()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 918
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    #@4
    move-result-object v2

    #@5
    .line 919
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v2, :cond_0

    #@7
    .line 920
    return-object v4

    #@8
    .line 921
    :cond_0
    iget-object v3, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    #@a
    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@d
    move-result-object v3

    #@e
    invoke-interface {v2, v3}, Lcom/android/internal/telephony/ITelephony;->getNeighboringCellInfo(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    move-result-object v3

    #@12
    return-object v3

    #@13
    .line 924
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    #@14
    .line 925
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v4

    #@15
    .line 922
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    #@16
    .line 923
    .local v0, "ex":Landroid/os/RemoteException;
    return-object v4
.end method

.method public getNetworkCountryIso()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1265
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultPhone()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIsoForPhone(I)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getNetworkCountryIsoForPhone(I)Ljava/lang/String;
    .locals 2
    .param p1, "phoneId"    # I

    #@0
    .prologue
    .line 1296
    const-string/jumbo v0, "gsm.operator.iso-country"

    #@3
    const-string/jumbo v1, ""

    #@6
    invoke-static {p1, v0, v1}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public getNetworkCountryIsoForSubscription(I)Ljava/lang/String;
    .locals 2
    .param p1, "subId"    # I

    #@0
    .prologue
    .line 1280
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    #@3
    move-result v0

    #@4
    .line 1281
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIsoForPhone(I)Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    return-object v1
.end method

.method public getNetworkOperator()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1197
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultPhone()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorForPhone(I)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getNetworkOperatorForPhone(I)Ljava/lang/String;
    .locals 2
    .param p1, "phoneId"    # I

    #@0
    .prologue
    .line 1228
    const-string/jumbo v0, "gsm.operator.numeric"

    #@3
    const-string/jumbo v1, ""

    #@6
    invoke-static {p1, v0, v1}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public getNetworkOperatorForSubscription(I)Ljava/lang/String;
    .locals 2
    .param p1, "subId"    # I

    #@0
    .prologue
    .line 1212
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    #@3
    move-result v0

    #@4
    .line 1213
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorForPhone(I)Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    return-object v1
.end method

.method public getNetworkOperatorName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1171
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName(I)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getNetworkOperatorName(I)Ljava/lang/String;
    .locals 3
    .param p1, "subId"    # I

    #@0
    .prologue
    .line 1185
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    #@3
    move-result v0

    #@4
    .line 1186
    .local v0, "phoneId":I
    const-string/jumbo v1, "gsm.operator.alpha"

    #@7
    const-string/jumbo v2, ""

    #@a
    invoke-static {v0, v1, v2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    return-object v1
.end method

.method public getNetworkType()I
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1343
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    #@4
    move-result-object v2

    #@5
    .line 1344
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    #@7
    .line 1345
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getNetworkType()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    move-result v3

    #@b
    return v3

    #@c
    .line 1348
    :cond_0
    return v3

    #@d
    .line 1353
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    #@e
    .line 1355
    .local v1, "ex":Ljava/lang/NullPointerException;
    return v3

    #@f
    .line 1350
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    #@10
    .line 1352
    .local v0, "ex":Landroid/os/RemoteException;
    return v3
.end method

.method public getNetworkType(I)I
    .locals 5
    .param p1, "subId"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1390
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    #@4
    move-result-object v2

    #@5
    .line 1391
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    #@7
    .line 1392
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    #@a
    move-result-object v3

    #@b
    invoke-interface {v2, p1, v3}, Lcom/android/internal/telephony/ITelephony;->getNetworkTypeForSubscriber(ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    move-result v3

    #@f
    return v3

    #@10
    .line 1395
    :cond_0
    return v4

    #@11
    .line 1400
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    #@12
    .line 1402
    .local v1, "ex":Ljava/lang/NullPointerException;
    return v4

    #@13
    .line 1397
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    #@14
    .line 1399
    .local v0, "ex":Landroid/os/RemoteException;
    return v4
.end method

.method public getNetworkTypeName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1556
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    #@3
    move-result v0

    #@4
    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getOtaSpNumberSchema(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "defaultValue"    # Ljava/lang/String;

    #@0
    .prologue
    .line 4525
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultPhone()I

    #@3
    move-result v0

    #@4
    .line 4526
    .local v0, "phoneId":I
    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->getOtaSpNumberSchemaForPhone(ILjava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    return-object v1
.end method

.method public getOtaSpNumberSchemaForPhone(ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "defaultValue"    # Ljava/lang/String;

    #@0
    .prologue
    .line 4539
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 4541
    const-string/jumbo v0, "ro.cdma.otaspnumschema"

    #@9
    .line 4540
    invoke-static {p1, v0, p2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    return-object v0

    #@e
    .line 4544
    :cond_0
    return-object p2
.end method

.method public getPcscfAddress(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p1, "apnType"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 3459
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    #@4
    move-result-object v1

    #@5
    .line 3460
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v1, :cond_0

    #@7
    .line 3461
    const/4 v2, 0x0

    #@8
    new-array v2, v2, [Ljava/lang/String;

    #@a
    return-object v2

    #@b
    .line 3462
    :cond_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    invoke-interface {v1, p1, v2}, Lcom/android/internal/telephony/ITelephony;->getPcscfAddress(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@12
    move-result-object v2

    #@13
    return-object v2

    #@14
    .line 3463
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    #@15
    .line 3464
    .local v0, "e":Landroid/os/RemoteException;
    new-array v2, v3, [Ljava/lang/String;

    #@17
    return-object v2
.end method

.method public getPhoneCount()I
    .locals 3

    #@0
    .prologue
    .line 177
    const/4 v0, 0x1

    #@1
    .line 178
    .local v0, "phoneCount":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->-getandroid_telephony_TelephonyManager$MultiSimVariantsSwitchesValues()[I

    #@4
    move-result-object v1

    #@5
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getMultiSimConfiguration()Landroid/telephony/TelephonyManager$MultiSimVariants;

    #@8
    move-result-object v2

    #@9
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager$MultiSimVariants;->ordinal()I

    #@c
    move-result v2

    #@d
    aget v1, v1, v2

    #@f
    packed-switch v1, :pswitch_data_0

    #@12
    .line 190
    :goto_0
    return v0

    #@13
    .line 180
    :pswitch_0
    const/4 v0, 0x1

    #@14
    .line 181
    goto :goto_0

    #@15
    .line 184
    :pswitch_1
    const/4 v0, 0x2

    #@16
    .line 185
    goto :goto_0

    #@17
    .line 187
    :pswitch_2
    const/4 v0, 0x3

    #@18
    .line 188
    goto :goto_0

    #@19
    .line 178
    nop

    #@1a
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public getPhoneType()I
    .locals 1

    #@0
    .prologue
    .line 1003
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 1004
    const/4 v0, 0x0

    #@7
    return v0

    #@8
    .line 1006
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public getPreferredNetworkType(I)I
    .locals 5
    .param p1, "subId"    # I

    #@0
    .prologue
    .line 3496
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    #@3
    move-result-object v2

    #@4
    .line 3497
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    #@6
    .line 3498
    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->getPreferredNetworkType(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result v3

    #@a
    return v3

    #@b
    .line 3501
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    #@c
    .line 3502
    .local v1, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "TelephonyManager"

    #@f
    const-string/jumbo v4, "getPreferredNetworkType NPE"

    #@12
    invoke-static {v3, v4, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@15
    .line 3504
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :cond_0
    :goto_0
    const/4 v3, -0x1

    #@16
    return v3

    #@17
    .line 3499
    :catch_1
    move-exception v0

    #@18
    .line 3500
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v3, "TelephonyManager"

    #@1b
    const-string/jumbo v4, "getPreferredNetworkType RemoteException"

    #@1e
    invoke-static {v3, v4, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@21
    goto :goto_0
.end method

.method public getSimCount()I
    .locals 1

    #@0
    .prologue
    .line 3348
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 3349
    const/4 v0, 0x2

    #@7
    return v0

    #@8
    .line 3351
    :cond_0
    const/4 v0, 0x1

    #@9
    return v0
.end method

.method public getSimCountryIso()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1853
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultPhone()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getSimCountryIsoForPhone(I)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getSimCountryIso(I)Ljava/lang/String;
    .locals 1
    .param p1, "subId"    # I

    #@0
    .prologue
    .line 1864
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->getSimCountryIsoForSubscription(I)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getSimCountryIsoForPhone(I)Ljava/lang/String;
    .locals 2
    .param p1, "phoneId"    # I

    #@0
    .prologue
    .line 1886
    const-string/jumbo v0, "gsm.sim.operator.iso-country"

    #@3
    const-string/jumbo v1, ""

    #@6
    .line 1885
    invoke-static {p1, v0, v1}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public getSimCountryIsoForSubscription(I)Ljava/lang/String;
    .locals 2
    .param p1, "subId"    # I

    #@0
    .prologue
    .line 1875
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    #@3
    move-result v0

    #@4
    .line 1876
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getSimCountryIsoForPhone(I)Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    return-object v1
.end method

.method public getSimOperator()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1743
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimOperatorNumeric()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getSimOperator(I)Ljava/lang/String;
    .locals 1
    .param p1, "subId"    # I

    #@0
    .prologue
    .line 1758
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForSubscription(I)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getSimOperatorName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1821
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultPhone()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getSimOperatorNameForPhone(I)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getSimOperatorNameForPhone(I)Ljava/lang/String;
    .locals 2
    .param p1, "phoneId"    # I

    #@0
    .prologue
    .line 1846
    const-string/jumbo v0, "gsm.sim.operator.alpha"

    #@3
    const-string/jumbo v1, ""

    #@6
    .line 1845
    invoke-static {p1, v0, v1}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public getSimOperatorNameForSubscription(I)Ljava/lang/String;
    .locals 2
    .param p1, "subId"    # I

    #@0
    .prologue
    .line 1835
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    #@3
    move-result v0

    #@4
    .line 1836
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getSimOperatorNameForPhone(I)Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    return-object v1
.end method

.method public getSimOperatorNumeric()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 1771
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    #@3
    move-result v0

    #@4
    .line 1772
    .local v0, "subId":I
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isUsableSubIdValue(I)Z

    #@7
    move-result v1

    #@8
    if-nez v1, :cond_0

    #@a
    .line 1773
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubId()I

    #@d
    move-result v0

    #@e
    .line 1774
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isUsableSubIdValue(I)Z

    #@11
    move-result v1

    #@12
    if-nez v1, :cond_0

    #@14
    .line 1775
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubId()I

    #@17
    move-result v0

    #@18
    .line 1776
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isUsableSubIdValue(I)Z

    #@1b
    move-result v1

    #@1c
    if-nez v1, :cond_0

    #@1e
    .line 1777
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    #@21
    move-result v0

    #@22
    .line 1781
    :cond_0
    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForSubscription(I)Ljava/lang/String;

    #@25
    move-result-object v1

    #@26
    return-object v1
.end method

.method public getSimOperatorNumericForPhone(I)Ljava/lang/String;
    .locals 2
    .param p1, "phoneId"    # I

    #@0
    .prologue
    .line 1810
    const-string/jumbo v0, "gsm.sim.operator.numeric"

    #@3
    const-string/jumbo v1, ""

    #@6
    .line 1809
    invoke-static {p1, v0, v1}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public getSimOperatorNumericForSubscription(I)Ljava/lang/String;
    .locals 2
    .param p1, "subId"    # I

    #@0
    .prologue
    .line 1796
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    #@3
    move-result v0

    #@4
    .line 1797
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    return-object v1
.end method

.method public getSimSerialNumber()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1897
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber(I)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getSimSerialNumber(I)Ljava/lang/String;
    .locals 5
    .param p1, "subId"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1911
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    #@4
    move-result-object v2

    #@5
    .line 1912
    .local v2, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v2, :cond_0

    #@7
    .line 1913
    return-object v4

    #@8
    .line 1914
    :cond_0
    iget-object v3, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    #@a
    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@d
    move-result-object v3

    #@e
    invoke-interface {v2, p1, v3}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIccSerialNumberForSubscriber(ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    move-result-object v3

    #@12
    return-object v3

    #@13
    .line 1917
    .end local v2    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_0
    move-exception v1

    #@14
    .line 1919
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v4

    #@15
    .line 1915
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    #@16
    .line 1916
    .local v0, "ex":Landroid/os/RemoteException;
    return-object v4
.end method

.method public getSimState()I
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 1692
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDefaultSim()I

    #@5
    move-result v2

    #@6
    .line 1695
    .local v2, "slotIdx":I
    if-gez v2, :cond_2

    #@8
    .line 1698
    const/4 v0, 0x0

    #@9
    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    #@c
    move-result v3

    #@d
    if-ge v0, v3, :cond_1

    #@f
    .line 1699
    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    #@12
    move-result v1

    #@13
    .line 1700
    .local v1, "simState":I
    if-eq v1, v7, :cond_0

    #@15
    .line 1701
    const-string/jumbo v3, "TelephonyManager"

    #@18
    new-instance v4, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v5, "getSimState: default sim:"

    #@20
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v4

    #@24
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@27
    move-result-object v4

    #@28
    const-string/jumbo v5, ", sim state for "

    #@2b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v4

    #@2f
    .line 1702
    const-string/jumbo v5, "slotIdx="

    #@32
    .line 1701
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v4

    #@36
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@39
    move-result-object v4

    #@3a
    .line 1702
    const-string/jumbo v5, " is "

    #@3d
    .line 1701
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v4

    #@41
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@44
    move-result-object v4

    #@45
    .line 1702
    const-string/jumbo v5, ", return state as unknown"

    #@48
    .line 1701
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v4

    #@4c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f
    move-result-object v4

    #@50
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@53
    .line 1703
    return v6

    #@54
    .line 1698
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@56
    goto :goto_0

    #@57
    .line 1706
    .end local v1    # "simState":I
    :cond_1
    const-string/jumbo v3, "TelephonyManager"

    #@5a
    new-instance v4, Ljava/lang/StringBuilder;

    #@5c
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@5f
    const-string/jumbo v5, "getSimState: default sim:"

    #@62
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v4

    #@66
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@69
    move-result-object v4

    #@6a
    const-string/jumbo v5, ", all SIMs absent, return "

    #@6d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v4

    #@71
    .line 1707
    const-string/jumbo v5, "state as absent"

    #@74
    .line 1706
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v4

    #@78
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7b
    move-result-object v4

    #@7c
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@7f
    .line 1708
    return v7

    #@80
    .line 1710
    .end local v0    # "i":I
    :cond_2
    invoke-virtual {p0, v2}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    #@83
    move-result v3

    #@84
    return v3
.end method

.method public getSimState(I)I
    .locals 1
    .param p1, "slotIdx"    # I

    #@0
    .prologue
    .line 1730
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSimStateForSlotIdx(I)I

    #@3
    move-result v0

    #@4
    .line 1731
    .local v0, "simState":I
    return v0
.end method

.method public getSmsReceiveCapable(Z)Z
    .locals 2
    .param p1, "defaultValue"    # Z

    #@0
    .prologue
    .line 4556
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultPhone()I

    #@3
    move-result v0

    #@4
    .line 4557
    .local v0, "phoneId":I
    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->getSmsReceiveCapableForPhone(IZ)Z

    #@7
    move-result v1

    #@8
    return v1
.end method

.method public getSmsReceiveCapableForPhone(IZ)Z
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "defaultValue"    # Z

    #@0
    .prologue
    .line 4570
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 4572
    const-string/jumbo v0, "telephony.sms.receive"

    #@9
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    .line 4571
    invoke-static {p1, v0, v1}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    #@14
    move-result-object v0

    #@15
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    #@18
    move-result v0

    #@19
    return v0

    #@1a
    .line 4575
    :cond_0
    return p2
.end method

.method public getSmsSendCapable(Z)Z
    .locals 2
    .param p1, "defaultValue"    # Z

    #@0
    .prologue
    .line 4587
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultPhone()I

    #@3
    move-result v0

    #@4
    .line 4588
    .local v0, "phoneId":I
    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->getSmsSendCapableForPhone(IZ)Z

    #@7
    move-result v1

    #@8
    return v1
.end method

.method public getSmsSendCapableForPhone(IZ)Z
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "defaultValue"    # Z

    #@0
    .prologue
    .line 4601
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 4603
    const-string/jumbo v0, "telephony.sms.send"

    #@9
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    .line 4602
    invoke-static {p1, v0, v1}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    #@14
    move-result-object v0

    #@15
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    #@18
    move-result v0

    #@19
    return v0

    #@1a
    .line 4606
    :cond_0
    return p2
.end method

.method public getSubIdForPhoneAccount(Landroid/telecom/PhoneAccount;)I
    .locals 3
    .param p1, "phoneAccount"    # Landroid/telecom/PhoneAccount;

    #@0
    .prologue
    .line 4728
    const/4 v1, -0x1

    #@1
    .line 4730
    .local v1, "retval":I
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    #@4
    move-result-object v2

    #@5
    .line 4731
    .local v2, "service":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    #@7
    .line 4732
    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->getSubIdForPhoneAccount(Landroid/telecom/PhoneAccount;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    move-result v1

    #@b
    .line 4737
    .end local v2    # "service":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return v1

    #@c
    .line 4734
    :catch_0
    move-exception v0

    #@d
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getSubscriberId()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1984
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getSubscriberId(I)Ljava/lang/String;
    .locals 5
    .param p1, "subId"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 2000
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    #@4
    move-result-object v2

    #@5
    .line 2001
    .local v2, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v2, :cond_0

    #@7
    .line 2002
    return-object v4

    #@8
    .line 2003
    :cond_0
    iget-object v3, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    #@a
    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@d
    move-result-object v3

    #@e
    invoke-interface {v2, p1, v3}, Lcom/android/internal/telephony/IPhoneSubInfo;->getSubscriberIdForSubscriber(ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    move-result-object v3

    #@12
    return-object v3

    #@13
    .line 2006
    .end local v2    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_0
    move-exception v1

    #@14
    .line 2008
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v4

    #@15
    .line 2004
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    #@16
    .line 2005
    .local v0, "ex":Landroid/os/RemoteException;
    return-object v4
.end method

.method public getTetherApnRequired()I
    .locals 5

    #@0
    .prologue
    .line 3627
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    #@3
    move-result-object v2

    #@4
    .line 3628
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    #@6
    .line 3629
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getTetherApnRequired()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result v3

    #@a
    return v3

    #@b
    .line 3632
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    #@c
    .line 3633
    .local v1, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "TelephonyManager"

    #@f
    const-string/jumbo v4, "hasMatchedTetherApnSetting NPE"

    #@12
    invoke-static {v3, v4, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@15
    .line 3635
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :cond_0
    :goto_0
    const/4 v3, 0x2

    #@16
    return v3

    #@17
    .line 3630
    :catch_1
    move-exception v0

    #@18
    .line 3631
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v3, "TelephonyManager"

    #@1b
    const-string/jumbo v4, "hasMatchedTetherApnSetting RemoteException"

    #@1e
    invoke-static {v3, v4, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@21
    goto :goto_0
.end method

.method public getVoiceMailAlphaTag()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 2405
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getVoiceMailAlphaTag(I)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getVoiceMailAlphaTag(I)Ljava/lang/String;
    .locals 5
    .param p1, "subId"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 2420
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    #@4
    move-result-object v2

    #@5
    .line 2421
    .local v2, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v2, :cond_0

    #@7
    .line 2422
    return-object v4

    #@8
    .line 2423
    :cond_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    #@b
    move-result-object v3

    #@c
    invoke-interface {v2, p1, v3}, Lcom/android/internal/telephony/IPhoneSubInfo;->getVoiceMailAlphaTagForSubscriber(ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    move-result-object v3

    #@10
    return-object v3

    #@11
    .line 2426
    .end local v2    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_0
    move-exception v1

    #@12
    .line 2428
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v4

    #@13
    .line 2424
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    #@14
    .line 2425
    .local v0, "ex":Landroid/os/RemoteException;
    return-object v4
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 2267
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber(I)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getVoiceMailNumber(I)Ljava/lang/String;
    .locals 5
    .param p1, "subId"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 2281
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    #@4
    move-result-object v2

    #@5
    .line 2282
    .local v2, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v2, :cond_0

    #@7
    .line 2283
    return-object v4

    #@8
    .line 2284
    :cond_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    #@b
    move-result-object v3

    #@c
    invoke-interface {v2, p1, v3}, Lcom/android/internal/telephony/IPhoneSubInfo;->getVoiceMailNumberForSubscriber(ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    move-result-object v3

    #@10
    return-object v3

    #@11
    .line 2287
    .end local v2    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_0
    move-exception v1

    #@12
    .line 2289
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v4

    #@13
    .line 2285
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    #@14
    .line 2286
    .local v0, "ex":Landroid/os/RemoteException;
    return-object v4
.end method

.method public getVoiceMessageCount()I
    .locals 1

    #@0
    .prologue
    .line 2372
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getVoiceMessageCount(I)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public getVoiceMessageCount(I)I
    .locals 4
    .param p1, "subId"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 2385
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    #@4
    move-result-object v2

    #@5
    .line 2386
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v2, :cond_0

    #@7
    .line 2387
    return v3

    #@8
    .line 2388
    :cond_0
    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->getVoiceMessageCountForSubscriber(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result v3

    #@c
    return v3

    #@d
    .line 2391
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    #@e
    .line 2393
    .local v1, "ex":Ljava/lang/NullPointerException;
    return v3

    #@f
    .line 2389
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    #@10
    .line 2390
    .local v0, "ex":Landroid/os/RemoteException;
    return v3
.end method

.method public getVoiceNetworkType()I
    .locals 1

    #@0
    .prologue
    .line 1476
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType(I)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public getVoiceNetworkType(I)I
    .locals 5
    .param p1, "subId"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1489
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    #@4
    move-result-object v2

    #@5
    .line 1490
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    #@7
    .line 1491
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    #@a
    move-result-object v3

    #@b
    invoke-interface {v2, p1, v3}, Lcom/android/internal/telephony/ITelephony;->getVoiceNetworkTypeForSubscriber(ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    move-result v3

    #@f
    return v3

    #@10
    .line 1494
    :cond_0
    return v4

    #@11
    .line 1499
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    #@12
    .line 1501
    .local v1, "ex":Ljava/lang/NullPointerException;
    return v4

    #@13
    .line 1496
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    #@14
    .line 1498
    .local v0, "ex":Landroid/os/RemoteException;
    return v4
.end method

.method public handlePinMmi(Ljava/lang/String;)Z
    .locals 4
    .param p1, "dialString"    # Ljava/lang/String;

    #@0
    .prologue
    .line 4012
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    #@3
    move-result-object v1

    #@4
    .line 4013
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    #@6
    .line 4014
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->handlePinMmi(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result v2

    #@a
    return v2

    #@b
    .line 4015
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    #@c
    .line 4016
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManager"

    #@f
    const-string/jumbo v3, "Error calling ITelephony#handlePinMmi"

    #@12
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@15
    .line 4018
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    #@16
    return v2
.end method

.method public handlePinMmiForSubscriber(ILjava/lang/String;)Z
    .locals 4
    .param p1, "subId"    # I
    .param p2, "dialString"    # Ljava/lang/String;

    #@0
    .prologue
    .line 4025
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    #@3
    move-result-object v1

    #@4
    .line 4026
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    #@6
    .line 4027
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->handlePinMmiForSubscriber(ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result v2

    #@a
    return v2

    #@b
    .line 4028
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    #@c
    .line 4029
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManager"

    #@f
    const-string/jumbo v3, "Error calling ITelephony#handlePinMmi"

    #@12
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@15
    .line 4031
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    #@16
    return v2
.end method

.method public hasCarrierPrivileges()Z
    .locals 6

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 3662
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    #@5
    move-result-object v2

    #@6
    .line 3663
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_1

    #@8
    .line 3664
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getCarrierPrivilegeStatus()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result v5

    #@c
    if-ne v5, v3, :cond_0

    #@e
    :goto_0
    return v3

    #@f
    :cond_0
    move v3, v4

    #@10
    goto :goto_0

    #@11
    .line 3667
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    #@12
    .line 3668
    .local v1, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "TelephonyManager"

    #@15
    const-string/jumbo v5, "hasCarrierPrivileges NPE"

    #@18
    invoke-static {v3, v5, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1b
    .line 3670
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :cond_1
    :goto_1
    return v4

    #@1c
    .line 3665
    :catch_1
    move-exception v0

    #@1d
    .line 3666
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v3, "TelephonyManager"

    #@20
    const-string/jumbo v5, "hasCarrierPrivileges RemoteException"

    #@23
    invoke-static {v3, v5, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@26
    goto :goto_1
.end method

.method public hasIccCard()Z
    .locals 1

    #@0
    .prologue
    .line 1652
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDefaultSim()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public hasIccCard(I)Z
    .locals 4
    .param p1, "slotId"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1665
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    #@4
    move-result-object v2

    #@5
    .line 1666
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v2, :cond_0

    #@7
    .line 1667
    return v3

    #@8
    .line 1668
    :cond_0
    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->hasIccCardUsingSlotId(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result v3

    #@c
    return v3

    #@d
    .line 1672
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    #@e
    .line 1674
    .local v1, "ex":Ljava/lang/NullPointerException;
    return v3

    #@f
    .line 1669
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    #@10
    .line 1671
    .local v0, "ex":Landroid/os/RemoteException;
    return v3
.end method

.method public iccCloseLogicalChannel(I)Z
    .locals 4
    .param p1, "channel"    # I

    #@0
    .prologue
    .line 2936
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    #@3
    move-result-object v2

    #@4
    .line 2937
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    #@6
    .line 2938
    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->iccCloseLogicalChannel(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    #@9
    move-result v3

    #@a
    return v3

    #@b
    .line 2939
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    #@c
    .line 2942
    :cond_0
    :goto_0
    const/4 v3, 0x0

    #@d
    return v3

    #@e
    .line 2940
    :catch_1
    move-exception v1

    #@f
    .local v1, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public iccExchangeSimIO(IIIIILjava/lang/String;)[B
    .locals 9
    .param p1, "fileID"    # I
    .param p2, "command"    # I
    .param p3, "p1"    # I
    .param p4, "p2"    # I
    .param p5, "p3"    # I
    .param p6, "filePath"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3029
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    #@3
    move-result-object v0

    #@4
    .line 3030
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_0

    #@6
    move v1, p1

    #@7
    move v2, p2

    #@8
    move v3, p3

    #@9
    move v4, p4

    #@a
    move v5, p5

    #@b
    move-object v6, p6

    #@c
    .line 3031
    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/ITelephony;->iccExchangeSimIO(IIIIILjava/lang/String;)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    #@f
    move-result-object v1

    #@10
    return-object v1

    #@11
    .line 3032
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v7

    #@12
    .line 3035
    :cond_0
    :goto_0
    const/4 v1, 0x0

    #@13
    return-object v1

    #@14
    .line 3033
    :catch_1
    move-exception v8

    #@15
    .local v8, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public iccOpenLogicalChannel(Ljava/lang/String;)Landroid/telephony/IccOpenLogicalChannelResponse;
    .locals 4
    .param p1, "AID"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 2912
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    #@4
    move-result-object v2

    #@5
    .line 2913
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    #@7
    .line 2914
    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->iccOpenLogicalChannel(Ljava/lang/String;)Landroid/telephony/IccOpenLogicalChannelResponse;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    #@a
    move-result-object v3

    #@b
    return-object v3

    #@c
    .line 2915
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    #@d
    .line 2918
    :cond_0
    :goto_0
    return-object v3

    #@e
    .line 2916
    :catch_1
    move-exception v1

    #@f
    .local v1, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public iccTransmitApduBasicChannel(IIIIILjava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "cla"    # I
    .param p2, "instruction"    # I
    .param p3, "p1"    # I
    .param p4, "p2"    # I
    .param p5, "p3"    # I
    .param p6, "data"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3001
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    #@3
    move-result-object v0

    #@4
    .line 3002
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_0

    #@6
    move v1, p1

    #@7
    move v2, p2

    #@8
    move v3, p3

    #@9
    move v4, p4

    #@a
    move v5, p5

    #@b
    move-object v6, p6

    #@c
    .line 3003
    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/ITelephony;->iccTransmitApduBasicChannel(IIIIILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    #@f
    move-result-object v1

    #@10
    return-object v1

    #@11
    .line 3005
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v7

    #@12
    .line 3008
    :cond_0
    :goto_0
    const-string/jumbo v1, ""

    #@15
    return-object v1

    #@16
    .line 3006
    :catch_1
    move-exception v8

    #@17
    .local v8, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public iccTransmitApduLogicalChannel(IIIIIILjava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "channel"    # I
    .param p2, "cla"    # I
    .param p3, "instruction"    # I
    .param p4, "p1"    # I
    .param p5, "p2"    # I
    .param p6, "p3"    # I
    .param p7, "data"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2969
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    #@3
    move-result-object v0

    #@4
    .line 2970
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_0

    #@6
    move v1, p1

    #@7
    move v2, p2

    #@8
    move v3, p3

    #@9
    move v4, p4

    #@a
    move v5, p5

    #@b
    move/from16 v6, p6

    #@d
    move-object/from16 v7, p7

    #@f
    .line 2971
    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/ITelephony;->iccTransmitApduLogicalChannel(IIIIIILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    #@12
    move-result-object v1

    #@13
    return-object v1

    #@14
    .line 2973
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v8

    #@15
    .line 2976
    :cond_0
    :goto_0
    const-string/jumbo v1, ""

    #@18
    return-object v1

    #@19
    .line 2974
    :catch_1
    move-exception v9

    #@1a
    .local v9, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public invokeOemRilRequestRaw([B[B)I
    .locals 4
    .param p1, "oemReq"    # [B
    .param p2, "oemResp"    # [B

    #@0
    .prologue
    .line 4189
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    #@3
    move-result-object v2

    #@4
    .line 4190
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    #@6
    .line 4191
    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/ITelephony;->invokeOemRilRequestRaw([B[B)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    #@9
    move-result v3

    #@a
    return v3

    #@b
    .line 4192
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    #@c
    .line 4195
    :cond_0
    :goto_0
    const/4 v3, -0x1

    #@d
    return v3

    #@e
    .line 4193
    :catch_1
    move-exception v1

    #@f
    .local v1, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public isDataConnectivityPossible()Z
    .locals 4

    #@0
    .prologue
    .line 4114
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    #@3
    move-result-object v1

    #@4
    .line 4115
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    #@6
    .line 4116
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isDataConnectivityPossible()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result v2

    #@a
    return v2

    #@b
    .line 4117
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    #@c
    .line 4118
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManager"

    #@f
    const-string/jumbo v3, "Error calling ITelephony#isDataConnectivityPossible"

    #@12
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@15
    .line 4120
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    #@16
    return v2
.end method

.method public isHearingAidCompatibilitySupported()Z
    .locals 5

    #@0
    .prologue
    .line 4288
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    #@3
    move-result-object v2

    #@4
    .line 4289
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    #@6
    .line 4290
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isHearingAidCompatibilitySupported()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result v3

    #@a
    return v3

    #@b
    .line 4294
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    #@c
    .line 4295
    .local v1, "e":Ljava/lang/SecurityException;
    const-string/jumbo v3, "TelephonyManager"

    #@f
    const-string/jumbo v4, "Permission error calling ITelephony#isHearingAidCompatibilitySupported"

    #@12
    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@15
    .line 4297
    .end local v1    # "e":Ljava/lang/SecurityException;
    :cond_0
    :goto_0
    const/4 v3, 0x0

    #@16
    return v3

    #@17
    .line 4292
    :catch_1
    move-exception v0

    #@18
    .line 4293
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "TelephonyManager"

    #@1b
    const-string/jumbo v4, "Error calling ITelephony#isHearingAidCompatibilitySupported"

    #@1e
    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@21
    goto :goto_0
.end method

.method public isIdle()Z
    .locals 4

    #@0
    .prologue
    .line 3921
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    #@3
    move-result-object v1

    #@4
    .line 3922
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    #@6
    .line 3923
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    #@9
    move-result-object v2

    #@a
    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ITelephony;->isIdle(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    move-result v2

    #@e
    return v2

    #@f
    .line 3924
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    #@10
    .line 3925
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManager"

    #@13
    const-string/jumbo v3, "Error calling ITelephony#isIdle"

    #@16
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@19
    .line 3927
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x1

    #@1a
    return v2
.end method

.method public isImsRegistered()Z
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 4344
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    #@4
    move-result-object v2

    #@5
    .line 4345
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v2, :cond_0

    #@7
    .line 4346
    return v3

    #@8
    .line 4347
    :cond_0
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isImsRegistered()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result v3

    #@c
    return v3

    #@d
    .line 4350
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    #@e
    .line 4351
    .local v1, "ex":Ljava/lang/NullPointerException;
    return v3

    #@f
    .line 4348
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    #@10
    .line 4349
    .local v0, "ex":Landroid/os/RemoteException;
    return v3
.end method

.method public isMultiSimEnabled()Z
    .locals 2

    #@0
    .prologue
    .line 200
    sget-object v0, Landroid/telephony/TelephonyManager;->multiSimConfig:Ljava/lang/String;

    #@2
    const-string/jumbo v1, "dsds"

    #@5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8
    move-result v0

    #@9
    if-nez v0, :cond_0

    #@b
    sget-object v0, Landroid/telephony/TelephonyManager;->multiSimConfig:Ljava/lang/String;

    #@d
    const-string/jumbo v1, "dsda"

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@13
    move-result v0

    #@14
    if-nez v0, :cond_0

    #@16
    .line 201
    sget-object v0, Landroid/telephony/TelephonyManager;->multiSimConfig:Ljava/lang/String;

    #@18
    const-string/jumbo v1, "tsts"

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1e
    move-result v0

    #@1f
    .line 200
    :goto_0
    return v0

    #@20
    :cond_0
    const/4 v0, 0x1

    #@21
    goto :goto_0
.end method

.method public isNetworkRoaming()Z
    .locals 1

    #@0
    .prologue
    .line 1238
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming(I)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public isNetworkRoaming(I)Z
    .locals 3
    .param p1, "subId"    # I

    #@0
    .prologue
    .line 1251
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    #@3
    move-result v0

    #@4
    .line 1253
    .local v0, "phoneId":I
    const-string/jumbo v1, "gsm.operator.isroaming"

    #@7
    const/4 v2, 0x0

    #@8
    .line 1252
    invoke-static {v0, v1, v2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@f
    move-result v1

    #@10
    return v1
.end method

.method public isOffhook()Z
    .locals 4

    #@0
    .prologue
    .line 3895
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    #@3
    move-result-object v1

    #@4
    .line 3896
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    #@6
    .line 3897
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    #@9
    move-result-object v2

    #@a
    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ITelephony;->isOffhook(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    move-result v2

    #@e
    return v2

    #@f
    .line 3898
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    #@10
    .line 3899
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManager"

    #@13
    const-string/jumbo v3, "Error calling ITelephony#isOffhook"

    #@16
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@19
    .line 3901
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    #@1a
    return v2
.end method

.method public isRadioOn()Z
    .locals 4

    #@0
    .prologue
    .line 3934
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    #@3
    move-result-object v1

    #@4
    .line 3935
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    #@6
    .line 3936
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    #@9
    move-result-object v2

    #@a
    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ITelephony;->isRadioOn(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    move-result v2

    #@e
    return v2

    #@f
    .line 3937
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    #@10
    .line 3938
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManager"

    #@13
    const-string/jumbo v3, "Error calling ITelephony#isRadioOn"

    #@16
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@19
    .line 3940
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    #@1a
    return v2
.end method

.method public isRinging()Z
    .locals 4

    #@0
    .prologue
    .line 3908
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    #@3
    move-result-object v1

    #@4
    .line 3909
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    #@6
    .line 3910
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    #@9
    move-result-object v2

    #@a
    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ITelephony;->isRinging(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    move-result v2

    #@e
    return v2

    #@f
    .line 3911
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    #@10
    .line 3912
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManager"

    #@13
    const-string/jumbo v3, "Error calling ITelephony#isRinging"

    #@16
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@19
    .line 3914
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    #@1a
    return v2
.end method

.method public isSimPinEnabled()Z
    .locals 4

    #@0
    .prologue
    .line 3947
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    #@3
    move-result-object v1

    #@4
    .line 3948
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    #@6
    .line 3949
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    #@9
    move-result-object v2

    #@a
    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ITelephony;->isSimPinEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    move-result v2

    #@e
    return v2

    #@f
    .line 3950
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    #@10
    .line 3951
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManager"

    #@13
    const-string/jumbo v3, "Error calling ITelephony#isSimPinEnabled"

    #@16
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@19
    .line 3953
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    #@1a
    return v2
.end method

.method public isSmsCapable()Z
    .locals 2

    #@0
    .prologue
    .line 2819
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    #@2
    if-nez v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    return v0

    #@6
    .line 2820
    :cond_0
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    #@8
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@b
    move-result-object v0

    #@c
    .line 2821
    const v1, 0x1120055

    #@f
    .line 2820
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@12
    move-result v0

    #@13
    return v0
.end method

.method public isTtyModeSupported()Z
    .locals 5

    #@0
    .prologue
    .line 4268
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    #@3
    move-result-object v2

    #@4
    .line 4269
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    #@6
    .line 4270
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isTtyModeSupported()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result v3

    #@a
    return v3

    #@b
    .line 4274
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    #@c
    .line 4275
    .local v1, "e":Ljava/lang/SecurityException;
    const-string/jumbo v3, "TelephonyManager"

    #@f
    const-string/jumbo v4, "Permission error calling ITelephony#isTtyModeSupported"

    #@12
    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@15
    .line 4277
    .end local v1    # "e":Ljava/lang/SecurityException;
    :cond_0
    :goto_0
    const/4 v3, 0x0

    #@16
    return v3

    #@17
    .line 4272
    :catch_1
    move-exception v0

    #@18
    .line 4273
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "TelephonyManager"

    #@1b
    const-string/jumbo v4, "Error calling ITelephony#isTtyModeSupported"

    #@1e
    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@21
    goto :goto_0
.end method

.method public isVideoCallingEnabled()Z
    .locals 4

    #@0
    .prologue
    .line 4214
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    #@3
    move-result-object v1

    #@4
    .line 4215
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    #@6
    .line 4216
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    #@9
    move-result-object v2

    #@a
    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ITelephony;->isVideoCallingEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    move-result v2

    #@e
    return v2

    #@f
    .line 4217
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    #@10
    .line 4218
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManager"

    #@13
    const-string/jumbo v3, "Error calling ITelephony#isVideoCallingEnabled"

    #@16
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@19
    .line 4220
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    #@1a
    return v2
.end method

.method public isVoiceCapable()Z
    .locals 2

    #@0
    .prologue
    .line 2804
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    #@2
    if-nez v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    return v0

    #@6
    .line 2805
    :cond_0
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    #@8
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@b
    move-result-object v0

    #@c
    .line 2806
    const v1, 0x1120053

    #@f
    .line 2805
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@12
    move-result v0

    #@13
    return v0
.end method

.method public isVolteEnabled()Z
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 4361
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    #@4
    move-result-object v2

    #@5
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isVolteEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    move-result v2

    #@9
    return v2

    #@a
    .line 4364
    :catch_0
    move-exception v1

    #@b
    .line 4365
    .local v1, "ex":Ljava/lang/NullPointerException;
    return v3

    #@c
    .line 4362
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    #@d
    .line 4363
    .local v0, "ex":Landroid/os/RemoteException;
    return v3
.end method

.method public isWifiCallingEnabled()Z
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 4375
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    #@4
    move-result-object v2

    #@5
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isWifiCallingEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    move-result v2

    #@9
    return v2

    #@a
    .line 4378
    :catch_0
    move-exception v1

    #@b
    .line 4379
    .local v1, "ex":Ljava/lang/NullPointerException;
    return v3

    #@c
    .line 4376
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    #@d
    .line 4377
    .local v0, "ex":Landroid/os/RemoteException;
    return v3
.end method

.method public isWorldPhone()Z
    .locals 5

    #@0
    .prologue
    .line 4249
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    #@3
    move-result-object v2

    #@4
    .line 4250
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    #@6
    .line 4251
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isWorldPhone()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result v3

    #@a
    return v3

    #@b
    .line 4255
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    #@c
    .line 4256
    .local v1, "e":Ljava/lang/SecurityException;
    const-string/jumbo v3, "TelephonyManager"

    #@f
    const-string/jumbo v4, "Permission error calling ITelephony#isWorldPhone"

    #@12
    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@15
    .line 4258
    .end local v1    # "e":Ljava/lang/SecurityException;
    :cond_0
    :goto_0
    const/4 v3, 0x0

    #@16
    return v3

    #@17
    .line 4253
    :catch_1
    move-exception v0

    #@18
    .line 4254
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "TelephonyManager"

    #@1b
    const-string/jumbo v4, "Error calling ITelephony#isWorldPhone"

    #@1e
    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@21
    goto :goto_0
.end method

.method public listen(Landroid/telephony/PhoneStateListener;I)V
    .locals 9
    .param p1, "listener"    # Landroid/telephony/PhoneStateListener;
    .param p2, "events"    # I

    #@0
    .prologue
    .line 2672
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    #@2
    if-nez v0, :cond_0

    #@4
    return-void

    #@5
    .line 2674
    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    #@8
    move-result-object v0

    #@9
    if-eqz v0, :cond_1

    #@b
    const/4 v0, 0x1

    #@c
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@f
    move-result-object v8

    #@10
    .line 2675
    .local v8, "notifyNow":Ljava/lang/Boolean;
    sget-object v0, Landroid/telephony/TelephonyManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    #@12
    iget v1, p1, Landroid/telephony/PhoneStateListener;->mSubId:I

    #@14
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    #@17
    move-result-object v2

    #@18
    .line 2676
    iget-object v3, p1, Landroid/telephony/PhoneStateListener;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    #@1a
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    #@1d
    move-result v5

    #@1e
    move v4, p2

    #@1f
    .line 2675
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/ITelephonyRegistry;->listenForSubscriber(ILjava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    #@22
    .line 2671
    .end local v8    # "notifyNow":Ljava/lang/Boolean;
    :goto_1
    return-void

    #@23
    .line 2674
    :cond_1
    const/4 v0, 0x0

    #@24
    goto :goto_0

    #@25
    .line 2677
    :catch_0
    move-exception v6

    #@26
    .local v6, "ex":Landroid/os/RemoteException;
    goto :goto_1

    #@27
    .line 2679
    .end local v6    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v7

    #@28
    .local v7, "ex":Ljava/lang/NullPointerException;
    goto :goto_1
.end method

.method public needsOtaServiceProvisioning()Z
    .locals 4

    #@0
    .prologue
    .line 4127
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    #@3
    move-result-object v1

    #@4
    .line 4128
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    #@6
    .line 4129
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->needsOtaServiceProvisioning()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result v2

    #@a
    return v2

    #@b
    .line 4130
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    #@c
    .line 4131
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManager"

    #@f
    const-string/jumbo v3, "Error calling ITelephony#needsOtaServiceProvisioning"

    #@12
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@15
    .line 4133
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    #@16
    return v2
.end method

.method public nvReadItem(I)Ljava/lang/String;
    .locals 5
    .param p1, "itemID"    # I

    #@0
    .prologue
    .line 3078
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    #@3
    move-result-object v2

    #@4
    .line 3079
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    #@6
    .line 3080
    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->nvReadItem(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result-object v3

    #@a
    return-object v3

    #@b
    .line 3083
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    #@c
    .line 3084
    .local v1, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "TelephonyManager"

    #@f
    const-string/jumbo v4, "nvReadItem NPE"

    #@12
    invoke-static {v3, v4, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@15
    .line 3086
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :cond_0
    :goto_0
    const-string/jumbo v3, ""

    #@18
    return-object v3

    #@19
    .line 3081
    :catch_1
    move-exception v0

    #@1a
    .line 3082
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v3, "TelephonyManager"

    #@1d
    const-string/jumbo v4, "nvReadItem RemoteException"

    #@20
    invoke-static {v3, v4, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@23
    goto :goto_0
.end method

.method public nvResetConfig(I)Z
    .locals 5
    .param p1, "resetType"    # I

    #@0
    .prologue
    .line 3158
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    #@3
    move-result-object v2

    #@4
    .line 3159
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    #@6
    .line 3160
    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->nvResetConfig(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result v3

    #@a
    return v3

    #@b
    .line 3163
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    #@c
    .line 3164
    .local v1, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "TelephonyManager"

    #@f
    const-string/jumbo v4, "nvResetConfig NPE"

    #@12
    invoke-static {v3, v4, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@15
    .line 3166
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :cond_0
    :goto_0
    const/4 v3, 0x0

    #@16
    return v3

    #@17
    .line 3161
    :catch_1
    move-exception v0

    #@18
    .line 3162
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v3, "TelephonyManager"

    #@1b
    const-string/jumbo v4, "nvResetConfig RemoteException"

    #@1e
    invoke-static {v3, v4, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@21
    goto :goto_0
.end method

.method public nvWriteCdmaPrl([B)Z
    .locals 5
    .param p1, "preferredRoamingList"    # [B

    #@0
    .prologue
    .line 3131
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    #@3
    move-result-object v2

    #@4
    .line 3132
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    #@6
    .line 3133
    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->nvWriteCdmaPrl([B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result v3

    #@a
    return v3

    #@b
    .line 3136
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    #@c
    .line 3137
    .local v1, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "TelephonyManager"

    #@f
    const-string/jumbo v4, "nvWriteCdmaPrl NPE"

    #@12
    invoke-static {v3, v4, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@15
    .line 3139
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :cond_0
    :goto_0
    const/4 v3, 0x0

    #@16
    return v3

    #@17
    .line 3134
    :catch_1
    move-exception v0

    #@18
    .line 3135
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v3, "TelephonyManager"

    #@1b
    const-string/jumbo v4, "nvWriteCdmaPrl RemoteException"

    #@1e
    invoke-static {v3, v4, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@21
    goto :goto_0
.end method

.method public nvWriteItem(ILjava/lang/String;)Z
    .locals 5
    .param p1, "itemID"    # I
    .param p2, "itemValue"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3105
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    #@3
    move-result-object v2

    #@4
    .line 3106
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    #@6
    .line 3107
    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/ITelephony;->nvWriteItem(ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result v3

    #@a
    return v3

    #@b
    .line 3110
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    #@c
    .line 3111
    .local v1, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "TelephonyManager"

    #@f
    const-string/jumbo v4, "nvWriteItem NPE"

    #@12
    invoke-static {v3, v4, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@15
    .line 3113
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :cond_0
    :goto_0
    const/4 v3, 0x0

    #@16
    return v3

    #@17
    .line 3108
    :catch_1
    move-exception v0

    #@18
    .line 3109
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v3, "TelephonyManager"

    #@1b
    const-string/jumbo v4, "nvWriteItem RemoteException"

    #@1e
    invoke-static {v3, v4, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@21
    goto :goto_0
.end method

.method public sendEnvelopeWithStatus(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "content"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3054
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    #@3
    move-result-object v2

    #@4
    .line 3055
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    #@6
    .line 3056
    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->sendEnvelopeWithStatus(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    #@9
    move-result-object v3

    #@a
    return-object v3

    #@b
    .line 3057
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    #@c
    .line 3060
    :cond_0
    :goto_0
    const-string/jumbo v3, ""

    #@f
    return-object v3

    #@10
    .line 3058
    :catch_1
    move-exception v1

    #@11
    .local v1, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public setBasebandVersion(Ljava/lang/String;)V
    .locals 1
    .param p1, "version"    # Ljava/lang/String;

    #@0
    .prologue
    .line 4470
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultPhone()I

    #@3
    move-result v0

    #@4
    .line 4471
    .local v0, "phoneId":I
    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->setBasebandVersionForPhone(ILjava/lang/String;)V

    #@7
    .line 4469
    return-void
.end method

.method public setBasebandVersionForPhone(ILjava/lang/String;)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "version"    # Ljava/lang/String;

    #@0
    .prologue
    .line 4482
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 4483
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v2, "gsm.version.baseband"

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v2

    #@12
    .line 4484
    if-nez p1, :cond_1

    #@14
    const-string/jumbo v1, ""

    #@17
    .line 4483
    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    .line 4485
    .local v0, "prop":Ljava/lang/String;
    invoke-static {v0, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@22
    .line 4481
    .end local v0    # "prop":Ljava/lang/String;
    :cond_0
    return-void

    #@23
    .line 4484
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@26
    move-result-object v1

    #@27
    goto :goto_0
.end method

.method public setCellInfoListRate(I)V
    .locals 3
    .param p1, "rateInMillis"    # I

    #@0
    .prologue
    .line 2872
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    #@3
    move-result-object v2

    #@4
    .line 2873
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    #@6
    .line 2874
    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->setCellInfoListRate(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    #@9
    .line 2870
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return-void

    #@a
    .line 2875
    :catch_0
    move-exception v0

    #@b
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    #@c
    .line 2876
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    #@d
    .local v1, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public setDataEnabled(IZ)V
    .locals 5
    .param p1, "subId"    # I
    .param p2, "enable"    # Z

    #@0
    .prologue
    .line 4146
    :try_start_0
    const-string/jumbo v2, "TelephonyManager"

    #@3
    new-instance v3, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v4, "setDataEnabled: enabled="

    #@b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v3

    #@f
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@12
    move-result-object v3

    #@13
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v3

    #@17
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1a
    .line 4147
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    #@1d
    move-result-object v1

    #@1e
    .line 4148
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    #@20
    .line 4149
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->setDataEnabled(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@23
    .line 4144
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return-void

    #@24
    .line 4150
    :catch_0
    move-exception v0

    #@25
    .line 4151
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManager"

    #@28
    const-string/jumbo v3, "Error calling ITelephony#setDataEnabled"

    #@2b
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2e
    goto :goto_0
.end method

.method public setDataEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    #@0
    .prologue
    .line 4139
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->setDataEnabled(IZ)V

    #@7
    .line 4138
    return-void
.end method

.method public setDataNetworkType(I)V
    .locals 1
    .param p1, "type"    # I

    #@0
    .prologue
    .line 4705
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultPhone()I

    #@3
    move-result v0

    #@4
    .line 4706
    .local v0, "phoneId":I
    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->setDataNetworkTypeForPhone(II)V

    #@7
    .line 4704
    return-void
.end method

.method public setDataNetworkTypeForPhone(II)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "type"    # I

    #@0
    .prologue
    .line 4716
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 4718
    const-string/jumbo v0, "gsm.network.type"

    #@9
    .line 4719
    invoke-static {p2}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    .line 4717
    invoke-static {p1, v0, v1}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    #@10
    .line 4715
    :cond_0
    return-void
.end method

.method public setImsRegistrationState(Z)V
    .locals 2
    .param p1, "registered"    # Z

    #@0
    .prologue
    .line 3476
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    #@3
    move-result-object v1

    #@4
    .line 3477
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    #@6
    .line 3478
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->setImsRegistrationState(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 3474
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return-void

    #@a
    .line 3479
    :catch_0
    move-exception v0

    #@b
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setLine1NumberForDisplay(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "alphaTag"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2125
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0, p1, p2}, Landroid/telephony/TelephonyManager;->setLine1NumberForDisplayForSubscriber(ILjava/lang/String;Ljava/lang/String;)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public setLine1NumberForDisplayForSubscriber(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "subId"    # I
    .param p2, "alphaTag"    # Ljava/lang/String;
    .param p3, "number"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2145
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    #@3
    move-result-object v2

    #@4
    .line 2146
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    #@6
    .line 2147
    invoke-interface {v2, p1, p2, p3}, Lcom/android/internal/telephony/ITelephony;->setLine1NumberForDisplayForSubscriber(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    #@9
    move-result v3

    #@a
    return v3

    #@b
    .line 2148
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    #@c
    .line 2151
    :cond_0
    :goto_0
    const/4 v3, 0x0

    #@d
    return v3

    #@e
    .line 2149
    :catch_1
    move-exception v1

    #@f
    .local v1, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public setNetworkCountryIso(Ljava/lang/String;)V
    .locals 1
    .param p1, "iso"    # Ljava/lang/String;

    #@0
    .prologue
    .line 4681
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultPhone()I

    #@3
    move-result v0

    #@4
    .line 4682
    .local v0, "phoneId":I
    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->setNetworkCountryIsoForPhone(ILjava/lang/String;)V

    #@7
    .line 4680
    return-void
.end method

.method public setNetworkCountryIsoForPhone(ILjava/lang/String;)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "iso"    # Ljava/lang/String;

    #@0
    .prologue
    .line 4693
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 4695
    const-string/jumbo v0, "gsm.operator.iso-country"

    #@9
    .line 4694
    invoke-static {p1, v0, p2}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    #@c
    .line 4692
    :cond_0
    return-void
.end method

.method public setNetworkOperatorName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 4615
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultPhone()I

    #@3
    move-result v0

    #@4
    .line 4616
    .local v0, "phoneId":I
    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->setNetworkOperatorNameForPhone(ILjava/lang/String;)V

    #@7
    .line 4614
    return-void
.end method

.method public setNetworkOperatorNameForPhone(ILjava/lang/String;)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 4626
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 4627
    const-string/jumbo v0, "gsm.operator.alpha"

    #@9
    invoke-static {p1, v0, p2}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    #@c
    .line 4625
    :cond_0
    return-void
.end method

.method public setNetworkOperatorNumeric(Ljava/lang/String;)V
    .locals 1
    .param p1, "numeric"    # Ljava/lang/String;

    #@0
    .prologue
    .line 4637
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultPhone()I

    #@3
    move-result v0

    #@4
    .line 4638
    .local v0, "phoneId":I
    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->setNetworkOperatorNumericForPhone(ILjava/lang/String;)V

    #@7
    .line 4636
    return-void
.end method

.method public setNetworkOperatorNumericForPhone(ILjava/lang/String;)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "numeric"    # Ljava/lang/String;

    #@0
    .prologue
    .line 4648
    const-string/jumbo v0, "gsm.operator.numeric"

    #@3
    invoke-static {p1, v0, p2}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    #@6
    .line 4647
    return-void
.end method

.method public setNetworkRoaming(Z)V
    .locals 1
    .param p1, "isRoaming"    # Z

    #@0
    .prologue
    .line 4657
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultPhone()I

    #@3
    move-result v0

    #@4
    .line 4658
    .local v0, "phoneId":I
    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->setNetworkRoamingForPhone(IZ)V

    #@7
    .line 4656
    return-void
.end method

.method public setNetworkRoamingForPhone(IZ)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "isRoaming"    # Z

    #@0
    .prologue
    .line 4668
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 4669
    const-string/jumbo v1, "gsm.operator.isroaming"

    #@9
    .line 4670
    if-eqz p2, :cond_1

    #@b
    const-string/jumbo v0, "true"

    #@e
    .line 4669
    :goto_0
    invoke-static {p1, v1, v0}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    #@11
    .line 4667
    :cond_0
    return-void

    #@12
    .line 4670
    :cond_1
    const-string/jumbo v0, "false"

    #@15
    goto :goto_0
.end method

.method public setNetworkSelectionModeAutomatic(I)V
    .locals 5
    .param p1, "subId"    # I

    #@0
    .prologue
    .line 3518
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    #@3
    move-result-object v2

    #@4
    .line 3519
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    #@6
    .line 3520
    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->setNetworkSelectionModeAutomatic(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 3516
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return-void

    #@a
    .line 3523
    :catch_0
    move-exception v1

    #@b
    .line 3524
    .local v1, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "TelephonyManager"

    #@e
    const-string/jumbo v4, "setNetworkSelectionModeAutomatic NPE"

    #@11
    invoke-static {v3, v4, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@14
    goto :goto_0

    #@15
    .line 3521
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    #@16
    .line 3522
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v3, "TelephonyManager"

    #@19
    const-string/jumbo v4, "setNetworkSelectionModeAutomatic RemoteException"

    #@1c
    invoke-static {v3, v4, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1f
    goto :goto_0
.end method

.method public setNetworkSelectionModeManual(ILcom/android/internal/telephony/OperatorInfo;)Z
    .locals 5
    .param p1, "subId"    # I
    .param p2, "operator"    # Lcom/android/internal/telephony/OperatorInfo;

    #@0
    .prologue
    .line 3566
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    #@3
    move-result-object v2

    #@4
    .line 3567
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    #@6
    .line 3568
    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/ITelephony;->setNetworkSelectionModeManual(ILcom/android/internal/telephony/OperatorInfo;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result v3

    #@a
    return v3

    #@b
    .line 3571
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    #@c
    .line 3572
    .local v1, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "TelephonyManager"

    #@f
    const-string/jumbo v4, "setNetworkSelectionModeManual NPE"

    #@12
    invoke-static {v3, v4, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@15
    .line 3574
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :cond_0
    :goto_0
    const/4 v3, 0x0

    #@16
    return v3

    #@17
    .line 3569
    :catch_1
    move-exception v0

    #@18
    .line 3570
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v3, "TelephonyManager"

    #@1b
    const-string/jumbo v4, "setNetworkSelectionModeManual RemoteException"

    #@1e
    invoke-static {v3, v4, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@21
    goto :goto_0
.end method

.method public setOperatorBrandOverride(Ljava/lang/String;)Z
    .locals 5
    .param p1, "brand"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3689
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    #@3
    move-result-object v2

    #@4
    .line 3690
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    #@6
    .line 3691
    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->setOperatorBrandOverride(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result v3

    #@a
    return v3

    #@b
    .line 3694
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    #@c
    .line 3695
    .local v1, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "TelephonyManager"

    #@f
    const-string/jumbo v4, "setOperatorBrandOverride NPE"

    #@12
    invoke-static {v3, v4, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@15
    .line 3697
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :cond_0
    :goto_0
    const/4 v3, 0x0

    #@16
    return v3

    #@17
    .line 3692
    :catch_1
    move-exception v0

    #@18
    .line 3693
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v3, "TelephonyManager"

    #@1b
    const-string/jumbo v4, "setOperatorBrandOverride RemoteException"

    #@1e
    invoke-static {v3, v4, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@21
    goto :goto_0
.end method

.method public setPhoneType(I)V
    .locals 1
    .param p1, "type"    # I

    #@0
    .prologue
    .line 4497
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultPhone()I

    #@3
    move-result v0

    #@4
    .line 4498
    .local v0, "phoneId":I
    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->setPhoneType(II)V

    #@7
    .line 4496
    return-void
.end method

.method public setPhoneType(II)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "type"    # I

    #@0
    .prologue
    .line 4510
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 4512
    const-string/jumbo v0, "gsm.current.phone-type"

    #@9
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    .line 4511
    invoke-static {p1, v0, v1}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    #@10
    .line 4509
    :cond_0
    return-void
.end method

.method public setPreferredNetworkType(II)Z
    .locals 5
    .param p1, "subId"    # I
    .param p2, "networkType"    # I

    #@0
    .prologue
    .line 3592
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    #@3
    move-result-object v2

    #@4
    .line 3593
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    #@6
    .line 3594
    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/ITelephony;->setPreferredNetworkType(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result v3

    #@a
    return v3

    #@b
    .line 3597
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    #@c
    .line 3598
    .local v1, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "TelephonyManager"

    #@f
    const-string/jumbo v4, "setPreferredNetworkType NPE"

    #@12
    invoke-static {v3, v4, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@15
    .line 3600
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :cond_0
    :goto_0
    const/4 v3, 0x0

    #@16
    return v3

    #@17
    .line 3595
    :catch_1
    move-exception v0

    #@18
    .line 3596
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v3, "TelephonyManager"

    #@1b
    const-string/jumbo v4, "setPreferredNetworkType RemoteException"

    #@1e
    invoke-static {v3, v4, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@21
    goto :goto_0
.end method

.method public setPreferredNetworkTypeToGlobal()Z
    .locals 2

    #@0
    .prologue
    .line 3613
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()I

    #@3
    move-result v0

    #@4
    .line 3614
    const/16 v1, 0xa

    #@6
    .line 3613
    invoke-virtual {p0, v0, v1}, Landroid/telephony/TelephonyManager;->setPreferredNetworkType(II)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public setRadio(Z)Z
    .locals 4
    .param p1, "turnOn"    # Z

    #@0
    .prologue
    .line 4050
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    #@3
    move-result-object v1

    #@4
    .line 4051
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    #@6
    .line 4052
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->setRadio(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result v2

    #@a
    return v2

    #@b
    .line 4053
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    #@c
    .line 4054
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManager"

    #@f
    const-string/jumbo v3, "Error calling ITelephony#setRadio"

    #@12
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@15
    .line 4056
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    #@16
    return v2
.end method

.method public setRadioPower(Z)Z
    .locals 4
    .param p1, "turnOn"    # Z

    #@0
    .prologue
    .line 4063
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    #@3
    move-result-object v1

    #@4
    .line 4064
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    #@6
    .line 4065
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->setRadioPower(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result v2

    #@a
    return v2

    #@b
    .line 4066
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    #@c
    .line 4067
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManager"

    #@f
    const-string/jumbo v3, "Error calling ITelephony#setRadioPower"

    #@12
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@15
    .line 4069
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    #@16
    return v2
.end method

.method public setRoamingOverride(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z
    .locals 5
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
    .line 3723
    .local p1, "gsmRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "gsmNonRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "cdmaRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "cdmaNonRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    #@3
    move-result-object v2

    #@4
    .line 3724
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    #@6
    .line 3725
    invoke-interface {v2, p1, p2, p3, p4}, Lcom/android/internal/telephony/ITelephony;->setRoamingOverride(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result v3

    #@a
    return v3

    #@b
    .line 3729
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    #@c
    .line 3730
    .local v1, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "TelephonyManager"

    #@f
    const-string/jumbo v4, "setRoamingOverride NPE"

    #@12
    invoke-static {v3, v4, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@15
    .line 3732
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :cond_0
    :goto_0
    const/4 v3, 0x0

    #@16
    return v3

    #@17
    .line 3727
    :catch_1
    move-exception v0

    #@18
    .line 3728
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v3, "TelephonyManager"

    #@1b
    const-string/jumbo v4, "setRoamingOverride RemoteException"

    #@1e
    invoke-static {v3, v4, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@21
    goto :goto_0
.end method

.method public setSimCountryIso(Ljava/lang/String;)V
    .locals 1
    .param p1, "iso"    # Ljava/lang/String;

    #@0
    .prologue
    .line 4429
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultPhone()I

    #@3
    move-result v0

    #@4
    .line 4430
    .local v0, "phoneId":I
    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->setSimCountryIsoForPhone(ILjava/lang/String;)V

    #@7
    .line 4428
    return-void
.end method

.method public setSimCountryIsoForPhone(ILjava/lang/String;)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "iso"    # Ljava/lang/String;

    #@0
    .prologue
    .line 4440
    const-string/jumbo v0, "gsm.sim.operator.iso-country"

    #@3
    .line 4439
    invoke-static {p1, v0, p2}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    #@6
    .line 4438
    return-void
.end method

.method public setSimOperatorName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 4409
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultPhone()I

    #@3
    move-result v0

    #@4
    .line 4410
    .local v0, "phoneId":I
    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->setSimOperatorNameForPhone(ILjava/lang/String;)V

    #@7
    .line 4408
    return-void
.end method

.method public setSimOperatorNameForPhone(ILjava/lang/String;)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 4420
    const-string/jumbo v0, "gsm.sim.operator.alpha"

    #@3
    .line 4419
    invoke-static {p1, v0, p2}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    #@6
    .line 4418
    return-void
.end method

.method public setSimOperatorNumeric(Ljava/lang/String;)V
    .locals 1
    .param p1, "numeric"    # Ljava/lang/String;

    #@0
    .prologue
    .line 4389
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultPhone()I

    #@3
    move-result v0

    #@4
    .line 4390
    .local v0, "phoneId":I
    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->setSimOperatorNumericForPhone(ILjava/lang/String;)V

    #@7
    .line 4388
    return-void
.end method

.method public setSimOperatorNumericForPhone(ILjava/lang/String;)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "numeric"    # Ljava/lang/String;

    #@0
    .prologue
    .line 4400
    const-string/jumbo v0, "gsm.sim.operator.numeric"

    #@3
    .line 4399
    invoke-static {p1, v0, p2}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    #@6
    .line 4398
    return-void
.end method

.method public setSimState(Ljava/lang/String;)V
    .locals 1
    .param p1, "state"    # Ljava/lang/String;

    #@0
    .prologue
    .line 4449
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultPhone()I

    #@3
    move-result v0

    #@4
    .line 4450
    .local v0, "phoneId":I
    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->setSimStateForPhone(ILjava/lang/String;)V

    #@7
    .line 4448
    return-void
.end method

.method public setSimStateForPhone(ILjava/lang/String;)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "state"    # Ljava/lang/String;

    #@0
    .prologue
    .line 4460
    const-string/jumbo v0, "gsm.sim.state"

    #@3
    .line 4459
    invoke-static {p1, v0, p2}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    #@6
    .line 4458
    return-void
.end method

.method public setVoiceMailNumber(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "subId"    # I
    .param p2, "alphaTag"    # Ljava/lang/String;
    .param p3, "number"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2354
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    #@3
    move-result-object v2

    #@4
    .line 2355
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    #@6
    .line 2356
    invoke-interface {v2, p1, p2, p3}, Lcom/android/internal/telephony/ITelephony;->setVoiceMailNumber(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    #@9
    move-result v3

    #@a
    return v3

    #@b
    .line 2357
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    #@c
    .line 2360
    :cond_0
    :goto_0
    const/4 v3, 0x0

    #@d
    return v3

    #@e
    .line 2358
    :catch_1
    move-exception v1

    #@f
    .local v1, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "alphaTag"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2338
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0, p1, p2}, Landroid/telephony/TelephonyManager;->setVoiceMailNumber(ILjava/lang/String;Ljava/lang/String;)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public silenceRinger()V
    .locals 3

    #@0
    .prologue
    .line 3885
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    #@3
    move-result-object v1

    #@4
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    #@7
    move-result-object v2

    #@8
    invoke-interface {v1, v2}, Lcom/android/internal/telecom/ITelecomService;->silenceRinger(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 3883
    :goto_0
    return-void

    #@c
    .line 3886
    :catch_0
    move-exception v0

    #@d
    .line 3887
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "TelephonyManager"

    #@10
    const-string/jumbo v2, "Error calling ITelecomService#silenceRinger"

    #@13
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@16
    goto :goto_0
.end method

.method public supplyPin(Ljava/lang/String;)Z
    .locals 4
    .param p1, "pin"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3960
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    #@3
    move-result-object v1

    #@4
    .line 3961
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    #@6
    .line 3962
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->supplyPin(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result v2

    #@a
    return v2

    #@b
    .line 3963
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    #@c
    .line 3964
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManager"

    #@f
    const-string/jumbo v3, "Error calling ITelephony#supplyPin"

    #@12
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@15
    .line 3966
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    #@16
    return v2
.end method

.method public supplyPinReportResult(Ljava/lang/String;)[I
    .locals 4
    .param p1, "pin"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3986
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    #@3
    move-result-object v1

    #@4
    .line 3987
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    #@6
    .line 3988
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->supplyPinReportResult(Ljava/lang/String;)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result-object v2

    #@a
    return-object v2

    #@b
    .line 3989
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    #@c
    .line 3990
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManager"

    #@f
    const-string/jumbo v3, "Error calling ITelephony#supplyPinReportResult"

    #@12
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@15
    .line 3992
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    #@16
    new-array v2, v2, [I

    #@18
    return-object v2
.end method

.method public supplyPuk(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "puk"    # Ljava/lang/String;
    .param p2, "pin"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3973
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    #@3
    move-result-object v1

    #@4
    .line 3974
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    #@6
    .line 3975
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->supplyPuk(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result v2

    #@a
    return v2

    #@b
    .line 3976
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    #@c
    .line 3977
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManager"

    #@f
    const-string/jumbo v3, "Error calling ITelephony#supplyPuk"

    #@12
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@15
    .line 3979
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    #@16
    return v2
.end method

.method public supplyPukReportResult(Ljava/lang/String;Ljava/lang/String;)[I
    .locals 4
    .param p1, "puk"    # Ljava/lang/String;
    .param p2, "pin"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3999
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    #@3
    move-result-object v1

    #@4
    .line 4000
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    #@6
    .line 4001
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->supplyPukReportResult(Ljava/lang/String;Ljava/lang/String;)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result-object v2

    #@a
    return-object v2

    #@b
    .line 4002
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    #@c
    .line 4003
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManager"

    #@f
    const-string/jumbo v3, "Error calling ITelephony#]"

    #@12
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@15
    .line 4005
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    #@16
    new-array v2, v2, [I

    #@18
    return-object v2
.end method

.method public toggleRadioOnOff()V
    .locals 4

    #@0
    .prologue
    .line 4038
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    #@3
    move-result-object v1

    #@4
    .line 4039
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    #@6
    .line 4040
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->toggleRadioOnOff()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 4036
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return-void

    #@a
    .line 4041
    :catch_0
    move-exception v0

    #@b
    .line 4042
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManager"

    #@e
    const-string/jumbo v3, "Error calling ITelephony#toggleRadioOnOff"

    #@11
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@14
    goto :goto_0
.end method

.method public updateServiceLocation()V
    .locals 4

    #@0
    .prologue
    .line 4076
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    #@3
    move-result-object v1

    #@4
    .line 4077
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    #@6
    .line 4078
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->updateServiceLocation()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 4074
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return-void

    #@a
    .line 4079
    :catch_0
    move-exception v0

    #@b
    .line 4080
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManager"

    #@e
    const-string/jumbo v3, "Error calling ITelephony#updateServiceLocation"

    #@11
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@14
    goto :goto_0
.end method
