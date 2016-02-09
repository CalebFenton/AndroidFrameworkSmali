.class public final Lcom/android/internal/telephony/gsm/GsmMmiCode;
.super Landroid/os/Handler;
.source "GsmMmiCode.java"

# interfaces
.implements Lcom/android/internal/telephony/MmiCode;


# static fields
.field private static synthetic -com_android_internal_telephony_gsm_SsData$RequestTypeSwitchesValues:[I = null

.field private static synthetic -com_android_internal_telephony_gsm_SsData$ServiceTypeSwitchesValues:[I = null

.field static final ACTION_ACTIVATE:Ljava/lang/String; = "*"

.field static final ACTION_DEACTIVATE:Ljava/lang/String; = "#"

.field static final ACTION_ERASURE:Ljava/lang/String; = "##"

.field static final ACTION_INTERROGATE:Ljava/lang/String; = "*#"

.field static final ACTION_REGISTER:Ljava/lang/String; = "**"

.field static final END_OF_USSD_COMMAND:C = '#'

.field static final EVENT_GET_CLIR_COMPLETE:I = 0x2

.field static final EVENT_QUERY_CF_COMPLETE:I = 0x3

.field static final EVENT_QUERY_COMPLETE:I = 0x5

.field static final EVENT_SET_CFF_COMPLETE:I = 0x6

.field static final EVENT_SET_COMPLETE:I = 0x1

.field static final EVENT_USSD_CANCEL_COMPLETE:I = 0x7

.field static final EVENT_USSD_COMPLETE:I = 0x4

.field static final LOG_TAG:Ljava/lang/String; = "GsmMmiCode"

.field static final MATCH_GROUP_ACTION:I = 0x2

.field static final MATCH_GROUP_DIALING_NUMBER:I = 0xc

.field static final MATCH_GROUP_POUND_STRING:I = 0x1

.field static final MATCH_GROUP_PWD_CONFIRM:I = 0xb

.field static final MATCH_GROUP_SERVICE_CODE:I = 0x3

.field static final MATCH_GROUP_SIA:I = 0x5

.field static final MATCH_GROUP_SIB:I = 0x7

.field static final MATCH_GROUP_SIC:I = 0x9

.field static final MAX_LENGTH_SHORT_CODE:I = 0x2

.field static final SC_BAIC:Ljava/lang/String; = "35"

.field static final SC_BAICr:Ljava/lang/String; = "351"

.field static final SC_BAOC:Ljava/lang/String; = "33"

.field static final SC_BAOIC:Ljava/lang/String; = "331"

.field static final SC_BAOICxH:Ljava/lang/String; = "332"

.field static final SC_BA_ALL:Ljava/lang/String; = "330"

.field static final SC_BA_MO:Ljava/lang/String; = "333"

.field static final SC_BA_MT:Ljava/lang/String; = "353"

.field static final SC_CFB:Ljava/lang/String; = "67"

.field static final SC_CFNR:Ljava/lang/String; = "62"

.field static final SC_CFNRy:Ljava/lang/String; = "61"

.field static final SC_CFU:Ljava/lang/String; = "21"

.field static final SC_CF_All:Ljava/lang/String; = "002"

.field static final SC_CF_All_Conditional:Ljava/lang/String; = "004"

.field static final SC_CLIP:Ljava/lang/String; = "30"

.field static final SC_CLIR:Ljava/lang/String; = "31"

.field static final SC_PIN:Ljava/lang/String; = "04"

.field static final SC_PIN2:Ljava/lang/String; = "042"

.field static final SC_PUK:Ljava/lang/String; = "05"

.field static final SC_PUK2:Ljava/lang/String; = "052"

.field static final SC_PWD:Ljava/lang/String; = "03"

.field static final SC_WAIT:Ljava/lang/String; = "43"

.field static sPatternSuppService:Ljava/util/regex/Pattern;

.field private static sTwoDigitNumberPattern:[Ljava/lang/String;


# instance fields
.field mAction:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field mDialingNumber:Ljava/lang/String;

.field mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

.field private mIsCallFwdReg:Z

.field private mIsPendingUSSD:Z

.field private mIsSsInfo:Z

.field private mIsUssdRequest:Z

.field mMessage:Ljava/lang/CharSequence;

.field mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

.field mPoundString:Ljava/lang/String;

.field mPwd:Ljava/lang/String;

.field mSc:Ljava/lang/String;

.field mSia:Ljava/lang/String;

.field mSib:Ljava/lang/String;

.field mSic:Ljava/lang/String;

.field mState:Lcom/android/internal/telephony/MmiCode$State;

.field mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;


# direct methods
.method private static synthetic -getcom_android_internal_telephony_gsm_SsData$RequestTypeSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->-com_android_internal_telephony_gsm_SsData$RequestTypeSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->-com_android_internal_telephony_gsm_SsData$RequestTypeSwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/gsm/SsData$RequestType;->values()[Lcom/android/internal/telephony/gsm/SsData$RequestType;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/gsm/SsData$RequestType;->SS_ACTIVATION:Lcom/android/internal/telephony/gsm/SsData$RequestType;

    #@10
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SsData$RequestType;->ordinal()I

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
    sget-object v1, Lcom/android/internal/telephony/gsm/SsData$RequestType;->SS_DEACTIVATION:Lcom/android/internal/telephony/gsm/SsData$RequestType;

    #@19
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SsData$RequestType;->ordinal()I

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
    sget-object v1, Lcom/android/internal/telephony/gsm/SsData$RequestType;->SS_ERASURE:Lcom/android/internal/telephony/gsm/SsData$RequestType;

    #@22
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SsData$RequestType;->ordinal()I

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
    sget-object v1, Lcom/android/internal/telephony/gsm/SsData$RequestType;->SS_INTERROGATION:Lcom/android/internal/telephony/gsm/SsData$RequestType;

    #@2b
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SsData$RequestType;->ordinal()I

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
    sget-object v1, Lcom/android/internal/telephony/gsm/SsData$RequestType;->SS_REGISTRATION:Lcom/android/internal/telephony/gsm/SsData$RequestType;

    #@34
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SsData$RequestType;->ordinal()I

    #@37
    move-result v1

    #@38
    const/4 v2, 0x5

    #@39
    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    #@3b
    :goto_4
    sput-object v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->-com_android_internal_telephony_gsm_SsData$RequestTypeSwitchesValues:[I

    #@3d
    return-object v0

    #@3e
    :catch_0
    move-exception v1

    #@3f
    goto :goto_4

    #@40
    :catch_1
    move-exception v1

    #@41
    goto :goto_3

    #@42
    :catch_2
    move-exception v1

    #@43
    goto :goto_2

    #@44
    :catch_3
    move-exception v1

    #@45
    goto :goto_1

    #@46
    :catch_4
    move-exception v1

    #@47
    goto :goto_0
.end method

.method private static synthetic -getcom_android_internal_telephony_gsm_SsData$ServiceTypeSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->-com_android_internal_telephony_gsm_SsData$ServiceTypeSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->-com_android_internal_telephony_gsm_SsData$ServiceTypeSwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->values()[Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_ALL_BARRING:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    #@10
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->ordinal()I

    #@13
    move-result v1

    #@14
    const/4 v2, 0x1

    #@15
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_12

    #@17
    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_BAIC:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    #@19
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->ordinal()I

    #@1c
    move-result v1

    #@1d
    const/4 v2, 0x2

    #@1e
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_11

    #@20
    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_BAIC_ROAMING:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    #@22
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->ordinal()I

    #@25
    move-result v1

    #@26
    const/4 v2, 0x3

    #@27
    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_10

    #@29
    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_BAOC:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    #@2b
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->ordinal()I

    #@2e
    move-result v1

    #@2f
    const/4 v2, 0x4

    #@30
    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_f

    #@32
    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_BAOIC:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    #@34
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->ordinal()I

    #@37
    move-result v1

    #@38
    const/4 v2, 0x5

    #@39
    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_e

    #@3b
    :goto_4
    :try_start_5
    sget-object v1, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_BAOIC_EXC_HOME:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    #@3d
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->ordinal()I

    #@40
    move-result v1

    #@41
    const/4 v2, 0x6

    #@42
    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_d

    #@44
    :goto_5
    :try_start_6
    sget-object v1, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_CFU:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    #@46
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->ordinal()I

    #@49
    move-result v1

    #@4a
    const/4 v2, 0x7

    #@4b
    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_c

    #@4d
    :goto_6
    :try_start_7
    sget-object v1, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_CF_ALL:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    #@4f
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->ordinal()I

    #@52
    move-result v1

    #@53
    const/16 v2, 0x8

    #@55
    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_b

    #@57
    :goto_7
    :try_start_8
    sget-object v1, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_CF_ALL_CONDITIONAL:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    #@59
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->ordinal()I

    #@5c
    move-result v1

    #@5d
    const/16 v2, 0x9

    #@5f
    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_a

    #@61
    :goto_8
    :try_start_9
    sget-object v1, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_CF_BUSY:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    #@63
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->ordinal()I

    #@66
    move-result v1

    #@67
    const/16 v2, 0xa

    #@69
    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    #@6b
    :goto_9
    :try_start_a
    sget-object v1, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_CF_NOT_REACHABLE:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    #@6d
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->ordinal()I

    #@70
    move-result v1

    #@71
    const/16 v2, 0xb

    #@73
    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_8

    #@75
    :goto_a
    :try_start_b
    sget-object v1, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_CF_NO_REPLY:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    #@77
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->ordinal()I

    #@7a
    move-result v1

    #@7b
    const/16 v2, 0xc

    #@7d
    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_7

    #@7f
    :goto_b
    :try_start_c
    sget-object v1, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_CLIP:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    #@81
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->ordinal()I

    #@84
    move-result v1

    #@85
    const/16 v2, 0xd

    #@87
    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_6

    #@89
    :goto_c
    :try_start_d
    sget-object v1, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_CLIR:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    #@8b
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->ordinal()I

    #@8e
    move-result v1

    #@8f
    const/16 v2, 0xe

    #@91
    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_5

    #@93
    :goto_d
    :try_start_e
    sget-object v1, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_COLP:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    #@95
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->ordinal()I

    #@98
    move-result v1

    #@99
    const/16 v2, 0x17

    #@9b
    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_4

    #@9d
    :goto_e
    :try_start_f
    sget-object v1, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_COLR:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    #@9f
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->ordinal()I

    #@a2
    move-result v1

    #@a3
    const/16 v2, 0x18

    #@a5
    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_3

    #@a7
    :goto_f
    :try_start_10
    sget-object v1, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_INCOMING_BARRING:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    #@a9
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->ordinal()I

    #@ac
    move-result v1

    #@ad
    const/16 v2, 0xf

    #@af
    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_2

    #@b1
    :goto_10
    :try_start_11
    sget-object v1, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_OUTGOING_BARRING:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    #@b3
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->ordinal()I

    #@b6
    move-result v1

    #@b7
    const/16 v2, 0x10

    #@b9
    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_1

    #@bb
    :goto_11
    :try_start_12
    sget-object v1, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_WAIT:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    #@bd
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->ordinal()I

    #@c0
    move-result v1

    #@c1
    const/16 v2, 0x11

    #@c3
    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_0

    #@c5
    :goto_12
    sput-object v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->-com_android_internal_telephony_gsm_SsData$ServiceTypeSwitchesValues:[I

    #@c7
    return-object v0

    #@c8
    :catch_0
    move-exception v1

    #@c9
    goto :goto_12

    #@ca
    :catch_1
    move-exception v1

    #@cb
    goto :goto_11

    #@cc
    :catch_2
    move-exception v1

    #@cd
    goto :goto_10

    #@ce
    :catch_3
    move-exception v1

    #@cf
    goto :goto_f

    #@d0
    :catch_4
    move-exception v1

    #@d1
    goto :goto_e

    #@d2
    :catch_5
    move-exception v1

    #@d3
    goto :goto_d

    #@d4
    :catch_6
    move-exception v1

    #@d5
    goto :goto_c

    #@d6
    :catch_7
    move-exception v1

    #@d7
    goto :goto_b

    #@d8
    :catch_8
    move-exception v1

    #@d9
    goto :goto_a

    #@da
    :catch_9
    move-exception v1

    #@db
    goto :goto_9

    #@dc
    :catch_a
    move-exception v1

    #@dd
    goto :goto_8

    #@de
    :catch_b
    move-exception v1

    #@df
    goto/16 :goto_7

    #@e1
    :catch_c
    move-exception v1

    #@e2
    goto/16 :goto_6

    #@e4
    :catch_d
    move-exception v1

    #@e5
    goto/16 :goto_5

    #@e7
    :catch_e
    move-exception v1

    #@e8
    goto/16 :goto_4

    #@ea
    :catch_f
    move-exception v1

    #@eb
    goto/16 :goto_3

    #@ed
    :catch_10
    move-exception v1

    #@ee
    goto/16 :goto_2

    #@f0
    :catch_11
    move-exception v1

    #@f1
    goto/16 :goto_1

    #@f3
    :catch_12
    move-exception v1

    #@f4
    goto/16 :goto_0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 147
    const-string/jumbo v0, "((\\*|#|\\*#|\\*\\*|##)(\\d{2,3})(\\*([^*#]*)(\\*([^*#]*)(\\*([^*#]*)(\\*([^*#]*))?)?)?)?#)(.*)"

    #@3
    .line 146
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@6
    move-result-object v0

    #@7
    sput-object v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sPatternSuppService:Ljava/util/regex/Pattern;

    #@9
    .line 49
    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)V
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/gsm/GSMPhone;
    .param p2, "app"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@0
    .prologue
    .line 545
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getHandler()Landroid/os/Handler;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    #@7
    move-result-object v0

    #@8
    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@b
    .line 136
    sget-object v0, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    #@d
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    #@f
    .line 138
    const/4 v0, 0x0

    #@10
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mIsSsInfo:Z

    #@12
    .line 546
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    #@14
    .line 547
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    #@17
    move-result-object v0

    #@18
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    #@1a
    .line 548
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@1c
    .line 549
    if-eqz p2, :cond_0

    #@1e
    .line 550
    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    #@21
    move-result-object v0

    #@22
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@24
    .line 542
    :cond_0
    return-void
.end method

.method private createQueryCallBarringResultMessage(I)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "serviceClass"    # I

    #@0
    .prologue
    .line 1576
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    #@4
    const v3, 0x104007d

    #@7
    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@a
    move-result-object v2

    #@b
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    #@e
    .line 1578
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    #@f
    .line 1579
    .local v0, "classMask":I
    :goto_0
    const/16 v2, 0x80

    #@11
    .line 1578
    if-gt v0, v2, :cond_1

    #@13
    .line 1582
    and-int v2, v0, p1

    #@15
    if-eqz v2, :cond_0

    #@17
    .line 1583
    const-string/jumbo v2, "\n"

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    .line 1584
    and-int v2, v0, p1

    #@1f
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->serviceClassToCFString(I)Ljava/lang/CharSequence;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@26
    .line 1580
    :cond_0
    shl-int/lit8 v0, v0, 0x1

    #@28
    goto :goto_0

    #@29
    .line 1587
    :cond_1
    return-object v1
.end method

.method private createQueryCallWaitingResultMessage(I)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "serviceClass"    # I

    #@0
    .prologue
    .line 1560
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    #@4
    const v3, 0x104007d

    #@7
    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@a
    move-result-object v2

    #@b
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    #@e
    .line 1562
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    #@f
    .line 1563
    .local v0, "classMask":I
    :goto_0
    const/16 v2, 0x80

    #@11
    .line 1562
    if-gt v0, v2, :cond_1

    #@13
    .line 1566
    and-int v2, v0, p1

    #@15
    if-eqz v2, :cond_0

    #@17
    .line 1567
    const-string/jumbo v2, "\n"

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    .line 1568
    and-int v2, v0, p1

    #@1f
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->serviceClassToCFString(I)Ljava/lang/CharSequence;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@26
    .line 1564
    :cond_0
    shl-int/lit8 v0, v0, 0x1

    #@28
    goto :goto_0

    #@29
    .line 1571
    :cond_1
    return-object v1
.end method

.method private formatLtr(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1463
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    #@3
    move-result-object v0

    #@4
    .line 1464
    .local v0, "fmt":Landroid/text/BidiFormatter;
    if-nez p1, :cond_0

    #@6
    .end local p1    # "str":Ljava/lang/String;
    :goto_0
    return-object p1

    #@7
    .restart local p1    # "str":Ljava/lang/String;
    :cond_0
    sget-object v1, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    #@9
    const/4 v2, 0x1

    #@a
    invoke-virtual {v0, p1, v1, v2}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroid/text/TextDirectionHeuristic;Z)Ljava/lang/String;

    #@d
    move-result-object p1

    #@e
    goto :goto_0
.end method

.method private getActionStringFromReqType(Lcom/android/internal/telephony/gsm/SsData$RequestType;)Ljava/lang/String;
    .locals 2
    .param p1, "rType"    # Lcom/android/internal/telephony/gsm/SsData$RequestType;

    #@0
    .prologue
    .line 377
    invoke-static {}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->-getcom_android_internal_telephony_gsm_SsData$RequestTypeSwitchesValues()[I

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SsData$RequestType;->ordinal()I

    #@7
    move-result v1

    #@8
    aget v0, v0, v1

    #@a
    packed-switch v0, :pswitch_data_0

    #@d
    .line 390
    const-string/jumbo v0, ""

    #@10
    return-object v0

    #@11
    .line 379
    :pswitch_0
    const-string/jumbo v0, "*"

    #@14
    return-object v0

    #@15
    .line 381
    :pswitch_1
    const-string/jumbo v0, "#"

    #@18
    return-object v0

    #@19
    .line 383
    :pswitch_2
    const-string/jumbo v0, "*#"

    #@1c
    return-object v0

    #@1d
    .line 385
    :pswitch_3
    const-string/jumbo v0, "**"

    #@20
    return-object v0

    #@21
    .line 387
    :pswitch_4
    const-string/jumbo v0, "##"

    #@24
    return-object v0

    #@25
    .line 377
    nop

    #@26
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "ar"    # Landroid/os/AsyncResult;

    #@0
    .prologue
    .line 1141
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@2
    instance-of v1, v1, Lcom/android/internal/telephony/CommandException;

    #@4
    if-eqz v1, :cond_6

    #@6
    .line 1142
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@8
    check-cast v1, Lcom/android/internal/telephony/CommandException;

    #@a
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    #@d
    move-result-object v0

    #@e
    .line 1143
    .local v0, "err":Lcom/android/internal/telephony/CommandException$Error;
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->FDN_CHECK_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    #@10
    if-ne v0, v1, :cond_0

    #@12
    .line 1144
    const-string/jumbo v1, "GsmMmiCode"

    #@15
    const-string/jumbo v2, "FDN_CHECK_FAILURE"

    #@18
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@1b
    .line 1145
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    #@1d
    const v2, 0x104007b

    #@20
    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@23
    move-result-object v1

    #@24
    return-object v1

    #@25
    .line 1146
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->USSD_MODIFIED_TO_DIAL:Lcom/android/internal/telephony/CommandException$Error;

    #@27
    if-ne v0, v1, :cond_1

    #@29
    .line 1147
    const-string/jumbo v1, "GsmMmiCode"

    #@2c
    const-string/jumbo v2, "USSD_MODIFIED_TO_DIAL"

    #@2f
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@32
    .line 1148
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    #@34
    const v2, 0x104057e

    #@37
    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@3a
    move-result-object v1

    #@3b
    return-object v1

    #@3c
    .line 1149
    :cond_1
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->USSD_MODIFIED_TO_SS:Lcom/android/internal/telephony/CommandException$Error;

    #@3e
    if-ne v0, v1, :cond_2

    #@40
    .line 1150
    const-string/jumbo v1, "GsmMmiCode"

    #@43
    const-string/jumbo v2, "USSD_MODIFIED_TO_SS"

    #@46
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@49
    .line 1151
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    #@4b
    const v2, 0x104057f

    #@4e
    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@51
    move-result-object v1

    #@52
    return-object v1

    #@53
    .line 1152
    :cond_2
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->USSD_MODIFIED_TO_USSD:Lcom/android/internal/telephony/CommandException$Error;

    #@55
    if-ne v0, v1, :cond_3

    #@57
    .line 1153
    const-string/jumbo v1, "GsmMmiCode"

    #@5a
    const-string/jumbo v2, "USSD_MODIFIED_TO_USSD"

    #@5d
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@60
    .line 1154
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    #@62
    const v2, 0x1040580

    #@65
    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@68
    move-result-object v1

    #@69
    return-object v1

    #@6a
    .line 1155
    :cond_3
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->SS_MODIFIED_TO_DIAL:Lcom/android/internal/telephony/CommandException$Error;

    #@6c
    if-ne v0, v1, :cond_4

    #@6e
    .line 1156
    const-string/jumbo v1, "GsmMmiCode"

    #@71
    const-string/jumbo v2, "SS_MODIFIED_TO_DIAL"

    #@74
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@77
    .line 1157
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    #@79
    const v2, 0x1040581

    #@7c
    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@7f
    move-result-object v1

    #@80
    return-object v1

    #@81
    .line 1158
    :cond_4
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->SS_MODIFIED_TO_USSD:Lcom/android/internal/telephony/CommandException$Error;

    #@83
    if-ne v0, v1, :cond_5

    #@85
    .line 1159
    const-string/jumbo v1, "GsmMmiCode"

    #@88
    const-string/jumbo v2, "SS_MODIFIED_TO_USSD"

    #@8b
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@8e
    .line 1160
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    #@90
    const v2, 0x1040582

    #@93
    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@96
    move-result-object v1

    #@97
    return-object v1

    #@98
    .line 1161
    :cond_5
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->SS_MODIFIED_TO_SS:Lcom/android/internal/telephony/CommandException$Error;

    #@9a
    if-ne v0, v1, :cond_6

    #@9c
    .line 1162
    const-string/jumbo v1, "GsmMmiCode"

    #@9f
    const-string/jumbo v2, "SS_MODIFIED_TO_SS"

    #@a2
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@a5
    .line 1163
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    #@a7
    const v2, 0x1040583

    #@aa
    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@ad
    move-result-object v1

    #@ae
    return-object v1

    #@af
    .line 1167
    .end local v0    # "err":Lcom/android/internal/telephony/CommandException$Error;
    :cond_6
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    #@b1
    const v2, 0x104007a

    #@b4
    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@b7
    move-result-object v1

    #@b8
    return-object v1
.end method

.method private getScString()Ljava/lang/CharSequence;
    .locals 2

    #@0
    .prologue
    .line 1171
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    #@2
    if-eqz v0, :cond_6

    #@4
    .line 1172
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    #@6
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isServiceCodeCallBarring(Ljava/lang/String;)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 1173
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    #@e
    const v1, 0x1040093

    #@11
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@14
    move-result-object v0

    #@15
    return-object v0

    #@16
    .line 1174
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    #@18
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isServiceCodeCallForwarding(Ljava/lang/String;)Z

    #@1b
    move-result v0

    #@1c
    if-eqz v0, :cond_1

    #@1e
    .line 1175
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    #@20
    const v1, 0x1040091

    #@23
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@26
    move-result-object v0

    #@27
    return-object v0

    #@28
    .line 1176
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    #@2a
    const-string/jumbo v1, "30"

    #@2d
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@30
    move-result v0

    #@31
    if-eqz v0, :cond_2

    #@33
    .line 1177
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    #@35
    const v1, 0x104008d

    #@38
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@3b
    move-result-object v0

    #@3c
    return-object v0

    #@3d
    .line 1178
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    #@3f
    const-string/jumbo v1, "31"

    #@42
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@45
    move-result v0

    #@46
    if-eqz v0, :cond_3

    #@48
    .line 1179
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    #@4a
    const v1, 0x104008e

    #@4d
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@50
    move-result-object v0

    #@51
    return-object v0

    #@52
    .line 1180
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    #@54
    const-string/jumbo v1, "03"

    #@57
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5a
    move-result v0

    #@5b
    if-eqz v0, :cond_4

    #@5d
    .line 1181
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    #@5f
    const v1, 0x1040094

    #@62
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@65
    move-result-object v0

    #@66
    return-object v0

    #@67
    .line 1182
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    #@69
    const-string/jumbo v1, "43"

    #@6c
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6f
    move-result v0

    #@70
    if-eqz v0, :cond_5

    #@72
    .line 1183
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    #@74
    const v1, 0x1040092

    #@77
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@7a
    move-result-object v0

    #@7b
    return-object v0

    #@7c
    .line 1184
    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isPinPukCommand()Z

    #@7f
    move-result v0

    #@80
    if-eqz v0, :cond_6

    #@82
    .line 1185
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    #@84
    const v1, 0x1040095

    #@87
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@8a
    move-result-object v0

    #@8b
    return-object v0

    #@8c
    .line 1189
    :cond_6
    const-string/jumbo v0, ""

    #@8f
    return-object v0
.end method

.method private getScStringFromScType(Lcom/android/internal/telephony/gsm/SsData$ServiceType;)Ljava/lang/String;
    .locals 2
    .param p1, "sType"    # Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    #@0
    .prologue
    .line 336
    invoke-static {}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->-getcom_android_internal_telephony_gsm_SsData$ServiceTypeSwitchesValues()[I

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->ordinal()I

    #@7
    move-result v1

    #@8
    aget v0, v0, v1

    #@a
    packed-switch v0, :pswitch_data_0

    #@d
    .line 373
    const-string/jumbo v0, ""

    #@10
    return-object v0

    #@11
    .line 338
    :pswitch_0
    const-string/jumbo v0, "21"

    #@14
    return-object v0

    #@15
    .line 340
    :pswitch_1
    const-string/jumbo v0, "67"

    #@18
    return-object v0

    #@19
    .line 342
    :pswitch_2
    const-string/jumbo v0, "61"

    #@1c
    return-object v0

    #@1d
    .line 344
    :pswitch_3
    const-string/jumbo v0, "62"

    #@20
    return-object v0

    #@21
    .line 346
    :pswitch_4
    const-string/jumbo v0, "002"

    #@24
    return-object v0

    #@25
    .line 348
    :pswitch_5
    const-string/jumbo v0, "004"

    #@28
    return-object v0

    #@29
    .line 350
    :pswitch_6
    const-string/jumbo v0, "30"

    #@2c
    return-object v0

    #@2d
    .line 352
    :pswitch_7
    const-string/jumbo v0, "31"

    #@30
    return-object v0

    #@31
    .line 354
    :pswitch_8
    const-string/jumbo v0, "43"

    #@34
    return-object v0

    #@35
    .line 356
    :pswitch_9
    const-string/jumbo v0, "33"

    #@38
    return-object v0

    #@39
    .line 358
    :pswitch_a
    const-string/jumbo v0, "331"

    #@3c
    return-object v0

    #@3d
    .line 360
    :pswitch_b
    const-string/jumbo v0, "332"

    #@40
    return-object v0

    #@41
    .line 362
    :pswitch_c
    const-string/jumbo v0, "35"

    #@44
    return-object v0

    #@45
    .line 364
    :pswitch_d
    const-string/jumbo v0, "351"

    #@48
    return-object v0

    #@49
    .line 366
    :pswitch_e
    const-string/jumbo v0, "330"

    #@4c
    return-object v0

    #@4d
    .line 368
    :pswitch_f
    const-string/jumbo v0, "333"

    #@50
    return-object v0

    #@51
    .line 370
    :pswitch_10
    const-string/jumbo v0, "353"

    #@54
    return-object v0

    #@55
    .line 336
    nop

    #@56
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_c
        :pswitch_d
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_6
        :pswitch_7
        :pswitch_10
        :pswitch_f
        :pswitch_8
    .end packed-switch
.end method

.method private handlePasswordError(I)V
    .locals 2
    .param p1, "res"    # I

    #@0
    .prologue
    .line 987
    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    #@2
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    #@4
    .line 988
    new-instance v0, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->getScString()Ljava/lang/CharSequence;

    #@9
    move-result-object v1

    #@a
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    #@d
    .line 989
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "\n"

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    .line 990
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    #@15
    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@1c
    .line 991
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mMessage:Ljava/lang/CharSequence;

    #@1e
    .line 992
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    #@20
    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->onMMIDone(Lcom/android/internal/telephony/gsm/GsmMmiCode;)V

    #@23
    .line 986
    return-void
.end method

.method private static isEmptyOrNull(Ljava/lang/CharSequence;)Z
    .locals 3
    .param p0, "s"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 413
    if-eqz p0, :cond_0

    #@4
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    #@7
    move-result v2

    #@8
    if-nez v2, :cond_1

    #@a
    :cond_0
    :goto_0
    return v0

    #@b
    :cond_1
    move v0, v1

    #@c
    goto :goto_0
.end method

.method private isServiceClassVoiceorNone(I)Z
    .locals 3
    .param p1, "serviceClass"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 394
    and-int/lit8 v2, p1, 0x1

    #@4
    if-nez v2, :cond_0

    #@6
    .line 395
    if-nez p1, :cond_1

    #@8
    .line 394
    :cond_0
    :goto_0
    return v0

    #@9
    :cond_1
    move v0, v1

    #@a
    .line 395
    goto :goto_0
.end method

.method static isServiceCodeCallBarring(Ljava/lang/String;)Z
    .locals 7
    .param p0, "sc"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 500
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@4
    move-result-object v2

    #@5
    .line 501
    .local v2, "resource":Landroid/content/res/Resources;
    if-eqz p0, :cond_1

    #@7
    .line 503
    const v3, 0x1070038

    #@a
    .line 502
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    .line 504
    .local v0, "barringMMI":[Ljava/lang/String;
    if-eqz v0, :cond_1

    #@10
    .line 505
    array-length v5, v0

    #@11
    move v3, v4

    #@12
    :goto_0
    if-ge v3, v5, :cond_1

    #@14
    aget-object v1, v0, v3

    #@16
    .line 506
    .local v1, "match":Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@19
    move-result v6

    #@1a
    if-eqz v6, :cond_0

    #@1c
    const/4 v3, 0x1

    #@1d
    return v3

    #@1e
    .line 505
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@20
    goto :goto_0

    #@21
    .line 510
    .end local v0    # "barringMMI":[Ljava/lang/String;
    .end local v1    # "match":Ljava/lang/String;
    :cond_1
    return v4
.end method

.method static isServiceCodeCallForwarding(Ljava/lang/String;)Z
    .locals 1
    .param p0, "sc"    # Ljava/lang/String;

    #@0
    .prologue
    .line 491
    if-eqz p0, :cond_1

    #@2
    .line 492
    const-string/jumbo v0, "21"

    #@5
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8
    move-result v0

    #@9
    if-nez v0, :cond_0

    #@b
    .line 493
    const-string/jumbo v0, "67"

    #@e
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v0

    #@12
    .line 492
    if-nez v0, :cond_0

    #@14
    .line 493
    const-string/jumbo v0, "61"

    #@17
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1a
    move-result v0

    #@1b
    .line 492
    if-nez v0, :cond_0

    #@1d
    .line 494
    const-string/jumbo v0, "62"

    #@20
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@23
    move-result v0

    #@24
    .line 492
    if-nez v0, :cond_0

    #@26
    .line 494
    const-string/jumbo v0, "002"

    #@29
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2c
    move-result v0

    #@2d
    .line 492
    if-nez v0, :cond_0

    #@2f
    .line 495
    const-string/jumbo v0, "004"

    #@32
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@35
    move-result v0

    #@36
    .line 491
    :goto_0
    return v0

    #@37
    .line 492
    :cond_0
    const/4 v0, 0x1

    #@38
    goto :goto_0

    #@39
    .line 491
    :cond_1
    const/4 v0, 0x0

    #@3a
    goto :goto_0
.end method

.method private static isShortCode(Ljava/lang/String;Lcom/android/internal/telephony/gsm/GSMPhone;)Z
    .locals 2
    .param p0, "dialString"    # Ljava/lang/String;
    .param p1, "phone"    # Lcom/android/internal/telephony/gsm/GSMPhone;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 656
    if-nez p0, :cond_0

    #@3
    .line 657
    return v1

    #@4
    .line 664
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_1

    #@a
    .line 665
    return v1

    #@b
    .line 668
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    #@e
    move-result-object v0

    #@f
    invoke-static {v0, p0}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_2

    #@15
    .line 669
    return v1

    #@16
    .line 671
    :cond_2
    invoke-static {p0, p1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isShortCodeUSSD(Ljava/lang/String;Lcom/android/internal/telephony/gsm/GSMPhone;)Z

    #@19
    move-result v0

    #@1a
    return v0
.end method

.method private static isShortCodeUSSD(Ljava/lang/String;Lcom/android/internal/telephony/gsm/GSMPhone;)Z
    .locals 4
    .param p0, "dialString"    # Ljava/lang/String;
    .param p1, "phone"    # Lcom/android/internal/telephony/gsm/GSMPhone;

    #@0
    .prologue
    const/4 v1, 0x2

    #@1
    const/4 v3, 0x1

    #@2
    const/4 v2, 0x0

    #@3
    .line 691
    if-eqz p0, :cond_2

    #@5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@8
    move-result v0

    #@9
    if-gt v0, v1, :cond_2

    #@b
    .line 692
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->isInCall()Z

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_0

    #@11
    .line 693
    return v3

    #@12
    .line 696
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@15
    move-result v0

    #@16
    if-ne v0, v1, :cond_1

    #@18
    .line 697
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@1b
    move-result v0

    #@1c
    const/16 v1, 0x31

    #@1e
    if-eq v0, v1, :cond_2

    #@20
    .line 698
    :cond_1
    return v3

    #@21
    .line 701
    :cond_2
    return v2
.end method

.method private static isTwoDigitShortCode(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dialString"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 629
    const-string/jumbo v1, "GsmMmiCode"

    #@4
    const-string/jumbo v3, "isTwoDigitShortCode"

    #@7
    invoke-static {v1, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@a
    .line 631
    if-eqz p1, :cond_0

    #@c
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@f
    move-result v1

    #@10
    const/4 v3, 0x2

    #@11
    if-le v1, v3, :cond_1

    #@13
    :cond_0
    return v2

    #@14
    .line 633
    :cond_1
    sget-object v1, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sTwoDigitNumberPattern:[Ljava/lang/String;

    #@16
    if-nez v1, :cond_2

    #@18
    .line 634
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@1b
    move-result-object v1

    #@1c
    .line 635
    const v3, 0x107002b

    #@1f
    .line 634
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    sput-object v1, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sTwoDigitNumberPattern:[Ljava/lang/String;

    #@25
    .line 638
    :cond_2
    sget-object v3, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sTwoDigitNumberPattern:[Ljava/lang/String;

    #@27
    array-length v4, v3

    #@28
    move v1, v2

    #@29
    :goto_0
    if-ge v1, v4, :cond_4

    #@2b
    aget-object v0, v3, v1

    #@2d
    .line 639
    .local v0, "dialnumber":Ljava/lang/String;
    const-string/jumbo v5, "GsmMmiCode"

    #@30
    new-instance v6, Ljava/lang/StringBuilder;

    #@32
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@35
    const-string/jumbo v7, "Two Digit Number Pattern "

    #@38
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v6

    #@3c
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v6

    #@40
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v6

    #@44
    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@47
    .line 640
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4a
    move-result v5

    #@4b
    if-eqz v5, :cond_3

    #@4d
    .line 641
    const-string/jumbo v1, "GsmMmiCode"

    #@50
    const-string/jumbo v2, "Two Digit Number Pattern -true"

    #@53
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@56
    .line 642
    const/4 v1, 0x1

    #@57
    return v1

    #@58
    .line 638
    :cond_3
    add-int/lit8 v1, v1, 0x1

    #@5a
    goto :goto_0

    #@5b
    .line 645
    .end local v0    # "dialnumber":Ljava/lang/String;
    :cond_4
    const-string/jumbo v1, "GsmMmiCode"

    #@5e
    const-string/jumbo v3, "Two Digit Number Pattern -false"

    #@61
    invoke-static {v1, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@64
    .line 646
    return v2
.end method

.method private makeCFQueryResultMessage(Lcom/android/internal/telephony/CallForwardInfo;I)Ljava/lang/CharSequence;
    .locals 10
    .param p1, "info"    # Lcom/android/internal/telephony/CallForwardInfo;
    .param p2, "serviceClassMask"    # I

    #@0
    .prologue
    const/4 v6, 0x3

    #@1
    const/4 v9, 0x2

    #@2
    const/4 v8, 0x0

    #@3
    const/4 v7, 0x1

    #@4
    .line 1403
    new-array v3, v6, [Ljava/lang/String;

    #@6
    const-string/jumbo v5, "{0}"

    #@9
    aput-object v5, v3, v8

    #@b
    const-string/jumbo v5, "{1}"

    #@e
    aput-object v5, v3, v7

    #@10
    const-string/jumbo v5, "{2}"

    #@13
    aput-object v5, v3, v9

    #@15
    .line 1404
    .local v3, "sources":[Ljava/lang/String;
    new-array v1, v6, [Ljava/lang/CharSequence;

    #@17
    .line 1411
    .local v1, "destinations":[Ljava/lang/CharSequence;
    iget v5, p1, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    #@19
    if-ne v5, v9, :cond_1

    #@1b
    const/4 v2, 0x1

    #@1c
    .line 1413
    .local v2, "needTimeTemplate":Z
    :goto_0
    iget v5, p1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    #@1e
    if-ne v5, v7, :cond_3

    #@20
    .line 1414
    if-eqz v2, :cond_2

    #@22
    .line 1415
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    #@24
    .line 1416
    const v6, 0x10400ce

    #@27
    .line 1415
    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@2a
    move-result-object v4

    #@2b
    .line 1442
    .local v4, "template":Ljava/lang/CharSequence;
    :goto_1
    iget v5, p1, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    #@2d
    and-int/2addr v5, p2

    #@2e
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->serviceClassToCFString(I)Ljava/lang/CharSequence;

    #@31
    move-result-object v5

    #@32
    aput-object v5, v1, v8

    #@34
    .line 1444
    iget-object v5, p1, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    #@36
    iget v6, p1, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    #@38
    invoke-static {v5, v6}, Landroid/telephony/PhoneNumberUtils;->stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;

    #@3b
    move-result-object v5

    #@3c
    .line 1443
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->formatLtr(Ljava/lang/String;)Ljava/lang/String;

    #@3f
    move-result-object v5

    #@40
    aput-object v5, v1, v7

    #@42
    .line 1445
    iget v5, p1, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    #@44
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@47
    move-result-object v5

    #@48
    aput-object v5, v1, v9

    #@4a
    .line 1447
    iget v5, p1, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    #@4c
    if-nez v5, :cond_0

    #@4e
    .line 1448
    iget v5, p1, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    #@50
    and-int/2addr v5, p2

    #@51
    if-ne v5, v7, :cond_0

    #@53
    .line 1450
    iget v5, p1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    #@55
    if-ne v5, v7, :cond_6

    #@57
    const/4 v0, 0x1

    #@58
    .line 1451
    .local v0, "cffEnabled":Z
    :goto_2
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@5a
    if-eqz v5, :cond_0

    #@5c
    .line 1452
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@5e
    iget-object v6, p1, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    #@60
    invoke-virtual {v5, v7, v0, v6}, Lcom/android/internal/telephony/uicc/IccRecords;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    #@63
    .line 1456
    .end local v0    # "cffEnabled":Z
    :cond_0
    invoke-static {v4, v3, v1}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@66
    move-result-object v5

    #@67
    return-object v5

    #@68
    .line 1411
    .end local v2    # "needTimeTemplate":Z
    .end local v4    # "template":Ljava/lang/CharSequence;
    :cond_1
    const/4 v2, 0x0

    #@69
    .restart local v2    # "needTimeTemplate":Z
    goto :goto_0

    #@6a
    .line 1418
    :cond_2
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    #@6c
    .line 1419
    const v6, 0x10400cd

    #@6f
    .line 1418
    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@72
    move-result-object v4

    #@73
    .restart local v4    # "template":Ljava/lang/CharSequence;
    goto :goto_1

    #@74
    .line 1421
    .end local v4    # "template":Ljava/lang/CharSequence;
    :cond_3
    iget v5, p1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    #@76
    if-nez v5, :cond_4

    #@78
    iget-object v5, p1, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    #@7a
    invoke-static {v5}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isEmptyOrNull(Ljava/lang/CharSequence;)Z

    #@7d
    move-result v5

    #@7e
    if-eqz v5, :cond_4

    #@80
    .line 1422
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    #@82
    .line 1423
    const v6, 0x10400cc

    #@85
    .line 1422
    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@88
    move-result-object v4

    #@89
    .restart local v4    # "template":Ljava/lang/CharSequence;
    goto :goto_1

    #@8a
    .line 1428
    .end local v4    # "template":Ljava/lang/CharSequence;
    :cond_4
    if-eqz v2, :cond_5

    #@8c
    .line 1429
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    #@8e
    .line 1430
    const v6, 0x10400d0

    #@91
    .line 1429
    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@94
    move-result-object v4

    #@95
    .restart local v4    # "template":Ljava/lang/CharSequence;
    goto :goto_1

    #@96
    .line 1432
    .end local v4    # "template":Ljava/lang/CharSequence;
    :cond_5
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    #@98
    .line 1433
    const v6, 0x10400cf

    #@9b
    .line 1432
    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@9e
    move-result-object v4

    #@9f
    .restart local v4    # "template":Ljava/lang/CharSequence;
    goto :goto_1

    #@a0
    .line 1450
    :cond_6
    const/4 v0, 0x0

    #@a1
    .restart local v0    # "cffEnabled":Z
    goto :goto_2
.end method

.method private static makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 405
    if-eqz p0, :cond_0

    #@3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    return-object v1

    #@a
    .line 407
    :cond_0
    return-object p0
.end method

.method static newFromDialString(Ljava/lang/String;Lcom/android/internal/telephony/gsm/GSMPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)Lcom/android/internal/telephony/gsm/GsmMmiCode;
    .locals 4
    .param p0, "dialString"    # Ljava/lang/String;
    .param p1, "phone"    # Lcom/android/internal/telephony/gsm/GSMPhone;
    .param p2, "app"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@0
    .prologue
    .line 190
    const/4 v1, 0x0

    #@1
    .line 192
    .local v1, "ret":Lcom/android/internal/telephony/gsm/GsmMmiCode;
    sget-object v2, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sPatternSuppService:Ljava/util/regex/Pattern;

    #@3
    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@6
    move-result-object v0

    #@7
    .line 195
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    #@a
    move-result v2

    #@b
    if-eqz v2, :cond_1

    #@d
    .line 196
    new-instance v1, Lcom/android/internal/telephony/gsm/GsmMmiCode;

    #@f
    .end local v1    # "ret":Lcom/android/internal/telephony/gsm/GsmMmiCode;
    invoke-direct {v1, p1, p2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)V

    #@12
    .line 197
    .local v1, "ret":Lcom/android/internal/telephony/gsm/GsmMmiCode;
    const/4 v2, 0x1

    #@13
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    #@1a
    move-result-object v2

    #@1b
    iput-object v2, v1, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPoundString:Ljava/lang/String;

    #@1d
    .line 198
    const/4 v2, 0x2

    #@1e
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    #@25
    move-result-object v2

    #@26
    iput-object v2, v1, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mAction:Ljava/lang/String;

    #@28
    .line 199
    const/4 v2, 0x3

    #@29
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@2c
    move-result-object v2

    #@2d
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    #@30
    move-result-object v2

    #@31
    iput-object v2, v1, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    #@33
    .line 200
    const/4 v2, 0x5

    #@34
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@37
    move-result-object v2

    #@38
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    #@3b
    move-result-object v2

    #@3c
    iput-object v2, v1, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSia:Ljava/lang/String;

    #@3e
    .line 201
    const/4 v2, 0x7

    #@3f
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@42
    move-result-object v2

    #@43
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    #@46
    move-result-object v2

    #@47
    iput-object v2, v1, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSib:Ljava/lang/String;

    #@49
    .line 202
    const/16 v2, 0x9

    #@4b
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@4e
    move-result-object v2

    #@4f
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    #@52
    move-result-object v2

    #@53
    iput-object v2, v1, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSic:Ljava/lang/String;

    #@55
    .line 203
    const/16 v2, 0xb

    #@57
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@5a
    move-result-object v2

    #@5b
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    #@5e
    move-result-object v2

    #@5f
    iput-object v2, v1, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPwd:Ljava/lang/String;

    #@61
    .line 204
    const/16 v2, 0xc

    #@63
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@66
    move-result-object v2

    #@67
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    #@6a
    move-result-object v2

    #@6b
    iput-object v2, v1, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mDialingNumber:Ljava/lang/String;

    #@6d
    .line 210
    iget-object v2, v1, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mDialingNumber:Ljava/lang/String;

    #@6f
    if-eqz v2, :cond_0

    #@71
    .line 211
    iget-object v2, v1, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mDialingNumber:Ljava/lang/String;

    #@73
    const-string/jumbo v3, "#"

    #@76
    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@79
    move-result v2

    #@7a
    .line 210
    if-eqz v2, :cond_0

    #@7c
    .line 212
    const-string/jumbo v2, "#"

    #@7f
    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@82
    move-result v2

    #@83
    .line 210
    if-eqz v2, :cond_0

    #@85
    .line 213
    new-instance v1, Lcom/android/internal/telephony/gsm/GsmMmiCode;

    #@87
    .end local v1    # "ret":Lcom/android/internal/telephony/gsm/GsmMmiCode;
    invoke-direct {v1, p1, p2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)V

    #@8a
    .line 214
    .restart local v1    # "ret":Lcom/android/internal/telephony/gsm/GsmMmiCode;
    iput-object p0, v1, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPoundString:Ljava/lang/String;

    #@8c
    .line 232
    .end local v1    # "ret":Lcom/android/internal/telephony/gsm/GsmMmiCode;
    :cond_0
    :goto_0
    return-object v1

    #@8d
    .line 216
    .local v1, "ret":Lcom/android/internal/telephony/gsm/GsmMmiCode;
    :cond_1
    const-string/jumbo v2, "#"

    #@90
    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@93
    move-result v2

    #@94
    if-eqz v2, :cond_2

    #@96
    .line 221
    new-instance v1, Lcom/android/internal/telephony/gsm/GsmMmiCode;

    #@98
    .end local v1    # "ret":Lcom/android/internal/telephony/gsm/GsmMmiCode;
    invoke-direct {v1, p1, p2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)V

    #@9b
    .line 222
    .local v1, "ret":Lcom/android/internal/telephony/gsm/GsmMmiCode;
    iput-object p0, v1, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPoundString:Ljava/lang/String;

    #@9d
    goto :goto_0

    #@9e
    .line 223
    .local v1, "ret":Lcom/android/internal/telephony/gsm/GsmMmiCode;
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    #@a1
    move-result-object v2

    #@a2
    invoke-static {v2, p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isTwoDigitShortCode(Landroid/content/Context;Ljava/lang/String;)Z

    #@a5
    move-result v2

    #@a6
    if-eqz v2, :cond_3

    #@a8
    .line 225
    const/4 v1, 0x0

    #@a9
    goto :goto_0

    #@aa
    .line 226
    :cond_3
    invoke-static {p0, p1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isShortCode(Ljava/lang/String;Lcom/android/internal/telephony/gsm/GSMPhone;)Z

    #@ad
    move-result v2

    #@ae
    if-eqz v2, :cond_0

    #@b0
    .line 228
    new-instance v1, Lcom/android/internal/telephony/gsm/GsmMmiCode;

    #@b2
    .end local v1    # "ret":Lcom/android/internal/telephony/gsm/GsmMmiCode;
    invoke-direct {v1, p1, p2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)V

    #@b5
    .line 229
    .local v1, "ret":Lcom/android/internal/telephony/gsm/GsmMmiCode;
    iput-object p0, v1, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mDialingNumber:Ljava/lang/String;

    #@b7
    goto :goto_0
.end method

.method static newFromUssdUserInput(Ljava/lang/String;Lcom/android/internal/telephony/gsm/GSMPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)Lcom/android/internal/telephony/gsm/GsmMmiCode;
    .locals 2
    .param p0, "ussdMessge"    # Ljava/lang/String;
    .param p1, "phone"    # Lcom/android/internal/telephony/gsm/GSMPhone;
    .param p2, "app"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@0
    .prologue
    .line 259
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;

    #@2
    invoke-direct {v0, p1, p2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)V

    #@5
    .line 261
    .local v0, "ret":Lcom/android/internal/telephony/gsm/GsmMmiCode;
    iput-object p0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mMessage:Ljava/lang/CharSequence;

    #@7
    .line 262
    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    #@9
    iput-object v1, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    #@b
    .line 263
    const/4 v1, 0x1

    #@c
    iput-boolean v1, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mIsPendingUSSD:Z

    #@e
    .line 265
    return-object v0
.end method

.method static newNetworkInitiatedUssd(Ljava/lang/String;ZLcom/android/internal/telephony/gsm/GSMPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)Lcom/android/internal/telephony/gsm/GsmMmiCode;
    .locals 2
    .param p0, "ussdMessage"    # Ljava/lang/String;
    .param p1, "isUssdRequest"    # Z
    .param p2, "phone"    # Lcom/android/internal/telephony/gsm/GSMPhone;
    .param p3, "app"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@0
    .prologue
    .line 240
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;

    #@2
    invoke-direct {v0, p2, p3}, Lcom/android/internal/telephony/gsm/GsmMmiCode;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)V

    #@5
    .line 242
    .local v0, "ret":Lcom/android/internal/telephony/gsm/GsmMmiCode;
    iput-object p0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mMessage:Ljava/lang/CharSequence;

    #@7
    .line 243
    iput-boolean p1, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mIsUssdRequest:Z

    #@9
    .line 246
    if-eqz p1, :cond_0

    #@b
    .line 247
    const/4 v1, 0x1

    #@c
    iput-boolean v1, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mIsPendingUSSD:Z

    #@e
    .line 248
    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    #@10
    iput-object v1, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    #@12
    .line 253
    :goto_0
    return-object v0

    #@13
    .line 250
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    #@15
    iput-object v1, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    #@17
    goto :goto_0
.end method

.method private onGetClirComplete(Landroid/os/AsyncResult;)V
    .locals 6
    .param p1, "ar"    # Landroid/os/AsyncResult;

    #@0
    .prologue
    const v5, 0x104009f

    #@3
    const v4, 0x104009c

    #@6
    const/4 v3, 0x0

    #@7
    .line 1289
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->getScString()Ljava/lang/CharSequence;

    #@c
    move-result-object v2

    #@d
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    #@10
    .line 1290
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "\n"

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    .line 1292
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@18
    if-eqz v2, :cond_0

    #@1a
    .line 1293
    sget-object v2, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    #@1c
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    #@1e
    .line 1294
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->getErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@25
    .line 1364
    :goto_0
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mMessage:Ljava/lang/CharSequence;

    #@27
    .line 1365
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    #@29
    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->onMMIDone(Lcom/android/internal/telephony/gsm/GsmMmiCode;)V

    #@2c
    .line 1288
    return-void

    #@2d
    .line 1298
    :cond_0
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@2f
    check-cast v0, [I

    #@31
    .line 1301
    .local v0, "clirArgs":[I
    const/4 v2, 0x1

    #@32
    aget v2, v0, v2

    #@34
    packed-switch v2, :pswitch_data_0

    #@37
    goto :goto_0

    #@38
    .line 1303
    :pswitch_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    #@3a
    .line 1304
    const v3, 0x10400a0

    #@3d
    .line 1303
    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@40
    move-result-object v2

    #@41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@44
    .line 1305
    sget-object v2, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    #@46
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    #@48
    goto :goto_0

    #@49
    .line 1309
    :pswitch_1
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    #@4b
    .line 1310
    const v3, 0x10400a1

    #@4e
    .line 1309
    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@51
    move-result-object v2

    #@52
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@55
    .line 1311
    sget-object v2, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    #@57
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    #@59
    goto :goto_0

    #@5a
    .line 1315
    :pswitch_2
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    #@5c
    .line 1316
    const v3, 0x104007a

    #@5f
    .line 1315
    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@62
    move-result-object v2

    #@63
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@66
    .line 1317
    sget-object v2, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    #@68
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    #@6a
    goto :goto_0

    #@6b
    .line 1323
    :pswitch_3
    aget v2, v0, v3

    #@6d
    packed-switch v2, :pswitch_data_1

    #@70
    .line 1326
    :pswitch_4
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    #@72
    invoke-virtual {v2, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@75
    move-result-object v2

    #@76
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@79
    .line 1338
    :goto_1
    sget-object v2, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    #@7b
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    #@7d
    goto :goto_0

    #@7e
    .line 1330
    :pswitch_5
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    #@80
    invoke-virtual {v2, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@83
    move-result-object v2

    #@84
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@87
    goto :goto_1

    #@88
    .line 1334
    :pswitch_6
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    #@8a
    .line 1335
    const v3, 0x104009d

    #@8d
    .line 1334
    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@90
    move-result-object v2

    #@91
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@94
    goto :goto_1

    #@95
    .line 1343
    :pswitch_7
    aget v2, v0, v3

    #@97
    packed-switch v2, :pswitch_data_2

    #@9a
    .line 1346
    :pswitch_8
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    #@9c
    invoke-virtual {v2, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@9f
    move-result-object v2

    #@a0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@a3
    .line 1359
    :goto_2
    sget-object v2, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    #@a5
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    #@a7
    goto/16 :goto_0

    #@a9
    .line 1350
    :pswitch_9
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    #@ab
    .line 1351
    const v3, 0x104009e

    #@ae
    .line 1350
    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@b1
    move-result-object v2

    #@b2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@b5
    goto :goto_2

    #@b6
    .line 1354
    :pswitch_a
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    #@b8
    invoke-virtual {v2, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@bb
    move-result-object v2

    #@bc
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@bf
    goto :goto_2

    #@c0
    .line 1301
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_7
    .end packed-switch

    #@ce
    .line 1323
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    #@d8
    .line 1343
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method private onQueryCfComplete(Landroid/os/AsyncResult;)V
    .locals 10
    .param p1, "ar"    # Landroid/os/AsyncResult;

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    const/4 v8, 0x0

    #@2
    .line 1469
    new-instance v3, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->getScString()Ljava/lang/CharSequence;

    #@7
    move-result-object v6

    #@8
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    #@b
    .line 1470
    .local v3, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v6, "\n"

    #@e
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    .line 1472
    iget-object v6, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@13
    if-eqz v6, :cond_0

    #@15
    .line 1473
    sget-object v6, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    #@17
    iput-object v6, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    #@19
    .line 1474
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->getErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;

    #@1c
    move-result-object v6

    #@1d
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@20
    .line 1516
    :goto_0
    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mMessage:Ljava/lang/CharSequence;

    #@22
    .line 1517
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    #@24
    invoke-virtual {v6, p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->onMMIDone(Lcom/android/internal/telephony/gsm/GsmMmiCode;)V

    #@27
    .line 1468
    return-void

    #@28
    .line 1478
    :cond_0
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@2a
    check-cast v1, [Lcom/android/internal/telephony/CallForwardInfo;

    #@2c
    .line 1480
    .local v1, "infos":[Lcom/android/internal/telephony/CallForwardInfo;
    array-length v6, v1

    #@2d
    if-nez v6, :cond_2

    #@2f
    .line 1482
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    #@31
    const v7, 0x104007e

    #@34
    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@37
    move-result-object v6

    #@38
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@3b
    .line 1485
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@3d
    if-eqz v6, :cond_1

    #@3f
    .line 1486
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@41
    const/4 v7, 0x1

    #@42
    invoke-virtual {v6, v7, v8, v9}, Lcom/android/internal/telephony/uicc/IccRecords;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    #@45
    .line 1513
    :cond_1
    :goto_1
    sget-object v6, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    #@47
    iput-object v6, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    #@49
    goto :goto_0

    #@4a
    .line 1490
    :cond_2
    new-instance v5, Landroid/text/SpannableStringBuilder;

    #@4c
    invoke-direct {v5}, Landroid/text/SpannableStringBuilder;-><init>()V

    #@4f
    .line 1498
    .local v5, "tb":Landroid/text/SpannableStringBuilder;
    const/4 v4, 0x1

    #@50
    .line 1499
    .local v4, "serviceClassMask":I
    :goto_2
    const/16 v6, 0x80

    #@52
    .line 1498
    if-gt v4, v6, :cond_5

    #@54
    .line 1502
    const/4 v0, 0x0

    #@55
    .local v0, "i":I
    array-length v2, v1

    #@56
    .local v2, "s":I
    :goto_3
    if-ge v0, v2, :cond_4

    #@58
    .line 1503
    aget-object v6, v1, v0

    #@5a
    iget v6, v6, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    #@5c
    and-int/2addr v6, v4

    #@5d
    if-eqz v6, :cond_3

    #@5f
    .line 1504
    aget-object v6, v1, v0

    #@61
    invoke-direct {p0, v6, v4}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->makeCFQueryResultMessage(Lcom/android/internal/telephony/CallForwardInfo;I)Ljava/lang/CharSequence;

    #@64
    move-result-object v6

    #@65
    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    #@68
    .line 1506
    const-string/jumbo v6, "\n"

    #@6b
    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    #@6e
    .line 1502
    :cond_3
    add-int/lit8 v0, v0, 0x1

    #@70
    goto :goto_3

    #@71
    .line 1500
    :cond_4
    shl-int/lit8 v4, v4, 0x1

    #@73
    goto :goto_2

    #@74
    .line 1510
    .end local v0    # "i":I
    .end local v2    # "s":I
    :cond_5
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@77
    goto :goto_1
.end method

.method private onQueryComplete(Landroid/os/AsyncResult;)V
    .locals 7
    .param p1, "ar"    # Landroid/os/AsyncResult;

    #@0
    .prologue
    const v6, 0x104007a

    #@3
    const/4 v5, 0x1

    #@4
    const/4 v4, 0x0

    #@5
    .line 1523
    new-instance v1, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->getScString()Ljava/lang/CharSequence;

    #@a
    move-result-object v2

    #@b
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    #@e
    .line 1524
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "\n"

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    .line 1526
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@16
    if-eqz v2, :cond_0

    #@18
    .line 1527
    sget-object v2, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    #@1a
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    #@1c
    .line 1528
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->getErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@23
    .line 1553
    :goto_0
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mMessage:Ljava/lang/CharSequence;

    #@25
    .line 1554
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    #@27
    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->onMMIDone(Lcom/android/internal/telephony/gsm/GsmMmiCode;)V

    #@2a
    .line 1522
    return-void

    #@2b
    .line 1530
    :cond_0
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@2d
    check-cast v0, [I

    #@2f
    .line 1532
    .local v0, "ints":[I
    array-length v2, v0

    #@30
    if-eqz v2, :cond_5

    #@32
    .line 1533
    aget v2, v0, v4

    #@34
    if-nez v2, :cond_1

    #@36
    .line 1534
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    #@38
    const v3, 0x104007e

    #@3b
    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@3e
    move-result-object v2

    #@3f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@42
    .line 1550
    :goto_1
    sget-object v2, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    #@44
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    #@46
    goto :goto_0

    #@47
    .line 1535
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    #@49
    const-string/jumbo v3, "43"

    #@4c
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4f
    move-result v2

    #@50
    if-eqz v2, :cond_2

    #@52
    .line 1537
    aget v2, v0, v5

    #@54
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->createQueryCallWaitingResultMessage(I)Ljava/lang/CharSequence;

    #@57
    move-result-object v2

    #@58
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@5b
    goto :goto_1

    #@5c
    .line 1538
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    #@5e
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isServiceCodeCallBarring(Ljava/lang/String;)Z

    #@61
    move-result v2

    #@62
    if-eqz v2, :cond_3

    #@64
    .line 1540
    aget v2, v0, v4

    #@66
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->createQueryCallBarringResultMessage(I)Ljava/lang/CharSequence;

    #@69
    move-result-object v2

    #@6a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@6d
    goto :goto_1

    #@6e
    .line 1541
    :cond_3
    aget v2, v0, v4

    #@70
    if-ne v2, v5, :cond_4

    #@72
    .line 1543
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    #@74
    const v3, 0x104007c

    #@77
    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@7a
    move-result-object v2

    #@7b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@7e
    goto :goto_1

    #@7f
    .line 1545
    :cond_4
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    #@81
    invoke-virtual {v2, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@84
    move-result-object v2

    #@85
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@88
    goto :goto_1

    #@89
    .line 1548
    :cond_5
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    #@8b
    invoke-virtual {v2, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@8e
    move-result-object v2

    #@8f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@92
    goto :goto_1
.end method

.method private onSetComplete(Landroid/os/Message;Landroid/os/AsyncResult;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "ar"    # Landroid/os/AsyncResult;

    #@0
    .prologue
    const v8, 0x1040083

    #@3
    const v5, 0x104007f

    #@6
    const v4, 0x104007a

    #@9
    const/4 v7, 0x1

    #@a
    const/4 v6, 0x0

    #@b
    .line 1194
    new-instance v2, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->getScString()Ljava/lang/CharSequence;

    #@10
    move-result-object v3

    #@11
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    #@14
    .line 1195
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v3, "\n"

    #@17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    .line 1197
    iget-object v3, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@1c
    if-eqz v3, :cond_a

    #@1e
    .line 1198
    sget-object v3, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    #@20
    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    #@22
    .line 1199
    iget-object v3, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@24
    instance-of v3, v3, Lcom/android/internal/telephony/CommandException;

    #@26
    if-eqz v3, :cond_9

    #@28
    .line 1200
    iget-object v3, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@2a
    check-cast v3, Lcom/android/internal/telephony/CommandException;

    #@2c
    invoke-virtual {v3}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    #@2f
    move-result-object v1

    #@30
    .line 1201
    .local v1, "err":Lcom/android/internal/telephony/CommandException$Error;
    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    #@32
    if-ne v1, v3, :cond_5

    #@34
    .line 1202
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isPinPukCommand()Z

    #@37
    move-result v3

    #@38
    if-eqz v3, :cond_4

    #@3a
    .line 1205
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    #@3c
    const-string/jumbo v4, "05"

    #@3f
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@42
    move-result v3

    #@43
    if-nez v3, :cond_0

    #@45
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    #@47
    const-string/jumbo v4, "052"

    #@4a
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4d
    move-result v3

    #@4e
    if-eqz v3, :cond_2

    #@50
    .line 1206
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    #@52
    .line 1207
    const v4, 0x1040084

    #@55
    .line 1206
    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@58
    move-result-object v3

    #@59
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@5c
    .line 1213
    :goto_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    #@5e
    .line 1214
    .local v0, "attemptsRemaining":I
    if-gtz v0, :cond_3

    #@60
    .line 1215
    const-string/jumbo v3, "GsmMmiCode"

    #@63
    const-string/jumbo v4, "onSetComplete: PUK locked, cancel as lock screen will handle this"

    #@66
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@69
    .line 1217
    sget-object v3, Lcom/android/internal/telephony/MmiCode$State;->CANCELLED:Lcom/android/internal/telephony/MmiCode$State;

    #@6b
    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    #@6d
    .line 1283
    .end local v0    # "attemptsRemaining":I
    .end local v1    # "err":Lcom/android/internal/telephony/CommandException$Error;
    :cond_1
    :goto_1
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mMessage:Ljava/lang/CharSequence;

    #@6f
    .line 1284
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    #@71
    invoke-virtual {v3, p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->onMMIDone(Lcom/android/internal/telephony/gsm/GsmMmiCode;)V

    #@74
    .line 1193
    return-void

    #@75
    .line 1209
    .restart local v1    # "err":Lcom/android/internal/telephony/CommandException$Error;
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    #@77
    invoke-virtual {v3, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@7a
    move-result-object v3

    #@7b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@7e
    goto :goto_0

    #@7f
    .line 1218
    .restart local v0    # "attemptsRemaining":I
    :cond_3
    if-lez v0, :cond_1

    #@81
    .line 1219
    const-string/jumbo v3, "GsmMmiCode"

    #@84
    new-instance v4, Ljava/lang/StringBuilder;

    #@86
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@89
    const-string/jumbo v5, "onSetComplete: attemptsRemaining="

    #@8c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v4

    #@90
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@93
    move-result-object v4

    #@94
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@97
    move-result-object v4

    #@98
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@9b
    .line 1220
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    #@9d
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@a0
    move-result-object v3

    #@a1
    new-array v4, v7, [Ljava/lang/Object;

    #@a3
    .line 1222
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@a6
    move-result-object v5

    #@a7
    aput-object v5, v4, v6

    #@a9
    .line 1221
    const/high16 v5, 0x1140000

    #@ab
    .line 1220
    invoke-virtual {v3, v5, v0, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    #@ae
    move-result-object v3

    #@af
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b2
    goto :goto_1

    #@b3
    .line 1225
    .end local v0    # "attemptsRemaining":I
    :cond_4
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    #@b5
    .line 1226
    const v4, 0x1040081

    #@b8
    .line 1225
    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@bb
    move-result-object v3

    #@bc
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@bf
    goto :goto_1

    #@c0
    .line 1228
    :cond_5
    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->SIM_PUK2:Lcom/android/internal/telephony/CommandException$Error;

    #@c2
    if-ne v1, v3, :cond_6

    #@c4
    .line 1229
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    #@c6
    invoke-virtual {v3, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@c9
    move-result-object v3

    #@ca
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@cd
    .line 1231
    const-string/jumbo v3, "\n"

    #@d0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d3
    .line 1232
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    #@d5
    .line 1233
    const v4, 0x1040089

    #@d8
    .line 1232
    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@db
    move-result-object v3

    #@dc
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@df
    goto :goto_1

    #@e0
    .line 1234
    :cond_6
    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    #@e2
    if-ne v1, v3, :cond_7

    #@e4
    .line 1235
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    #@e6
    const-string/jumbo v4, "04"

    #@e9
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ec
    move-result v3

    #@ed
    if-eqz v3, :cond_1

    #@ef
    .line 1236
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    #@f1
    const v4, 0x104008a

    #@f4
    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@f7
    move-result-object v3

    #@f8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@fb
    goto/16 :goto_1

    #@fd
    .line 1238
    :cond_7
    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->FDN_CHECK_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    #@ff
    if-ne v1, v3, :cond_8

    #@101
    .line 1239
    const-string/jumbo v3, "GsmMmiCode"

    #@104
    const-string/jumbo v4, "FDN_CHECK_FAILURE"

    #@107
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@10a
    .line 1240
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    #@10c
    const v4, 0x104007b

    #@10f
    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@112
    move-result-object v3

    #@113
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@116
    goto/16 :goto_1

    #@118
    .line 1242
    :cond_8
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->getErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;

    #@11b
    move-result-object v3

    #@11c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@11f
    goto/16 :goto_1

    #@121
    .line 1245
    .end local v1    # "err":Lcom/android/internal/telephony/CommandException$Error;
    :cond_9
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    #@123
    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@126
    move-result-object v3

    #@127
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@12a
    goto/16 :goto_1

    #@12c
    .line 1248
    :cond_a
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isActivate()Z

    #@12f
    move-result v3

    #@130
    if-eqz v3, :cond_c

    #@132
    .line 1249
    sget-object v3, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    #@134
    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    #@136
    .line 1250
    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mIsCallFwdReg:Z

    #@138
    if-eqz v3, :cond_b

    #@13a
    .line 1251
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    #@13c
    invoke-virtual {v3, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@13f
    move-result-object v3

    #@140
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@143
    .line 1258
    :goto_2
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    #@145
    const-string/jumbo v4, "31"

    #@148
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@14b
    move-result v3

    #@14c
    if-eqz v3, :cond_1

    #@14e
    .line 1259
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    #@150
    invoke-virtual {v3, v7}, Lcom/android/internal/telephony/gsm/GSMPhone;->saveClirSetting(I)V

    #@153
    goto/16 :goto_1

    #@155
    .line 1254
    :cond_b
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    #@157
    .line 1255
    const v4, 0x104007c

    #@15a
    .line 1254
    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@15d
    move-result-object v3

    #@15e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@161
    goto :goto_2

    #@162
    .line 1261
    :cond_c
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isDeactivate()Z

    #@165
    move-result v3

    #@166
    if-eqz v3, :cond_d

    #@168
    .line 1262
    sget-object v3, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    #@16a
    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    #@16c
    .line 1263
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    #@16e
    .line 1264
    const v4, 0x104007e

    #@171
    .line 1263
    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@174
    move-result-object v3

    #@175
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@178
    .line 1266
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    #@17a
    const-string/jumbo v4, "31"

    #@17d
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@180
    move-result v3

    #@181
    if-eqz v3, :cond_1

    #@183
    .line 1267
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    #@185
    const/4 v4, 0x2

    #@186
    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->saveClirSetting(I)V

    #@189
    goto/16 :goto_1

    #@18b
    .line 1269
    :cond_d
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isRegister()Z

    #@18e
    move-result v3

    #@18f
    if-eqz v3, :cond_e

    #@191
    .line 1270
    sget-object v3, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    #@193
    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    #@195
    .line 1271
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    #@197
    invoke-virtual {v3, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@19a
    move-result-object v3

    #@19b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@19e
    goto/16 :goto_1

    #@1a0
    .line 1273
    :cond_e
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isErasure()Z

    #@1a3
    move-result v3

    #@1a4
    if-eqz v3, :cond_f

    #@1a6
    .line 1274
    sget-object v3, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    #@1a8
    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    #@1aa
    .line 1275
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    #@1ac
    .line 1276
    const v4, 0x1040080

    #@1af
    .line 1275
    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@1b2
    move-result-object v3

    #@1b3
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@1b6
    goto/16 :goto_1

    #@1b8
    .line 1278
    :cond_f
    sget-object v3, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    #@1ba
    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    #@1bc
    .line 1279
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    #@1be
    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@1c1
    move-result-object v3

    #@1c2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@1c5
    goto/16 :goto_1
.end method

.method static scToBarringFacility(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "sc"    # Ljava/lang/String;

    #@0
    .prologue
    .line 515
    if-nez p0, :cond_0

    #@2
    .line 516
    new-instance v0, Ljava/lang/RuntimeException;

    #@4
    const-string/jumbo v1, "invalid call barring sc"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 519
    :cond_0
    const-string/jumbo v0, "33"

    #@e
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_1

    #@14
    .line 520
    const-string/jumbo v0, "AO"

    #@17
    return-object v0

    #@18
    .line 521
    :cond_1
    const-string/jumbo v0, "331"

    #@1b
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1e
    move-result v0

    #@1f
    if-eqz v0, :cond_2

    #@21
    .line 522
    const-string/jumbo v0, "OI"

    #@24
    return-object v0

    #@25
    .line 523
    :cond_2
    const-string/jumbo v0, "332"

    #@28
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2b
    move-result v0

    #@2c
    if-eqz v0, :cond_3

    #@2e
    .line 524
    const-string/jumbo v0, "OX"

    #@31
    return-object v0

    #@32
    .line 525
    :cond_3
    const-string/jumbo v0, "35"

    #@35
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@38
    move-result v0

    #@39
    if-eqz v0, :cond_4

    #@3b
    .line 526
    const-string/jumbo v0, "AI"

    #@3e
    return-object v0

    #@3f
    .line 527
    :cond_4
    const-string/jumbo v0, "351"

    #@42
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@45
    move-result v0

    #@46
    if-eqz v0, :cond_5

    #@48
    .line 528
    const-string/jumbo v0, "IR"

    #@4b
    return-object v0

    #@4c
    .line 529
    :cond_5
    const-string/jumbo v0, "330"

    #@4f
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@52
    move-result v0

    #@53
    if-eqz v0, :cond_6

    #@55
    .line 530
    const-string/jumbo v0, "AB"

    #@58
    return-object v0

    #@59
    .line 531
    :cond_6
    const-string/jumbo v0, "333"

    #@5c
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5f
    move-result v0

    #@60
    if-eqz v0, :cond_7

    #@62
    .line 532
    const-string/jumbo v0, "AG"

    #@65
    return-object v0

    #@66
    .line 533
    :cond_7
    const-string/jumbo v0, "353"

    #@69
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6c
    move-result v0

    #@6d
    if-eqz v0, :cond_8

    #@6f
    .line 534
    const-string/jumbo v0, "AC"

    #@72
    return-object v0

    #@73
    .line 536
    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    #@75
    const-string/jumbo v1, "invalid call barring sc"

    #@78
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@7b
    throw v0
.end method

.method private static scToCallForwardReason(Ljava/lang/String;)I
    .locals 2
    .param p0, "sc"    # Ljava/lang/String;

    #@0
    .prologue
    .line 419
    if-nez p0, :cond_0

    #@2
    .line 420
    new-instance v0, Ljava/lang/RuntimeException;

    #@4
    const-string/jumbo v1, "invalid call forward sc"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 423
    :cond_0
    const-string/jumbo v0, "002"

    #@e
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_1

    #@14
    .line 424
    const/4 v0, 0x4

    #@15
    return v0

    #@16
    .line 425
    :cond_1
    const-string/jumbo v0, "21"

    #@19
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1c
    move-result v0

    #@1d
    if-eqz v0, :cond_2

    #@1f
    .line 426
    const/4 v0, 0x0

    #@20
    return v0

    #@21
    .line 427
    :cond_2
    const-string/jumbo v0, "67"

    #@24
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@27
    move-result v0

    #@28
    if-eqz v0, :cond_3

    #@2a
    .line 428
    const/4 v0, 0x1

    #@2b
    return v0

    #@2c
    .line 429
    :cond_3
    const-string/jumbo v0, "62"

    #@2f
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@32
    move-result v0

    #@33
    if-eqz v0, :cond_4

    #@35
    .line 430
    const/4 v0, 0x3

    #@36
    return v0

    #@37
    .line 431
    :cond_4
    const-string/jumbo v0, "61"

    #@3a
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3d
    move-result v0

    #@3e
    if-eqz v0, :cond_5

    #@40
    .line 432
    const/4 v0, 0x2

    #@41
    return v0

    #@42
    .line 433
    :cond_5
    const-string/jumbo v0, "004"

    #@45
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@48
    move-result v0

    #@49
    if-eqz v0, :cond_6

    #@4b
    .line 434
    const/4 v0, 0x5

    #@4c
    return v0

    #@4d
    .line 436
    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    #@4f
    const-string/jumbo v1, "invalid call forward sc"

    #@52
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@55
    throw v0
.end method

.method private serviceClassToCFString(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "serviceClass"    # I

    #@0
    .prologue
    .line 1376
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 1394
    const/4 v0, 0x0

    #@4
    return-object v0

    #@5
    .line 1378
    :sswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    #@7
    const v1, 0x10400af

    #@a
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@d
    move-result-object v0

    #@e
    return-object v0

    #@f
    .line 1380
    :sswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    #@11
    const v1, 0x10400b0

    #@14
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@17
    move-result-object v0

    #@18
    return-object v0

    #@19
    .line 1382
    :sswitch_2
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    #@1b
    const v1, 0x10400b1

    #@1e
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@21
    move-result-object v0

    #@22
    return-object v0

    #@23
    .line 1384
    :sswitch_3
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    #@25
    const v1, 0x10400b2

    #@28
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@2b
    move-result-object v0

    #@2c
    return-object v0

    #@2d
    .line 1386
    :sswitch_4
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    #@2f
    const v1, 0x10400b4

    #@32
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@35
    move-result-object v0

    #@36
    return-object v0

    #@37
    .line 1388
    :sswitch_5
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    #@39
    const v1, 0x10400b3

    #@3c
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@3f
    move-result-object v0

    #@40
    return-object v0

    #@41
    .line 1390
    :sswitch_6
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    #@43
    const v1, 0x10400b5

    #@46
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@49
    move-result-object v0

    #@4a
    return-object v0

    #@4b
    .line 1392
    :sswitch_7
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    #@4d
    const v1, 0x10400b6

    #@50
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@53
    move-result-object v0

    #@54
    return-object v0

    #@55
    .line 1376
    nop

    #@56
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_3
        0x10 -> :sswitch_4
        0x20 -> :sswitch_5
        0x40 -> :sswitch_6
        0x80 -> :sswitch_7
    .end sparse-switch
.end method

.method private static siToServiceClass(Ljava/lang/String;)I
    .locals 4
    .param p0, "si"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 442
    if-eqz p0, :cond_0

    #@3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@6
    move-result v1

    #@7
    if-nez v1, :cond_1

    #@9
    .line 443
    :cond_0
    return v2

    #@a
    .line 446
    :cond_1
    const/16 v1, 0xa

    #@c
    invoke-static {p0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    #@f
    move-result v0

    #@10
    .line 448
    .local v0, "serviceCode":I
    sparse-switch v0, :sswitch_data_0

    #@13
    .line 474
    new-instance v1, Ljava/lang/RuntimeException;

    #@15
    new-instance v2, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v3, "unsupported MMI service code "

    #@1d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v2

    #@29
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v1

    #@2d
    .line 449
    :sswitch_0
    const/16 v1, 0xd

    #@2f
    return v1

    #@30
    .line 450
    :sswitch_1
    const/4 v1, 0x1

    #@31
    return v1

    #@32
    .line 451
    :sswitch_2
    const/16 v1, 0xc

    #@34
    return v1

    #@35
    .line 452
    :sswitch_3
    const/4 v1, 0x4

    #@36
    return v1

    #@37
    .line 454
    :sswitch_4
    const/16 v1, 0x8

    #@39
    return v1

    #@3a
    .line 456
    :sswitch_5
    const/4 v1, 0x5

    #@3b
    return v1

    #@3c
    .line 464
    :sswitch_6
    const/16 v1, 0x30

    #@3e
    return v1

    #@3f
    .line 466
    :sswitch_7
    const/16 v1, 0xa0

    #@41
    return v1

    #@42
    .line 467
    :sswitch_8
    const/16 v1, 0x50

    #@44
    return v1

    #@45
    .line 468
    :sswitch_9
    const/16 v1, 0x10

    #@47
    return v1

    #@48
    .line 469
    :sswitch_a
    const/16 v1, 0x20

    #@4a
    return v1

    #@4b
    .line 470
    :sswitch_b
    const/16 v1, 0x11

    #@4d
    return v1

    #@4e
    .line 471
    :sswitch_c
    const/16 v1, 0x40

    #@50
    return v1

    #@51
    .line 448
    nop

    #@52
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0xb -> :sswitch_1
        0xc -> :sswitch_2
        0xd -> :sswitch_3
        0x10 -> :sswitch_4
        0x13 -> :sswitch_5
        0x14 -> :sswitch_6
        0x15 -> :sswitch_7
        0x16 -> :sswitch_8
        0x18 -> :sswitch_9
        0x19 -> :sswitch_a
        0x1a -> :sswitch_b
        0x63 -> :sswitch_c
    .end sparse-switch
.end method

.method private static siToTime(Ljava/lang/String;)I
    .locals 2
    .param p0, "si"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 481
    if-eqz p0, :cond_0

    #@3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_1

    #@9
    .line 482
    :cond_0
    return v1

    #@a
    .line 485
    :cond_1
    const/16 v0, 0xa

    #@c
    invoke-static {p0, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    #@f
    move-result v0

    #@10
    return v0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    #@0
    .prologue
    .line 578
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    #@2
    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    #@4
    if-eq v0, v1, :cond_0

    #@6
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    #@8
    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    #@a
    if-ne v0, v1, :cond_1

    #@c
    .line 579
    :cond_0
    return-void

    #@d
    .line 582
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/MmiCode$State;->CANCELLED:Lcom/android/internal/telephony/MmiCode$State;

    #@f
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    #@11
    .line 584
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mIsPendingUSSD:Z

    #@13
    if-eqz v0, :cond_2

    #@15
    .line 589
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    #@17
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@19
    const/4 v1, 0x7

    #@1a
    invoke-virtual {p0, v1, p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@1d
    move-result-object v1

    #@1e
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->cancelPendingUssd(Landroid/os/Message;)V

    #@21
    .line 576
    :goto_0
    return-void

    #@22
    .line 600
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    #@24
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->onMMIDone(Lcom/android/internal/telephony/gsm/GsmMmiCode;)V

    #@27
    goto :goto_0
.end method

.method getCLIRMode()I
    .locals 2

    #@0
    .prologue
    .line 731
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    #@2
    if-eqz v0, :cond_1

    #@4
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    #@6
    const-string/jumbo v1, "31"

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_1

    #@f
    .line 732
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isActivate()Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_0

    #@15
    .line 733
    const/4 v0, 0x2

    #@16
    return v0

    #@17
    .line 734
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isDeactivate()Z

    #@1a
    move-result v0

    #@1b
    if-eqz v0, :cond_1

    #@1d
    .line 735
    const/4 v0, 0x1

    #@1e
    return v0

    #@1f
    .line 739
    :cond_1
    const/4 v0, 0x0

    #@20
    return v0
.end method

.method public getMessage()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 565
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mMessage:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public getPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    #@0
    .prologue
    .line 570
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    #@2
    return-object v0
.end method

.method public getState()Lcom/android/internal/telephony/MmiCode$State;
    .locals 1

    #@0
    .prologue
    .line 559
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    #@2
    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 1076
    iget v2, p1, Landroid/os/Message;->what:I

    #@3
    packed-switch v2, :pswitch_data_0

    #@6
    .line 1073
    :cond_0
    :goto_0
    return-void

    #@7
    .line 1078
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@9
    check-cast v0, Landroid/os/AsyncResult;

    #@b
    .line 1080
    .local v0, "ar":Landroid/os/AsyncResult;
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->onSetComplete(Landroid/os/Message;Landroid/os/AsyncResult;)V

    #@e
    goto :goto_0

    #@f
    .line 1084
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@11
    check-cast v0, Landroid/os/AsyncResult;

    #@13
    .line 1090
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@15
    if-nez v2, :cond_1

    #@17
    iget v2, p1, Landroid/os/Message;->arg1:I

    #@19
    if-ne v2, v4, :cond_1

    #@1b
    .line 1091
    iget v2, p1, Landroid/os/Message;->arg2:I

    #@1d
    if-ne v2, v4, :cond_2

    #@1f
    const/4 v1, 0x1

    #@20
    .line 1092
    .local v1, "cffEnabled":Z
    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@22
    if-eqz v2, :cond_1

    #@24
    .line 1093
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@26
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mDialingNumber:Ljava/lang/String;

    #@28
    invoke-virtual {v2, v4, v1, v3}, Lcom/android/internal/telephony/uicc/IccRecords;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    #@2b
    .line 1097
    .end local v1    # "cffEnabled":Z
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->onSetComplete(Landroid/os/Message;Landroid/os/AsyncResult;)V

    #@2e
    goto :goto_0

    #@2f
    .line 1091
    :cond_2
    const/4 v1, 0x0

    #@30
    .restart local v1    # "cffEnabled":Z
    goto :goto_1

    #@31
    .line 1101
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "cffEnabled":Z
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@33
    check-cast v0, Landroid/os/AsyncResult;

    #@35
    .line 1102
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->onGetClirComplete(Landroid/os/AsyncResult;)V

    #@38
    goto :goto_0

    #@39
    .line 1106
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@3b
    check-cast v0, Landroid/os/AsyncResult;

    #@3d
    .line 1107
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->onQueryCfComplete(Landroid/os/AsyncResult;)V

    #@40
    goto :goto_0

    #@41
    .line 1111
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@43
    check-cast v0, Landroid/os/AsyncResult;

    #@45
    .line 1112
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->onQueryComplete(Landroid/os/AsyncResult;)V

    #@48
    goto :goto_0

    #@49
    .line 1116
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@4b
    check-cast v0, Landroid/os/AsyncResult;

    #@4d
    .line 1118
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@4f
    if-eqz v2, :cond_0

    #@51
    .line 1119
    sget-object v2, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    #@53
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    #@55
    .line 1120
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->getErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;

    #@58
    move-result-object v2

    #@59
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mMessage:Ljava/lang/CharSequence;

    #@5b
    .line 1122
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    #@5d
    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->onMMIDone(Lcom/android/internal/telephony/gsm/GsmMmiCode;)V

    #@60
    goto :goto_0

    #@61
    .line 1133
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_6
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    #@63
    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->onMMIDone(Lcom/android/internal/telephony/gsm/GsmMmiCode;)V

    #@66
    goto :goto_0

    #@67
    .line 1076
    nop

    #@68
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_1
        :pswitch_6
    .end packed-switch
.end method

.method isActivate()Z
    .locals 2

    #@0
    .prologue
    .line 743
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mAction:Ljava/lang/String;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mAction:Ljava/lang/String;

    #@6
    const-string/jumbo v1, "*"

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v0

    #@d
    :goto_0
    return v0

    #@e
    :cond_0
    const/4 v0, 0x0

    #@f
    goto :goto_0
.end method

.method public isCancelable()Z
    .locals 1

    #@0
    .prologue
    .line 608
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mIsPendingUSSD:Z

    #@2
    return v0
.end method

.method isDeactivate()Z
    .locals 2

    #@0
    .prologue
    .line 747
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mAction:Ljava/lang/String;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mAction:Ljava/lang/String;

    #@6
    const-string/jumbo v1, "#"

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v0

    #@d
    :goto_0
    return v0

    #@e
    :cond_0
    const/4 v0, 0x0

    #@f
    goto :goto_0
.end method

.method isErasure()Z
    .locals 2

    #@0
    .prologue
    .line 759
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mAction:Ljava/lang/String;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mAction:Ljava/lang/String;

    #@6
    const-string/jumbo v1, "##"

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v0

    #@d
    :goto_0
    return v0

    #@e
    :cond_0
    const/4 v0, 0x0

    #@f
    goto :goto_0
.end method

.method isInterrogate()Z
    .locals 2

    #@0
    .prologue
    .line 751
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mAction:Ljava/lang/String;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mAction:Ljava/lang/String;

    #@6
    const-string/jumbo v1, "*#"

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v0

    #@d
    :goto_0
    return v0

    #@e
    :cond_0
    const/4 v0, 0x0

    #@f
    goto :goto_0
.end method

.method isMMI()Z
    .locals 1

    #@0
    .prologue
    .line 616
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPoundString:Ljava/lang/String;

    #@2
    if-eqz v0, :cond_0

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
.end method

.method public isPendingUSSD()Z
    .locals 1

    #@0
    .prologue
    .line 767
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mIsPendingUSSD:Z

    #@2
    return v0
.end method

.method isPinPukCommand()Z
    .locals 2

    #@0
    .prologue
    .line 708
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    #@2
    if-eqz v0, :cond_1

    #@4
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    #@6
    const-string/jumbo v1, "04"

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v0

    #@d
    if-nez v0, :cond_0

    #@f
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    #@11
    const-string/jumbo v1, "042"

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@17
    move-result v0

    #@18
    if-nez v0, :cond_0

    #@1a
    .line 709
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    #@1c
    const-string/jumbo v1, "05"

    #@1f
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@22
    move-result v0

    #@23
    .line 708
    if-nez v0, :cond_0

    #@25
    .line 709
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    #@27
    const-string/jumbo v1, "052"

    #@2a
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2d
    move-result v0

    #@2e
    .line 708
    :goto_0
    return v0

    #@2f
    :cond_0
    const/4 v0, 0x1

    #@30
    goto :goto_0

    #@31
    :cond_1
    const/4 v0, 0x0

    #@32
    goto :goto_0
.end method

.method isRegister()Z
    .locals 2

    #@0
    .prologue
    .line 755
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mAction:Ljava/lang/String;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mAction:Ljava/lang/String;

    #@6
    const-string/jumbo v1, "**"

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v0

    #@d
    :goto_0
    return v0

    #@e
    :cond_0
    const/4 v0, 0x0

    #@f
    goto :goto_0
.end method

.method isShortCode()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 622
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPoundString:Ljava/lang/String;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 623
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mDialingNumber:Ljava/lang/String;

    #@7
    if-eqz v1, :cond_0

    #@9
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mDialingNumber:Ljava/lang/String;

    #@b
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@e
    move-result v1

    #@f
    const/4 v2, 0x2

    #@10
    if-gt v1, v2, :cond_0

    #@12
    const/4 v0, 0x1

    #@13
    .line 622
    :cond_0
    return v0
.end method

.method public isSsInfo()Z
    .locals 1

    #@0
    .prologue
    .line 776
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mIsSsInfo:Z

    #@2
    return v0
.end method

.method isTemporaryModeCLIR()Z
    .locals 2

    #@0
    .prologue
    .line 721
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    #@2
    if-eqz v0, :cond_1

    #@4
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    #@6
    const-string/jumbo v1, "31"

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_1

    #@f
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mDialingNumber:Ljava/lang/String;

    #@11
    if-eqz v0, :cond_1

    #@13
    .line 722
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isActivate()Z

    #@16
    move-result v0

    #@17
    if-nez v0, :cond_0

    #@19
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isDeactivate()Z

    #@1c
    move-result v0

    #@1d
    .line 721
    :goto_0
    return v0

    #@1e
    .line 722
    :cond_0
    const/4 v0, 0x1

    #@1f
    goto :goto_0

    #@20
    .line 721
    :cond_1
    const/4 v0, 0x0

    #@21
    goto :goto_0
.end method

.method public isUssdRequest()Z
    .locals 1

    #@0
    .prologue
    .line 772
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mIsUssdRequest:Z

    #@2
    return v0
.end method

.method onUssdFinished(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "ussdMessage"    # Ljava/lang/String;
    .param p2, "isUssdRequest"    # Z

    #@0
    .prologue
    .line 1006
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    #@2
    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    #@4
    if-ne v0, v1, :cond_1

    #@6
    .line 1007
    if-nez p1, :cond_2

    #@8
    .line 1008
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    #@a
    const v1, 0x1040082

    #@d
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@10
    move-result-object v0

    #@11
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mMessage:Ljava/lang/CharSequence;

    #@13
    .line 1012
    :goto_0
    iput-boolean p2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mIsUssdRequest:Z

    #@15
    .line 1014
    if-nez p2, :cond_0

    #@17
    .line 1015
    sget-object v0, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    #@19
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    #@1b
    .line 1018
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    #@1d
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->onMMIDone(Lcom/android/internal/telephony/gsm/GsmMmiCode;)V

    #@20
    .line 1005
    :cond_1
    return-void

    #@21
    .line 1010
    :cond_2
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mMessage:Ljava/lang/CharSequence;

    #@23
    goto :goto_0
.end method

.method onUssdFinishedError()V
    .locals 2

    #@0
    .prologue
    .line 1030
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    #@2
    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    #@4
    if-ne v0, v1, :cond_0

    #@6
    .line 1031
    sget-object v0, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    #@8
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    #@a
    .line 1032
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    #@c
    const v1, 0x104007a

    #@f
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@12
    move-result-object v0

    #@13
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mMessage:Ljava/lang/CharSequence;

    #@15
    .line 1034
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    #@17
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->onMMIDone(Lcom/android/internal/telephony/gsm/GsmMmiCode;)V

    #@1a
    .line 1029
    :cond_0
    return-void
.end method

.method onUssdRelease()V
    .locals 2

    #@0
    .prologue
    .line 1049
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    #@2
    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    #@4
    if-ne v0, v1, :cond_0

    #@6
    .line 1050
    sget-object v0, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    #@8
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    #@a
    .line 1051
    const/4 v0, 0x0

    #@b
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mMessage:Ljava/lang/CharSequence;

    #@d
    .line 1053
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    #@f
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->onMMIDone(Lcom/android/internal/telephony/gsm/GsmMmiCode;)V

    #@12
    .line 1048
    :cond_0
    return-void
.end method

.method parseSsData(Lcom/android/internal/telephony/gsm/SsData;)V
    .locals 6
    .param p1, "ssData"    # Lcom/android/internal/telephony/gsm/SsData;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 287
    iget v2, p1, Lcom/android/internal/telephony/gsm/SsData;->result:I

    #@3
    invoke-static {v2}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    #@6
    move-result-object v1

    #@7
    .line 288
    .local v1, "ex":Lcom/android/internal/telephony/CommandException;
    iget-object v2, p1, Lcom/android/internal/telephony/gsm/SsData;->serviceType:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    #@9
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->getScStringFromScType(Lcom/android/internal/telephony/gsm/SsData$ServiceType;)Ljava/lang/String;

    #@c
    move-result-object v2

    #@d
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    #@f
    .line 289
    iget-object v2, p1, Lcom/android/internal/telephony/gsm/SsData;->requestType:Lcom/android/internal/telephony/gsm/SsData$RequestType;

    #@11
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->getActionStringFromReqType(Lcom/android/internal/telephony/gsm/SsData$RequestType;)Ljava/lang/String;

    #@14
    move-result-object v2

    #@15
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mAction:Ljava/lang/String;

    #@17
    .line 290
    const-string/jumbo v2, "GsmMmiCode"

    #@1a
    new-instance v3, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string/jumbo v4, "parseSsData msc = "

    #@22
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v3

    #@26
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    #@28
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v3

    #@2c
    const-string/jumbo v4, ", action = "

    #@2f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v3

    #@33
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mAction:Ljava/lang/String;

    #@35
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v3

    #@39
    const-string/jumbo v4, ", ex = "

    #@3c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v3

    #@40
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v3

    #@44
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object v3

    #@48
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@4b
    .line 292
    invoke-static {}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->-getcom_android_internal_telephony_gsm_SsData$RequestTypeSwitchesValues()[I

    #@4e
    move-result-object v2

    #@4f
    iget-object v3, p1, Lcom/android/internal/telephony/gsm/SsData;->requestType:Lcom/android/internal/telephony/gsm/SsData$RequestType;

    #@51
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SsData$RequestType;->ordinal()I

    #@54
    move-result v3

    #@55
    aget v2, v2, v3

    #@57
    packed-switch v2, :pswitch_data_0

    #@5a
    .line 330
    const-string/jumbo v2, "GsmMmiCode"

    #@5d
    new-instance v3, Ljava/lang/StringBuilder;

    #@5f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@62
    const-string/jumbo v4, "Invaid requestType in SSData : "

    #@65
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v3

    #@69
    iget-object v4, p1, Lcom/android/internal/telephony/gsm/SsData;->requestType:Lcom/android/internal/telephony/gsm/SsData$RequestType;

    #@6b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v3

    #@6f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@72
    move-result-object v3

    #@73
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@76
    .line 284
    :goto_0
    return-void

    #@77
    .line 297
    :pswitch_0
    iget v2, p1, Lcom/android/internal/telephony/gsm/SsData;->result:I

    #@79
    if-nez v2, :cond_1

    #@7b
    .line 298
    iget-object v2, p1, Lcom/android/internal/telephony/gsm/SsData;->serviceType:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    #@7d
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->isTypeUnConditional()Z

    #@80
    move-result v2

    #@81
    .line 297
    if-eqz v2, :cond_1

    #@83
    .line 304
    iget-object v2, p1, Lcom/android/internal/telephony/gsm/SsData;->requestType:Lcom/android/internal/telephony/gsm/SsData$RequestType;

    #@85
    sget-object v3, Lcom/android/internal/telephony/gsm/SsData$RequestType;->SS_ACTIVATION:Lcom/android/internal/telephony/gsm/SsData$RequestType;

    #@87
    if-eq v2, v3, :cond_0

    #@89
    .line 305
    iget-object v2, p1, Lcom/android/internal/telephony/gsm/SsData;->requestType:Lcom/android/internal/telephony/gsm/SsData$RequestType;

    #@8b
    sget-object v3, Lcom/android/internal/telephony/gsm/SsData$RequestType;->SS_REGISTRATION:Lcom/android/internal/telephony/gsm/SsData$RequestType;

    #@8d
    if-ne v2, v3, :cond_2

    #@8f
    .line 306
    :cond_0
    iget v2, p1, Lcom/android/internal/telephony/gsm/SsData;->serviceClass:I

    #@91
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isServiceClassVoiceorNone(I)Z

    #@94
    move-result v0

    #@95
    .line 308
    :goto_1
    const-string/jumbo v2, "GsmMmiCode"

    #@98
    new-instance v3, Ljava/lang/StringBuilder;

    #@9a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@9d
    const-string/jumbo v4, "setVoiceCallForwardingFlag cffEnabled: "

    #@a0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a3
    move-result-object v3

    #@a4
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v3

    #@a8
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ab
    move-result-object v3

    #@ac
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@af
    .line 309
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@b1
    if-eqz v2, :cond_3

    #@b3
    .line 310
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@b5
    const/4 v3, 0x1

    #@b6
    invoke-virtual {v2, v3, v0, v5}, Lcom/android/internal/telephony/uicc/IccRecords;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    #@b9
    .line 311
    const-string/jumbo v2, "GsmMmiCode"

    #@bc
    const-string/jumbo v3, "setVoiceCallForwardingFlag done from SS Info."

    #@bf
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@c2
    .line 316
    :cond_1
    :goto_2
    new-instance v2, Landroid/os/AsyncResult;

    #@c4
    iget-object v3, p1, Lcom/android/internal/telephony/gsm/SsData;->cfInfo:[Lcom/android/internal/telephony/CallForwardInfo;

    #@c6
    invoke-direct {v2, v5, v3, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@c9
    invoke-direct {p0, v5, v2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->onSetComplete(Landroid/os/Message;Landroid/os/AsyncResult;)V

    #@cc
    goto :goto_0

    #@cd
    .line 304
    :cond_2
    const/4 v0, 0x0

    #@ce
    .local v0, "cffEnabled":Z
    goto :goto_1

    #@cf
    .line 313
    .end local v0    # "cffEnabled":Z
    :cond_3
    const-string/jumbo v2, "GsmMmiCode"

    #@d2
    const-string/jumbo v3, "setVoiceCallForwardingFlag aborted. sim records is null."

    #@d5
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@d8
    goto :goto_2

    #@d9
    .line 319
    :pswitch_1
    iget-object v2, p1, Lcom/android/internal/telephony/gsm/SsData;->serviceType:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    #@db
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->isTypeClir()Z

    #@de
    move-result v2

    #@df
    if-eqz v2, :cond_4

    #@e1
    .line 320
    const-string/jumbo v2, "GsmMmiCode"

    #@e4
    const-string/jumbo v3, "CLIR INTERROGATION"

    #@e7
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@ea
    .line 321
    new-instance v2, Landroid/os/AsyncResult;

    #@ec
    iget-object v3, p1, Lcom/android/internal/telephony/gsm/SsData;->ssInfo:[I

    #@ee
    invoke-direct {v2, v5, v3, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@f1
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->onGetClirComplete(Landroid/os/AsyncResult;)V

    #@f4
    goto :goto_0

    #@f5
    .line 322
    :cond_4
    iget-object v2, p1, Lcom/android/internal/telephony/gsm/SsData;->serviceType:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    #@f7
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->isTypeCF()Z

    #@fa
    move-result v2

    #@fb
    if-eqz v2, :cond_5

    #@fd
    .line 323
    const-string/jumbo v2, "GsmMmiCode"

    #@100
    const-string/jumbo v3, "CALL FORWARD INTERROGATION"

    #@103
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@106
    .line 324
    new-instance v2, Landroid/os/AsyncResult;

    #@108
    iget-object v3, p1, Lcom/android/internal/telephony/gsm/SsData;->cfInfo:[Lcom/android/internal/telephony/CallForwardInfo;

    #@10a
    invoke-direct {v2, v5, v3, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@10d
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->onQueryCfComplete(Landroid/os/AsyncResult;)V

    #@110
    goto/16 :goto_0

    #@112
    .line 326
    :cond_5
    new-instance v2, Landroid/os/AsyncResult;

    #@114
    iget-object v3, p1, Lcom/android/internal/telephony/gsm/SsData;->ssInfo:[I

    #@116
    invoke-direct {v2, v5, v3, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@119
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->onQueryComplete(Landroid/os/AsyncResult;)V

    #@11c
    goto/16 :goto_0

    #@11e
    .line 292
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method processCode()V
    .locals 24

    #@0
    .prologue
    .line 783
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isShortCode()Z

    #@3
    move-result v4

    #@4
    if-eqz v4, :cond_0

    #@6
    .line 784
    const-string/jumbo v4, "GsmMmiCode"

    #@9
    const-string/jumbo v10, "isShortCode"

    #@c
    invoke-static {v4, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@f
    .line 786
    move-object/from16 v0, p0

    #@11
    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mDialingNumber:Ljava/lang/String;

    #@13
    move-object/from16 v0, p0

    #@15
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sendUssd(Ljava/lang/String;)V

    #@18
    .line 781
    :goto_0
    return-void

    #@19
    .line 787
    :cond_0
    move-object/from16 v0, p0

    #@1b
    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mDialingNumber:Ljava/lang/String;

    #@1d
    if-eqz v4, :cond_1

    #@1f
    .line 789
    new-instance v4, Ljava/lang/RuntimeException;

    #@21
    const-string/jumbo v10, "Invalid or Unsupported MMI Code"

    #@24
    invoke-direct {v4, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@27
    throw v4
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@28
    .line 979
    :catch_0
    move-exception v16

    #@29
    .line 980
    .local v16, "exc":Ljava/lang/RuntimeException;
    sget-object v4, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    #@2b
    move-object/from16 v0, p0

    #@2d
    iput-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    #@2f
    .line 981
    move-object/from16 v0, p0

    #@31
    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mContext:Landroid/content/Context;

    #@33
    const v10, 0x104007a

    #@36
    invoke-virtual {v4, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@39
    move-result-object v4

    #@3a
    move-object/from16 v0, p0

    #@3c
    iput-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mMessage:Ljava/lang/CharSequence;

    #@3e
    .line 982
    move-object/from16 v0, p0

    #@40
    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    #@42
    move-object/from16 v0, p0

    #@44
    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->onMMIDone(Lcom/android/internal/telephony/gsm/GsmMmiCode;)V

    #@47
    goto :goto_0

    #@48
    .line 790
    .end local v16    # "exc":Ljava/lang/RuntimeException;
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    #@4a
    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    #@4c
    if-eqz v4, :cond_3

    #@4e
    move-object/from16 v0, p0

    #@50
    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    #@52
    const-string/jumbo v10, "30"

    #@55
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@58
    move-result v4

    #@59
    if-eqz v4, :cond_3

    #@5b
    .line 791
    const-string/jumbo v4, "GsmMmiCode"

    #@5e
    const-string/jumbo v10, "is CLIP"

    #@61
    invoke-static {v4, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@64
    .line 792
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isInterrogate()Z

    #@67
    move-result v4

    #@68
    if-eqz v4, :cond_2

    #@6a
    .line 793
    move-object/from16 v0, p0

    #@6c
    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    #@6e
    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@70
    .line 794
    const/4 v10, 0x5

    #@71
    move-object/from16 v0, p0

    #@73
    move-object/from16 v1, p0

    #@75
    invoke-virtual {v0, v10, v1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@78
    move-result-object v10

    #@79
    .line 793
    invoke-interface {v4, v10}, Lcom/android/internal/telephony/CommandsInterface;->queryCLIP(Landroid/os/Message;)V

    #@7c
    goto :goto_0

    #@7d
    .line 796
    :cond_2
    new-instance v4, Ljava/lang/RuntimeException;

    #@7f
    const-string/jumbo v10, "Invalid or Unsupported MMI Code"

    #@82
    invoke-direct {v4, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@85
    throw v4

    #@86
    .line 798
    :cond_3
    move-object/from16 v0, p0

    #@88
    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    #@8a
    if-eqz v4, :cond_7

    #@8c
    move-object/from16 v0, p0

    #@8e
    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    #@90
    const-string/jumbo v10, "31"

    #@93
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@96
    move-result v4

    #@97
    if-eqz v4, :cond_7

    #@99
    .line 799
    const-string/jumbo v4, "GsmMmiCode"

    #@9c
    const-string/jumbo v10, "is CLIR"

    #@9f
    invoke-static {v4, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@a2
    .line 800
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isActivate()Z

    #@a5
    move-result v4

    #@a6
    if-eqz v4, :cond_4

    #@a8
    .line 801
    move-object/from16 v0, p0

    #@aa
    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    #@ac
    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@ae
    .line 802
    const/4 v10, 0x1

    #@af
    move-object/from16 v0, p0

    #@b1
    move-object/from16 v1, p0

    #@b3
    invoke-virtual {v0, v10, v1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@b6
    move-result-object v10

    #@b7
    .line 801
    const/4 v12, 0x1

    #@b8
    invoke-interface {v4, v12, v10}, Lcom/android/internal/telephony/CommandsInterface;->setCLIR(ILandroid/os/Message;)V

    #@bb
    goto/16 :goto_0

    #@bd
    .line 803
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isDeactivate()Z

    #@c0
    move-result v4

    #@c1
    if-eqz v4, :cond_5

    #@c3
    .line 804
    move-object/from16 v0, p0

    #@c5
    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    #@c7
    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@c9
    .line 805
    const/4 v10, 0x1

    #@ca
    move-object/from16 v0, p0

    #@cc
    move-object/from16 v1, p0

    #@ce
    invoke-virtual {v0, v10, v1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@d1
    move-result-object v10

    #@d2
    .line 804
    const/4 v12, 0x2

    #@d3
    invoke-interface {v4, v12, v10}, Lcom/android/internal/telephony/CommandsInterface;->setCLIR(ILandroid/os/Message;)V

    #@d6
    goto/16 :goto_0

    #@d8
    .line 806
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isInterrogate()Z

    #@db
    move-result v4

    #@dc
    if-eqz v4, :cond_6

    #@de
    .line 807
    move-object/from16 v0, p0

    #@e0
    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    #@e2
    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@e4
    .line 808
    const/4 v10, 0x2

    #@e5
    move-object/from16 v0, p0

    #@e7
    move-object/from16 v1, p0

    #@e9
    invoke-virtual {v0, v10, v1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@ec
    move-result-object v10

    #@ed
    .line 807
    invoke-interface {v4, v10}, Lcom/android/internal/telephony/CommandsInterface;->getCLIR(Landroid/os/Message;)V

    #@f0
    goto/16 :goto_0

    #@f2
    .line 810
    :cond_6
    new-instance v4, Ljava/lang/RuntimeException;

    #@f4
    const-string/jumbo v10, "Invalid or Unsupported MMI Code"

    #@f7
    invoke-direct {v4, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@fa
    throw v4

    #@fb
    .line 812
    :cond_7
    move-object/from16 v0, p0

    #@fd
    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    #@ff
    invoke-static {v4}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isServiceCodeCallForwarding(Ljava/lang/String;)Z

    #@102
    move-result v4

    #@103
    if-eqz v4, :cond_13

    #@105
    .line 813
    const-string/jumbo v4, "GsmMmiCode"

    #@108
    const-string/jumbo v10, "is CF"

    #@10b
    invoke-static {v4, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@10e
    .line 815
    move-object/from16 v0, p0

    #@110
    iget-object v8, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSia:Ljava/lang/String;

    #@112
    .line 816
    .local v8, "dialingNumber":Ljava/lang/String;
    move-object/from16 v0, p0

    #@114
    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSib:Ljava/lang/String;

    #@116
    invoke-static {v4}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->siToServiceClass(Ljava/lang/String;)I

    #@119
    move-result v7

    #@11a
    .line 817
    .local v7, "serviceClass":I
    move-object/from16 v0, p0

    #@11c
    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    #@11e
    invoke-static {v4}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->scToCallForwardReason(Ljava/lang/String;)I

    #@121
    move-result v6

    #@122
    .line 818
    .local v6, "reason":I
    move-object/from16 v0, p0

    #@124
    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSic:Ljava/lang/String;

    #@126
    invoke-static {v4}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->siToTime(Ljava/lang/String;)I

    #@129
    move-result v9

    #@12a
    .line 820
    .local v9, "time":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isInterrogate()Z

    #@12d
    move-result v4

    #@12e
    if-eqz v4, :cond_8

    #@130
    .line 821
    move-object/from16 v0, p0

    #@132
    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    #@134
    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@136
    .line 823
    const/4 v10, 0x3

    #@137
    move-object/from16 v0, p0

    #@139
    move-object/from16 v1, p0

    #@13b
    invoke-virtual {v0, v10, v1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@13e
    move-result-object v10

    #@13f
    .line 821
    invoke-interface {v4, v6, v7, v8, v10}, Lcom/android/internal/telephony/CommandsInterface;->queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V

    #@142
    goto/16 :goto_0

    #@144
    .line 827
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isActivate()Z

    #@147
    move-result v4

    #@148
    if-eqz v4, :cond_d

    #@14a
    .line 832
    invoke-static {v8}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isEmptyOrNull(Ljava/lang/CharSequence;)Z

    #@14d
    move-result v4

    #@14e
    if-eqz v4, :cond_c

    #@150
    .line 833
    const/4 v5, 0x1

    #@151
    .line 834
    .local v5, "cfAction":I
    const/4 v4, 0x0

    #@152
    move-object/from16 v0, p0

    #@154
    iput-boolean v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mIsCallFwdReg:Z

    #@156
    .line 850
    :goto_1
    if-eqz v6, :cond_9

    #@158
    .line 851
    const/4 v4, 0x4

    #@159
    if-ne v6, v4, :cond_11

    #@15b
    .line 852
    :cond_9
    and-int/lit8 v4, v7, 0x1

    #@15d
    if-nez v4, :cond_a

    #@15f
    .line 853
    if-nez v7, :cond_11

    #@161
    :cond_a
    const/16 v18, 0x1

    #@163
    .line 856
    .local v18, "isSettingUnconditionalVoice":I
    :goto_2
    const/4 v4, 0x1

    #@164
    if-eq v5, v4, :cond_b

    #@166
    .line 857
    const/4 v4, 0x3

    #@167
    if-ne v5, v4, :cond_12

    #@169
    :cond_b
    const/16 v17, 0x1

    #@16b
    .line 859
    .local v17, "isEnableDesired":I
    :goto_3
    const-string/jumbo v4, "GsmMmiCode"

    #@16e
    const-string/jumbo v10, "is CF setCallForward"

    #@171
    invoke-static {v4, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@174
    .line 860
    move-object/from16 v0, p0

    #@176
    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    #@178
    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@17a
    .line 862
    const/4 v10, 0x6

    #@17b
    .line 861
    move-object/from16 v0, p0

    #@17d
    move/from16 v1, v18

    #@17f
    move/from16 v2, v17

    #@181
    move-object/from16 v3, p0

    #@183
    invoke-virtual {v0, v10, v1, v2, v3}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@186
    move-result-object v10

    #@187
    .line 860
    invoke-interface/range {v4 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V

    #@18a
    goto/16 :goto_0

    #@18c
    .line 836
    .end local v5    # "cfAction":I
    .end local v17    # "isEnableDesired":I
    .end local v18    # "isSettingUnconditionalVoice":I
    :cond_c
    const/4 v5, 0x3

    #@18d
    .line 837
    .restart local v5    # "cfAction":I
    const/4 v4, 0x1

    #@18e
    move-object/from16 v0, p0

    #@190
    iput-boolean v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mIsCallFwdReg:Z

    #@192
    goto :goto_1

    #@193
    .line 839
    .end local v5    # "cfAction":I
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isDeactivate()Z

    #@196
    move-result v4

    #@197
    if-eqz v4, :cond_e

    #@199
    .line 840
    const/4 v5, 0x0

    #@19a
    .restart local v5    # "cfAction":I
    goto :goto_1

    #@19b
    .line 841
    .end local v5    # "cfAction":I
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isRegister()Z

    #@19e
    move-result v4

    #@19f
    if-eqz v4, :cond_f

    #@1a1
    .line 842
    const/4 v5, 0x3

    #@1a2
    .restart local v5    # "cfAction":I
    goto :goto_1

    #@1a3
    .line 843
    .end local v5    # "cfAction":I
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isErasure()Z

    #@1a6
    move-result v4

    #@1a7
    if-eqz v4, :cond_10

    #@1a9
    .line 844
    const/4 v5, 0x4

    #@1aa
    .restart local v5    # "cfAction":I
    goto :goto_1

    #@1ab
    .line 846
    .end local v5    # "cfAction":I
    :cond_10
    new-instance v4, Ljava/lang/RuntimeException;

    #@1ad
    const-string/jumbo v10, "invalid action"

    #@1b0
    invoke-direct {v4, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@1b3
    throw v4

    #@1b4
    .line 853
    .restart local v5    # "cfAction":I
    :cond_11
    const/16 v18, 0x0

    #@1b6
    .restart local v18    # "isSettingUnconditionalVoice":I
    goto :goto_2

    #@1b7
    .line 857
    :cond_12
    const/16 v17, 0x0

    #@1b9
    .restart local v17    # "isEnableDesired":I
    goto :goto_3

    #@1ba
    .line 866
    .end local v5    # "cfAction":I
    .end local v6    # "reason":I
    .end local v7    # "serviceClass":I
    .end local v8    # "dialingNumber":Ljava/lang/String;
    .end local v9    # "time":I
    .end local v17    # "isEnableDesired":I
    .end local v18    # "isSettingUnconditionalVoice":I
    :cond_13
    move-object/from16 v0, p0

    #@1bc
    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    #@1be
    invoke-static {v4}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isServiceCodeCallBarring(Ljava/lang/String;)Z

    #@1c1
    move-result v4

    #@1c2
    if-eqz v4, :cond_17

    #@1c4
    .line 870
    move-object/from16 v0, p0

    #@1c6
    iget-object v13, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSia:Ljava/lang/String;

    #@1c8
    .line 871
    .local v13, "password":Ljava/lang/String;
    move-object/from16 v0, p0

    #@1ca
    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSib:Ljava/lang/String;

    #@1cc
    invoke-static {v4}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->siToServiceClass(Ljava/lang/String;)I

    #@1cf
    move-result v7

    #@1d0
    .line 872
    .restart local v7    # "serviceClass":I
    move-object/from16 v0, p0

    #@1d2
    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    #@1d4
    invoke-static {v4}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->scToBarringFacility(Ljava/lang/String;)Ljava/lang/String;

    #@1d7
    move-result-object v11

    #@1d8
    .line 874
    .local v11, "facility":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isInterrogate()Z

    #@1db
    move-result v4

    #@1dc
    if-eqz v4, :cond_14

    #@1de
    .line 875
    move-object/from16 v0, p0

    #@1e0
    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    #@1e2
    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@1e4
    .line 876
    const/4 v10, 0x5

    #@1e5
    move-object/from16 v0, p0

    #@1e7
    move-object/from16 v1, p0

    #@1e9
    invoke-virtual {v0, v10, v1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@1ec
    move-result-object v10

    #@1ed
    .line 875
    invoke-interface {v4, v11, v13, v7, v10}, Lcom/android/internal/telephony/CommandsInterface;->queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    #@1f0
    goto/16 :goto_0

    #@1f2
    .line 877
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isActivate()Z

    #@1f5
    move-result v4

    #@1f6
    if-nez v4, :cond_15

    #@1f8
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isDeactivate()Z

    #@1fb
    move-result v4

    #@1fc
    if-eqz v4, :cond_16

    #@1fe
    .line 878
    :cond_15
    move-object/from16 v0, p0

    #@200
    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    #@202
    iget-object v10, v4, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@204
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isActivate()Z

    #@207
    move-result v12

    #@208
    .line 879
    const/4 v4, 0x1

    #@209
    move-object/from16 v0, p0

    #@20b
    move-object/from16 v1, p0

    #@20d
    invoke-virtual {v0, v4, v1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@210
    move-result-object v15

    #@211
    move v14, v7

    #@212
    .line 878
    invoke-interface/range {v10 .. v15}, Lcom/android/internal/telephony/CommandsInterface;->setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V

    #@215
    goto/16 :goto_0

    #@217
    .line 881
    :cond_16
    new-instance v4, Ljava/lang/RuntimeException;

    #@219
    const-string/jumbo v10, "Invalid or Unsupported MMI Code"

    #@21c
    invoke-direct {v4, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@21f
    throw v4

    #@220
    .line 884
    .end local v7    # "serviceClass":I
    .end local v11    # "facility":Ljava/lang/String;
    .end local v13    # "password":Ljava/lang/String;
    :cond_17
    move-object/from16 v0, p0

    #@222
    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    #@224
    if-eqz v4, :cond_1c

    #@226
    move-object/from16 v0, p0

    #@228
    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    #@22a
    const-string/jumbo v10, "03"

    #@22d
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@230
    move-result v4

    #@231
    if-eqz v4, :cond_1c

    #@233
    .line 890
    move-object/from16 v0, p0

    #@235
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSib:Ljava/lang/String;

    #@237
    move-object/from16 v22, v0

    #@239
    .line 891
    .local v22, "oldPwd":Ljava/lang/String;
    move-object/from16 v0, p0

    #@23b
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSic:Ljava/lang/String;

    #@23d
    move-object/from16 v20, v0

    #@23f
    .line 892
    .local v20, "newPwd":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isActivate()Z

    #@242
    move-result v4

    #@243
    if-nez v4, :cond_18

    #@245
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isRegister()Z

    #@248
    move-result v4

    #@249
    if-eqz v4, :cond_1b

    #@24b
    .line 894
    :cond_18
    const-string/jumbo v4, "**"

    #@24e
    move-object/from16 v0, p0

    #@250
    iput-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mAction:Ljava/lang/String;

    #@252
    .line 896
    move-object/from16 v0, p0

    #@254
    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSia:Ljava/lang/String;

    #@256
    if-nez v4, :cond_19

    #@258
    .line 898
    const-string/jumbo v11, "AB"

    #@25b
    .line 902
    .restart local v11    # "facility":Ljava/lang/String;
    :goto_4
    move-object/from16 v0, p0

    #@25d
    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPwd:Ljava/lang/String;

    #@25f
    move-object/from16 v0, v20

    #@261
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@264
    move-result v4

    #@265
    if-eqz v4, :cond_1a

    #@267
    .line 903
    move-object/from16 v0, p0

    #@269
    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    #@26b
    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@26d
    .line 904
    const/4 v10, 0x1

    #@26e
    move-object/from16 v0, p0

    #@270
    move-object/from16 v1, p0

    #@272
    invoke-virtual {v0, v10, v1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@275
    move-result-object v10

    #@276
    .line 903
    move-object/from16 v0, v22

    #@278
    move-object/from16 v1, v20

    #@27a
    invoke-interface {v4, v11, v0, v1, v10}, Lcom/android/internal/telephony/CommandsInterface;->changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    #@27d
    goto/16 :goto_0

    #@27f
    .line 900
    .end local v11    # "facility":Ljava/lang/String;
    :cond_19
    move-object/from16 v0, p0

    #@281
    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSia:Ljava/lang/String;

    #@283
    invoke-static {v4}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->scToBarringFacility(Ljava/lang/String;)Ljava/lang/String;

    #@286
    move-result-object v11

    #@287
    .restart local v11    # "facility":Ljava/lang/String;
    goto :goto_4

    #@288
    .line 907
    :cond_1a
    const v4, 0x1040081

    #@28b
    move-object/from16 v0, p0

    #@28d
    invoke-direct {v0, v4}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->handlePasswordError(I)V

    #@290
    goto/16 :goto_0

    #@292
    .line 910
    .end local v11    # "facility":Ljava/lang/String;
    :cond_1b
    new-instance v4, Ljava/lang/RuntimeException;

    #@294
    const-string/jumbo v10, "Invalid or Unsupported MMI Code"

    #@297
    invoke-direct {v4, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@29a
    throw v4

    #@29b
    .line 913
    .end local v20    # "newPwd":Ljava/lang/String;
    .end local v22    # "oldPwd":Ljava/lang/String;
    :cond_1c
    move-object/from16 v0, p0

    #@29d
    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    #@29f
    if-eqz v4, :cond_20

    #@2a1
    move-object/from16 v0, p0

    #@2a3
    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    #@2a5
    const-string/jumbo v10, "43"

    #@2a8
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2ab
    move-result v4

    #@2ac
    if-eqz v4, :cond_20

    #@2ae
    .line 915
    move-object/from16 v0, p0

    #@2b0
    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSia:Ljava/lang/String;

    #@2b2
    invoke-static {v4}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->siToServiceClass(Ljava/lang/String;)I

    #@2b5
    move-result v7

    #@2b6
    .line 917
    .restart local v7    # "serviceClass":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isActivate()Z

    #@2b9
    move-result v4

    #@2ba
    if-nez v4, :cond_1d

    #@2bc
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isDeactivate()Z

    #@2bf
    move-result v4

    #@2c0
    if-eqz v4, :cond_1e

    #@2c2
    .line 918
    :cond_1d
    move-object/from16 v0, p0

    #@2c4
    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    #@2c6
    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2c8
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isActivate()Z

    #@2cb
    move-result v10

    #@2cc
    .line 919
    const/4 v12, 0x1

    #@2cd
    move-object/from16 v0, p0

    #@2cf
    move-object/from16 v1, p0

    #@2d1
    invoke-virtual {v0, v12, v1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@2d4
    move-result-object v12

    #@2d5
    .line 918
    invoke-interface {v4, v10, v7, v12}, Lcom/android/internal/telephony/CommandsInterface;->setCallWaiting(ZILandroid/os/Message;)V

    #@2d8
    goto/16 :goto_0

    #@2da
    .line 920
    :cond_1e
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isInterrogate()Z

    #@2dd
    move-result v4

    #@2de
    if-eqz v4, :cond_1f

    #@2e0
    .line 921
    move-object/from16 v0, p0

    #@2e2
    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    #@2e4
    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2e6
    .line 922
    const/4 v10, 0x5

    #@2e7
    move-object/from16 v0, p0

    #@2e9
    move-object/from16 v1, p0

    #@2eb
    invoke-virtual {v0, v10, v1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@2ee
    move-result-object v10

    #@2ef
    .line 921
    invoke-interface {v4, v7, v10}, Lcom/android/internal/telephony/CommandsInterface;->queryCallWaiting(ILandroid/os/Message;)V

    #@2f2
    goto/16 :goto_0

    #@2f4
    .line 924
    :cond_1f
    new-instance v4, Ljava/lang/RuntimeException;

    #@2f6
    const-string/jumbo v10, "Invalid or Unsupported MMI Code"

    #@2f9
    invoke-direct {v4, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@2fc
    throw v4

    #@2fd
    .line 926
    .end local v7    # "serviceClass":I
    :cond_20
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isPinPukCommand()Z

    #@300
    move-result v4

    #@301
    if-eqz v4, :cond_2b

    #@303
    .line 934
    move-object/from16 v0, p0

    #@305
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSia:Ljava/lang/String;

    #@307
    move-object/from16 v21, v0

    #@309
    .line 935
    .local v21, "oldPinOrPuk":Ljava/lang/String;
    move-object/from16 v0, p0

    #@30b
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSib:Ljava/lang/String;

    #@30d
    move-object/from16 v19, v0

    #@30f
    .line 936
    .local v19, "newPinOrPuk":Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    #@312
    move-result v23

    #@313
    .line 937
    .local v23, "pinLen":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isRegister()Z

    #@316
    move-result v4

    #@317
    if-eqz v4, :cond_2a

    #@319
    .line 938
    move-object/from16 v0, p0

    #@31b
    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSic:Ljava/lang/String;

    #@31d
    move-object/from16 v0, v19

    #@31f
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@322
    move-result v4

    #@323
    if-nez v4, :cond_21

    #@325
    .line 940
    const v4, 0x1040085

    #@328
    move-object/from16 v0, p0

    #@32a
    invoke-direct {v0, v4}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->handlePasswordError(I)V

    #@32d
    goto/16 :goto_0

    #@32f
    .line 941
    :cond_21
    const/4 v4, 0x4

    #@330
    move/from16 v0, v23

    #@332
    if-lt v0, v4, :cond_22

    #@334
    const/16 v4, 0x8

    #@336
    move/from16 v0, v23

    #@338
    if-le v0, v4, :cond_23

    #@33a
    .line 943
    :cond_22
    const v4, 0x1040086

    #@33d
    move-object/from16 v0, p0

    #@33f
    invoke-direct {v0, v4}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->handlePasswordError(I)V

    #@342
    goto/16 :goto_0

    #@344
    .line 944
    :cond_23
    move-object/from16 v0, p0

    #@346
    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    #@348
    const-string/jumbo v10, "04"

    #@34b
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@34e
    move-result v4

    #@34f
    if-eqz v4, :cond_24

    #@351
    .line 945
    move-object/from16 v0, p0

    #@353
    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@355
    if-eqz v4, :cond_24

    #@357
    .line 946
    move-object/from16 v0, p0

    #@359
    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@35b
    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    #@35e
    move-result-object v4

    #@35f
    sget-object v10, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    #@361
    if-ne v4, v10, :cond_24

    #@363
    .line 948
    const v4, 0x1040088

    #@366
    move-object/from16 v0, p0

    #@368
    invoke-direct {v0, v4}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->handlePasswordError(I)V

    #@36b
    goto/16 :goto_0

    #@36d
    .line 949
    :cond_24
    move-object/from16 v0, p0

    #@36f
    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@371
    if-eqz v4, :cond_29

    #@373
    .line 950
    const-string/jumbo v4, "GsmMmiCode"

    #@376
    new-instance v10, Ljava/lang/StringBuilder;

    #@378
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@37b
    const-string/jumbo v12, "process mmi service code using UiccApp sc="

    #@37e
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@381
    move-result-object v10

    #@382
    move-object/from16 v0, p0

    #@384
    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    #@386
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@389
    move-result-object v10

    #@38a
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38d
    move-result-object v10

    #@38e
    invoke-static {v4, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@391
    .line 953
    move-object/from16 v0, p0

    #@393
    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    #@395
    const-string/jumbo v10, "04"

    #@398
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@39b
    move-result v4

    #@39c
    if-eqz v4, :cond_25

    #@39e
    .line 954
    move-object/from16 v0, p0

    #@3a0
    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@3a2
    .line 955
    const/4 v10, 0x1

    #@3a3
    move-object/from16 v0, p0

    #@3a5
    move-object/from16 v1, p0

    #@3a7
    invoke-virtual {v0, v10, v1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@3aa
    move-result-object v10

    #@3ab
    .line 954
    move-object/from16 v0, v21

    #@3ad
    move-object/from16 v1, v19

    #@3af
    invoke-virtual {v4, v0, v1, v10}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    #@3b2
    goto/16 :goto_0

    #@3b4
    .line 956
    :cond_25
    move-object/from16 v0, p0

    #@3b6
    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    #@3b8
    const-string/jumbo v10, "042"

    #@3bb
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3be
    move-result v4

    #@3bf
    if-eqz v4, :cond_26

    #@3c1
    .line 957
    move-object/from16 v0, p0

    #@3c3
    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@3c5
    .line 958
    const/4 v10, 0x1

    #@3c6
    move-object/from16 v0, p0

    #@3c8
    move-object/from16 v1, p0

    #@3ca
    invoke-virtual {v0, v10, v1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@3cd
    move-result-object v10

    #@3ce
    .line 957
    move-object/from16 v0, v21

    #@3d0
    move-object/from16 v1, v19

    #@3d2
    invoke-virtual {v4, v0, v1, v10}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->changeIccFdnPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    #@3d5
    goto/16 :goto_0

    #@3d7
    .line 959
    :cond_26
    move-object/from16 v0, p0

    #@3d9
    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    #@3db
    const-string/jumbo v10, "05"

    #@3de
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3e1
    move-result v4

    #@3e2
    if-eqz v4, :cond_27

    #@3e4
    .line 960
    move-object/from16 v0, p0

    #@3e6
    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@3e8
    .line 961
    const/4 v10, 0x1

    #@3e9
    move-object/from16 v0, p0

    #@3eb
    move-object/from16 v1, p0

    #@3ed
    invoke-virtual {v0, v10, v1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@3f0
    move-result-object v10

    #@3f1
    .line 960
    move-object/from16 v0, v21

    #@3f3
    move-object/from16 v1, v19

    #@3f5
    invoke-virtual {v4, v0, v1, v10}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->supplyPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    #@3f8
    goto/16 :goto_0

    #@3fa
    .line 962
    :cond_27
    move-object/from16 v0, p0

    #@3fc
    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    #@3fe
    const-string/jumbo v10, "052"

    #@401
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@404
    move-result v4

    #@405
    if-eqz v4, :cond_28

    #@407
    .line 963
    move-object/from16 v0, p0

    #@409
    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@40b
    .line 964
    const/4 v10, 0x1

    #@40c
    move-object/from16 v0, p0

    #@40e
    move-object/from16 v1, p0

    #@410
    invoke-virtual {v0, v10, v1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@413
    move-result-object v10

    #@414
    .line 963
    move-object/from16 v0, v21

    #@416
    move-object/from16 v1, v19

    #@418
    invoke-virtual {v4, v0, v1, v10}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->supplyPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    #@41b
    goto/16 :goto_0

    #@41d
    .line 966
    :cond_28
    new-instance v4, Ljava/lang/RuntimeException;

    #@41f
    new-instance v10, Ljava/lang/StringBuilder;

    #@421
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@424
    const-string/jumbo v12, "uicc unsupported service code="

    #@427
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42a
    move-result-object v10

    #@42b
    move-object/from16 v0, p0

    #@42d
    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    #@42f
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@432
    move-result-object v10

    #@433
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@436
    move-result-object v10

    #@437
    invoke-direct {v4, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@43a
    throw v4

    #@43b
    .line 969
    :cond_29
    new-instance v4, Ljava/lang/RuntimeException;

    #@43d
    const-string/jumbo v10, "No application mUiccApplicaiton is null"

    #@440
    invoke-direct {v4, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@443
    throw v4

    #@444
    .line 972
    :cond_2a
    new-instance v4, Ljava/lang/RuntimeException;

    #@446
    new-instance v10, Ljava/lang/StringBuilder;

    #@448
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@44b
    const-string/jumbo v12, "Ivalid register/action="

    #@44e
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@451
    move-result-object v10

    #@452
    move-object/from16 v0, p0

    #@454
    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mAction:Ljava/lang/String;

    #@456
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@459
    move-result-object v10

    #@45a
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45d
    move-result-object v10

    #@45e
    invoke-direct {v4, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@461
    throw v4

    #@462
    .line 974
    .end local v19    # "newPinOrPuk":Ljava/lang/String;
    .end local v21    # "oldPinOrPuk":Ljava/lang/String;
    .end local v23    # "pinLen":I
    :cond_2b
    move-object/from16 v0, p0

    #@464
    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPoundString:Ljava/lang/String;

    #@466
    if-eqz v4, :cond_2c

    #@468
    .line 975
    move-object/from16 v0, p0

    #@46a
    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPoundString:Ljava/lang/String;

    #@46c
    move-object/from16 v0, p0

    #@46e
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sendUssd(Ljava/lang/String;)V

    #@471
    goto/16 :goto_0

    #@473
    .line 977
    :cond_2c
    new-instance v4, Ljava/lang/RuntimeException;

    #@475
    const-string/jumbo v10, "Invalid or Unsupported MMI Code"

    #@478
    invoke-direct {v4, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@47b
    throw v4
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method processSsData(Landroid/os/AsyncResult;)V
    .locals 6
    .param p1, "data"    # Landroid/os/AsyncResult;

    #@0
    .prologue
    .line 271
    const-string/jumbo v3, "GsmMmiCode"

    #@3
    const-string/jumbo v4, "In processSsData"

    #@6
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 273
    const/4 v3, 0x1

    #@a
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mIsSsInfo:Z

    #@c
    .line 275
    :try_start_0
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@e
    check-cast v2, Lcom/android/internal/telephony/gsm/SsData;

    #@10
    .line 276
    .local v2, "ssData":Lcom/android/internal/telephony/gsm/SsData;
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->parseSsData(Lcom/android/internal/telephony/gsm/SsData;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    .line 270
    .end local v2    # "ssData":Lcom/android/internal/telephony/gsm/SsData;
    :goto_0
    return-void

    #@14
    .line 279
    :catch_0
    move-exception v1

    #@15
    .line 280
    .local v1, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "GsmMmiCode"

    #@18
    new-instance v4, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v5, "Null Pointer Exception in parsing SS Data : "

    #@20
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v4

    #@24
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v4

    #@28
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v4

    #@2c
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2f
    goto :goto_0

    #@30
    .line 277
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    #@31
    .line 278
    .local v0, "ex":Ljava/lang/ClassCastException;
    const-string/jumbo v3, "GsmMmiCode"

    #@34
    new-instance v4, Ljava/lang/StringBuilder;

    #@36
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@39
    const-string/jumbo v5, "Class Cast Exception in parsing SS Data : "

    #@3c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v4

    #@40
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v4

    #@44
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object v4

    #@48
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@4b
    goto :goto_0
.end method

.method sendUssd(Ljava/lang/String;)V
    .locals 2
    .param p1, "ussdMessage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1059
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mIsPendingUSSD:Z

    #@3
    .line 1066
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    #@5
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@7
    .line 1067
    const/4 v1, 0x4

    #@8
    invoke-virtual {p0, v1, p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@b
    move-result-object v1

    #@c
    .line 1066
    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->sendUSSD(Ljava/lang/String;Landroid/os/Message;)V

    #@f
    .line 1057
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 1599
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-string/jumbo v1, "GsmMmiCode {"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@8
    .line 1601
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "State="

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->getState()Lcom/android/internal/telephony/MmiCode$State;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@16
    .line 1602
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mAction:Ljava/lang/String;

    #@18
    if-eqz v1, :cond_0

    #@1a
    const-string/jumbo v1, " action="

    #@1d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mAction:Ljava/lang/String;

    #@23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    .line 1603
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    #@28
    if-eqz v1, :cond_1

    #@2a
    const-string/jumbo v1, " sc="

    #@2d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v1

    #@31
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    #@33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    .line 1604
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSia:Ljava/lang/String;

    #@38
    if-eqz v1, :cond_2

    #@3a
    const-string/jumbo v1, " sia="

    #@3d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v1

    #@41
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSia:Ljava/lang/String;

    #@43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    .line 1605
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSib:Ljava/lang/String;

    #@48
    if-eqz v1, :cond_3

    #@4a
    const-string/jumbo v1, " sib="

    #@4d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v1

    #@51
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSib:Ljava/lang/String;

    #@53
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    .line 1606
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSic:Ljava/lang/String;

    #@58
    if-eqz v1, :cond_4

    #@5a
    const-string/jumbo v1, " sic="

    #@5d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v1

    #@61
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSic:Ljava/lang/String;

    #@63
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    .line 1607
    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPoundString:Ljava/lang/String;

    #@68
    if-eqz v1, :cond_5

    #@6a
    const-string/jumbo v1, " poundString="

    #@6d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v1

    #@71
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPoundString:Ljava/lang/String;

    #@73
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    .line 1608
    :cond_5
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mDialingNumber:Ljava/lang/String;

    #@78
    if-eqz v1, :cond_6

    #@7a
    const-string/jumbo v1, " dialingNumber="

    #@7d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v1

    #@81
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mDialingNumber:Ljava/lang/String;

    #@83
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    .line 1609
    :cond_6
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPwd:Ljava/lang/String;

    #@88
    if-eqz v1, :cond_7

    #@8a
    const-string/jumbo v1, " pwd="

    #@8d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@90
    move-result-object v1

    #@91
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mPwd:Ljava/lang/String;

    #@93
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@96
    .line 1610
    :cond_7
    const-string/jumbo v1, "}"

    #@99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9c
    .line 1611
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9f
    move-result-object v1

    #@a0
    return-object v1
.end method
