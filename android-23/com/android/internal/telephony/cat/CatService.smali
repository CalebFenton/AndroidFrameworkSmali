.class public Lcom/android/internal/telephony/cat/CatService;
.super Landroid/os/Handler;
.source "CatService.java"

# interfaces
.implements Lcom/android/internal/telephony/cat/AppInterface;


# static fields
.field private static synthetic -com_android_internal_telephony_cat_AppInterface$CommandTypeSwitchesValues:[I = null

.field private static synthetic -com_android_internal_telephony_cat_ResultCodeSwitchesValues:[I = null

.field private static final DBG:Z = false

.field private static final DEV_ID_DISPLAY:I = 0x2

.field private static final DEV_ID_KEYPAD:I = 0x1

.field private static final DEV_ID_NETWORK:I = 0x83

.field private static final DEV_ID_TERMINAL:I = 0x82

.field private static final DEV_ID_UICC:I = 0x81

.field protected static final MSG_ID_ALPHA_NOTIFY:I = 0x9

.field protected static final MSG_ID_CALL_SETUP:I = 0x4

.field protected static final MSG_ID_EVENT_NOTIFY:I = 0x3

.field protected static final MSG_ID_ICC_CHANGED:I = 0x8

.field private static final MSG_ID_ICC_RECORDS_LOADED:I = 0x14

.field private static final MSG_ID_ICC_REFRESH:I = 0x1e

.field protected static final MSG_ID_PROACTIVE_COMMAND:I = 0x2

.field static final MSG_ID_REFRESH:I = 0x5

.field static final MSG_ID_RESPONSE:I = 0x6

.field static final MSG_ID_RIL_MSG_DECODED:I = 0xa

.field protected static final MSG_ID_SESSION_END:I = 0x1

.field static final MSG_ID_SIM_READY:I = 0x7

.field static final STK_DEFAULT:Ljava/lang/String; = "Default Message"

.field private static mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

.field private static mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

.field private static sInstance:[Lcom/android/internal/telephony/cat/CatService;

.field private static final sInstanceLock:Ljava/lang/Object;


# instance fields
.field private mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

.field private mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field private mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

.field private mMsgDecoder:Lcom/android/internal/telephony/cat/RilMessageDecoder;

.field private mSlotId:I

.field private mStkAppInstalled:Z

.field private mUiccController:Lcom/android/internal/telephony/uicc/UiccController;


# direct methods
.method private static synthetic -getcom_android_internal_telephony_cat_AppInterface$CommandTypeSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->-com_android_internal_telephony_cat_AppInterface$CommandTypeSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->-com_android_internal_telephony_cat_AppInterface$CommandTypeSwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->values()[Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->CLOSE_CHANNEL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    #@10
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    #@13
    move-result v1

    #@14
    const/4 v2, 0x1

    #@15
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_14

    #@17
    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->DISPLAY_TEXT:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    #@19
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    #@1c
    move-result v1

    #@1d
    const/4 v2, 0x2

    #@1e
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_13

    #@20
    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->GET_CHANNEL_STATUS:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    #@22
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    #@25
    move-result v1

    #@26
    const/16 v2, 0x26

    #@28
    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_12

    #@2a
    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->GET_INKEY:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    #@2c
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    #@2f
    move-result v1

    #@30
    const/4 v2, 0x3

    #@31
    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_11

    #@33
    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->GET_INPUT:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    #@35
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    #@38
    move-result v1

    #@39
    const/4 v2, 0x4

    #@3a
    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_10

    #@3c
    :goto_4
    :try_start_5
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->LAUNCH_BROWSER:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    #@3e
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    #@41
    move-result v1

    #@42
    const/4 v2, 0x5

    #@43
    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_f

    #@45
    :goto_5
    :try_start_6
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->OPEN_CHANNEL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    #@47
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    #@4a
    move-result v1

    #@4b
    const/4 v2, 0x6

    #@4c
    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_e

    #@4e
    :goto_6
    :try_start_7
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->PLAY_TONE:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    #@50
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    #@53
    move-result v1

    #@54
    const/4 v2, 0x7

    #@55
    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_d

    #@57
    :goto_7
    :try_start_8
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->PROVIDE_LOCAL_INFORMATION:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    #@59
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    #@5c
    move-result v1

    #@5d
    const/16 v2, 0x8

    #@5f
    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_c

    #@61
    :goto_8
    :try_start_9
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->RECEIVE_DATA:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    #@63
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    #@66
    move-result v1

    #@67
    const/16 v2, 0x9

    #@69
    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_b

    #@6b
    :goto_9
    :try_start_a
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->REFRESH:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    #@6d
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    #@70
    move-result v1

    #@71
    const/16 v2, 0xa

    #@73
    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    #@75
    :goto_a
    :try_start_b
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SELECT_ITEM:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    #@77
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    #@7a
    move-result v1

    #@7b
    const/16 v2, 0xb

    #@7d
    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_9

    #@7f
    :goto_b
    :try_start_c
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SEND_DATA:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    #@81
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    #@84
    move-result v1

    #@85
    const/16 v2, 0xc

    #@87
    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_8

    #@89
    :goto_c
    :try_start_d
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SEND_DTMF:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    #@8b
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    #@8e
    move-result v1

    #@8f
    const/16 v2, 0xd

    #@91
    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_7

    #@93
    :goto_d
    :try_start_e
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SEND_SMS:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    #@95
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    #@98
    move-result v1

    #@99
    const/16 v2, 0xe

    #@9b
    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_6

    #@9d
    :goto_e
    :try_start_f
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SEND_SS:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    #@9f
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    #@a2
    move-result v1

    #@a3
    const/16 v2, 0xf

    #@a5
    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_5

    #@a7
    :goto_f
    :try_start_10
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SEND_USSD:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    #@a9
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    #@ac
    move-result v1

    #@ad
    const/16 v2, 0x10

    #@af
    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_4

    #@b1
    :goto_10
    :try_start_11
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_CALL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    #@b3
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    #@b6
    move-result v1

    #@b7
    const/16 v2, 0x11

    #@b9
    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_3

    #@bb
    :goto_11
    :try_start_12
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_EVENT_LIST:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    #@bd
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    #@c0
    move-result v1

    #@c1
    const/16 v2, 0x12

    #@c3
    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_2

    #@c5
    :goto_12
    :try_start_13
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_IDLE_MODE_TEXT:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    #@c7
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    #@ca
    move-result v1

    #@cb
    const/16 v2, 0x13

    #@cd
    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_1

    #@cf
    :goto_13
    :try_start_14
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_MENU:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    #@d1
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    #@d4
    move-result v1

    #@d5
    const/16 v2, 0x14

    #@d7
    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_0

    #@d9
    :goto_14
    sput-object v0, Lcom/android/internal/telephony/cat/CatService;->-com_android_internal_telephony_cat_AppInterface$CommandTypeSwitchesValues:[I

    #@db
    return-object v0

    #@dc
    :catch_0
    move-exception v1

    #@dd
    goto :goto_14

    #@de
    :catch_1
    move-exception v1

    #@df
    goto :goto_13

    #@e0
    :catch_2
    move-exception v1

    #@e1
    goto :goto_12

    #@e2
    :catch_3
    move-exception v1

    #@e3
    goto :goto_11

    #@e4
    :catch_4
    move-exception v1

    #@e5
    goto :goto_10

    #@e6
    :catch_5
    move-exception v1

    #@e7
    goto :goto_f

    #@e8
    :catch_6
    move-exception v1

    #@e9
    goto :goto_e

    #@ea
    :catch_7
    move-exception v1

    #@eb
    goto :goto_d

    #@ec
    :catch_8
    move-exception v1

    #@ed
    goto :goto_c

    #@ee
    :catch_9
    move-exception v1

    #@ef
    goto :goto_b

    #@f0
    :catch_a
    move-exception v1

    #@f1
    goto :goto_a

    #@f2
    :catch_b
    move-exception v1

    #@f3
    goto/16 :goto_9

    #@f5
    :catch_c
    move-exception v1

    #@f6
    goto/16 :goto_8

    #@f8
    :catch_d
    move-exception v1

    #@f9
    goto/16 :goto_7

    #@fb
    :catch_e
    move-exception v1

    #@fc
    goto/16 :goto_6

    #@fe
    :catch_f
    move-exception v1

    #@ff
    goto/16 :goto_5

    #@101
    :catch_10
    move-exception v1

    #@102
    goto/16 :goto_4

    #@104
    :catch_11
    move-exception v1

    #@105
    goto/16 :goto_3

    #@107
    :catch_12
    move-exception v1

    #@108
    goto/16 :goto_2

    #@10a
    :catch_13
    move-exception v1

    #@10b
    goto/16 :goto_1

    #@10d
    :catch_14
    move-exception v1

    #@10e
    goto/16 :goto_0
.end method

.method private static synthetic -getcom_android_internal_telephony_cat_ResultCodeSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->-com_android_internal_telephony_cat_ResultCodeSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->-com_android_internal_telephony_cat_ResultCodeSwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/cat/ResultCode;->values()[Lcom/android/internal/telephony/cat/ResultCode;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->ACCESS_TECH_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    #@10
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    #@13
    move-result v1

    #@14
    const/16 v2, 0x26

    #@16
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_24

    #@18
    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->BACKWARD_MOVE_BY_USER:Lcom/android/internal/telephony/cat/ResultCode;

    #@1a
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    #@1d
    move-result v1

    #@1e
    const/4 v2, 0x1

    #@1f
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_23

    #@21
    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    #@23
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    #@26
    move-result v1

    #@27
    const/16 v2, 0x27

    #@29
    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_22

    #@2b
    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    #@2d
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    #@30
    move-result v1

    #@31
    const/16 v2, 0x28

    #@33
    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_21

    #@35
    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    #@37
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    #@3a
    move-result v1

    #@3b
    const/16 v2, 0x29

    #@3d
    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_20

    #@3f
    :goto_4
    :try_start_5
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->CMD_NUM_NOT_KNOWN:Lcom/android/internal/telephony/cat/ResultCode;

    #@41
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    #@44
    move-result v1

    #@45
    const/16 v2, 0x2a

    #@47
    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1f

    #@49
    :goto_5
    :try_start_6
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->CMD_TYPE_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    #@4b
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    #@4e
    move-result v1

    #@4f
    const/16 v2, 0x2b

    #@51
    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_1e

    #@53
    :goto_6
    :try_start_7
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->CONTRADICTION_WITH_TIMER:Lcom/android/internal/telephony/cat/ResultCode;

    #@55
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    #@58
    move-result v1

    #@59
    const/16 v2, 0x2c

    #@5b
    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_1d

    #@5d
    :goto_7
    :try_start_8
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->FRAMES_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    #@5f
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    #@62
    move-result v1

    #@63
    const/16 v2, 0x2d

    #@65
    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_1c

    #@67
    :goto_8
    :try_start_9
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->HELP_INFO_REQUIRED:Lcom/android/internal/telephony/cat/ResultCode;

    #@69
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    #@6c
    move-result v1

    #@6d
    const/4 v2, 0x2

    #@6e
    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_1b

    #@70
    :goto_9
    :try_start_a
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->LAUNCH_BROWSER_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    #@72
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    #@75
    move-result v1

    #@76
    const/4 v2, 0x3

    #@77
    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_1a

    #@79
    :goto_a
    :try_start_b
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->MMS_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    #@7b
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    #@7e
    move-result v1

    #@7f
    const/16 v2, 0x2e

    #@81
    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_19

    #@83
    :goto_b
    :try_start_c
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->MMS_TEMPORARY:Lcom/android/internal/telephony/cat/ResultCode;

    #@85
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    #@88
    move-result v1

    #@89
    const/16 v2, 0x2f

    #@8b
    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_18

    #@8d
    :goto_c
    :try_start_d
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->MULTI_CARDS_CMD_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    #@8f
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    #@92
    move-result v1

    #@93
    const/16 v2, 0x30

    #@95
    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_17

    #@97
    :goto_d
    :try_start_e
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->NAA_CALL_CONTROL_TEMPORARY:Lcom/android/internal/telephony/cat/ResultCode;

    #@99
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    #@9c
    move-result v1

    #@9d
    const/16 v2, 0x31

    #@9f
    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_16

    #@a1
    :goto_e
    :try_start_f
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->NETWORK_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    #@a3
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    #@a6
    move-result v1

    #@a7
    const/16 v2, 0x32

    #@a9
    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_15

    #@ab
    :goto_f
    :try_start_10
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->NO_RESPONSE_FROM_USER:Lcom/android/internal/telephony/cat/ResultCode;

    #@ad
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    #@b0
    move-result v1

    #@b1
    const/4 v2, 0x4

    #@b2
    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_14

    #@b4
    :goto_10
    :try_start_11
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    #@b6
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    #@b9
    move-result v1

    #@ba
    const/4 v2, 0x5

    #@bb
    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_13

    #@bd
    :goto_11
    :try_start_12
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_ICON_NOT_DISPLAYED:Lcom/android/internal/telephony/cat/ResultCode;

    #@bf
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    #@c2
    move-result v1

    #@c3
    const/4 v2, 0x6

    #@c4
    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    #@c6
    :goto_12
    :try_start_13
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_LIMITED_SERVICE:Lcom/android/internal/telephony/cat/ResultCode;

    #@c8
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    #@cb
    move-result v1

    #@cc
    const/4 v2, 0x7

    #@cd
    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_11

    #@cf
    :goto_13
    :try_start_14
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_MODIFIED_BY_NAA:Lcom/android/internal/telephony/cat/ResultCode;

    #@d1
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    #@d4
    move-result v1

    #@d5
    const/16 v2, 0x8

    #@d7
    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_10

    #@d9
    :goto_14
    :try_start_15
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_NAA_NOT_ACTIVE:Lcom/android/internal/telephony/cat/ResultCode;

    #@db
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    #@de
    move-result v1

    #@df
    const/16 v2, 0x9

    #@e1
    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_f

    #@e3
    :goto_15
    :try_start_16
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_TONE_NOT_PLAYED:Lcom/android/internal/telephony/cat/ResultCode;

    #@e5
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    #@e8
    move-result v1

    #@e9
    const/16 v2, 0xa

    #@eb
    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_e

    #@ed
    :goto_16
    :try_start_17
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_WITH_ADDITIONAL_EFS_READ:Lcom/android/internal/telephony/cat/ResultCode;

    #@ef
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    #@f2
    move-result v1

    #@f3
    const/16 v2, 0xb

    #@f5
    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_d

    #@f7
    :goto_17
    :try_start_18
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_WITH_MISSING_INFO:Lcom/android/internal/telephony/cat/ResultCode;

    #@f9
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    #@fc
    move-result v1

    #@fd
    const/16 v2, 0xc

    #@ff
    aput v2, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_c

    #@101
    :goto_18
    :try_start_19
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_WITH_MODIFICATION:Lcom/android/internal/telephony/cat/ResultCode;

    #@103
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    #@106
    move-result v1

    #@107
    const/16 v2, 0xd

    #@109
    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_b

    #@10b
    :goto_19
    :try_start_1a
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_WITH_PARTIAL_COMPREHENSION:Lcom/android/internal/telephony/cat/ResultCode;

    #@10d
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    #@110
    move-result v1

    #@111
    const/16 v2, 0xe

    #@113
    aput v2, v0, v1
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_a

    #@115
    :goto_1a
    :try_start_1b
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cat/ResultCode;

    #@117
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    #@11a
    move-result v1

    #@11b
    const/16 v2, 0x33

    #@11d
    aput v2, v0, v1
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_9

    #@11f
    :goto_1b
    :try_start_1c
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->SMS_RP_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    #@121
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    #@124
    move-result v1

    #@125
    const/16 v2, 0x34

    #@127
    aput v2, v0, v1
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_8

    #@129
    :goto_1c
    :try_start_1d
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->SS_RETURN_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    #@12b
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    #@12e
    move-result v1

    #@12f
    const/16 v2, 0x35

    #@131
    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_7

    #@133
    :goto_1d
    :try_start_1e
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    #@135
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    #@138
    move-result v1

    #@139
    const/16 v2, 0xf

    #@13b
    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_6

    #@13d
    :goto_1e
    :try_start_1f
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->UICC_SESSION_TERM_BY_USER:Lcom/android/internal/telephony/cat/ResultCode;

    #@13f
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    #@142
    move-result v1

    #@143
    const/16 v2, 0x10

    #@145
    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_5

    #@147
    :goto_1f
    :try_start_20
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->USER_CLEAR_DOWN_CALL:Lcom/android/internal/telephony/cat/ResultCode;

    #@149
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    #@14c
    move-result v1

    #@14d
    const/16 v2, 0x36

    #@14f
    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_20} :catch_4

    #@151
    :goto_20
    :try_start_21
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->USER_NOT_ACCEPT:Lcom/android/internal/telephony/cat/ResultCode;

    #@153
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    #@156
    move-result v1

    #@157
    const/16 v2, 0x11

    #@159
    aput v2, v0, v1
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_21} :catch_3

    #@15b
    :goto_21
    :try_start_22
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->USIM_CALL_CONTROL_PERMANENT:Lcom/android/internal/telephony/cat/ResultCode;

    #@15d
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    #@160
    move-result v1

    #@161
    const/16 v2, 0x37

    #@163
    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_22} :catch_2

    #@165
    :goto_22
    :try_start_23
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->USSD_RETURN_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    #@167
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    #@16a
    move-result v1

    #@16b
    const/16 v2, 0x38

    #@16d
    aput v2, v0, v1
    :try_end_23
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_23} :catch_1

    #@16f
    :goto_23
    :try_start_24
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->USSD_SS_SESSION_TERM_BY_USER:Lcom/android/internal/telephony/cat/ResultCode;

    #@171
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    #@174
    move-result v1

    #@175
    const/16 v2, 0x39

    #@177
    aput v2, v0, v1
    :try_end_24
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24 .. :try_end_24} :catch_0

    #@179
    :goto_24
    sput-object v0, Lcom/android/internal/telephony/cat/CatService;->-com_android_internal_telephony_cat_ResultCodeSwitchesValues:[I

    #@17b
    return-object v0

    #@17c
    :catch_0
    move-exception v1

    #@17d
    goto :goto_24

    #@17e
    :catch_1
    move-exception v1

    #@17f
    goto :goto_23

    #@180
    :catch_2
    move-exception v1

    #@181
    goto :goto_22

    #@182
    :catch_3
    move-exception v1

    #@183
    goto :goto_21

    #@184
    :catch_4
    move-exception v1

    #@185
    goto :goto_20

    #@186
    :catch_5
    move-exception v1

    #@187
    goto :goto_1f

    #@188
    :catch_6
    move-exception v1

    #@189
    goto :goto_1e

    #@18a
    :catch_7
    move-exception v1

    #@18b
    goto :goto_1d

    #@18c
    :catch_8
    move-exception v1

    #@18d
    goto :goto_1c

    #@18e
    :catch_9
    move-exception v1

    #@18f
    goto :goto_1b

    #@190
    :catch_a
    move-exception v1

    #@191
    goto :goto_1a

    #@192
    :catch_b
    move-exception v1

    #@193
    goto/16 :goto_19

    #@195
    :catch_c
    move-exception v1

    #@196
    goto/16 :goto_18

    #@198
    :catch_d
    move-exception v1

    #@199
    goto/16 :goto_17

    #@19b
    :catch_e
    move-exception v1

    #@19c
    goto/16 :goto_16

    #@19e
    :catch_f
    move-exception v1

    #@19f
    goto/16 :goto_15

    #@1a1
    :catch_10
    move-exception v1

    #@1a2
    goto/16 :goto_14

    #@1a4
    :catch_11
    move-exception v1

    #@1a5
    goto/16 :goto_13

    #@1a7
    :catch_12
    move-exception v1

    #@1a8
    goto/16 :goto_12

    #@1aa
    :catch_13
    move-exception v1

    #@1ab
    goto/16 :goto_11

    #@1ad
    :catch_14
    move-exception v1

    #@1ae
    goto/16 :goto_10

    #@1b0
    :catch_15
    move-exception v1

    #@1b1
    goto/16 :goto_f

    #@1b3
    :catch_16
    move-exception v1

    #@1b4
    goto/16 :goto_e

    #@1b6
    :catch_17
    move-exception v1

    #@1b7
    goto/16 :goto_d

    #@1b9
    :catch_18
    move-exception v1

    #@1ba
    goto/16 :goto_c

    #@1bc
    :catch_19
    move-exception v1

    #@1bd
    goto/16 :goto_b

    #@1bf
    :catch_1a
    move-exception v1

    #@1c0
    goto/16 :goto_a

    #@1c2
    :catch_1b
    move-exception v1

    #@1c3
    goto/16 :goto_9

    #@1c5
    :catch_1c
    move-exception v1

    #@1c6
    goto/16 :goto_8

    #@1c8
    :catch_1d
    move-exception v1

    #@1c9
    goto/16 :goto_7

    #@1cb
    :catch_1e
    move-exception v1

    #@1cc
    goto/16 :goto_6

    #@1ce
    :catch_1f
    move-exception v1

    #@1cf
    goto/16 :goto_5

    #@1d1
    :catch_20
    move-exception v1

    #@1d2
    goto/16 :goto_4

    #@1d4
    :catch_21
    move-exception v1

    #@1d5
    goto/16 :goto_3

    #@1d7
    :catch_22
    move-exception v1

    #@1d8
    goto/16 :goto_2

    #@1da
    :catch_23
    move-exception v1

    #@1db
    goto/16 :goto_1

    #@1dd
    :catch_24
    move-exception v1

    #@1de
    goto/16 :goto_0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 85
    new-instance v0, Ljava/lang/Object;

    #@2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@5
    sput-object v0, Lcom/android/internal/telephony/cat/CatService;->sInstanceLock:Ljava/lang/Object;

    #@7
    .line 86
    const/4 v0, 0x0

    #@8
    sput-object v0, Lcom/android/internal/telephony/cat/CatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    #@a
    .line 76
    return-void
.end method

.method private constructor <init>(Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/UiccCardApplication;Lcom/android/internal/telephony/uicc/IccRecords;Landroid/content/Context;Lcom/android/internal/telephony/uicc/IccFileHandler;Lcom/android/internal/telephony/uicc/UiccCard;I)V
    .locals 4
    .param p1, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p2, "ca"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .param p3, "ir"    # Lcom/android/internal/telephony/uicc/IccRecords;
    .param p4, "context"    # Landroid/content/Context;
    .param p5, "fh"    # Lcom/android/internal/telephony/uicc/IccFileHandler;
    .param p6, "ic"    # Lcom/android/internal/telephony/uicc/UiccCard;
    .param p7, "slotId"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 130
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #@4
    .line 89
    iput-object v3, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    #@6
    .line 90
    iput-object v3, p0, Lcom/android/internal/telephony/cat/CatService;->mMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    #@8
    .line 92
    iput-object v3, p0, Lcom/android/internal/telephony/cat/CatService;->mMsgDecoder:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    #@a
    .line 93
    const/4 v0, 0x0

    #@b
    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/CatService;->mStkAppInstalled:Z

    #@d
    .line 96
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    #@f
    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    #@11
    .line 132
    if-eqz p1, :cond_0

    #@13
    if-nez p2, :cond_1

    #@15
    .line 134
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    #@17
    .line 135
    const-string/jumbo v1, "Service: Input parameters must not be null"

    #@1a
    .line 134
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v0

    #@1e
    .line 132
    :cond_1
    if-eqz p3, :cond_0

    #@20
    if-eqz p4, :cond_0

    #@22
    if-eqz p5, :cond_0

    #@24
    .line 133
    if-eqz p6, :cond_0

    #@26
    .line 137
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    #@28
    .line 138
    iput-object p4, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    #@2a
    .line 139
    iput p7, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    #@2c
    .line 140
    new-instance v0, Landroid/os/HandlerThread;

    #@2e
    new-instance v1, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    const-string/jumbo v2, "Cat Telephony service"

    #@36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v1

    #@3a
    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v1

    #@3e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v1

    #@42
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    #@45
    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mHandlerThread:Landroid/os/HandlerThread;

    #@47
    .line 141
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mHandlerThread:Landroid/os/HandlerThread;

    #@49
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    #@4c
    .line 144
    invoke-static {p0, p5, p7}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->getInstance(Landroid/os/Handler;Lcom/android/internal/telephony/uicc/IccFileHandler;I)Lcom/android/internal/telephony/cat/RilMessageDecoder;

    #@4f
    move-result-object v0

    #@50
    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mMsgDecoder:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    #@52
    .line 145
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mMsgDecoder:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    #@54
    if-nez v0, :cond_2

    #@56
    .line 146
    const-string/jumbo v0, "Null RilMessageDecoder instance"

    #@59
    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    #@5c
    .line 147
    return-void

    #@5d
    .line 149
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mMsgDecoder:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    #@5f
    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->start()V

    #@62
    .line 152
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    #@64
    const/4 v1, 0x1

    #@65
    invoke-interface {v0, p0, v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->setOnCatSessionEnd(Landroid/os/Handler;ILjava/lang/Object;)V

    #@68
    .line 153
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    #@6a
    const/4 v1, 0x2

    #@6b
    invoke-interface {v0, p0, v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->setOnCatProactiveCmd(Landroid/os/Handler;ILjava/lang/Object;)V

    #@6e
    .line 154
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    #@70
    const/4 v1, 0x3

    #@71
    invoke-interface {v0, p0, v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->setOnCatEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    #@74
    .line 155
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    #@76
    const/4 v1, 0x4

    #@77
    invoke-interface {v0, p0, v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->setOnCatCallSetUp(Landroid/os/Handler;ILjava/lang/Object;)V

    #@7a
    .line 158
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    #@7c
    const/16 v1, 0x1e

    #@7e
    invoke-interface {v0, p0, v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    #@81
    .line 159
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    #@83
    const/16 v1, 0x9

    #@85
    invoke-interface {v0, p0, v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->setOnCatCcAlphaNotify(Landroid/os/Handler;ILjava/lang/Object;)V

    #@88
    .line 161
    sput-object p3, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@8a
    .line 162
    sput-object p2, Lcom/android/internal/telephony/cat/CatService;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@8c
    .line 165
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@8e
    const/16 v1, 0x14

    #@90
    invoke-virtual {v0, p0, v1, v3}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    #@93
    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    #@95
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@98
    const-string/jumbo v1, "registerForRecordsLoaded slotid="

    #@9b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9e
    move-result-object v0

    #@9f
    iget v1, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    #@a1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a4
    move-result-object v0

    #@a5
    const-string/jumbo v1, " instance:"

    #@a8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ab
    move-result-object v0

    #@ac
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@af
    move-result-object v0

    #@b0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b3
    move-result-object v0

    #@b4
    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    #@b7
    .line 169
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    #@ba
    move-result-object v0

    #@bb
    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    #@bd
    .line 170
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    #@bf
    const/16 v1, 0x8

    #@c1
    invoke-virtual {v0, p0, v1, v3}, Lcom/android/internal/telephony/uicc/UiccController;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    #@c4
    .line 173
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatService;->isStkAppInstalled()Z

    #@c7
    move-result v0

    #@c8
    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/CatService;->mStkAppInstalled:Z

    #@ca
    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    #@cc
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@cf
    const-string/jumbo v1, "Running CAT service on Slotid: "

    #@d2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d5
    move-result-object v0

    #@d6
    iget v1, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    #@d8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@db
    move-result-object v0

    #@dc
    .line 176
    const-string/jumbo v1, ". STK app installed:"

    #@df
    .line 175
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e2
    move-result-object v0

    #@e3
    .line 176
    iget-boolean v1, p0, Lcom/android/internal/telephony/cat/CatService;->mStkAppInstalled:Z

    #@e5
    .line 175
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@e8
    move-result-object v0

    #@e9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ec
    move-result-object v0

    #@ed
    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    #@f0
    .line 131
    return-void
.end method

.method private broadcastAlphaMessage(Ljava/lang/String;)V
    .locals 3
    .param p1, "alphaString"    # Ljava/lang/String;

    #@0
    .prologue
    .line 882
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v2, "Broadcasting CAT Alpha message from card: "

    #@8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    #@17
    .line 883
    new-instance v0, Landroid/content/Intent;

    #@19
    const-string/jumbo v1, "android.intent.action.stk.alpha_notify"

    #@1c
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@1f
    .line 884
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    #@21
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@24
    .line 885
    const-string/jumbo v1, "alpha_string"

    #@27
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@2a
    .line 886
    const-string/jumbo v1, "SLOT_ID"

    #@2d
    iget v2, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    #@2f
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@32
    .line 887
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    #@34
    const-string/jumbo v2, "android.permission.RECEIVE_STK_COMMANDS"

    #@37
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    #@3a
    .line 881
    return-void
.end method

.method private broadcastCardStateAndIccRefreshResp(Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;Lcom/android/internal/telephony/uicc/IccRefreshResponse;)V
    .locals 4
    .param p1, "cardState"    # Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    .param p2, "iccRefreshState"    # Lcom/android/internal/telephony/uicc/IccRefreshResponse;

    #@0
    .prologue
    .line 864
    new-instance v1, Landroid/content/Intent;

    #@2
    const-string/jumbo v2, "android.intent.action.stk.icc_status_change"

    #@5
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@8
    .line 865
    .local v1, "intent":Landroid/content/Intent;
    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    #@a
    if-ne p1, v2, :cond_1

    #@c
    const/4 v0, 0x1

    #@d
    .line 867
    .local v0, "cardPresent":Z
    :goto_0
    if-eqz p2, :cond_0

    #@f
    .line 869
    const-string/jumbo v2, "refresh_result"

    #@12
    iget v3, p2, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    #@14
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@17
    .line 870
    new-instance v2, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v3, "Sending IccResult with Result: "

    #@1f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    .line 871
    iget v3, p2, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    #@25
    .line 870
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v2

    #@2d
    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    #@30
    .line 875
    :cond_0
    const-string/jumbo v2, "card_status"

    #@33
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    #@36
    .line 876
    new-instance v2, Ljava/lang/StringBuilder;

    #@38
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@3b
    const-string/jumbo v3, "Sending Card Status: "

    #@3e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v2

    #@42
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v2

    #@46
    .line 877
    const-string/jumbo v3, " "

    #@49
    .line 876
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v2

    #@4d
    .line 877
    const-string/jumbo v3, "cardPresent: "

    #@50
    .line 876
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v2

    #@54
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@57
    move-result-object v2

    #@58
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5b
    move-result-object v2

    #@5c
    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    #@5f
    .line 878
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    #@61
    const-string/jumbo v3, "android.permission.RECEIVE_STK_COMMANDS"

    #@64
    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    #@67
    .line 863
    return-void

    #@68
    .line 865
    .end local v0    # "cardPresent":Z
    :cond_1
    const/4 v0, 0x0

    #@69
    .restart local v0    # "cardPresent":Z
    goto :goto_0
.end method

.method private broadcastCatCmdIntent(Lcom/android/internal/telephony/cat/CatCmdMessage;)V
    .locals 3
    .param p1, "cmdMsg"    # Lcom/android/internal/telephony/cat/CatCmdMessage;

    #@0
    .prologue
    .line 508
    new-instance v0, Landroid/content/Intent;

    #@2
    const-string/jumbo v1, "android.intent.action.stk.command"

    #@5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@8
    .line 509
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "STK CMD"

    #@b
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@e
    .line 510
    const-string/jumbo v1, "SLOT_ID"

    #@11
    iget v2, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    #@13
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@16
    .line 511
    new-instance v1, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v2, "Sending CmdMsg: "

    #@1e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    const-string/jumbo v2, " on slotid:"

    #@29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    iget v2, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    #@2f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@32
    move-result-object v1

    #@33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v1

    #@37
    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    #@3a
    .line 512
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    #@3c
    const-string/jumbo v2, "android.permission.RECEIVE_STK_COMMANDS"

    #@3f
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    #@42
    .line 507
    return-void
.end method

.method private encodeOptionalTags(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;Lcom/android/internal/telephony/cat/Input;Ljava/io/ByteArrayOutputStream;)V
    .locals 3
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cat/CommandDetails;
    .param p2, "resultCode"    # Lcom/android/internal/telephony/cat/ResultCode;
    .param p3, "cmdInput"    # Lcom/android/internal/telephony/cat/Input;
    .param p4, "buf"    # Ljava/io/ByteArrayOutputStream;

    #@0
    .prologue
    .line 600
    iget v1, p1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    #@2
    invoke-static {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    #@5
    move-result-object v0

    #@6
    .line 601
    .local v0, "cmdType":Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    if-eqz v0, :cond_1

    #@8
    .line 602
    invoke-static {}, Lcom/android/internal/telephony/cat/CatService;->-getcom_android_internal_telephony_cat_AppInterface$CommandTypeSwitchesValues()[I

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    #@f
    move-result v2

    #@10
    aget v1, v1, v2

    #@12
    sparse-switch v1, :sswitch_data_0

    #@15
    .line 619
    new-instance v1, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v2, "encodeOptionalTags() Unsupported Cmd details="

    #@1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v1

    #@29
    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    #@2c
    .line 599
    :cond_0
    :goto_0
    return-void

    #@2d
    .line 607
    :sswitch_0
    invoke-virtual {p2}, Lcom/android/internal/telephony/cat/ResultCode;->value()I

    #@30
    move-result v1

    #@31
    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->NO_RESPONSE_FROM_USER:Lcom/android/internal/telephony/cat/ResultCode;

    #@33
    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ResultCode;->value()I

    #@36
    move-result v2

    #@37
    if-ne v1, v2, :cond_0

    #@39
    .line 608
    if-eqz p3, :cond_0

    #@3b
    iget-object v1, p3, Lcom/android/internal/telephony/cat/Input;->duration:Lcom/android/internal/telephony/cat/Duration;

    #@3d
    if-eqz v1, :cond_0

    #@3f
    .line 609
    invoke-direct {p0, p4, p3}, Lcom/android/internal/telephony/cat/CatService;->getInKeyResponse(Ljava/io/ByteArrayOutputStream;Lcom/android/internal/telephony/cat/Input;)V

    #@42
    goto :goto_0

    #@43
    .line 613
    :sswitch_1
    iget v1, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    #@45
    const/4 v2, 0x4

    #@46
    if-ne v1, v2, :cond_0

    #@48
    .line 614
    invoke-virtual {p2}, Lcom/android/internal/telephony/cat/ResultCode;->value()I

    #@4b
    move-result v1

    #@4c
    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    #@4e
    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ResultCode;->value()I

    #@51
    move-result v2

    #@52
    if-ne v1, v2, :cond_0

    #@54
    .line 615
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/cat/CatService;->getPliResponse(Ljava/io/ByteArrayOutputStream;)V

    #@57
    goto :goto_0

    #@58
    .line 623
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    #@5a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5d
    const-string/jumbo v2, "encodeOptionalTags() bad Cmd details="

    #@60
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v1

    #@64
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v1

    #@68
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6b
    move-result-object v1

    #@6c
    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    #@6f
    goto :goto_0

    #@70
    .line 602
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method private eventDownload(III[BZ)V
    .locals 8
    .param p1, "event"    # I
    .param p2, "sourceId"    # I
    .param p3, "destinationId"    # I
    .param p4, "additionalInfo"    # [B
    .param p5, "oneShot"    # Z

    #@0
    .prologue
    .line 694
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    #@2
    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@5
    .line 697
    .local v1, "buf":Ljava/io/ByteArrayOutputStream;
    const/16 v5, 0xd6

    #@7
    .line 698
    .local v5, "tag":I
    invoke-virtual {v1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@a
    .line 701
    const/4 v6, 0x0

    #@b
    invoke-virtual {v1, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@e
    .line 704
    sget-object v6, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->EVENT_LIST:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@10
    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    #@13
    move-result v6

    #@14
    or-int/lit16 v5, v6, 0x80

    #@16
    .line 705
    invoke-virtual {v1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@19
    .line 706
    const/4 v6, 0x1

    #@1a
    invoke-virtual {v1, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@1d
    .line 707
    invoke-virtual {v1, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@20
    .line 710
    sget-object v6, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@22
    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    #@25
    move-result v6

    #@26
    or-int/lit16 v5, v6, 0x80

    #@28
    .line 711
    invoke-virtual {v1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@2b
    .line 712
    const/4 v6, 0x2

    #@2c
    invoke-virtual {v1, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@2f
    .line 713
    invoke-virtual {v1, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@32
    .line 714
    invoke-virtual {v1, p3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@35
    .line 728
    packed-switch p1, :pswitch_data_0

    #@38
    .line 744
    :goto_0
    :pswitch_0
    if-eqz p4, :cond_0

    #@3a
    .line 745
    const/4 v6, 0x0

    #@3b
    array-length v7, p4

    #@3c
    :goto_1
    if-ge v6, v7, :cond_0

    #@3e
    aget-byte v0, p4, v6

    #@40
    .line 746
    .local v0, "b":B
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@43
    .line 745
    add-int/lit8 v6, v6, 0x1

    #@45
    goto :goto_1

    #@46
    .line 730
    .end local v0    # "b":B
    :pswitch_1
    sget-object v6, Lcom/android/internal/telephony/cat/CatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    #@48
    const-string/jumbo v7, " Sending Idle Screen Available event download to ICC"

    #@4b
    invoke-static {v6, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    #@4e
    goto :goto_0

    #@4f
    .line 733
    :pswitch_2
    sget-object v6, Lcom/android/internal/telephony/cat/CatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    #@51
    const-string/jumbo v7, " Sending Language Selection event download to ICC"

    #@54
    invoke-static {v6, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    #@57
    .line 734
    sget-object v6, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->LANGUAGE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@59
    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    #@5c
    move-result v6

    #@5d
    or-int/lit16 v5, v6, 0x80

    #@5f
    .line 735
    invoke-virtual {v1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@62
    .line 737
    const/4 v6, 0x2

    #@63
    invoke-virtual {v1, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@66
    goto :goto_0

    #@67
    .line 750
    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@6a
    move-result-object v4

    #@6b
    .line 753
    .local v4, "rawData":[B
    array-length v6, v4

    #@6c
    add-int/lit8 v3, v6, -0x2

    #@6e
    .line 754
    .local v3, "len":I
    int-to-byte v6, v3

    #@6f
    const/4 v7, 0x1

    #@70
    aput-byte v6, v4, v7

    #@72
    .line 756
    invoke-static {v4}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    #@75
    move-result-object v2

    #@76
    .line 758
    .local v2, "hexString":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    #@78
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@7b
    const-string/jumbo v7, "ENVELOPE COMMAND: "

    #@7e
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v6

    #@82
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v6

    #@86
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@89
    move-result-object v6

    #@8a
    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    #@8d
    .line 760
    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    #@8f
    const/4 v7, 0x0

    #@90
    invoke-interface {v6, v2, v7}, Lcom/android/internal/telephony/CommandsInterface;->sendEnvelope(Ljava/lang/String;Landroid/os/Message;)V

    #@93
    .line 692
    return-void

    #@94
    .line 728
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private getInKeyResponse(Ljava/io/ByteArrayOutputStream;Lcom/android/internal/telephony/cat/Input;)V
    .locals 2
    .param p1, "buf"    # Ljava/io/ByteArrayOutputStream;
    .param p2, "cmdInput"    # Lcom/android/internal/telephony/cat/Input;

    #@0
    .prologue
    .line 628
    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DURATION:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@2
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    #@5
    move-result v0

    #@6
    .line 630
    .local v0, "tag":I
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@9
    .line 631
    const/4 v1, 0x2

    #@a
    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@d
    .line 632
    iget-object v1, p2, Lcom/android/internal/telephony/cat/Input;->duration:Lcom/android/internal/telephony/cat/Duration;

    #@f
    iget-object v1, v1, Lcom/android/internal/telephony/cat/Duration;->timeUnit:Lcom/android/internal/telephony/cat/Duration$TimeUnit;

    #@11
    sget-object v1, Lcom/android/internal/telephony/cat/Duration$TimeUnit;->SECOND:Lcom/android/internal/telephony/cat/Duration$TimeUnit;

    #@13
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/Duration$TimeUnit;->value()I

    #@16
    move-result v1

    #@17
    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@1a
    .line 633
    iget-object v1, p2, Lcom/android/internal/telephony/cat/Input;->duration:Lcom/android/internal/telephony/cat/Duration;

    #@1c
    iget v1, v1, Lcom/android/internal/telephony/cat/Duration;->timeInterval:I

    #@1e
    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@21
    .line 627
    return-void
.end method

.method public static getInstance()Lcom/android/internal/telephony/cat/AppInterface;
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 770
    const/4 v1, 0x0

    #@2
    .line 771
    .local v1, "slotId":I
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    #@5
    move-result-object v0

    #@6
    .line 772
    .local v0, "sControl":Lcom/android/internal/telephony/SubscriptionController;
    if-eqz v0, :cond_0

    #@8
    .line 773
    invoke-virtual {v0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultSubId()I

    #@b
    move-result v2

    #@c
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/SubscriptionController;->getSlotId(I)I

    #@f
    move-result v1

    #@10
    .line 775
    :cond_0
    invoke-static {v3, v3, v3, v1}, Lcom/android/internal/telephony/cat/CatService;->getInstance(Lcom/android/internal/telephony/CommandsInterface;Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccCard;I)Lcom/android/internal/telephony/cat/CatService;

    #@13
    move-result-object v2

    #@14
    return-object v2
.end method

.method public static getInstance(I)Lcom/android/internal/telephony/cat/AppInterface;
    .locals 1
    .param p0, "slotId"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 784
    invoke-static {v0, v0, v0, p0}, Lcom/android/internal/telephony/cat/CatService;->getInstance(Lcom/android/internal/telephony/CommandsInterface;Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccCard;I)Lcom/android/internal/telephony/cat/CatService;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static getInstance(Lcom/android/internal/telephony/CommandsInterface;Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccCard;I)Lcom/android/internal/telephony/cat/CatService;
    .locals 12
    .param p0, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ic"    # Lcom/android/internal/telephony/uicc/UiccCard;
    .param p3, "slotId"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 190
    const/4 v2, 0x0

    #@2
    .line 191
    .local v2, "ca":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    const/4 v5, 0x0

    #@3
    .line 192
    .local v5, "fh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    const/4 v3, 0x0

    #@4
    .line 193
    .local v3, "ir":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz p2, :cond_0

    #@6
    .line 197
    const/4 v0, 0x0

    #@7
    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplicationIndex(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@a
    move-result-object v2

    #@b
    .line 198
    .local v2, "ca":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v2, :cond_0

    #@d
    .line 199
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@10
    move-result-object v5

    #@11
    .line 200
    .local v5, "fh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    #@14
    move-result-object v3

    #@15
    .line 204
    .end local v2    # "ca":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .end local v3    # "ir":Lcom/android/internal/telephony/uicc/IccRecords;
    .end local v5    # "fh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    :cond_0
    sget-object v10, Lcom/android/internal/telephony/cat/CatService;->sInstanceLock:Ljava/lang/Object;

    #@17
    monitor-enter v10

    #@18
    .line 205
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    #@1a
    if-nez v0, :cond_1

    #@1c
    .line 206
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    #@1f
    move-result-object v0

    #@20
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCount()I

    #@23
    move-result v9

    #@24
    .line 207
    .local v9, "simCount":I
    new-array v0, v9, [Lcom/android/internal/telephony/cat/CatService;

    #@26
    sput-object v0, Lcom/android/internal/telephony/cat/CatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    #@28
    .line 208
    const/4 v8, 0x0

    #@29
    .local v8, "i":I
    :goto_0
    if-ge v8, v9, :cond_1

    #@2b
    .line 209
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    #@2d
    const/4 v1, 0x0

    #@2e
    aput-object v1, v0, v8

    #@30
    .line 208
    add-int/lit8 v8, v8, 0x1

    #@32
    goto :goto_0

    #@33
    .line 212
    .end local v8    # "i":I
    .end local v9    # "simCount":I
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    #@35
    aget-object v0, v0, p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@37
    if-nez v0, :cond_5

    #@39
    .line 213
    if-eqz p0, :cond_2

    #@3b
    if-nez v2, :cond_3

    #@3d
    :cond_2
    monitor-exit v10

    #@3e
    .line 215
    return-object v4

    #@3f
    .line 213
    :cond_3
    if-eqz v3, :cond_2

    #@41
    if-eqz p1, :cond_2

    #@43
    if-eqz v5, :cond_2

    #@45
    .line 214
    if-eqz p2, :cond_2

    #@47
    .line 218
    :try_start_1
    sget-object v11, Lcom/android/internal/telephony/cat/CatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    #@49
    new-instance v0, Lcom/android/internal/telephony/cat/CatService;

    #@4b
    move-object v1, p0

    #@4c
    move-object v4, p1

    #@4d
    move-object v6, p2

    #@4e
    move v7, p3

    #@4f
    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/cat/CatService;-><init>(Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/UiccCardApplication;Lcom/android/internal/telephony/uicc/IccRecords;Landroid/content/Context;Lcom/android/internal/telephony/uicc/IccFileHandler;Lcom/android/internal/telephony/uicc/UiccCard;I)V

    #@52
    aput-object v0, v11, p3

    #@54
    .line 232
    :cond_4
    :goto_1
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    #@56
    aget-object v0, v0, p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@58
    monitor-exit v10

    #@59
    return-object v0

    #@5a
    .line 219
    :cond_5
    if-eqz v3, :cond_4

    #@5c
    :try_start_2
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@5e
    if-eq v0, v3, :cond_4

    #@60
    .line 220
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@62
    if-eqz v0, :cond_6

    #@64
    .line 221
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@66
    sget-object v1, Lcom/android/internal/telephony/cat/CatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    #@68
    aget-object v1, v1, p3

    #@6a
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    #@6d
    .line 224
    :cond_6
    sput-object v3, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@6f
    .line 225
    sput-object v2, Lcom/android/internal/telephony/cat/CatService;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@71
    .line 227
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@73
    sget-object v1, Lcom/android/internal/telephony/cat/CatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    #@75
    aget-object v1, v1, p3

    #@77
    .line 228
    const/16 v4, 0x14

    #@79
    const/4 v6, 0x0

    #@7a
    .line 227
    invoke-virtual {v0, v1, v4, v6}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    #@7d
    .line 229
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    #@7f
    aget-object v0, v0, p3

    #@81
    new-instance v1, Ljava/lang/StringBuilder;

    #@83
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@86
    const-string/jumbo v4, "registerForRecordsLoaded slotid="

    #@89
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v1

    #@8d
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@90
    move-result-object v1

    #@91
    .line 230
    const-string/jumbo v4, " instance:"

    #@94
    .line 229
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@97
    move-result-object v1

    #@98
    .line 230
    sget-object v4, Lcom/android/internal/telephony/cat/CatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    #@9a
    aget-object v4, v4, p3

    #@9c
    .line 229
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@9f
    move-result-object v1

    #@a0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a3
    move-result-object v1

    #@a4
    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@a7
    goto :goto_1

    #@a8
    .line 204
    :catchall_0
    move-exception v0

    #@a9
    monitor-exit v10

    #@aa
    throw v0
.end method

.method private getPliResponse(Ljava/io/ByteArrayOutputStream;)V
    .locals 5
    .param p1, "buf"    # Ljava/io/ByteArrayOutputStream;

    #@0
    .prologue
    .line 638
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@3
    move-result-object v2

    #@4
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    .line 640
    .local v0, "lang":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@a
    .line 642
    sget-object v2, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->LANGUAGE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@c
    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    #@f
    move-result v1

    #@10
    .line 643
    .local v1, "tag":I
    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@13
    .line 644
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@16
    move-result v2

    #@17
    invoke-static {p1, v2}, Lcom/android/internal/telephony/cat/ResponseData;->writeLength(Ljava/io/ByteArrayOutputStream;I)V

    #@1a
    .line 645
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@21
    move-result v3

    #@22
    const/4 v4, 0x0

    #@23
    invoke-virtual {p1, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    #@26
    .line 636
    .end local v1    # "tag":I
    :cond_0
    return-void
.end method

.method private handleCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V
    .locals 11
    .param p1, "resMsg"    # Lcom/android/internal/telephony/cat/CatResponseMessage;

    #@0
    .prologue
    const/16 v3, 0x81

    #@2
    const/4 v10, 0x0

    #@3
    const/4 v5, 0x0

    #@4
    .line 942
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CatService;->validateResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)Z

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_0

    #@a
    .line 943
    return-void

    #@b
    .line 945
    :cond_0
    const/4 v8, 0x0

    #@c
    .line 946
    .local v8, "resp":Lcom/android/internal/telephony/cat/ResponseData;
    const/4 v6, 0x0

    #@d
    .line 947
    .local v6, "helpRequired":Z
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatResponseMessage;->getCmdDetails()Lcom/android/internal/telephony/cat/CommandDetails;

    #@10
    move-result-object v1

    #@11
    .line 948
    .local v1, "cmdDet":Lcom/android/internal/telephony/cat/CommandDetails;
    iget v0, v1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    #@13
    invoke-static {v0}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    #@16
    move-result-object v9

    #@17
    .line 950
    .local v9, "type":Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    invoke-static {}, Lcom/android/internal/telephony/cat/CatService;->-getcom_android_internal_telephony_cat_ResultCodeSwitchesValues()[I

    #@1a
    move-result-object v0

    #@1b
    iget-object v2, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    #@1d
    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    #@20
    move-result v2

    #@21
    aget v0, v0, v2

    #@23
    packed-switch v0, :pswitch_data_0

    #@26
    .line 1043
    return-void

    #@27
    .line 952
    :pswitch_0
    const/4 v6, 0x1

    #@28
    .line 966
    :pswitch_1
    invoke-static {}, Lcom/android/internal/telephony/cat/CatService;->-getcom_android_internal_telephony_cat_AppInterface$CommandTypeSwitchesValues()[I

    #@2b
    move-result-object v0

    #@2c
    invoke-virtual {v9}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    #@2f
    move-result v2

    #@30
    aget v0, v0, v2

    #@32
    packed-switch v0, :pswitch_data_1

    #@35
    :pswitch_2
    move-object v5, v8

    #@36
    .line 1045
    .end local v8    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    :goto_0
    iget-object v2, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    #@38
    iget-boolean v3, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mIncludeAdditionalInfo:Z

    #@3a
    .line 1046
    iget v4, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mAdditionalInfo:I

    #@3c
    move-object v0, p0

    #@3d
    .line 1045
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    #@40
    .line 1047
    iput-object v10, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    #@42
    .line 925
    return-void

    #@43
    .line 968
    .restart local v8    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    :pswitch_3
    iget-object v0, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    #@45
    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->HELP_INFO_REQUIRED:Lcom/android/internal/telephony/cat/ResultCode;

    #@47
    if-ne v0, v2, :cond_1

    #@49
    const/4 v6, 0x1

    #@4a
    .line 969
    :goto_1
    iget v0, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersMenuSelection:I

    #@4c
    invoke-direct {p0, v0, v6}, Lcom/android/internal/telephony/cat/CatService;->sendMenuSelection(IZ)V

    #@4f
    .line 970
    return-void

    #@50
    .line 968
    :cond_1
    const/4 v6, 0x0

    #@51
    goto :goto_1

    #@52
    .line 972
    :pswitch_4
    new-instance v5, Lcom/android/internal/telephony/cat/SelectItemResponseData;

    #@54
    iget v0, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersMenuSelection:I

    #@56
    invoke-direct {v5, v0}, Lcom/android/internal/telephony/cat/SelectItemResponseData;-><init>(I)V

    #@59
    .line 973
    .local v5, "resp":Lcom/android/internal/telephony/cat/ResponseData;
    goto :goto_0

    #@5a
    .line 976
    .end local v5    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    :pswitch_5
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    #@5c
    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geInput()Lcom/android/internal/telephony/cat/Input;

    #@5f
    move-result-object v7

    #@60
    .line 977
    .local v7, "input":Lcom/android/internal/telephony/cat/Input;
    iget-boolean v0, v7, Lcom/android/internal/telephony/cat/Input;->yesNo:Z

    #@62
    if-nez v0, :cond_2

    #@64
    .line 980
    if-nez v6, :cond_7

    #@66
    .line 981
    new-instance v5, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;

    #@68
    iget-object v0, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersInput:Ljava/lang/String;

    #@6a
    .line 982
    iget-boolean v2, v7, Lcom/android/internal/telephony/cat/Input;->ucs2:Z

    #@6c
    iget-boolean v3, v7, Lcom/android/internal/telephony/cat/Input;->packed:Z

    #@6e
    .line 981
    invoke-direct {v5, v0, v2, v3}, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;-><init>(Ljava/lang/String;ZZ)V

    #@71
    .restart local v5    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    goto :goto_0

    #@72
    .line 985
    .end local v5    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    :cond_2
    new-instance v5, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;

    #@74
    .line 986
    iget-boolean v0, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersYesNoSelection:Z

    #@76
    .line 985
    invoke-direct {v5, v0}, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;-><init>(Z)V

    #@79
    .restart local v5    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    goto :goto_0

    #@7a
    .line 990
    .end local v5    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    .end local v7    # "input":Lcom/android/internal/telephony/cat/Input;
    :pswitch_6
    iget-object v0, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    #@7c
    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    #@7e
    if-ne v0, v2, :cond_3

    #@80
    .line 993
    const/4 v0, 0x1

    #@81
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setAdditionalInfo(I)V

    #@84
    :goto_2
    move-object v5, v8

    #@85
    .line 998
    .restart local v5    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    goto :goto_0

    #@86
    .line 995
    .end local v5    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    :cond_3
    iput-boolean v5, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mIncludeAdditionalInfo:Z

    #@88
    .line 996
    iput v5, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mAdditionalInfo:I

    #@8a
    goto :goto_2

    #@8b
    :pswitch_7
    move-object v5, v8

    #@8c
    .line 1000
    .restart local v5    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    goto :goto_0

    #@8d
    .line 1004
    .end local v5    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    :pswitch_8
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    #@8f
    iget-boolean v2, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersConfirm:Z

    #@91
    invoke-interface {v0, v2, v10}, Lcom/android/internal/telephony/CommandsInterface;->handleCallSetupRequestFromSim(ZLandroid/os/Message;)V

    #@94
    .line 1008
    iput-object v10, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    #@96
    .line 1009
    return-void

    #@97
    .line 1011
    :pswitch_9
    iget v0, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mEventValue:I

    #@99
    const/4 v2, 0x5

    #@9a
    if-ne v2, v0, :cond_4

    #@9c
    .line 1012
    iget v1, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mEventValue:I

    #@9e
    .line 1013
    .end local v1    # "cmdDet":Lcom/android/internal/telephony/cat/CommandDetails;
    iget-object v4, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mAddedInfo:[B

    #@a0
    .line 1012
    const/4 v2, 0x2

    #@a1
    move-object v0, p0

    #@a2
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->eventDownload(III[BZ)V

    #@a5
    .line 1019
    :goto_3
    return-void

    #@a6
    .line 1015
    .restart local v1    # "cmdDet":Lcom/android/internal/telephony/cat/CommandDetails;
    :cond_4
    iget v1, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mEventValue:I

    #@a8
    .line 1016
    .end local v1    # "cmdDet":Lcom/android/internal/telephony/cat/CommandDetails;
    iget-object v4, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mAddedInfo:[B

    #@aa
    .line 1015
    const/16 v2, 0x82

    #@ac
    move-object v0, p0

    #@ad
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->eventDownload(III[BZ)V

    #@b0
    goto :goto_3

    #@b1
    .line 1030
    .restart local v1    # "cmdDet":Lcom/android/internal/telephony/cat/CommandDetails;
    :pswitch_a
    sget-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_CALL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    #@b3
    if-eq v9, v0, :cond_5

    #@b5
    sget-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->OPEN_CHANNEL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    #@b7
    if-ne v9, v0, :cond_6

    #@b9
    .line 1031
    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    #@bb
    invoke-interface {v0, v5, v10}, Lcom/android/internal/telephony/CommandsInterface;->handleCallSetupRequestFromSim(ZLandroid/os/Message;)V

    #@be
    .line 1032
    iput-object v10, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    #@c0
    .line 1033
    return-void

    #@c1
    .line 1035
    :cond_6
    const/4 v5, 0x0

    #@c2
    .end local v8    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    .local v5, "resp":Lcom/android/internal/telephony/cat/ResponseData;
    goto/16 :goto_0

    #@c4
    .line 1040
    .end local v5    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    .restart local v8    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    :pswitch_b
    const/4 v5, 0x0

    #@c5
    .line 1041
    .end local v8    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    .restart local v5    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    goto/16 :goto_0

    #@c7
    .end local v5    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    .restart local v7    # "input":Lcom/android/internal/telephony/cat/Input;
    .restart local v8    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    :cond_7
    move-object v5, v8

    #@c8
    .local v5, "resp":Lcom/android/internal/telephony/cat/ResponseData;
    goto/16 :goto_0

    #@ca
    .line 950
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_0
        :pswitch_1
        :pswitch_b
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_b
        :pswitch_a
    .end packed-switch

    #@f0
    .line 966
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private handleCommand(Lcom/android/internal/telephony/cat/CommandParams;Z)V
    .locals 12
    .param p1, "cmdParams"    # Lcom/android/internal/telephony/cat/CommandParams;
    .param p2, "isProactiveCmd"    # Z

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 363
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CommandParams;->getCommandType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->name()Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    #@d
    .line 366
    if-eqz p2, :cond_0

    #@f
    .line 367
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    #@11
    if-eqz v0, :cond_0

    #@13
    .line 368
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    #@15
    new-instance v1, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v2, "ProactiveCommand mSlotId="

    #@1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    iget v2, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    #@23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    .line 369
    const-string/jumbo v2, " cmdParams="

    #@2a
    .line 368
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v1

    #@32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v1

    #@36
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->addCardLog(Ljava/lang/String;)V

    #@39
    .line 374
    :cond_0
    new-instance v7, Lcom/android/internal/telephony/cat/CatCmdMessage;

    #@3b
    invoke-direct {v7, p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;-><init>(Lcom/android/internal/telephony/cat/CommandParams;)V

    #@3e
    .line 375
    .local v7, "cmdMsg":Lcom/android/internal/telephony/cat/CatCmdMessage;
    invoke-static {}, Lcom/android/internal/telephony/cat/CatService;->-getcom_android_internal_telephony_cat_AppInterface$CommandTypeSwitchesValues()[I

    #@41
    move-result-object v0

    #@42
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CommandParams;->getCommandType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    #@45
    move-result-object v1

    #@46
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    #@49
    move-result v1

    #@4a
    aget v0, v0, v1

    #@4c
    packed-switch v0, :pswitch_data_0

    #@4f
    .line 499
    const-string/jumbo v0, "Unsupported command"

    #@52
    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    #@55
    .line 500
    return-void

    #@56
    .line 377
    :pswitch_0
    invoke-virtual {v7}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getMenu()Lcom/android/internal/telephony/cat/Menu;

    #@59
    move-result-object v0

    #@5a
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cat/CatService;->removeMenu(Lcom/android/internal/telephony/cat/Menu;)Z

    #@5d
    move-result v0

    #@5e
    if-eqz v0, :cond_2

    #@60
    .line 378
    iput-object v5, p0, Lcom/android/internal/telephony/cat/CatService;->mMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    #@62
    .line 382
    :goto_0
    iget-object v1, p1, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    #@64
    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    #@66
    move-object v0, p0

    #@67
    move v4, v3

    #@68
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    #@6b
    .line 502
    .end local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    :cond_1
    :goto_1
    :pswitch_1
    iput-object v7, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    #@6d
    .line 503
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/cat/CatService;->broadcastCatCmdIntent(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    #@70
    .line 362
    return-void

    #@71
    .line 380
    .restart local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    :cond_2
    iput-object v7, p0, Lcom/android/internal/telephony/cat/CatService;->mMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    #@73
    goto :goto_0

    #@74
    .line 389
    :pswitch_2
    iget-object v0, p1, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    #@76
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_IDLE_MODE_TEXT:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    #@78
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->value()I

    #@7b
    move-result v1

    #@7c
    iput v1, v0, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    #@7e
    goto :goto_1

    #@7f
    .line 392
    :pswitch_3
    iget-object v1, p1, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    #@81
    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    #@83
    move-object v0, p0

    #@84
    move v4, v3

    #@85
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    #@88
    goto :goto_1

    #@89
    .line 395
    :pswitch_4
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/cat/CatService;->isSupportedSetupEventCommand(Lcom/android/internal/telephony/cat/CatCmdMessage;)Z

    #@8c
    move-result v0

    #@8d
    if-eqz v0, :cond_3

    #@8f
    .line 396
    iget-object v1, p1, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    #@91
    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    #@93
    move-object v0, p0

    #@94
    move v4, v3

    #@95
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    #@98
    goto :goto_1

    #@99
    .line 398
    :cond_3
    iget-object v1, p1, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    #@9b
    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    #@9d
    move-object v0, p0

    #@9e
    move v4, v3

    #@9f
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    #@a2
    goto :goto_1

    #@a3
    .line 404
    :pswitch_5
    iget-object v0, p1, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    #@a5
    iget v0, v0, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    #@a7
    packed-switch v0, :pswitch_data_1

    #@aa
    .line 414
    iget-object v1, p1, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    #@ac
    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    #@ae
    move-object v0, p0

    #@af
    move v4, v3

    #@b0
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    #@b3
    .line 417
    :goto_2
    return-void

    #@b4
    .line 406
    :pswitch_6
    new-instance v11, Lcom/android/internal/telephony/cat/DTTZResponseData;

    #@b6
    invoke-direct {v11, v5}, Lcom/android/internal/telephony/cat/DTTZResponseData;-><init>(Ljava/util/Calendar;)V

    #@b9
    .line 407
    .local v11, "resp":Lcom/android/internal/telephony/cat/ResponseData;
    iget-object v1, p1, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    #@bb
    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    #@bd
    move-object v0, p0

    #@be
    move v4, v3

    #@bf
    move-object v5, v11

    #@c0
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    #@c3
    goto :goto_2

    #@c4
    .line 410
    .end local v11    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    :pswitch_7
    new-instance v5, Lcom/android/internal/telephony/cat/LanguageResponseData;

    #@c6
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@c9
    move-result-object v0

    #@ca
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    #@cd
    move-result-object v0

    #@ce
    invoke-direct {v5, v0}, Lcom/android/internal/telephony/cat/LanguageResponseData;-><init>(Ljava/lang/String;)V

    #@d1
    .line 411
    .local v5, "resp":Lcom/android/internal/telephony/cat/ResponseData;
    iget-object v1, p1, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    #@d3
    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    #@d5
    move-object v0, p0

    #@d6
    move v4, v3

    #@d7
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    #@da
    goto :goto_2

    #@db
    .end local v5    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    :pswitch_8
    move-object v0, p1

    #@dc
    .line 419
    check-cast v0, Lcom/android/internal/telephony/cat/LaunchBrowserParams;

    #@de
    iget-object v0, v0, Lcom/android/internal/telephony/cat/LaunchBrowserParams;->mConfirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    #@e0
    iget-object v0, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    #@e2
    if-eqz v0, :cond_1

    #@e4
    move-object v0, p1

    #@e5
    .line 420
    check-cast v0, Lcom/android/internal/telephony/cat/LaunchBrowserParams;

    #@e7
    iget-object v0, v0, Lcom/android/internal/telephony/cat/LaunchBrowserParams;->mConfirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    #@e9
    iget-object v0, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    #@eb
    const-string/jumbo v1, "Default Message"

    #@ee
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f1
    move-result v0

    #@f2
    .line 419
    if-eqz v0, :cond_1

    #@f4
    .line 421
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    #@f6
    const v1, 0x10404a7

    #@f9
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@fc
    move-result-object v9

    #@fd
    .line 422
    .local v9, "message":Ljava/lang/CharSequence;
    check-cast p1, Lcom/android/internal/telephony/cat/LaunchBrowserParams;

    #@ff
    .end local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    iget-object v0, p1, Lcom/android/internal/telephony/cat/LaunchBrowserParams;->mConfirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    #@101
    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@104
    move-result-object v1

    #@105
    iput-object v1, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    #@107
    goto/16 :goto_1

    #@109
    .end local v9    # "message":Ljava/lang/CharSequence;
    .restart local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    :pswitch_9
    move-object v0, p1

    #@10a
    .line 433
    check-cast v0, Lcom/android/internal/telephony/cat/DisplayTextParams;

    #@10c
    iget-object v0, v0, Lcom/android/internal/telephony/cat/DisplayTextParams;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    #@10e
    iget-object v0, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    #@110
    if-eqz v0, :cond_1

    #@112
    move-object v0, p1

    #@113
    .line 434
    check-cast v0, Lcom/android/internal/telephony/cat/DisplayTextParams;

    #@115
    iget-object v0, v0, Lcom/android/internal/telephony/cat/DisplayTextParams;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    #@117
    iget-object v0, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    #@119
    const-string/jumbo v1, "Default Message"

    #@11c
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11f
    move-result v0

    #@120
    .line 433
    if-eqz v0, :cond_1

    #@122
    .line 435
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    #@124
    const v1, 0x10404a6

    #@127
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@12a
    move-result-object v9

    #@12b
    .line 436
    .restart local v9    # "message":Ljava/lang/CharSequence;
    check-cast p1, Lcom/android/internal/telephony/cat/DisplayTextParams;

    #@12d
    .end local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    iget-object v0, p1, Lcom/android/internal/telephony/cat/DisplayTextParams;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    #@12f
    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@132
    move-result-object v1

    #@133
    iput-object v1, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    #@135
    goto/16 :goto_1

    #@137
    .end local v9    # "message":Ljava/lang/CharSequence;
    .restart local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    :pswitch_a
    move-object v0, p1

    #@138
    .line 442
    check-cast v0, Lcom/android/internal/telephony/cat/CallSetupParams;

    #@13a
    iget-object v0, v0, Lcom/android/internal/telephony/cat/CallSetupParams;->mConfirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    #@13c
    iget-object v0, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    #@13e
    if-eqz v0, :cond_1

    #@140
    move-object v0, p1

    #@141
    .line 443
    check-cast v0, Lcom/android/internal/telephony/cat/CallSetupParams;

    #@143
    iget-object v0, v0, Lcom/android/internal/telephony/cat/CallSetupParams;->mConfirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    #@145
    iget-object v0, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    #@147
    const-string/jumbo v1, "Default Message"

    #@14a
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@14d
    move-result v0

    #@14e
    .line 442
    if-eqz v0, :cond_1

    #@150
    .line 444
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    #@152
    const v1, 0x10404a8

    #@155
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@158
    move-result-object v9

    #@159
    .line 445
    .restart local v9    # "message":Ljava/lang/CharSequence;
    check-cast p1, Lcom/android/internal/telephony/cat/CallSetupParams;

    #@15b
    .end local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    iget-object v0, p1, Lcom/android/internal/telephony/cat/CallSetupParams;->mConfirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    #@15d
    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@160
    move-result-object v1

    #@161
    iput-object v1, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    #@163
    goto/16 :goto_1

    #@165
    .end local v9    # "message":Ljava/lang/CharSequence;
    .restart local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    :pswitch_b
    move-object v6, p1

    #@166
    .line 452
    check-cast v6, Lcom/android/internal/telephony/cat/BIPClientParams;

    #@168
    .line 458
    .local v6, "cmd":Lcom/android/internal/telephony/cat/BIPClientParams;
    const/4 v10, 0x0

    #@169
    .line 460
    .local v10, "noAlphaUsrCnf":Z
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    #@16b
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@16e
    move-result-object v0

    #@16f
    .line 461
    const v1, 0x112007b

    #@172
    .line 460
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@175
    move-result v10

    #@176
    .line 465
    .end local v10    # "noAlphaUsrCnf":Z
    :goto_3
    iget-object v0, v6, Lcom/android/internal/telephony/cat/BIPClientParams;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    #@178
    iget-object v0, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    #@17a
    if-nez v0, :cond_7

    #@17c
    iget-boolean v0, v6, Lcom/android/internal/telephony/cat/BIPClientParams;->mHasAlphaId:Z

    #@17e
    if-nez v0, :cond_4

    #@180
    if-eqz v10, :cond_7

    #@182
    .line 466
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    #@184
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@187
    const-string/jumbo v1, "cmd "

    #@18a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18d
    move-result-object v0

    #@18e
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CommandParams;->getCommandType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    #@191
    move-result-object v1

    #@192
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@195
    move-result-object v0

    #@196
    const-string/jumbo v1, " with null alpha id"

    #@199
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19c
    move-result-object v0

    #@19d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a0
    move-result-object v0

    #@1a1
    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    #@1a4
    .line 468
    if-eqz p2, :cond_6

    #@1a6
    .line 469
    iget-object v1, p1, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    #@1a8
    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    #@1aa
    move-object v0, p0

    #@1ab
    move v4, v3

    #@1ac
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    #@1af
    .line 473
    :cond_5
    :goto_4
    return-void

    #@1b0
    .line 462
    .restart local v10    # "noAlphaUsrCnf":Z
    :catch_0
    move-exception v8

    #@1b1
    .line 463
    .local v8, "e":Landroid/content/res/Resources$NotFoundException;
    const/4 v10, 0x0

    #@1b2
    goto :goto_3

    #@1b3
    .line 470
    .end local v8    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v10    # "noAlphaUsrCnf":Z
    :cond_6
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CommandParams;->getCommandType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    #@1b6
    move-result-object v0

    #@1b7
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->OPEN_CHANNEL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    #@1b9
    if-ne v0, v1, :cond_5

    #@1bb
    .line 471
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    #@1bd
    const/4 v1, 0x1

    #@1be
    invoke-interface {v0, v1, v5}, Lcom/android/internal/telephony/CommandsInterface;->handleCallSetupRequestFromSim(ZLandroid/os/Message;)V

    #@1c1
    goto :goto_4

    #@1c2
    .line 476
    :cond_7
    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/CatService;->mStkAppInstalled:Z

    #@1c4
    if-nez v0, :cond_8

    #@1c6
    .line 477
    const-string/jumbo v0, "No STK application found."

    #@1c9
    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    #@1cc
    .line 478
    if-eqz p2, :cond_8

    #@1ce
    .line 479
    iget-object v1, p1, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    #@1d0
    .line 480
    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    #@1d2
    move-object v0, p0

    #@1d3
    move v4, v3

    #@1d4
    .line 479
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    #@1d7
    .line 482
    return-void

    #@1d8
    .line 491
    :cond_8
    if-eqz p2, :cond_1

    #@1da
    .line 492
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CommandParams;->getCommandType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    #@1dd
    move-result-object v0

    #@1de
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->CLOSE_CHANNEL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    #@1e0
    if-eq v0, v1, :cond_9

    #@1e2
    .line 493
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CommandParams;->getCommandType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    #@1e5
    move-result-object v0

    #@1e6
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->RECEIVE_DATA:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    #@1e8
    if-ne v0, v1, :cond_a

    #@1ea
    .line 495
    :cond_9
    :goto_5
    iget-object v1, p1, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    #@1ec
    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    #@1ee
    move-object v0, p0

    #@1ef
    move v4, v3

    #@1f0
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    #@1f3
    goto/16 :goto_1

    #@1f5
    .line 494
    :cond_a
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CommandParams;->getCommandType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    #@1f8
    move-result-object v0

    #@1f9
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SEND_DATA:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    #@1fb
    if-ne v0, v1, :cond_1

    #@1fd
    goto :goto_5

    #@1fe
    .line 375
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_8
        :pswitch_b
        :pswitch_1
        :pswitch_5
        :pswitch_b
        :pswitch_2
        :pswitch_1
        :pswitch_b
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_a
        :pswitch_4
        :pswitch_3
        :pswitch_0
    .end packed-switch

    #@22a
    .line 404
    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private handleRilMsg(Lcom/android/internal/telephony/cat/RilMessage;)V
    .locals 9
    .param p1, "rilMsg"    # Lcom/android/internal/telephony/cat/RilMessage;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v6, 0x0

    #@2
    .line 276
    if-nez p1, :cond_0

    #@4
    .line 277
    return-void

    #@5
    .line 281
    :cond_0
    const/4 v7, 0x0

    #@6
    .line 282
    .local v7, "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    iget v1, p1, Lcom/android/internal/telephony/cat/RilMessage;->mId:I

    #@8
    packed-switch v1, :pswitch_data_0

    #@b
    .line 275
    .end local v7    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    :cond_1
    :goto_0
    :pswitch_0
    return-void

    #@c
    .line 284
    .restart local v7    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    :pswitch_1
    iget-object v1, p1, Lcom/android/internal/telephony/cat/RilMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    #@e
    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    #@10
    if-ne v1, v2, :cond_1

    #@12
    .line 285
    iget-object v7, p1, Lcom/android/internal/telephony/cat/RilMessage;->mData:Ljava/lang/Object;

    #@14
    .end local v7    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    check-cast v7, Lcom/android/internal/telephony/cat/CommandParams;

    #@16
    .line 286
    .local v7, "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    if-eqz v7, :cond_1

    #@18
    .line 287
    invoke-direct {p0, v7, v4}, Lcom/android/internal/telephony/cat/CatService;->handleCommand(Lcom/android/internal/telephony/cat/CommandParams;Z)V

    #@1b
    goto :goto_0

    #@1c
    .line 293
    .local v7, "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    :pswitch_2
    :try_start_0
    iget-object v1, p1, Lcom/android/internal/telephony/cat/RilMessage;->mData:Ljava/lang/Object;

    #@1e
    move-object v0, v1

    #@1f
    check-cast v0, Lcom/android/internal/telephony/cat/CommandParams;

    #@21
    move-object v7, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    #@22
    .line 304
    .local v7, "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    if-eqz v7, :cond_1

    #@24
    .line 305
    iget-object v1, p1, Lcom/android/internal/telephony/cat/RilMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    #@26
    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    #@28
    if-ne v1, v2, :cond_2

    #@2a
    .line 306
    const/4 v1, 0x1

    #@2b
    invoke-direct {p0, v7, v1}, Lcom/android/internal/telephony/cat/CatService;->handleCommand(Lcom/android/internal/telephony/cat/CommandParams;Z)V

    #@2e
    goto :goto_0

    #@2f
    .line 294
    .local v7, "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    :catch_0
    move-exception v8

    #@30
    .line 296
    .local v8, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v1, "Fail to parse proactive command"

    #@33
    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    #@36
    .line 298
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    #@38
    if-eqz v1, :cond_1

    #@3a
    .line 299
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    #@3c
    iget-object v2, v1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    #@3e
    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    #@40
    move-object v1, p0

    #@41
    move v5, v4

    #@42
    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    #@45
    goto :goto_0

    #@46
    .line 311
    .end local v8    # "e":Ljava/lang/ClassCastException;
    .local v7, "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    :cond_2
    iget-object v2, v7, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    #@48
    iget-object v3, p1, Lcom/android/internal/telephony/cat/RilMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    #@4a
    move-object v1, p0

    #@4b
    move v5, v4

    #@4c
    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    #@4f
    goto :goto_0

    #@50
    .line 317
    .local v7, "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    :pswitch_3
    iget-object v7, p1, Lcom/android/internal/telephony/cat/RilMessage;->mData:Ljava/lang/Object;

    #@52
    .end local v7    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    check-cast v7, Lcom/android/internal/telephony/cat/CommandParams;

    #@54
    .line 318
    .local v7, "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    if-eqz v7, :cond_1

    #@56
    .line 319
    invoke-direct {p0, v7, v4}, Lcom/android/internal/telephony/cat/CatService;->handleCommand(Lcom/android/internal/telephony/cat/CommandParams;Z)V

    #@59
    goto :goto_0

    #@5a
    .line 323
    .local v7, "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    :pswitch_4
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatService;->handleSessionEnd()V

    #@5d
    goto :goto_0

    #@5e
    .line 282
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private handleSessionEnd()V
    .locals 3

    #@0
    .prologue
    .line 520
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v2, "SESSION END on "

    #@8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v1

    #@c
    iget v2, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    #@19
    .line 522
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    #@1b
    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    #@1d
    .line 523
    new-instance v0, Landroid/content/Intent;

    #@1f
    const-string/jumbo v1, "android.intent.action.stk.session_end"

    #@22
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@25
    .line 524
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "SLOT_ID"

    #@28
    iget v2, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    #@2a
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@2d
    .line 525
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    #@2f
    const-string/jumbo v2, "android.permission.RECEIVE_STK_COMMANDS"

    #@32
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    #@35
    .line 519
    return-void
.end method

.method private isStkAppInstalled()Z
    .locals 6

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1051
    new-instance v1, Landroid/content/Intent;

    #@3
    const-string/jumbo v5, "android.intent.action.stk.command"

    #@6
    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@9
    .line 1052
    .local v1, "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    #@b
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@e
    move-result-object v3

    #@f
    .line 1054
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/16 v5, 0x80

    #@11
    invoke-virtual {v3, v1, v5}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    #@14
    move-result-object v0

    #@15
    .line 1055
    .local v0, "broadcastReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v0, :cond_1

    #@17
    const/4 v2, 0x0

    #@18
    .line 1057
    .local v2, "numReceiver":I
    :goto_0
    if-lez v2, :cond_0

    #@1a
    const/4 v4, 0x1

    #@1b
    :cond_0
    return v4

    #@1c
    .line 1055
    .end local v2    # "numReceiver":I
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@1f
    move-result v2

    #@20
    .restart local v2    # "numReceiver":I
    goto :goto_0
.end method

.method private isSupportedSetupEventCommand(Lcom/android/internal/telephony/cat/CatCmdMessage;)Z
    .locals 7
    .param p1, "cmdMsg"    # Lcom/android/internal/telephony/cat/CatCmdMessage;

    #@0
    .prologue
    .line 338
    const/4 v1, 0x1

    #@1
    .line 340
    .local v1, "flag":Z
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getSetEventList()Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

    #@4
    move-result-object v2

    #@5
    iget-object v3, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;->eventList:[I

    #@7
    const/4 v2, 0x0

    #@8
    array-length v4, v3

    #@9
    :goto_0
    if-ge v2, v4, :cond_0

    #@b
    aget v0, v3, v2

    #@d
    .line 341
    .local v0, "eventVal":I
    new-instance v5, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v6, "Event: "

    #@15
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v5

    #@19
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v5

    #@1d
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v5

    #@21
    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    #@24
    .line 342
    packed-switch v0, :pswitch_data_0

    #@27
    .line 349
    :pswitch_0
    const/4 v1, 0x0

    #@28
    .line 340
    :pswitch_1
    add-int/lit8 v2, v2, 0x1

    #@2a
    goto :goto_0

    #@2b
    .line 352
    .end local v0    # "eventVal":I
    :cond_0
    return v1

    #@2c
    .line 342
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private removeMenu(Lcom/android/internal/telephony/cat/Menu;)Z
    .locals 5
    .param p1, "menu"    # Lcom/android/internal/telephony/cat/Menu;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x1

    #@2
    .line 915
    :try_start_0
    iget-object v1, p1, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    #@4
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@7
    move-result v1

    #@8
    if-ne v1, v3, :cond_0

    #@a
    iget-object v1, p1, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    #@c
    const/4 v2, 0x0

    #@d
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    move-result-object v1

    #@11
    if-nez v1, :cond_0

    #@13
    .line 916
    return v3

    #@14
    .line 918
    :catch_0
    move-exception v0

    #@15
    .line 919
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v1, "Unable to get Menu\'s items size"

    #@18
    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    #@1b
    .line 920
    return v3

    #@1c
    .line 922
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :cond_0
    return v4
.end method

.method private sendMenuSelection(IZ)V
    .locals 8
    .param p1, "menuId"    # I
    .param p2, "helpRequired"    # Z

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    const/4 v6, 0x1

    #@2
    .line 651
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    #@4
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@7
    .line 654
    .local v0, "buf":Ljava/io/ByteArrayOutputStream;
    const/16 v4, 0xd3

    #@9
    .line 655
    .local v4, "tag":I
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@c
    .line 658
    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@f
    .line 661
    sget-object v5, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@11
    invoke-virtual {v5}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    #@14
    move-result v5

    #@15
    or-int/lit16 v4, v5, 0x80

    #@17
    .line 662
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@1a
    .line 663
    const/4 v5, 0x2

    #@1b
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@1e
    .line 664
    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@21
    .line 665
    const/16 v5, 0x81

    #@23
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@26
    .line 668
    sget-object v5, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ITEM_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@28
    invoke-virtual {v5}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    #@2b
    move-result v5

    #@2c
    or-int/lit16 v4, v5, 0x80

    #@2e
    .line 669
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@31
    .line 670
    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@34
    .line 671
    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@37
    .line 674
    if-eqz p2, :cond_0

    #@39
    .line 675
    sget-object v5, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->HELP_REQUEST:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@3b
    invoke-virtual {v5}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    #@3e
    move-result v4

    #@3f
    .line 676
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@42
    .line 677
    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@45
    .line 680
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@48
    move-result-object v3

    #@49
    .line 683
    .local v3, "rawData":[B
    array-length v5, v3

    #@4a
    add-int/lit8 v2, v5, -0x2

    #@4c
    .line 684
    .local v2, "len":I
    int-to-byte v5, v2

    #@4d
    aput-byte v5, v3, v6

    #@4f
    .line 686
    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    #@52
    move-result-object v1

    #@53
    .line 688
    .local v1, "hexString":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    #@55
    const/4 v6, 0x0

    #@56
    invoke-interface {v5, v1, v6}, Lcom/android/internal/telephony/CommandsInterface;->sendEnvelope(Ljava/lang/String;Landroid/os/Message;)V

    #@59
    .line 649
    return-void
.end method

.method private sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V
    .locals 8
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cat/CommandDetails;
    .param p2, "resultCode"    # Lcom/android/internal/telephony/cat/ResultCode;
    .param p3, "includeAdditionalInfo"    # Z
    .param p4, "additionalInfo"    # I
    .param p5, "resp"    # Lcom/android/internal/telephony/cat/ResponseData;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 533
    if-nez p1, :cond_0

    #@3
    .line 534
    return-void

    #@4
    .line 536
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    #@6
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@9
    .line 538
    .local v0, "buf":Ljava/io/ByteArrayOutputStream;
    const/4 v1, 0x0

    #@a
    .line 539
    .local v1, "cmdInput":Lcom/android/internal/telephony/cat/Input;
    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    #@c
    if-eqz v6, :cond_1

    #@e
    .line 540
    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    #@10
    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geInput()Lcom/android/internal/telephony/cat/Input;

    #@13
    move-result-object v1

    #@14
    .line 544
    .end local v1    # "cmdInput":Lcom/android/internal/telephony/cat/Input;
    :cond_1
    sget-object v6, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->COMMAND_DETAILS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@16
    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    #@19
    move-result v5

    #@1a
    .line 545
    .local v5, "tag":I
    iget-boolean v6, p1, Lcom/android/internal/telephony/cat/CommandDetails;->compRequired:Z

    #@1c
    if-eqz v6, :cond_2

    #@1e
    .line 546
    or-int/lit16 v5, v5, 0x80

    #@20
    .line 548
    :cond_2
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@23
    .line 549
    const/4 v6, 0x3

    #@24
    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@27
    .line 550
    iget v6, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandNumber:I

    #@29
    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@2c
    .line 551
    iget v6, p1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    #@2e
    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@31
    .line 552
    iget v6, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    #@33
    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@36
    .line 561
    sget-object v6, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@38
    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    #@3b
    move-result v5

    #@3c
    .line 562
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@3f
    .line 563
    const/4 v6, 0x2

    #@40
    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@43
    .line 564
    const/16 v6, 0x82

    #@45
    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@48
    .line 565
    const/16 v6, 0x81

    #@4a
    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@4d
    .line 568
    sget-object v6, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->RESULT:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@4f
    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    #@52
    move-result v5

    #@53
    .line 569
    iget-boolean v6, p1, Lcom/android/internal/telephony/cat/CommandDetails;->compRequired:Z

    #@55
    if-eqz v6, :cond_3

    #@57
    .line 570
    or-int/lit16 v5, v5, 0x80

    #@59
    .line 572
    :cond_3
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@5c
    .line 573
    if-eqz p3, :cond_5

    #@5e
    const/4 v3, 0x2

    #@5f
    .line 574
    .local v3, "length":I
    :goto_0
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@62
    .line 575
    invoke-virtual {p2}, Lcom/android/internal/telephony/cat/ResultCode;->value()I

    #@65
    move-result v6

    #@66
    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@69
    .line 578
    if-eqz p3, :cond_4

    #@6b
    .line 579
    invoke-virtual {v0, p4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@6e
    .line 583
    :cond_4
    if-eqz p5, :cond_6

    #@70
    .line 584
    invoke-virtual {p5, v0}, Lcom/android/internal/telephony/cat/ResponseData;->format(Ljava/io/ByteArrayOutputStream;)V

    #@73
    .line 589
    :goto_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@76
    move-result-object v4

    #@77
    .line 590
    .local v4, "rawData":[B
    invoke-static {v4}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    #@7a
    move-result-object v2

    #@7b
    .line 595
    .local v2, "hexString":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    #@7d
    invoke-interface {v6, v2, v7}, Lcom/android/internal/telephony/CommandsInterface;->sendTerminalResponse(Ljava/lang/String;Landroid/os/Message;)V

    #@80
    .line 531
    return-void

    #@81
    .line 573
    .end local v2    # "hexString":Ljava/lang/String;
    .end local v3    # "length":I
    .end local v4    # "rawData":[B
    :cond_5
    const/4 v3, 0x1

    #@82
    .restart local v3    # "length":I
    goto :goto_0

    #@83
    .line 586
    :cond_6
    invoke-direct {p0, p1, p2, v1, v0}, Lcom/android/internal/telephony/cat/CatService;->encodeOptionalTags(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;Lcom/android/internal/telephony/cat/Input;Ljava/io/ByteArrayOutputStream;)V

    #@86
    goto :goto_1
.end method

.method private validateResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)Z
    .locals 3
    .param p1, "resMsg"    # Lcom/android/internal/telephony/cat/CatResponseMessage;

    #@0
    .prologue
    .line 901
    const/4 v0, 0x0

    #@1
    .line 902
    .local v0, "validResponse":Z
    iget-object v1, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    #@3
    iget v1, v1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    #@5
    sget-object v2, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_EVENT_LIST:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    #@7
    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->value()I

    #@a
    move-result v2

    #@b
    if-eq v1, v2, :cond_0

    #@d
    .line 903
    iget-object v1, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    #@f
    iget v1, v1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    #@11
    sget-object v2, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_MENU:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    #@13
    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->value()I

    #@16
    move-result v2

    #@17
    if-ne v1, v2, :cond_2

    #@19
    .line 904
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    const-string/jumbo v2, "CmdType: "

    #@21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    iget-object v2, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    #@27
    iget v2, v2, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    #@29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v1

    #@31
    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    #@34
    .line 905
    const/4 v0, 0x1

    #@35
    .line 910
    .end local v0    # "validResponse":Z
    :cond_1
    :goto_0
    return v0

    #@36
    .line 906
    .restart local v0    # "validResponse":Z
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    #@38
    if-eqz v1, :cond_1

    #@3a
    .line 907
    iget-object v1, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    #@3c
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    #@3e
    iget-object v2, v2, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    #@40
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/cat/CommandDetails;->compareTo(Lcom/android/internal/telephony/cat/CommandDetails;)Z

    #@43
    move-result v0

    #@44
    .line 908
    .local v0, "validResponse":Z
    new-instance v1, Ljava/lang/StringBuilder;

    #@46
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@49
    const-string/jumbo v2, "isResponse for last valid cmd: "

    #@4c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v1

    #@50
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@53
    move-result-object v1

    #@54
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57
    move-result-object v1

    #@58
    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    #@5b
    goto :goto_0
.end method


# virtual methods
.method public dispose()V
    .locals 4

    #@0
    .prologue
    .line 237
    sget-object v1, Lcom/android/internal/telephony/cat/CatService;->sInstanceLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 238
    :try_start_0
    const-string/jumbo v0, "Disposing CatService object"

    #@6
    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    #@9
    .line 239
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@b
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    #@e
    .line 242
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    #@10
    const/4 v2, 0x0

    #@11
    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/cat/CatService;->broadcastCardStateAndIccRefreshResp(Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;Lcom/android/internal/telephony/uicc/IccRefreshResponse;)V

    #@14
    .line 244
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    #@16
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnCatSessionEnd(Landroid/os/Handler;)V

    #@19
    .line 245
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    #@1b
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnCatProactiveCmd(Landroid/os/Handler;)V

    #@1e
    .line 246
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    #@20
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnCatEvent(Landroid/os/Handler;)V

    #@23
    .line 247
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    #@25
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnCatCallSetUp(Landroid/os/Handler;)V

    #@28
    .line 248
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    #@2a
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnCatCcAlphaNotify(Landroid/os/Handler;)V

    #@2d
    .line 250
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    #@2f
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForIccRefresh(Landroid/os/Handler;)V

    #@32
    .line 251
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    #@34
    if-eqz v0, :cond_0

    #@36
    .line 252
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    #@38
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccController;->unregisterForIccChanged(Landroid/os/Handler;)V

    #@3b
    .line 253
    const/4 v0, 0x0

    #@3c
    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    #@3e
    .line 255
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mMsgDecoder:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    #@40
    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->dispose()V

    #@43
    .line 256
    const/4 v0, 0x0

    #@44
    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mMsgDecoder:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    #@46
    .line 257
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mHandlerThread:Landroid/os/HandlerThread;

    #@48
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    #@4b
    .line 258
    const/4 v0, 0x0

    #@4c
    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mHandlerThread:Landroid/os/HandlerThread;

    #@4e
    .line 259
    const/4 v0, 0x0

    #@4f
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cat/CatService;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    #@52
    .line 260
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    #@54
    if-eqz v0, :cond_1

    #@56
    .line 261
    iget v0, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    #@58
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSlotId(I)Z

    #@5b
    move-result v0

    #@5c
    if-eqz v0, :cond_2

    #@5e
    .line 262
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    #@60
    iget v2, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    #@62
    const/4 v3, 0x0

    #@63
    aput-object v3, v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@65
    :cond_1
    :goto_0
    monitor-exit v1

    #@66
    .line 236
    return-void

    #@67
    .line 264
    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    #@69
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@6c
    const-string/jumbo v2, "error: invaild slot id: "

    #@6f
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v0

    #@73
    iget v2, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    #@75
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@78
    move-result-object v0

    #@79
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7c
    move-result-object v0

    #@7d
    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@80
    goto :goto_0

    #@81
    .line 237
    :catchall_0
    move-exception v0

    #@82
    monitor-exit v1

    #@83
    throw v0
.end method

.method protected finalize()V
    .locals 1

    #@0
    .prologue
    .line 272
    const-string/jumbo v0, "Service finalized"

    #@3
    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    #@6
    .line 271
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 789
    new-instance v3, Ljava/lang/StringBuilder;

    #@3
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@6
    const-string/jumbo v4, "handleMessage["

    #@9
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v3

    #@d
    iget v4, p1, Landroid/os/Message;->what:I

    #@f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12
    move-result-object v3

    #@13
    const-string/jumbo v4, "]"

    #@16
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v3

    #@1a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v3

    #@1e
    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    #@21
    .line 791
    iget v3, p1, Landroid/os/Message;->what:I

    #@23
    sparse-switch v3, :sswitch_data_0

    #@26
    .line 852
    new-instance v3, Ljava/lang/AssertionError;

    #@28
    new-instance v4, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    const-string/jumbo v5, "Unrecognized CAT command: "

    #@30
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v4

    #@34
    iget v5, p1, Landroid/os/Message;->what:I

    #@36
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@39
    move-result-object v4

    #@3a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v4

    #@3e
    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@41
    throw v3

    #@42
    .line 796
    :sswitch_0
    new-instance v3, Ljava/lang/StringBuilder;

    #@44
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@47
    const-string/jumbo v4, "ril message arrived,slotid:"

    #@4a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v3

    #@4e
    iget v4, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    #@50
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@53
    move-result-object v3

    #@54
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57
    move-result-object v3

    #@58
    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    #@5b
    .line 797
    const/4 v1, 0x0

    #@5c
    .line 798
    .local v1, "data":Ljava/lang/String;
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@5e
    if-eqz v3, :cond_0

    #@60
    .line 799
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@62
    check-cast v0, Landroid/os/AsyncResult;

    #@64
    .line 800
    .local v0, "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_0

    #@66
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@68
    if-eqz v3, :cond_0

    #@6a
    .line 802
    :try_start_0
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@6c
    .end local v1    # "data":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    #@6e
    .line 808
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatService;->mMsgDecoder:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    #@70
    new-instance v4, Lcom/android/internal/telephony/cat/RilMessage;

    #@72
    iget v5, p1, Landroid/os/Message;->what:I

    #@74
    invoke-direct {v4, v5, v1}, Lcom/android/internal/telephony/cat/RilMessage;-><init>(ILjava/lang/String;)V

    #@77
    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->sendStartDecodingMessageParams(Lcom/android/internal/telephony/cat/RilMessage;)V

    #@7a
    .line 788
    :goto_0
    :sswitch_1
    return-void

    #@7b
    .line 811
    :sswitch_2
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatService;->mMsgDecoder:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    #@7d
    new-instance v4, Lcom/android/internal/telephony/cat/RilMessage;

    #@7f
    iget v5, p1, Landroid/os/Message;->what:I

    #@81
    invoke-direct {v4, v5, v6}, Lcom/android/internal/telephony/cat/RilMessage;-><init>(ILjava/lang/String;)V

    #@84
    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->sendStartDecodingMessageParams(Lcom/android/internal/telephony/cat/RilMessage;)V

    #@87
    goto :goto_0

    #@88
    .line 816
    :sswitch_3
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@8a
    check-cast v3, Lcom/android/internal/telephony/cat/RilMessage;

    #@8c
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/cat/CatService;->handleRilMsg(Lcom/android/internal/telephony/cat/RilMessage;)V

    #@8f
    goto :goto_0

    #@90
    .line 819
    :sswitch_4
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@92
    check-cast v3, Lcom/android/internal/telephony/cat/CatResponseMessage;

    #@94
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/cat/CatService;->handleCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V

    #@97
    goto :goto_0

    #@98
    .line 822
    :sswitch_5
    const-string/jumbo v3, "MSG_ID_ICC_CHANGED"

    #@9b
    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    #@9e
    .line 823
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/CatService;->updateIccAvailability()V

    #@a1
    goto :goto_0

    #@a2
    .line 826
    :sswitch_6
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@a4
    if-eqz v3, :cond_2

    #@a6
    .line 827
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@a8
    check-cast v0, Landroid/os/AsyncResult;

    #@aa
    .line 828
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_1

    #@ac
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@ae
    if-eqz v3, :cond_1

    #@b0
    .line 829
    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    #@b2
    .line 830
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@b4
    check-cast v3, Lcom/android/internal/telephony/uicc/IccRefreshResponse;

    #@b6
    .line 829
    invoke-direct {p0, v4, v3}, Lcom/android/internal/telephony/cat/CatService;->broadcastCardStateAndIccRefreshResp(Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;Lcom/android/internal/telephony/uicc/IccRefreshResponse;)V

    #@b9
    goto :goto_0

    #@ba
    .line 832
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    #@bc
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@bf
    const-string/jumbo v4, "Icc REFRESH with exception: "

    #@c2
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c5
    move-result-object v3

    #@c6
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@c8
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@cb
    move-result-object v3

    #@cc
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@cf
    move-result-object v3

    #@d0
    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    #@d3
    goto :goto_0

    #@d4
    .line 835
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :cond_2
    const-string/jumbo v3, "IccRefresh Message is null"

    #@d7
    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    #@da
    goto :goto_0

    #@db
    .line 839
    :sswitch_7
    const-string/jumbo v3, "Received CAT CC Alpha message from card"

    #@de
    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    #@e1
    .line 840
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@e3
    if-eqz v3, :cond_4

    #@e5
    .line 841
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@e7
    check-cast v0, Landroid/os/AsyncResult;

    #@e9
    .line 842
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_3

    #@eb
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@ed
    if-eqz v3, :cond_3

    #@ef
    .line 843
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@f1
    check-cast v3, Ljava/lang/String;

    #@f3
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/cat/CatService;->broadcastAlphaMessage(Ljava/lang/String;)V

    #@f6
    goto :goto_0

    #@f7
    .line 845
    :cond_3
    const-string/jumbo v3, "CAT Alpha message: ar.result is null"

    #@fa
    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    #@fd
    goto/16 :goto_0

    #@ff
    .line 848
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :cond_4
    const-string/jumbo v3, "CAT Alpha message: msg.obj is null"

    #@102
    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    #@105
    goto/16 :goto_0

    #@107
    .line 803
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    :catch_0
    move-exception v2

    #@108
    .local v2, "e":Ljava/lang/ClassCastException;
    goto/16 :goto_0

    #@10a
    .line 791
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x4 -> :sswitch_2
        0x5 -> :sswitch_0
        0x6 -> :sswitch_4
        0x8 -> :sswitch_5
        0x9 -> :sswitch_7
        0xa -> :sswitch_3
        0x14 -> :sswitch_1
        0x1e -> :sswitch_6
    .end sparse-switch
.end method

.method public declared-synchronized onCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V
    .locals 2
    .param p1, "resMsg"    # Lcom/android/internal/telephony/cat/CatResponseMessage;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 892
    if-nez p1, :cond_0

    #@3
    monitor-exit p0

    #@4
    .line 893
    return-void

    #@5
    .line 896
    :cond_0
    const/4 v1, 0x6

    #@6
    :try_start_0
    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@9
    move-result-object v0

    #@a
    .line 897
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    monitor-exit p0

    #@e
    .line 891
    return-void

    #@f
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    #@10
    monitor-exit p0

    #@11
    throw v1
.end method

.method public update(Lcom/android/internal/telephony/CommandsInterface;Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccCard;)V
    .locals 6
    .param p1, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "ic"    # Lcom/android/internal/telephony/uicc/UiccCard;

    #@0
    .prologue
    .line 1062
    const/4 v0, 0x0

    #@1
    .line 1063
    .local v0, "ca":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    const/4 v1, 0x0

    #@2
    .line 1065
    .local v1, "ir":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz p3, :cond_0

    #@4
    .line 1069
    const/4 v2, 0x0

    #@5
    invoke-virtual {p3, v2}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplicationIndex(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@8
    move-result-object v0

    #@9
    .line 1070
    .local v0, "ca":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v0, :cond_0

    #@b
    .line 1071
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    #@e
    move-result-object v1

    #@f
    .line 1075
    .end local v0    # "ca":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .end local v1    # "ir":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_0
    sget-object v3, Lcom/android/internal/telephony/cat/CatService;->sInstanceLock:Ljava/lang/Object;

    #@11
    monitor-enter v3

    #@12
    .line 1076
    if-eqz v1, :cond_2

    #@14
    :try_start_0
    sget-object v2, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@16
    if-eq v2, v1, :cond_2

    #@18
    .line 1077
    sget-object v2, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@1a
    if-eqz v2, :cond_1

    #@1c
    .line 1078
    sget-object v2, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@1e
    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    #@21
    .line 1082
    :cond_1
    const-string/jumbo v2, "Reinitialize the Service with SIMRecords and UiccCardApplication"

    #@24
    .line 1081
    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    #@27
    .line 1083
    sput-object v1, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@29
    .line 1084
    sput-object v0, Lcom/android/internal/telephony/cat/CatService;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@2b
    .line 1087
    sget-object v2, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@2d
    const/16 v4, 0x14

    #@2f
    const/4 v5, 0x0

    #@30
    invoke-virtual {v2, p0, v4, v5}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    #@33
    .line 1088
    new-instance v2, Ljava/lang/StringBuilder;

    #@35
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@38
    const-string/jumbo v4, "registerForRecordsLoaded slotid="

    #@3b
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v2

    #@3f
    iget v4, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    #@41
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@44
    move-result-object v2

    #@45
    const-string/jumbo v4, " instance:"

    #@48
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v2

    #@4c
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v2

    #@50
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@53
    move-result-object v2

    #@54
    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@57
    :cond_2
    monitor-exit v3

    #@58
    .line 1061
    return-void

    #@59
    .line 1075
    :catchall_0
    move-exception v2

    #@5a
    monitor-exit v3

    #@5b
    throw v2
.end method

.method updateIccAvailability()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1094
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    #@3
    if-nez v3, :cond_0

    #@5
    .line 1095
    return-void

    #@6
    .line 1098
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    #@8
    .line 1099
    .local v1, "newState":Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    #@a
    iget v4, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    #@c
    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    #@f
    move-result-object v0

    #@10
    .line 1100
    .local v0, "newCard":Lcom/android/internal/telephony/uicc/UiccCard;
    if-eqz v0, :cond_1

    #@12
    .line 1101
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    #@15
    move-result-object v1

    #@16
    .line 1103
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    #@18
    .line 1104
    .local v2, "oldState":Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    #@1a
    .line 1105
    new-instance v3, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string/jumbo v4, "New Card State = "

    #@22
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v3

    #@26
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v3

    #@2a
    const-string/jumbo v4, " "

    #@2d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v3

    #@31
    const-string/jumbo v4, "Old Card State = "

    #@34
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v3

    #@38
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v3

    #@3c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v3

    #@40
    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    #@43
    .line 1106
    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    #@45
    if-ne v2, v3, :cond_3

    #@47
    .line 1107
    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    #@49
    if-eq v1, v3, :cond_3

    #@4b
    .line 1108
    invoke-direct {p0, v1, v5}, Lcom/android/internal/telephony/cat/CatService;->broadcastCardStateAndIccRefreshResp(Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;Lcom/android/internal/telephony/uicc/IccRefreshResponse;)V

    #@4e
    .line 1093
    :cond_2
    :goto_0
    return-void

    #@4f
    .line 1109
    :cond_3
    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    #@51
    if-eq v2, v3, :cond_2

    #@53
    .line 1110
    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    #@55
    if-ne v1, v3, :cond_2

    #@57
    .line 1112
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    #@59
    invoke-interface {v3, v5}, Lcom/android/internal/telephony/CommandsInterface;->reportStkServiceIsRunning(Landroid/os/Message;)V

    #@5c
    goto :goto_0
.end method
