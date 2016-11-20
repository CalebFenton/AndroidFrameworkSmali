.class public Lcom/android/internal/telephony/TelephonyEventLog;
.super Landroid/net/ConnectivityMetricsLogger;
.source "TelephonyEventLog.java"


# static fields
.field private static final synthetic -com-android-internal-telephony-Call$StateSwitchesValues:[I = null

.field private static final synthetic -com-android-internal-telephony-PhoneConstants$StateSwitchesValues:[I = null

.field public static final DATA_KEY_APN:Ljava/lang/String; = "apn"

.field public static final DATA_KEY_CALLEE:Ljava/lang/String; = "callee"

.field public static final DATA_KEY_CLIR_MODE:Ljava/lang/String; = "clirMode"

.field public static final DATA_KEY_DATA_CALL_ACTIVE:Ljava/lang/String; = "active"

.field public static final DATA_KEY_DATA_CALL_ACTIVES:Ljava/lang/String; = "actives"

.field public static final DATA_KEY_DATA_CALL_CID:Ljava/lang/String; = "cid"

.field public static final DATA_KEY_DATA_CALL_CIDS:Ljava/lang/String; = "cids"

.field public static final DATA_KEY_DATA_CALL_IFNAME:Ljava/lang/String; = "ifname"

.field public static final DATA_KEY_DATA_CALL_IFNAMES:Ljava/lang/String; = "ifnames"

.field public static final DATA_KEY_DATA_CALL_RETRY:Ljava/lang/String; = "retry"

.field public static final DATA_KEY_DATA_CALL_STATUS:Ljava/lang/String; = "status"

.field public static final DATA_KEY_DATA_CALL_STATUSES:Ljava/lang/String; = "statuses"

.field public static final DATA_KEY_DATA_CALL_TYPE:Ljava/lang/String; = "type"

.field public static final DATA_KEY_DATA_CALL_TYPES:Ljava/lang/String; = "types"

.field public static final DATA_KEY_DATA_DEACTIVATE_REASON:Ljava/lang/String; = "reason"

.field public static final DATA_KEY_DATA_PROFILE:Ljava/lang/String; = "profile"

.field public static final DATA_KEY_PARAM1:Ljava/lang/String; = "param1"

.field public static final DATA_KEY_PARAM2:Ljava/lang/String; = "param2"

.field public static final DATA_KEY_PARTICIPANTS:Ljava/lang/String; = "participants"

.field public static final DATA_KEY_PHONE_ID:Ljava/lang/String; = "phoneId"

.field public static final DATA_KEY_PROTOCOL:Ljava/lang/String; = "protocol"

.field public static final DATA_KEY_RAT:Ljava/lang/String; = "rat"

.field public static final DATA_KEY_REASONINFO_CODE:Ljava/lang/String; = "code"

.field public static final DATA_KEY_REASONINFO_EXTRA_CODE:Ljava/lang/String; = "extra-code"

.field public static final DATA_KEY_REASONINFO_EXTRA_MESSAGE:Ljava/lang/String; = "extra-message"

.field public static final DATA_KEY_RIL_CALL_RING_RESPONSE:Ljava/lang/String; = "response"

.field public static final DATA_KEY_RIL_ERROR:Ljava/lang/String; = "error"

.field public static final DATA_KEY_RIL_HANGUP_GSM_INDEX:Ljava/lang/String; = "gsmIndex"

.field public static final DATA_KEY_SMS_ACK_PDU:Ljava/lang/String; = "ackPDU"

.field public static final DATA_KEY_SMS_ERROR_CODE:Ljava/lang/String; = "errorCode"

.field public static final DATA_KEY_SMS_MESSAGE_REF:Ljava/lang/String; = "messageRef"

.field public static final DATA_KEY_SRC_TECH:Ljava/lang/String; = "src-tech"

.field public static final DATA_KEY_TARGET_TECH:Ljava/lang/String; = "target-tech"

.field public static final DATA_KEY_UTLTE:Ljava/lang/String; = "UTLTE"

.field public static final DATA_KEY_UTWIFI:Ljava/lang/String; = "UTWiFi"

.field public static final DATA_KEY_VILTE:Ljava/lang/String; = "ViLTE"

.field public static final DATA_KEY_VIWIFI:Ljava/lang/String; = "ViWiFi"

.field public static final DATA_KEY_VOLTE:Ljava/lang/String; = "VoLTE"

.field public static final DATA_KEY_VOWIFI:Ljava/lang/String; = "VoWiFi"

.field private static final DBG:Z = true

.field public static final IMS_CONNECTION_STATE_CONNECTED:I = 0x1

.field public static final IMS_CONNECTION_STATE_DISCONNECTED:I = 0x3

.field public static final IMS_CONNECTION_STATE_PROGRESSING:I = 0x2

.field public static final IMS_CONNECTION_STATE_RESUMED:I = 0x4

.field public static final IMS_CONNECTION_STATE_SUSPENDED:I = 0x5

.field public static final SERVICE_STATE_DATA_ALPHA_LONG:Ljava/lang/String; = "dataAlphaLong"

.field public static final SERVICE_STATE_DATA_ALPNA_SHORT:Ljava/lang/String; = "dataAlphaShort"

.field public static final SERVICE_STATE_DATA_NUMERIC:Ljava/lang/String; = "dataOperator"

.field public static final SERVICE_STATE_DATA_RAT:Ljava/lang/String; = "dataRat"

.field public static final SERVICE_STATE_DATA_REG_STATE:Ljava/lang/String; = "dataRegSt"

.field public static final SERVICE_STATE_DATA_ROAMING_TYPE:Ljava/lang/String; = "dataRoamingType"

.field public static final SERVICE_STATE_EMERGENCY_ONLY:Ljava/lang/String; = "emergencyOnly"

.field public static final SERVICE_STATE_VOICE_ALPHA_LONG:Ljava/lang/String; = "alphaLong"

.field public static final SERVICE_STATE_VOICE_ALPNA_SHORT:Ljava/lang/String; = "alphaShort"

.field public static final SERVICE_STATE_VOICE_NUMERIC:Ljava/lang/String; = "operator"

.field public static final SERVICE_STATE_VOICE_RAT:Ljava/lang/String; = "rat"

.field public static final SERVICE_STATE_VOICE_REG_STATE:Ljava/lang/String; = "regSt"

.field public static final SERVICE_STATE_VOICE_ROAMING_TYPE:Ljava/lang/String; = "roamingType"

.field public static final SETTING_AIRPLANE_MODE:I = 0x1

.field public static final SETTING_CELL_DATA_ENABLED:I = 0x2

.field public static final SETTING_DATA_ROAMING_ENABLED:I = 0x3

.field public static final SETTING_PREFERRED_NETWORK_MODE:I = 0x4

.field public static final SETTING_VI_LTE_ENABLED:I = 0x9

.field public static final SETTING_VI_WIFI_ENABLED:I = 0xa

.field public static final SETTING_VO_LTE_ENABLED:I = 0x6

.field public static final SETTING_VO_WIFI_ENABLED:I = 0x7

.field public static final SETTING_WFC_MODE:I = 0x8

.field public static final SETTING_WIFI_ENABLED:I = 0x5

.field private static TAG:Ljava/lang/String; = null

.field public static final TAG_DATA_CALL_LIST:I = 0x5

.field public static final TAG_IMS_CALL_ACCEPT:I = 0x7d4

.field public static final TAG_IMS_CALL_HANDOVER:I = 0x7e9

.field public static final TAG_IMS_CALL_HANDOVER_FAILED:I = 0x7ea

.field public static final TAG_IMS_CALL_HELD:I = 0x7df

.field public static final TAG_IMS_CALL_HOLD:I = 0x7d7

.field public static final TAG_IMS_CALL_HOLD_FAILED:I = 0x7e0

.field public static final TAG_IMS_CALL_HOLD_RECEIVED:I = 0x7e1

.field public static final TAG_IMS_CALL_MERGE:I = 0x7d9

.field public static final TAG_IMS_CALL_MERGED:I = 0x7e7

.field public static final TAG_IMS_CALL_MERGE_FAILED:I = 0x7e8

.field public static final TAG_IMS_CALL_PROGRESSING:I = 0x7db

.field public static final TAG_IMS_CALL_RECEIVE:I = 0x7d3

.field public static final TAG_IMS_CALL_REJECT:I = 0x7d5

.field public static final TAG_IMS_CALL_RESUME:I = 0x7d8

.field public static final TAG_IMS_CALL_RESUMED:I = 0x7e2

.field public static final TAG_IMS_CALL_RESUME_FAILED:I = 0x7e3

.field public static final TAG_IMS_CALL_RESUME_RECEIVED:I = 0x7e4

.field public static final TAG_IMS_CALL_START:I = 0x7d1

.field public static final TAG_IMS_CALL_STARTED:I = 0x7dc

.field public static final TAG_IMS_CALL_START_CONFERENCE:I = 0x7d2

.field public static final TAG_IMS_CALL_START_FAILED:I = 0x7dd

.field public static final TAG_IMS_CALL_STATE:I = 0x7ee

.field public static final TAG_IMS_CALL_TERMINATE:I = 0x7d6

.field public static final TAG_IMS_CALL_TERMINATED:I = 0x7de

.field public static final TAG_IMS_CALL_TTY_MODE_RECEIVED:I = 0x7eb

.field public static final TAG_IMS_CALL_UPDATE:I = 0x7da

.field public static final TAG_IMS_CALL_UPDATED:I = 0x7e5

.field public static final TAG_IMS_CALL_UPDATE_FAILED:I = 0x7e6

.field public static final TAG_IMS_CAPABILITIES:I = 0x4

.field public static final TAG_IMS_CONFERENCE_PARTICIPANTS_STATE_CHANGED:I = 0x7ec

.field public static final TAG_IMS_CONNECTION_STATE:I = 0x3

.field public static final TAG_IMS_MULTIPARTY_STATE_CHANGED:I = 0x7ed

.field public static final TAG_PHONE_STATE:I = 0x8

.field public static final TAG_RIL_REQUEST:I = 0x3e9

.field public static final TAG_RIL_RESPONSE:I = 0x3ea

.field public static final TAG_RIL_TIMEOUT_RESPONSE:I = 0x3ec

.field public static final TAG_RIL_UNSOL_RESPONSE:I = 0x3eb

.field public static final TAG_SERVICE_STATE:I = 0x2

.field public static final TAG_SETTINGS:I = 0x1

.field private static final VDBG:Z


# instance fields
.field private mDataOperatorAlphaShort:Ljava/lang/String;

.field private mDataOperatorNumeric:Ljava/lang/String;

.field private mDataRegState:I

.field private mDataRoamingType:I

.field private mEmergencyOnly:Z

.field private final mImsCapabilities:[Z

.field mPhoneId:I

.field private mRilDataRadioTechnology:I

.field private mRilVoiceRadioTechnology:I

.field private mVoiceOperatorAlphaShort:Ljava/lang/String;

.field private mVoiceOperatorNumeric:Ljava/lang/String;

.field private mVoiceRegState:I

.field private mVoiceRoamingType:I


# direct methods
.method private static synthetic -getcom-android-internal-telephony-Call$StateSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Lcom/android/internal/telephony/TelephonyEventLog;->-com-android-internal-telephony-Call$StateSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Lcom/android/internal/telephony/TelephonyEventLog;->-com-android-internal-telephony-Call$StateSwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/Call$State;->values()[Lcom/android/internal/telephony/Call$State;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    #@10
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

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
    sget-object v1, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    #@19
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

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
    sget-object v1, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    #@22
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

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
    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    #@2b
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

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
    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    #@34
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

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
    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    #@3d
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

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
    sget-object v1, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    #@46
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

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
    sget-object v1, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    #@4f
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

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
    sget-object v1, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    #@59
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    #@5c
    move-result v1

    #@5d
    const/16 v2, 0x9

    #@5f
    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_0

    #@61
    :goto_8
    sput-object v0, Lcom/android/internal/telephony/TelephonyEventLog;->-com-android-internal-telephony-Call$StateSwitchesValues:[I

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

.method private static synthetic -getcom-android-internal-telephony-PhoneConstants$StateSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Lcom/android/internal/telephony/TelephonyEventLog;->-com-android-internal-telephony-PhoneConstants$StateSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Lcom/android/internal/telephony/TelephonyEventLog;->-com-android-internal-telephony-PhoneConstants$StateSwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneConstants$State;->values()[Lcom/android/internal/telephony/PhoneConstants$State;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    #@10
    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneConstants$State;->ordinal()I

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
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    #@19
    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneConstants$State;->ordinal()I

    #@1c
    move-result v1

    #@1d
    const/4 v2, 0x2

    #@1e
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    #@20
    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    #@22
    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneConstants$State;->ordinal()I

    #@25
    move-result v1

    #@26
    const/4 v2, 0x3

    #@27
    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    #@29
    :goto_2
    sput-object v0, Lcom/android/internal/telephony/TelephonyEventLog;->-com-android-internal-telephony-PhoneConstants$StateSwitchesValues:[I

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

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 32
    const-string/jumbo v0, "TelephonyEventLog"

    #@3
    sput-object v0, Lcom/android/internal/telephony/TelephonyEventLog;->TAG:Ljava/lang/String;

    #@5
    .line 31
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "phoneId"    # I

    #@0
    .prologue
    const/4 v0, -0x1

    #@1
    .line 162
    invoke-direct {p0}, Landroid/net/ConnectivityMetricsLogger;-><init>()V

    #@4
    .line 191
    iput v0, p0, Lcom/android/internal/telephony/TelephonyEventLog;->mVoiceRegState:I

    #@6
    .line 192
    iput v0, p0, Lcom/android/internal/telephony/TelephonyEventLog;->mDataRegState:I

    #@8
    .line 193
    iput v0, p0, Lcom/android/internal/telephony/TelephonyEventLog;->mVoiceRoamingType:I

    #@a
    .line 194
    iput v0, p0, Lcom/android/internal/telephony/TelephonyEventLog;->mDataRoamingType:I

    #@c
    .line 199
    iput v0, p0, Lcom/android/internal/telephony/TelephonyEventLog;->mRilVoiceRadioTechnology:I

    #@e
    .line 200
    iput v0, p0, Lcom/android/internal/telephony/TelephonyEventLog;->mRilDataRadioTechnology:I

    #@10
    .line 201
    const/4 v0, 0x0

    #@11
    iput-boolean v0, p0, Lcom/android/internal/telephony/TelephonyEventLog;->mEmergencyOnly:Z

    #@13
    .line 316
    const/4 v0, 0x6

    #@14
    new-array v0, v0, [Z

    #@16
    fill-array-data v0, :array_0

    #@19
    iput-object v0, p0, Lcom/android/internal/telephony/TelephonyEventLog;->mImsCapabilities:[Z

    #@1b
    .line 164
    iput p1, p0, Lcom/android/internal/telephony/TelephonyEventLog;->mPhoneId:I

    #@1d
    .line 161
    return-void

    #@1e
    .line 316
    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 204
    if-nez p0, :cond_1

    #@2
    if-nez p1, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0

    #@8
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v0

    #@c
    goto :goto_0
.end method

.method private getCallId(Lcom/android/ims/internal/ImsCallSession;)I
    .locals 3
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;

    #@0
    .prologue
    const/4 v2, -0x1

    #@1
    .line 606
    if-nez p1, :cond_0

    #@3
    .line 607
    return v2

    #@4
    .line 611
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/android/ims/internal/ImsCallSession;->getCallId()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result v1

    #@c
    return v1

    #@d
    .line 612
    :catch_0
    move-exception v0

    #@e
    .line 613
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    return v2
.end method

.method private imsHandoverToBundle(IILcom/android/ims/ImsReasonInfo;)Landroid/os/Bundle;
    .locals 3
    .param p1, "srcAccessTech"    # I
    .param p2, "targetAccessTech"    # I
    .param p3, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    #@0
    .prologue
    .line 619
    new-instance v0, Landroid/os/Bundle;

    #@2
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@5
    .line 620
    .local v0, "b":Landroid/os/Bundle;
    const-string/jumbo v1, "src-tech"

    #@8
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@b
    .line 621
    const-string/jumbo v1, "target-tech"

    #@e
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@11
    .line 622
    const-string/jumbo v1, "code"

    #@14
    iget v2, p3, Lcom/android/ims/ImsReasonInfo;->mCode:I

    #@16
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@19
    .line 623
    const-string/jumbo v1, "extra-code"

    #@1c
    iget v2, p3, Lcom/android/ims/ImsReasonInfo;->mExtraCode:I

    #@1e
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@21
    .line 624
    const-string/jumbo v1, "extra-message"

    #@24
    iget-object v2, p3, Lcom/android/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    #@26
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@29
    .line 625
    return-object v0
.end method

.method private imsReasonInfoToBundle(Lcom/android/ims/ImsReasonInfo;)Landroid/os/Bundle;
    .locals 3
    .param p1, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 501
    if-eqz p1, :cond_0

    #@3
    .line 502
    new-instance v0, Landroid/os/Bundle;

    #@5
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@8
    .line 503
    .local v0, "b":Landroid/os/Bundle;
    const-string/jumbo v1, "code"

    #@b
    iget v2, p1, Lcom/android/ims/ImsReasonInfo;->mCode:I

    #@d
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@10
    .line 504
    const-string/jumbo v1, "extra-code"

    #@13
    iget v2, p1, Lcom/android/ims/ImsReasonInfo;->mExtraCode:I

    #@15
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@18
    .line 505
    const-string/jumbo v1, "extra-message"

    #@1b
    iget-object v2, p1, Lcom/android/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    #@1d
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@20
    .line 506
    return-object v0

    #@21
    .line 508
    .end local v0    # "b":Landroid/os/Bundle;
    :cond_0
    return-object v1
.end method

.method private writeEvent(III)V
    .locals 8
    .param p1, "tag"    # I
    .param p2, "param1"    # I
    .param p3, "param2"    # I

    #@0
    .prologue
    .line 172
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@3
    move-result-wide v2

    #@4
    const/4 v7, 0x0

    #@5
    move-object v1, p0

    #@6
    move v4, p1

    #@7
    move v5, p2

    #@8
    move v6, p3

    #@9
    invoke-direct/range {v1 .. v7}, Lcom/android/internal/telephony/TelephonyEventLog;->writeEvent(JIIILandroid/os/Bundle;)V

    #@c
    .line 171
    return-void
.end method

.method private writeEvent(IIILandroid/os/Bundle;)V
    .locals 8
    .param p1, "tag"    # I
    .param p2, "param1"    # I
    .param p3, "param2"    # I
    .param p4, "data"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 176
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@3
    move-result-wide v2

    #@4
    move-object v1, p0

    #@5
    move v4, p1

    #@6
    move v5, p2

    #@7
    move v6, p3

    #@8
    move-object v7, p4

    #@9
    invoke-direct/range {v1 .. v7}, Lcom/android/internal/telephony/TelephonyEventLog;->writeEvent(JIIILandroid/os/Bundle;)V

    #@c
    .line 175
    return-void
.end method

.method private writeEvent(ILandroid/os/Bundle;)V
    .locals 8
    .param p1, "tag"    # I
    .param p2, "data"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/4 v5, -0x1

    #@1
    .line 168
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@4
    move-result-wide v2

    #@5
    move-object v1, p0

    #@6
    move v4, p1

    #@7
    move v6, v5

    #@8
    move-object v7, p2

    #@9
    invoke-direct/range {v1 .. v7}, Lcom/android/internal/telephony/TelephonyEventLog;->writeEvent(JIIILandroid/os/Bundle;)V

    #@c
    .line 167
    return-void
.end method

.method private writeEvent(JIIILandroid/os/Bundle;)V
    .locals 7
    .param p1, "timestamp"    # J
    .param p3, "tag"    # I
    .param p4, "param1"    # I
    .param p5, "param2"    # I
    .param p6, "data"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 180
    move-object v6, p6

    #@1
    .line 181
    .local v6, "b":Landroid/os/Bundle;
    if-nez p6, :cond_0

    #@3
    .line 182
    new-instance v6, Landroid/os/Bundle;

    #@5
    .end local v6    # "b":Landroid/os/Bundle;
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    #@8
    .line 184
    .restart local v6    # "b":Landroid/os/Bundle;
    :cond_0
    const-string/jumbo v0, "phoneId"

    #@b
    iget v1, p0, Lcom/android/internal/telephony/TelephonyEventLog;->mPhoneId:I

    #@d
    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@10
    .line 185
    const-string/jumbo v0, "param1"

    #@13
    invoke-virtual {v6, v0, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@16
    .line 186
    const-string/jumbo v0, "param2"

    #@19
    invoke-virtual {v6, v0, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@1c
    .line 188
    const/4 v4, 0x4

    #@1d
    move-object v1, p0

    #@1e
    move-wide v2, p1

    #@1f
    move v5, p3

    #@20
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/TelephonyEventLog;->logEvent(JIILandroid/os/Parcelable;)V

    #@23
    .line 179
    return-void
.end method

.method private writeImsCallEvent(ILcom/android/ims/internal/ImsCallSession;)V
    .locals 2
    .param p1, "tag"    # I
    .param p2, "session"    # Lcom/android/ims/internal/ImsCallSession;

    #@0
    .prologue
    .line 493
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/TelephonyEventLog;->getCallId(Lcom/android/ims/internal/ImsCallSession;)I

    #@3
    move-result v0

    #@4
    const/4 v1, -0x1

    #@5
    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/telephony/TelephonyEventLog;->writeEvent(III)V

    #@8
    .line 492
    return-void
.end method

.method private writeImsCallEvent(ILcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 3
    .param p1, "tag"    # I
    .param p2, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p3, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    #@0
    .prologue
    .line 497
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/TelephonyEventLog;->getCallId(Lcom/android/ims/internal/ImsCallSession;)I

    #@3
    move-result v0

    #@4
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/TelephonyEventLog;->imsReasonInfoToBundle(Lcom/android/ims/ImsReasonInfo;)Landroid/os/Bundle;

    #@7
    move-result-object v1

    #@8
    const/4 v2, -0x1

    #@9
    invoke-direct {p0, p1, v0, v2, v1}, Lcom/android/internal/telephony/TelephonyEventLog;->writeEvent(IIILandroid/os/Bundle;)V

    #@c
    .line 496
    return-void
.end method


# virtual methods
.method public writeImsCallState(Lcom/android/ims/internal/ImsCallSession;Lcom/android/internal/telephony/Call$State;)V
    .locals 3
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p2, "callState"    # Lcom/android/internal/telephony/Call$State;

    #@0
    .prologue
    .line 477
    invoke-static {}, Lcom/android/internal/telephony/TelephonyEventLog;->-getcom-android-internal-telephony-Call$StateSwitchesValues()[I

    #@3
    move-result-object v1

    #@4
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    #@7
    move-result v2

    #@8
    aget v1, v1, v2

    #@a
    packed-switch v1, :pswitch_data_0

    #@d
    .line 487
    const/4 v0, -0x1

    #@e
    .line 489
    .local v0, "state":I
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/TelephonyEventLog;->getCallId(Lcom/android/ims/internal/ImsCallSession;)I

    #@11
    move-result v1

    #@12
    const/16 v2, 0x7ee

    #@14
    invoke-direct {p0, v2, v1, v0}, Lcom/android/internal/telephony/TelephonyEventLog;->writeEvent(III)V

    #@17
    .line 475
    return-void

    #@18
    .line 478
    .end local v0    # "state":I
    :pswitch_0
    const/4 v0, 0x0

    #@19
    .restart local v0    # "state":I
    goto :goto_0

    #@1a
    .line 479
    .end local v0    # "state":I
    :pswitch_1
    const/4 v0, 0x1

    #@1b
    .restart local v0    # "state":I
    goto :goto_0

    #@1c
    .line 480
    .end local v0    # "state":I
    :pswitch_2
    const/4 v0, 0x2

    #@1d
    .restart local v0    # "state":I
    goto :goto_0

    #@1e
    .line 481
    .end local v0    # "state":I
    :pswitch_3
    const/4 v0, 0x3

    #@1f
    .restart local v0    # "state":I
    goto :goto_0

    #@20
    .line 482
    .end local v0    # "state":I
    :pswitch_4
    const/4 v0, 0x4

    #@21
    .restart local v0    # "state":I
    goto :goto_0

    #@22
    .line 483
    .end local v0    # "state":I
    :pswitch_5
    const/4 v0, 0x5

    #@23
    .restart local v0    # "state":I
    goto :goto_0

    #@24
    .line 484
    .end local v0    # "state":I
    :pswitch_6
    const/4 v0, 0x6

    #@25
    .restart local v0    # "state":I
    goto :goto_0

    #@26
    .line 485
    .end local v0    # "state":I
    :pswitch_7
    const/4 v0, 0x7

    #@27
    .restart local v0    # "state":I
    goto :goto_0

    #@28
    .line 486
    .end local v0    # "state":I
    :pswitch_8
    const/16 v0, 0x8

    #@2a
    .restart local v0    # "state":I
    goto :goto_0

    #@2b
    .line 477
    nop

    #@2c
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_7
        :pswitch_8
        :pswitch_2
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public writeImsSetFeatureValue(IIII)V
    .locals 2
    .param p1, "feature"    # I
    .param p2, "network"    # I
    .param p3, "value"    # I
    .param p4, "status"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 296
    packed-switch p1, :pswitch_data_0

    #@4
    .line 295
    :goto_0
    return-void

    #@5
    .line 298
    :pswitch_0
    const/4 v0, 0x6

    #@6
    invoke-direct {p0, v1, v0, p3}, Lcom/android/internal/telephony/TelephonyEventLog;->writeEvent(III)V

    #@9
    goto :goto_0

    #@a
    .line 301
    :pswitch_1
    const/4 v0, 0x7

    #@b
    invoke-direct {p0, v1, v0, p3}, Lcom/android/internal/telephony/TelephonyEventLog;->writeEvent(III)V

    #@e
    goto :goto_0

    #@f
    .line 304
    :pswitch_2
    const/16 v0, 0x9

    #@11
    invoke-direct {p0, v1, v0, p3}, Lcom/android/internal/telephony/TelephonyEventLog;->writeEvent(III)V

    #@14
    goto :goto_0

    #@15
    .line 307
    :pswitch_3
    const/16 v0, 0xa

    #@17
    invoke-direct {p0, v1, v0, p3}, Lcom/android/internal/telephony/TelephonyEventLog;->writeEvent(III)V

    #@1a
    goto :goto_0

    #@1b
    .line 296
    nop

    #@1c
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public writeOnImsCallAccept(Lcom/android/ims/internal/ImsCallSession;)V
    .locals 1
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;

    #@0
    .prologue
    .line 528
    const/16 v0, 0x7d4

    #@2
    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/TelephonyEventLog;->writeImsCallEvent(ILcom/android/ims/internal/ImsCallSession;)V

    #@5
    .line 527
    return-void
.end method

.method public writeOnImsCallHandover(Lcom/android/ims/internal/ImsCallSession;IILcom/android/ims/ImsReasonInfo;)V
    .locals 4
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p2, "srcAccessTech"    # I
    .param p3, "targetAccessTech"    # I
    .param p4, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    #@0
    .prologue
    .line 589
    invoke-direct {p0, p2, p3, p4}, Lcom/android/internal/telephony/TelephonyEventLog;->imsHandoverToBundle(IILcom/android/ims/ImsReasonInfo;)Landroid/os/Bundle;

    #@3
    move-result-object v0

    #@4
    .line 590
    .local v0, "b":Landroid/os/Bundle;
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/TelephonyEventLog;->getCallId(Lcom/android/ims/internal/ImsCallSession;)I

    #@7
    move-result v1

    #@8
    const/16 v2, 0x7e9

    #@a
    const/4 v3, -0x1

    #@b
    invoke-direct {p0, v2, v1, v3, v0}, Lcom/android/internal/telephony/TelephonyEventLog;->writeEvent(IIILandroid/os/Bundle;)V

    #@e
    .line 588
    return-void
.end method

.method public writeOnImsCallHandoverFailed(Lcom/android/ims/internal/ImsCallSession;IILcom/android/ims/ImsReasonInfo;)V
    .locals 4
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p2, "srcAccessTech"    # I
    .param p3, "targetAccessTech"    # I
    .param p4, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    #@0
    .prologue
    .line 595
    invoke-direct {p0, p2, p3, p4}, Lcom/android/internal/telephony/TelephonyEventLog;->imsHandoverToBundle(IILcom/android/ims/ImsReasonInfo;)Landroid/os/Bundle;

    #@3
    move-result-object v0

    #@4
    .line 596
    .local v0, "b":Landroid/os/Bundle;
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/TelephonyEventLog;->getCallId(Lcom/android/ims/internal/ImsCallSession;)I

    #@7
    move-result v1

    #@8
    const/16 v2, 0x7ea

    #@a
    const/4 v3, -0x1

    #@b
    invoke-direct {p0, v2, v1, v3, v0}, Lcom/android/internal/telephony/TelephonyEventLog;->writeEvent(IIILandroid/os/Bundle;)V

    #@e
    .line 594
    return-void
.end method

.method public writeOnImsCallHeld(Lcom/android/ims/internal/ImsCallSession;)V
    .locals 1
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;

    #@0
    .prologue
    .line 564
    const/16 v0, 0x7df

    #@2
    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/TelephonyEventLog;->writeImsCallEvent(ILcom/android/ims/internal/ImsCallSession;)V

    #@5
    .line 563
    return-void
.end method

.method public writeOnImsCallHold(Lcom/android/ims/internal/ImsCallSession;)V
    .locals 1
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;

    #@0
    .prologue
    .line 540
    const/16 v0, 0x7d7

    #@2
    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/TelephonyEventLog;->writeImsCallEvent(ILcom/android/ims/internal/ImsCallSession;)V

    #@5
    .line 539
    return-void
.end method

.method public writeOnImsCallHoldFailed(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 1
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    #@0
    .prologue
    .line 572
    const/16 v0, 0x7e0

    #@2
    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/telephony/TelephonyEventLog;->writeImsCallEvent(ILcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    #@5
    .line 571
    return-void
.end method

.method public writeOnImsCallHoldReceived(Lcom/android/ims/internal/ImsCallSession;)V
    .locals 1
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;

    #@0
    .prologue
    .line 568
    const/16 v0, 0x7e1

    #@2
    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/TelephonyEventLog;->writeImsCallEvent(ILcom/android/ims/internal/ImsCallSession;)V

    #@5
    .line 567
    return-void
.end method

.method public writeOnImsCallProgressing(Lcom/android/ims/internal/ImsCallSession;)V
    .locals 1
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;

    #@0
    .prologue
    .line 548
    const/16 v0, 0x7db

    #@2
    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/TelephonyEventLog;->writeImsCallEvent(ILcom/android/ims/internal/ImsCallSession;)V

    #@5
    .line 547
    return-void
.end method

.method public writeOnImsCallReceive(Lcom/android/ims/internal/ImsCallSession;)V
    .locals 1
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;

    #@0
    .prologue
    .line 524
    const/16 v0, 0x7d3

    #@2
    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/TelephonyEventLog;->writeImsCallEvent(ILcom/android/ims/internal/ImsCallSession;)V

    #@5
    .line 523
    return-void
.end method

.method public writeOnImsCallReject(Lcom/android/ims/internal/ImsCallSession;)V
    .locals 1
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;

    #@0
    .prologue
    .line 532
    const/16 v0, 0x7d5

    #@2
    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/TelephonyEventLog;->writeImsCallEvent(ILcom/android/ims/internal/ImsCallSession;)V

    #@5
    .line 531
    return-void
.end method

.method public writeOnImsCallResume(Lcom/android/ims/internal/ImsCallSession;)V
    .locals 1
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;

    #@0
    .prologue
    .line 544
    const/16 v0, 0x7d8

    #@2
    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/TelephonyEventLog;->writeImsCallEvent(ILcom/android/ims/internal/ImsCallSession;)V

    #@5
    .line 543
    return-void
.end method

.method public writeOnImsCallResumeFailed(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 1
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    #@0
    .prologue
    .line 584
    const/16 v0, 0x7e3

    #@2
    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/telephony/TelephonyEventLog;->writeImsCallEvent(ILcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    #@5
    .line 583
    return-void
.end method

.method public writeOnImsCallResumeReceived(Lcom/android/ims/internal/ImsCallSession;)V
    .locals 1
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;

    #@0
    .prologue
    .line 580
    const/16 v0, 0x7e4

    #@2
    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/TelephonyEventLog;->writeImsCallEvent(ILcom/android/ims/internal/ImsCallSession;)V

    #@5
    .line 579
    return-void
.end method

.method public writeOnImsCallResumed(Lcom/android/ims/internal/ImsCallSession;)V
    .locals 1
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;

    #@0
    .prologue
    .line 576
    const/16 v0, 0x7e2

    #@2
    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/TelephonyEventLog;->writeImsCallEvent(ILcom/android/ims/internal/ImsCallSession;)V

    #@5
    .line 575
    return-void
.end method

.method public writeOnImsCallStart(Lcom/android/ims/internal/ImsCallSession;Ljava/lang/String;)V
    .locals 4
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p2, "callee"    # Ljava/lang/String;

    #@0
    .prologue
    .line 512
    new-instance v0, Landroid/os/Bundle;

    #@2
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@5
    .line 513
    .local v0, "b":Landroid/os/Bundle;
    const-string/jumbo v1, "callee"

    #@8
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 514
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/TelephonyEventLog;->getCallId(Lcom/android/ims/internal/ImsCallSession;)I

    #@e
    move-result v1

    #@f
    const/16 v2, 0x7d1

    #@11
    const/4 v3, -0x1

    #@12
    invoke-direct {p0, v2, v1, v3, v0}, Lcom/android/internal/telephony/TelephonyEventLog;->writeEvent(IIILandroid/os/Bundle;)V

    #@15
    .line 511
    return-void
.end method

.method public writeOnImsCallStartConference(Lcom/android/ims/internal/ImsCallSession;[Ljava/lang/String;)V
    .locals 4
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p2, "participants"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 518
    new-instance v0, Landroid/os/Bundle;

    #@2
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@5
    .line 519
    .local v0, "b":Landroid/os/Bundle;
    const-string/jumbo v1, "participants"

    #@8
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    #@b
    .line 520
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/TelephonyEventLog;->getCallId(Lcom/android/ims/internal/ImsCallSession;)I

    #@e
    move-result v1

    #@f
    const/16 v2, 0x7d2

    #@11
    const/4 v3, -0x1

    #@12
    invoke-direct {p0, v2, v1, v3, v0}, Lcom/android/internal/telephony/TelephonyEventLog;->writeEvent(IIILandroid/os/Bundle;)V

    #@15
    .line 517
    return-void
.end method

.method public writeOnImsCallStartFailed(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 1
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    #@0
    .prologue
    .line 556
    const/16 v0, 0x7dd

    #@2
    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/telephony/TelephonyEventLog;->writeImsCallEvent(ILcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    #@5
    .line 555
    return-void
.end method

.method public writeOnImsCallStarted(Lcom/android/ims/internal/ImsCallSession;)V
    .locals 1
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;

    #@0
    .prologue
    .line 552
    const/16 v0, 0x7dc

    #@2
    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/TelephonyEventLog;->writeImsCallEvent(ILcom/android/ims/internal/ImsCallSession;)V

    #@5
    .line 551
    return-void
.end method

.method public writeOnImsCallTerminate(Lcom/android/ims/internal/ImsCallSession;)V
    .locals 1
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;

    #@0
    .prologue
    .line 536
    const/16 v0, 0x7d6

    #@2
    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/TelephonyEventLog;->writeImsCallEvent(ILcom/android/ims/internal/ImsCallSession;)V

    #@5
    .line 535
    return-void
.end method

.method public writeOnImsCallTerminated(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 1
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    #@0
    .prologue
    .line 560
    const/16 v0, 0x7de

    #@2
    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/telephony/TelephonyEventLog;->writeImsCallEvent(ILcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    #@5
    .line 559
    return-void
.end method

.method public writeOnImsCapabilities([Z)V
    .locals 6
    .param p1, "capabilities"    # [Z

    #@0
    .prologue
    const/4 v5, 0x4

    #@1
    .line 319
    const/4 v1, 0x0

    #@2
    .line 320
    .local v1, "changed":Z
    const/4 v2, 0x0

    #@3
    .local v2, "i":I
    :goto_0
    array-length v3, p1

    #@4
    if-ge v2, v3, :cond_1

    #@6
    .line 321
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyEventLog;->mImsCapabilities:[Z

    #@8
    aget-boolean v3, v3, v2

    #@a
    aget-boolean v4, p1, v2

    #@c
    if-eq v3, v4, :cond_0

    #@e
    .line 322
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyEventLog;->mImsCapabilities:[Z

    #@10
    aget-boolean v4, p1, v2

    #@12
    aput-boolean v4, v3, v2

    #@14
    .line 323
    const/4 v1, 0x1

    #@15
    .line 320
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@17
    goto :goto_0

    #@18
    .line 327
    :cond_1
    if-eqz v1, :cond_2

    #@1a
    .line 328
    new-instance v0, Landroid/os/Bundle;

    #@1c
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@1f
    .line 329
    .local v0, "b":Landroid/os/Bundle;
    const-string/jumbo v3, "VoLTE"

    #@22
    const/4 v4, 0x0

    #@23
    aget-boolean v4, p1, v4

    #@25
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@28
    .line 330
    const-string/jumbo v3, "ViLTE"

    #@2b
    const/4 v4, 0x1

    #@2c
    aget-boolean v4, p1, v4

    #@2e
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@31
    .line 331
    const-string/jumbo v3, "VoWiFi"

    #@34
    const/4 v4, 0x2

    #@35
    aget-boolean v4, p1, v4

    #@37
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@3a
    .line 332
    const-string/jumbo v3, "ViWiFi"

    #@3d
    const/4 v4, 0x3

    #@3e
    aget-boolean v4, p1, v4

    #@40
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@43
    .line 333
    const-string/jumbo v3, "UTLTE"

    #@46
    aget-boolean v4, p1, v5

    #@48
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@4b
    .line 334
    const-string/jumbo v3, "UTWiFi"

    #@4e
    const/4 v4, 0x5

    #@4f
    aget-boolean v4, p1, v4

    #@51
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@54
    .line 335
    invoke-direct {p0, v5, v0}, Lcom/android/internal/telephony/TelephonyEventLog;->writeEvent(ILandroid/os/Bundle;)V

    #@57
    .line 318
    .end local v0    # "b":Landroid/os/Bundle;
    :cond_2
    return-void
.end method

.method public writeOnImsConnectionState(ILcom/android/ims/ImsReasonInfo;)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    #@0
    .prologue
    .line 313
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/TelephonyEventLog;->imsReasonInfoToBundle(Lcom/android/ims/ImsReasonInfo;)Landroid/os/Bundle;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x3

    #@5
    const/4 v2, -0x1

    #@6
    invoke-direct {p0, v1, p1, v2, v0}, Lcom/android/internal/telephony/TelephonyEventLog;->writeEvent(IIILandroid/os/Bundle;)V

    #@9
    .line 312
    return-void
.end method

.method public writeOnRilSolicitedResponse(IIILjava/lang/Object;)V
    .locals 6
    .param p1, "rilSerial"    # I
    .param p2, "rilError"    # I
    .param p3, "rilRequest"    # I
    .param p4, "ret"    # Ljava/lang/Object;

    #@0
    .prologue
    const/16 v5, 0x3ea

    #@2
    .line 419
    new-instance v0, Landroid/os/Bundle;

    #@4
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@7
    .line 420
    .local v0, "b":Landroid/os/Bundle;
    if-eqz p2, :cond_0

    #@9
    const-string/jumbo v3, "error"

    #@c
    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@f
    .line 421
    :cond_0
    sparse-switch p3, :sswitch_data_0

    #@12
    .line 418
    :goto_0
    return-void

    #@13
    :sswitch_0
    move-object v1, p4

    #@14
    .line 423
    check-cast v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;

    #@16
    .line 424
    .local v1, "dataCall":Lcom/android/internal/telephony/dataconnection/DataCallResponse;
    const-string/jumbo v3, "status"

    #@19
    iget v4, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->status:I

    #@1b
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@1e
    .line 425
    const-string/jumbo v3, "retry"

    #@21
    iget v4, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->suggestedRetryTime:I

    #@23
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@26
    .line 426
    const-string/jumbo v3, "cid"

    #@29
    iget v4, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->cid:I

    #@2b
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@2e
    .line 427
    const-string/jumbo v3, "active"

    #@31
    iget v4, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->active:I

    #@33
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@36
    .line 428
    const-string/jumbo v3, "type"

    #@39
    iget-object v4, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->type:Ljava/lang/String;

    #@3b
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@3e
    .line 429
    const-string/jumbo v3, "ifname"

    #@41
    iget-object v4, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->ifname:Ljava/lang/String;

    #@43
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@46
    .line 430
    invoke-direct {p0, v5, p3, p1, v0}, Lcom/android/internal/telephony/TelephonyEventLog;->writeEvent(IIILandroid/os/Bundle;)V

    #@49
    goto :goto_0

    #@4a
    .line 439
    .end local v1    # "dataCall":Lcom/android/internal/telephony/dataconnection/DataCallResponse;
    :sswitch_1
    invoke-direct {p0, v5, p3, p1, v0}, Lcom/android/internal/telephony/TelephonyEventLog;->writeEvent(IIILandroid/os/Bundle;)V

    #@4d
    goto :goto_0

    #@4e
    :sswitch_2
    move-object v2, p4

    #@4f
    .line 446
    check-cast v2, Lcom/android/internal/telephony/SmsResponse;

    #@51
    .line 447
    .local v2, "smsResponse":Lcom/android/internal/telephony/SmsResponse;
    const-string/jumbo v3, "messageRef"

    #@54
    iget v4, v2, Lcom/android/internal/telephony/SmsResponse;->mMessageRef:I

    #@56
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@59
    .line 448
    const-string/jumbo v3, "ackPDU"

    #@5c
    iget-object v4, v2, Lcom/android/internal/telephony/SmsResponse;->mAckPdu:Ljava/lang/String;

    #@5e
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@61
    .line 449
    const-string/jumbo v3, "errorCode"

    #@64
    iget v4, v2, Lcom/android/internal/telephony/SmsResponse;->mErrorCode:I

    #@66
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@69
    .line 450
    invoke-direct {p0, v5, p3, p1, v0}, Lcom/android/internal/telephony/TelephonyEventLog;->writeEvent(IIILandroid/os/Bundle;)V

    #@6c
    goto :goto_0

    #@6d
    .line 421
    nop

    #@6e
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_1
        0xc -> :sswitch_1
        0xd -> :sswitch_1
        0xe -> :sswitch_1
        0x19 -> :sswitch_2
        0x1a -> :sswitch_2
        0x1b -> :sswitch_0
        0x28 -> :sswitch_1
        0x29 -> :sswitch_1
        0x57 -> :sswitch_2
        0x71 -> :sswitch_2
    .end sparse-switch
.end method

.method public writeOnRilTimeoutResponse(II)V
    .locals 2
    .param p1, "rilSerial"    # I
    .param p2, "rilRequest"    # I

    #@0
    .prologue
    .line 456
    const/16 v0, 0x3ec

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {p0, v0, p2, p1, v1}, Lcom/android/internal/telephony/TelephonyEventLog;->writeEvent(IIILandroid/os/Bundle;)V

    #@6
    .line 455
    return-void
.end method

.method public writePhoneState(Lcom/android/internal/telephony/PhoneConstants$State;)V
    .locals 3
    .param p1, "phoneState"    # Lcom/android/internal/telephony/PhoneConstants$State;

    #@0
    .prologue
    .line 461
    invoke-static {}, Lcom/android/internal/telephony/TelephonyEventLog;->-getcom-android-internal-telephony-PhoneConstants$StateSwitchesValues()[I

    #@3
    move-result-object v1

    #@4
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneConstants$State;->ordinal()I

    #@7
    move-result v2

    #@8
    aget v1, v1, v2

    #@a
    packed-switch v1, :pswitch_data_0

    #@d
    .line 465
    const/4 v0, -0x1

    #@e
    .line 467
    .local v0, "state":I
    :goto_0
    const/16 v1, 0x8

    #@10
    const/4 v2, -0x1

    #@11
    invoke-direct {p0, v1, v0, v2}, Lcom/android/internal/telephony/TelephonyEventLog;->writeEvent(III)V

    #@14
    .line 459
    return-void

    #@15
    .line 462
    .end local v0    # "state":I
    :pswitch_0
    const/4 v0, 0x0

    #@16
    .restart local v0    # "state":I
    goto :goto_0

    #@17
    .line 463
    .end local v0    # "state":I
    :pswitch_1
    const/4 v0, 0x1

    #@18
    .restart local v0    # "state":I
    goto :goto_0

    #@19
    .line 464
    .end local v0    # "state":I
    :pswitch_2
    const/4 v0, 0x2

    #@1a
    .restart local v0    # "state":I
    goto :goto_0

    #@1b
    .line 461
    nop

    #@1c
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public writeRilAnswer(I)V
    .locals 3
    .param p1, "rilSerial"    # I

    #@0
    .prologue
    .line 402
    const/16 v0, 0x3e9

    #@2
    const/16 v1, 0x28

    #@4
    const/4 v2, 0x0

    #@5
    invoke-direct {p0, v0, v1, p1, v2}, Lcom/android/internal/telephony/TelephonyEventLog;->writeEvent(IIILandroid/os/Bundle;)V

    #@8
    .line 401
    return-void
.end method

.method public writeRilCallRing([C)V
    .locals 4
    .param p1, "response"    # [C

    #@0
    .prologue
    .line 389
    new-instance v0, Landroid/os/Bundle;

    #@2
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@5
    .line 390
    .local v0, "b":Landroid/os/Bundle;
    const-string/jumbo v1, "response"

    #@8
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putCharArray(Ljava/lang/String;[C)V

    #@b
    .line 391
    const/16 v1, 0x3eb

    #@d
    const/16 v2, 0x3fa

    #@f
    const/4 v3, -0x1

    #@10
    invoke-direct {p0, v1, v2, v3, v0}, Lcom/android/internal/telephony/TelephonyEventLog;->writeEvent(IIILandroid/os/Bundle;)V

    #@13
    .line 388
    return-void
.end method

.method public writeRilDataCallList(Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/dataconnection/DataCallResponse;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "dcsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/DataCallResponse;>;"
    const/4 v9, -0x1

    #@1
    .line 359
    new-instance v1, Landroid/os/Bundle;

    #@3
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    #@6
    .line 360
    .local v1, "b":Landroid/os/Bundle;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@9
    move-result v8

    #@a
    new-array v6, v8, [I

    #@c
    .line 361
    .local v6, "statuses":[I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@f
    move-result v8

    #@10
    new-array v2, v8, [I

    #@12
    .line 362
    .local v2, "cids":[I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@15
    move-result v8

    #@16
    new-array v0, v8, [I

    #@18
    .line 363
    .local v0, "actives":[I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@1b
    move-result v8

    #@1c
    new-array v7, v8, [Ljava/lang/String;

    #@1e
    .line 364
    .local v7, "types":[Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@21
    move-result v8

    #@22
    new-array v5, v8, [Ljava/lang/String;

    #@24
    .line 365
    .local v5, "ifnames":[Ljava/lang/String;
    const/4 v4, 0x0

    #@25
    .local v4, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@28
    move-result v8

    #@29
    if-ge v4, v8, :cond_0

    #@2b
    .line 366
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2e
    move-result-object v3

    #@2f
    check-cast v3, Lcom/android/internal/telephony/dataconnection/DataCallResponse;

    #@31
    .line 367
    .local v3, "dcs":Lcom/android/internal/telephony/dataconnection/DataCallResponse;
    iget v8, v3, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->status:I

    #@33
    aput v8, v6, v4

    #@35
    .line 368
    iget v8, v3, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->cid:I

    #@37
    aput v8, v2, v4

    #@39
    .line 369
    iget v8, v3, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->active:I

    #@3b
    aput v8, v0, v4

    #@3d
    .line 370
    iget-object v8, v3, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->type:Ljava/lang/String;

    #@3f
    aput-object v8, v7, v4

    #@41
    .line 371
    iget-object v8, v3, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->ifname:Ljava/lang/String;

    #@43
    aput-object v8, v5, v4

    #@45
    .line 365
    add-int/lit8 v4, v4, 0x1

    #@47
    goto :goto_0

    #@48
    .line 373
    .end local v3    # "dcs":Lcom/android/internal/telephony/dataconnection/DataCallResponse;
    :cond_0
    const-string/jumbo v8, "statuses"

    #@4b
    invoke-virtual {v1, v8, v6}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    #@4e
    .line 374
    const-string/jumbo v8, "cids"

    #@51
    invoke-virtual {v1, v8, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    #@54
    .line 375
    const-string/jumbo v8, "actives"

    #@57
    invoke-virtual {v1, v8, v0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    #@5a
    .line 376
    const-string/jumbo v8, "types"

    #@5d
    invoke-virtual {v1, v8, v7}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    #@60
    .line 377
    const-string/jumbo v8, "ifnames"

    #@63
    invoke-virtual {v1, v8, v5}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    #@66
    .line 378
    const/4 v8, 0x5

    #@67
    invoke-direct {p0, v8, v9, v9, v1}, Lcom/android/internal/telephony/TelephonyEventLog;->writeEvent(IIILandroid/os/Bundle;)V

    #@6a
    .line 358
    return-void
.end method

.method public writeRilDeactivateDataCall(III)V
    .locals 3
    .param p1, "rilSerial"    # I
    .param p2, "cid"    # I
    .param p3, "reason"    # I

    #@0
    .prologue
    .line 352
    new-instance v0, Landroid/os/Bundle;

    #@2
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@5
    .line 353
    .local v0, "b":Landroid/os/Bundle;
    const-string/jumbo v1, "cid"

    #@8
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@b
    .line 354
    const-string/jumbo v1, "reason"

    #@e
    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@11
    .line 355
    const/16 v1, 0x3e9

    #@13
    const/16 v2, 0x29

    #@15
    invoke-direct {p0, v1, v2, p1, v0}, Lcom/android/internal/telephony/TelephonyEventLog;->writeEvent(IIILandroid/os/Bundle;)V

    #@18
    .line 351
    return-void
.end method

.method public writeRilDial(IILcom/android/internal/telephony/UUSInfo;)V
    .locals 3
    .param p1, "rilSerial"    # I
    .param p2, "clirMode"    # I
    .param p3, "uusInfo"    # Lcom/android/internal/telephony/UUSInfo;

    #@0
    .prologue
    .line 383
    new-instance v0, Landroid/os/Bundle;

    #@2
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@5
    .line 384
    .local v0, "b":Landroid/os/Bundle;
    const-string/jumbo v1, "clirMode"

    #@8
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@b
    .line 385
    const/16 v1, 0x3e9

    #@d
    const/16 v2, 0xa

    #@f
    invoke-direct {p0, v1, v2, p1, v0}, Lcom/android/internal/telephony/TelephonyEventLog;->writeEvent(IIILandroid/os/Bundle;)V

    #@12
    .line 382
    return-void
.end method

.method public writeRilHangup(III)V
    .locals 2
    .param p1, "rilSerial"    # I
    .param p2, "req"    # I
    .param p3, "gsmIndex"    # I

    #@0
    .prologue
    .line 396
    new-instance v0, Landroid/os/Bundle;

    #@2
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@5
    .line 397
    .local v0, "b":Landroid/os/Bundle;
    const-string/jumbo v1, "gsmIndex"

    #@8
    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@b
    .line 398
    const/16 v1, 0x3e9

    #@d
    invoke-direct {p0, v1, p2, p1, v0}, Lcom/android/internal/telephony/TelephonyEventLog;->writeEvent(IIILandroid/os/Bundle;)V

    #@10
    .line 395
    return-void
.end method

.method public writeRilNewSms(I)V
    .locals 3
    .param p1, "response"    # I

    #@0
    .prologue
    .line 414
    const/16 v0, 0x3eb

    #@2
    const/4 v1, -0x1

    #@3
    const/4 v2, 0x0

    #@4
    invoke-direct {p0, v0, p1, v1, v2}, Lcom/android/internal/telephony/TelephonyEventLog;->writeEvent(IIILandroid/os/Bundle;)V

    #@7
    .line 413
    return-void
.end method

.method public writeRilSendSms(II)V
    .locals 2
    .param p1, "rilSerial"    # I
    .param p2, "req"    # I

    #@0
    .prologue
    .line 410
    const/16 v0, 0x3e9

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {p0, v0, p2, p1, v1}, Lcom/android/internal/telephony/TelephonyEventLog;->writeEvent(IIILandroid/os/Bundle;)V

    #@6
    .line 409
    return-void
.end method

.method public writeRilSetupDataCall(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .param p1, "rilSerial"    # I
    .param p2, "radioTechnology"    # I
    .param p3, "profile"    # I
    .param p4, "apn"    # Ljava/lang/String;
    .param p5, "user"    # Ljava/lang/String;
    .param p6, "password"    # Ljava/lang/String;
    .param p7, "authType"    # I
    .param p8, "protocol"    # Ljava/lang/String;

    #@0
    .prologue
    .line 342
    new-instance v0, Landroid/os/Bundle;

    #@2
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@5
    .line 343
    .local v0, "b":Landroid/os/Bundle;
    const-string/jumbo v1, "rat"

    #@8
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@b
    .line 344
    const-string/jumbo v1, "profile"

    #@e
    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@11
    .line 345
    const-string/jumbo v1, "apn"

    #@14
    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@17
    .line 346
    const-string/jumbo v1, "protocol"

    #@1a
    invoke-virtual {v0, v1, p8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@1d
    .line 347
    const/16 v1, 0x3e9

    #@1f
    const/16 v2, 0x1b

    #@21
    invoke-direct {p0, v1, v2, p1, v0}, Lcom/android/internal/telephony/TelephonyEventLog;->writeEvent(IIILandroid/os/Bundle;)V

    #@24
    .line 341
    return-void
.end method

.method public writeRilSrvcc(I)V
    .locals 3
    .param p1, "rilSrvccState"    # I

    #@0
    .prologue
    .line 406
    const/16 v0, 0x3eb

    #@2
    const/16 v1, 0x40f

    #@4
    const/4 v2, 0x0

    #@5
    invoke-direct {p0, v0, v1, p1, v2}, Lcom/android/internal/telephony/TelephonyEventLog;->writeEvent(IIILandroid/os/Bundle;)V

    #@8
    .line 405
    return-void
.end method

.method public writeServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 4
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    #@0
    .prologue
    .line 208
    new-instance v0, Landroid/os/Bundle;

    #@2
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@5
    .line 209
    .local v0, "b":Landroid/os/Bundle;
    const/4 v1, 0x0

    #@6
    .line 210
    .local v1, "changed":Z
    iget v2, p0, Lcom/android/internal/telephony/TelephonyEventLog;->mVoiceRegState:I

    #@8
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    #@b
    move-result v3

    #@c
    if-eq v2, v3, :cond_0

    #@e
    .line 211
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    #@11
    move-result v2

    #@12
    iput v2, p0, Lcom/android/internal/telephony/TelephonyEventLog;->mVoiceRegState:I

    #@14
    .line 212
    const-string/jumbo v2, "regSt"

    #@17
    iget v3, p0, Lcom/android/internal/telephony/TelephonyEventLog;->mVoiceRegState:I

    #@19
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@1c
    .line 213
    const/4 v1, 0x1

    #@1d
    .line 215
    :cond_0
    iget v2, p0, Lcom/android/internal/telephony/TelephonyEventLog;->mDataRegState:I

    #@1f
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRegState()I

    #@22
    move-result v3

    #@23
    if-eq v2, v3, :cond_1

    #@25
    .line 216
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRegState()I

    #@28
    move-result v2

    #@29
    iput v2, p0, Lcom/android/internal/telephony/TelephonyEventLog;->mDataRegState:I

    #@2b
    .line 217
    const-string/jumbo v2, "dataRegSt"

    #@2e
    iget v3, p0, Lcom/android/internal/telephony/TelephonyEventLog;->mDataRegState:I

    #@30
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@33
    .line 218
    const/4 v1, 0x1

    #@34
    .line 220
    :cond_1
    iget v2, p0, Lcom/android/internal/telephony/TelephonyEventLog;->mVoiceRoamingType:I

    #@36
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRoamingType()I

    #@39
    move-result v3

    #@3a
    if-eq v2, v3, :cond_2

    #@3c
    .line 221
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRoamingType()I

    #@3f
    move-result v2

    #@40
    iput v2, p0, Lcom/android/internal/telephony/TelephonyEventLog;->mVoiceRoamingType:I

    #@42
    .line 222
    const-string/jumbo v2, "roamingType"

    #@45
    iget v3, p0, Lcom/android/internal/telephony/TelephonyEventLog;->mVoiceRoamingType:I

    #@47
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@4a
    .line 223
    const/4 v1, 0x1

    #@4b
    .line 225
    :cond_2
    iget v2, p0, Lcom/android/internal/telephony/TelephonyEventLog;->mDataRoamingType:I

    #@4d
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRoamingType()I

    #@50
    move-result v3

    #@51
    if-eq v2, v3, :cond_3

    #@53
    .line 226
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRoamingType()I

    #@56
    move-result v2

    #@57
    iput v2, p0, Lcom/android/internal/telephony/TelephonyEventLog;->mDataRoamingType:I

    #@59
    .line 227
    const-string/jumbo v2, "dataRoamingType"

    #@5c
    iget v3, p0, Lcom/android/internal/telephony/TelephonyEventLog;->mDataRoamingType:I

    #@5e
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@61
    .line 228
    const/4 v1, 0x1

    #@62
    .line 230
    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyEventLog;->mVoiceOperatorAlphaShort:Ljava/lang/String;

    #@64
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceOperatorAlphaShort()Ljava/lang/String;

    #@67
    move-result-object v3

    #@68
    invoke-static {v2, v3}, Lcom/android/internal/telephony/TelephonyEventLog;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@6b
    move-result v2

    #@6c
    if-eqz v2, :cond_8

    #@6e
    .line 231
    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyEventLog;->mVoiceOperatorNumeric:Ljava/lang/String;

    #@70
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceOperatorNumeric()Ljava/lang/String;

    #@73
    move-result-object v3

    #@74
    invoke-static {v2, v3}, Lcom/android/internal/telephony/TelephonyEventLog;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@77
    move-result v2

    #@78
    if-eqz v2, :cond_8

    #@7a
    .line 240
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyEventLog;->mDataOperatorAlphaShort:Ljava/lang/String;

    #@7c
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataOperatorAlphaShort()Ljava/lang/String;

    #@7f
    move-result-object v3

    #@80
    invoke-static {v2, v3}, Lcom/android/internal/telephony/TelephonyEventLog;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@83
    move-result v2

    #@84
    if-eqz v2, :cond_9

    #@86
    .line 241
    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyEventLog;->mDataOperatorNumeric:Ljava/lang/String;

    #@88
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataOperatorNumeric()Ljava/lang/String;

    #@8b
    move-result-object v3

    #@8c
    invoke-static {v2, v3}, Lcom/android/internal/telephony/TelephonyEventLog;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@8f
    move-result v2

    #@90
    if-eqz v2, :cond_9

    #@92
    .line 250
    :goto_1
    iget v2, p0, Lcom/android/internal/telephony/TelephonyEventLog;->mRilVoiceRadioTechnology:I

    #@94
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    #@97
    move-result v3

    #@98
    if-eq v2, v3, :cond_4

    #@9a
    .line 251
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    #@9d
    move-result v2

    #@9e
    iput v2, p0, Lcom/android/internal/telephony/TelephonyEventLog;->mRilVoiceRadioTechnology:I

    #@a0
    .line 252
    const-string/jumbo v2, "rat"

    #@a3
    iget v3, p0, Lcom/android/internal/telephony/TelephonyEventLog;->mRilVoiceRadioTechnology:I

    #@a5
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@a8
    .line 253
    const/4 v1, 0x1

    #@a9
    .line 255
    :cond_4
    iget v2, p0, Lcom/android/internal/telephony/TelephonyEventLog;->mRilDataRadioTechnology:I

    #@ab
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    #@ae
    move-result v3

    #@af
    if-eq v2, v3, :cond_5

    #@b1
    .line 256
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    #@b4
    move-result v2

    #@b5
    iput v2, p0, Lcom/android/internal/telephony/TelephonyEventLog;->mRilDataRadioTechnology:I

    #@b7
    .line 257
    const-string/jumbo v2, "dataRat"

    #@ba
    iget v3, p0, Lcom/android/internal/telephony/TelephonyEventLog;->mRilDataRadioTechnology:I

    #@bc
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@bf
    .line 258
    const/4 v1, 0x1

    #@c0
    .line 260
    :cond_5
    iget-boolean v2, p0, Lcom/android/internal/telephony/TelephonyEventLog;->mEmergencyOnly:Z

    #@c2
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    #@c5
    move-result v3

    #@c6
    if-eq v2, v3, :cond_6

    #@c8
    .line 261
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    #@cb
    move-result v2

    #@cc
    iput-boolean v2, p0, Lcom/android/internal/telephony/TelephonyEventLog;->mEmergencyOnly:Z

    #@ce
    .line 262
    const-string/jumbo v2, "emergencyOnly"

    #@d1
    iget-boolean v3, p0, Lcom/android/internal/telephony/TelephonyEventLog;->mEmergencyOnly:Z

    #@d3
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@d6
    .line 263
    const/4 v1, 0x1

    #@d7
    .line 266
    :cond_6
    if-eqz v1, :cond_7

    #@d9
    .line 267
    const/4 v2, 0x2

    #@da
    invoke-direct {p0, v2, v0}, Lcom/android/internal/telephony/TelephonyEventLog;->writeEvent(ILandroid/os/Bundle;)V

    #@dd
    .line 207
    :cond_7
    return-void

    #@de
    .line 234
    :cond_8
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceOperatorAlphaShort()Ljava/lang/String;

    #@e1
    move-result-object v2

    #@e2
    iput-object v2, p0, Lcom/android/internal/telephony/TelephonyEventLog;->mVoiceOperatorAlphaShort:Ljava/lang/String;

    #@e4
    .line 235
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceOperatorNumeric()Ljava/lang/String;

    #@e7
    move-result-object v2

    #@e8
    iput-object v2, p0, Lcom/android/internal/telephony/TelephonyEventLog;->mVoiceOperatorNumeric:Ljava/lang/String;

    #@ea
    .line 236
    const-string/jumbo v2, "alphaShort"

    #@ed
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyEventLog;->mVoiceOperatorAlphaShort:Ljava/lang/String;

    #@ef
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@f2
    .line 237
    const-string/jumbo v2, "operator"

    #@f5
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyEventLog;->mVoiceOperatorNumeric:Ljava/lang/String;

    #@f7
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@fa
    .line 238
    const/4 v1, 0x1

    #@fb
    goto/16 :goto_0

    #@fd
    .line 244
    :cond_9
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataOperatorAlphaShort()Ljava/lang/String;

    #@100
    move-result-object v2

    #@101
    iput-object v2, p0, Lcom/android/internal/telephony/TelephonyEventLog;->mDataOperatorAlphaShort:Ljava/lang/String;

    #@103
    .line 245
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataOperatorNumeric()Ljava/lang/String;

    #@106
    move-result-object v2

    #@107
    iput-object v2, p0, Lcom/android/internal/telephony/TelephonyEventLog;->mDataOperatorNumeric:Ljava/lang/String;

    #@109
    .line 246
    const-string/jumbo v2, "dataAlphaShort"

    #@10c
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyEventLog;->mDataOperatorAlphaShort:Ljava/lang/String;

    #@10e
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@111
    .line 247
    const-string/jumbo v2, "dataOperator"

    #@114
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyEventLog;->mDataOperatorNumeric:Ljava/lang/String;

    #@116
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@119
    .line 248
    const/4 v1, 0x1

    #@11a
    goto/16 :goto_1
.end method

.method public writeSetAirplaneMode(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 272
    if-eqz p1, :cond_0

    #@3
    move v0, v1

    #@4
    :goto_0
    invoke-direct {p0, v1, v1, v0}, Lcom/android/internal/telephony/TelephonyEventLog;->writeEvent(III)V

    #@7
    .line 271
    return-void

    #@8
    .line 272
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method

.method public writeSetCellDataEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 276
    if-eqz p1, :cond_0

    #@3
    move v0, v1

    #@4
    :goto_0
    const/4 v2, 0x2

    #@5
    invoke-direct {p0, v1, v2, v0}, Lcom/android/internal/telephony/TelephonyEventLog;->writeEvent(III)V

    #@8
    .line 275
    return-void

    #@9
    .line 276
    :cond_0
    const/4 v0, 0x0

    #@a
    goto :goto_0
.end method

.method public writeSetDataRoamingEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 280
    if-eqz p1, :cond_0

    #@3
    move v0, v1

    #@4
    :goto_0
    const/4 v2, 0x3

    #@5
    invoke-direct {p0, v1, v2, v0}, Lcom/android/internal/telephony/TelephonyEventLog;->writeEvent(III)V

    #@8
    .line 279
    return-void

    #@9
    .line 280
    :cond_0
    const/4 v0, 0x0

    #@a
    goto :goto_0
.end method

.method public writeSetPreferredNetworkType(I)V
    .locals 2
    .param p1, "mode"    # I

    #@0
    .prologue
    .line 284
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x4

    #@2
    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/telephony/TelephonyEventLog;->writeEvent(III)V

    #@5
    .line 283
    return-void
.end method

.method public writeSetWfcMode(I)V
    .locals 2
    .param p1, "mode"    # I

    #@0
    .prologue
    .line 292
    const/4 v0, 0x1

    #@1
    const/16 v1, 0x8

    #@3
    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/telephony/TelephonyEventLog;->writeEvent(III)V

    #@6
    .line 291
    return-void
.end method

.method public writeSetWifiEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 288
    if-eqz p1, :cond_0

    #@3
    move v0, v1

    #@4
    :goto_0
    const/4 v2, 0x5

    #@5
    invoke-direct {p0, v1, v2, v0}, Lcom/android/internal/telephony/TelephonyEventLog;->writeEvent(III)V

    #@8
    .line 287
    return-void

    #@9
    .line 288
    :cond_0
    const/4 v0, 0x0

    #@a
    goto :goto_0
.end method
