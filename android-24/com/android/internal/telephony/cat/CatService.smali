.class public Lcom/android/internal/telephony/cat/CatService;
.super Landroid/os/Handler;
.source "CatService.java"

# interfaces
.implements Lcom/android/internal/telephony/cat/AppInterface;


# static fields
.field private static final synthetic -com-android-internal-telephony-cat-AppInterface$CommandTypeSwitchesValues:[I = null

.field private static final synthetic -com-android-internal-telephony-cat-ResultCodeSwitchesValues:[I = null

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
.method private static synthetic -getcom-android-internal-telephony-cat-AppInterface$CommandTypeSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->-com-android-internal-telephony-cat-AppInterface$CommandTypeSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->-com-android-internal-telephony-cat-AppInterface$CommandTypeSwitchesValues:[I

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
    sput-object v0, Lcom/android/internal/telephony/cat/CatService;->-com-android-internal-telephony-cat-AppInterface$CommandTypeSwitchesValues:[I

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

.method private static synthetic -getcom-android-internal-telephony-cat-ResultCodeSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->-com-android-internal-telephony-cat-ResultCodeSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->-com-android-internal-telephony-cat-ResultCodeSwitchesValues:[I

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
    sput-object v0, Lcom/android/internal/telephony/cat/CatService;->-com-android-internal-telephony-cat-ResultCodeSwitchesValues:[I

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
    .line 887
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
    .line 888
    new-instance v0, Landroid/content/Intent;

    #@19
    const-string/jumbo v1, "android.intent.action.stk.alpha_notify"

    #@1c
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@1f
    .line 889
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    #@21
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@24
    .line 890
    const-string/jumbo v1, "alpha_string"

    #@27
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@2a
    .line 891
    const-string/jumbo v1, "SLOT_ID"

    #@2d
    iget v2, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    #@2f
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@32
    .line 892
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    #@34
    const-string/jumbo v2, "android.permission.RECEIVE_STK_COMMANDS"

    #@37
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    #@3a
    .line 886
    return-void
.end method

.method private broadcastCardStateAndIccRefreshResp(Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;Lcom/android/internal/telephony/uicc/IccRefreshResponse;)V
    .locals 4
    .param p1, "cardState"    # Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    .param p2, "iccRefreshState"    # Lcom/android/internal/telephony/uicc/IccRefreshResponse;

    #@0
    .prologue
    .line 869
    new-instance v1, Landroid/content/Intent;

    #@2
    const-string/jumbo v2, "android.intent.action.stk.icc_status_change"

    #@5
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@8
    .line 870
    .local v1, "intent":Landroid/content/Intent;
    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    #@a
    if-ne p1, v2, :cond_1

    #@c
    const/4 v0, 0x1

    #@d
    .line 872
    .local v0, "cardPresent":Z
    :goto_0
    if-eqz p2, :cond_0

    #@f
    .line 874
    const-string/jumbo v2, "refresh_result"

    #@12
    iget v3, p2, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    #@14
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@17
    .line 875
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
    .line 876
    iget v3, p2, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    #@25
    .line 875
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
    .line 880
    :cond_0
    const-string/jumbo v2, "card_status"

    #@33
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    #@36
    .line 881
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
    .line 882
    const-string/jumbo v3, " "

    #@49
    .line 881
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v2

    #@4d
    .line 882
    const-string/jumbo v3, "cardPresent: "

    #@50
    .line 881
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
    .line 883
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    #@61
    const-string/jumbo v3, "android.permission.RECEIVE_STK_COMMANDS"

    #@64
    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    #@67
    .line 868
    return-void

    #@68
    .line 870
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
    .line 513
    new-instance v0, Landroid/content/Intent;

    #@2
    const-string/jumbo v1, "android.intent.action.stk.command"

    #@5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@8
    .line 514
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "STK CMD"

    #@b
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@e
    .line 515
    const-string/jumbo v1, "SLOT_ID"

    #@11
    iget v2, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    #@13
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@16
    .line 516
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
    .line 517
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    #@3c
    const-string/jumbo v2, "android.permission.RECEIVE_STK_COMMANDS"

    #@3f
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    #@42
    .line 512
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
    .line 605
    iget v1, p1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    #@2
    invoke-static {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    #@5
    move-result-object v0

    #@6
    .line 606
    .local v0, "cmdType":Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    if-eqz v0, :cond_1

    #@8
    .line 607
    invoke-static {}, Lcom/android/internal/telephony/cat/CatService;->-getcom-android-internal-telephony-cat-AppInterface$CommandTypeSwitchesValues()[I

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
    .line 624
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
    .line 604
    :cond_0
    :goto_0
    return-void

    #@2d
    .line 612
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
    .line 613
    if-eqz p3, :cond_0

    #@3b
    iget-object v1, p3, Lcom/android/internal/telephony/cat/Input;->duration:Lcom/android/internal/telephony/cat/Duration;

    #@3d
    if-eqz v1, :cond_0

    #@3f
    .line 614
    invoke-direct {p0, p4, p3}, Lcom/android/internal/telephony/cat/CatService;->getInKeyResponse(Ljava/io/ByteArrayOutputStream;Lcom/android/internal/telephony/cat/Input;)V

    #@42
    goto :goto_0

    #@43
    .line 618
    :sswitch_1
    iget v1, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    #@45
    const/4 v2, 0x4

    #@46
    if-ne v1, v2, :cond_0

    #@48
    .line 619
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
    .line 620
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/cat/CatService;->getPliResponse(Ljava/io/ByteArrayOutputStream;)V

    #@57
    goto :goto_0

    #@58
    .line 628
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
    .line 607
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
    .line 699
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    #@2
    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@5
    .line 702
    .local v1, "buf":Ljava/io/ByteArrayOutputStream;
    const/16 v5, 0xd6

    #@7
    .line 703
    .local v5, "tag":I
    invoke-virtual {v1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@a
    .line 706
    const/4 v6, 0x0

    #@b
    invoke-virtual {v1, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@e
    .line 709
    sget-object v6, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->EVENT_LIST:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@10
    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    #@13
    move-result v6

    #@14
    or-int/lit16 v5, v6, 0x80

    #@16
    .line 710
    invoke-virtual {v1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@19
    .line 711
    const/4 v6, 0x1

    #@1a
    invoke-virtual {v1, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@1d
    .line 712
    invoke-virtual {v1, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@20
    .line 715
    sget-object v6, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@22
    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    #@25
    move-result v6

    #@26
    or-int/lit16 v5, v6, 0x80

    #@28
    .line 716
    invoke-virtual {v1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@2b
    .line 717
    const/4 v6, 0x2

    #@2c
    invoke-virtual {v1, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@2f
    .line 718
    invoke-virtual {v1, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@32
    .line 719
    invoke-virtual {v1, p3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@35
    .line 733
    packed-switch p1, :pswitch_data_0

    #@38
    .line 749
    :goto_0
    :pswitch_0
    if-eqz p4, :cond_0

    #@3a
    .line 750
    const/4 v6, 0x0

    #@3b
    array-length v7, p4

    #@3c
    :goto_1
    if-ge v6, v7, :cond_0

    #@3e
    aget-byte v0, p4, v6

    #@40
    .line 751
    .local v0, "b":B
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@43
    .line 750
    add-int/lit8 v6, v6, 0x1

    #@45
    goto :goto_1

    #@46
    .line 735
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
    .line 738
    :pswitch_2
    sget-object v6, Lcom/android/internal/telephony/cat/CatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    #@51
    const-string/jumbo v7, " Sending Language Selection event download to ICC"

    #@54
    invoke-static {v6, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    #@57
    .line 739
    sget-object v6, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->LANGUAGE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@59
    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    #@5c
    move-result v6

    #@5d
    or-int/lit16 v5, v6, 0x80

    #@5f
    .line 740
    invoke-virtual {v1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@62
    .line 742
    const/4 v6, 0x2

    #@63
    invoke-virtual {v1, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@66
    goto :goto_0

    #@67
    .line 755
    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@6a
    move-result-object v4

    #@6b
    .line 758
    .local v4, "rawData":[B
    array-length v6, v4

    #@6c
    add-int/lit8 v3, v6, -0x2

    #@6e
    .line 759
    .local v3, "len":I
    int-to-byte v6, v3

    #@6f
    const/4 v7, 0x1

    #@70
    aput-byte v6, v4, v7

    #@72
    .line 761
    invoke-static {v4}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    #@75
    move-result-object v2

    #@76
    .line 763
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
    .line 765
    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    #@8f
    const/4 v7, 0x0

    #@90
    invoke-interface {v6, v2, v7}, Lcom/android/internal/telephony/CommandsInterface;->sendEnvelope(Ljava/lang/String;Landroid/os/Message;)V

    #@93
    .line 697
    return-void

    #@94
    .line 733
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
    .line 633
    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DURATION:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@2
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    #@5
    move-result v0

    #@6
    .line 635
    .local v0, "tag":I
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@9
    .line 636
    const/4 v1, 0x2

    #@a
    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@d
    .line 637
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
    .line 638
    iget-object v1, p2, Lcom/android/internal/telephony/cat/Input;->duration:Lcom/android/internal/telephony/cat/Duration;

    #@1c
    iget v1, v1, Lcom/android/internal/telephony/cat/Duration;->timeInterval:I

    #@1e
    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@21
    .line 632
    return-void
.end method

.method public static getInstance()Lcom/android/internal/telephony/cat/AppInterface;
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 775
    const/4 v1, 0x0

    #@2
    .line 776
    .local v1, "slotId":I
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    #@5
    move-result-object v0

    #@6
    .line 777
    .local v0, "sControl":Lcom/android/internal/telephony/SubscriptionController;
    if-eqz v0, :cond_0

    #@8
    .line 778
    invoke-virtual {v0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultSubId()I

    #@b
    move-result v2

    #@c
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/SubscriptionController;->getSlotId(I)I

    #@f
    move-result v1

    #@10
    .line 780
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
    .line 789
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
    .line 643
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@3
    move-result-object v2

    #@4
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    .line 645
    .local v0, "lang":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@a
    .line 647
    sget-object v2, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->LANGUAGE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@c
    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    #@f
    move-result v1

    #@10
    .line 648
    .local v1, "tag":I
    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@13
    .line 649
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@16
    move-result v2

    #@17
    invoke-static {p1, v2}, Lcom/android/internal/telephony/cat/ResponseData;->writeLength(Ljava/io/ByteArrayOutputStream;I)V

    #@1a
    .line 650
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
    .line 641
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
    .line 947
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CatService;->validateResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)Z

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_0

    #@a
    .line 948
    return-void

    #@b
    .line 950
    :cond_0
    const/4 v8, 0x0

    #@c
    .line 951
    .local v8, "resp":Lcom/android/internal/telephony/cat/ResponseData;
    const/4 v6, 0x0

    #@d
    .line 952
    .local v6, "helpRequired":Z
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatResponseMessage;->getCmdDetails()Lcom/android/internal/telephony/cat/CommandDetails;

    #@10
    move-result-object v1

    #@11
    .line 953
    .local v1, "cmdDet":Lcom/android/internal/telephony/cat/CommandDetails;
    iget v0, v1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    #@13
    invoke-static {v0}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    #@16
    move-result-object v9

    #@17
    .line 955
    .local v9, "type":Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    invoke-static {}, Lcom/android/internal/telephony/cat/CatService;->-getcom-android-internal-telephony-cat-ResultCodeSwitchesValues()[I

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
    .line 1048
    return-void

    #@27
    .line 957
    :pswitch_0
    const/4 v6, 0x1

    #@28
    .line 971
    :pswitch_1
    invoke-static {}, Lcom/android/internal/telephony/cat/CatService;->-getcom-android-internal-telephony-cat-AppInterface$CommandTypeSwitchesValues()[I

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
    .line 1050
    .end local v8    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    :goto_0
    iget-object v2, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    #@38
    iget-boolean v3, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mIncludeAdditionalInfo:Z

    #@3a
    .line 1051
    iget v4, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mAdditionalInfo:I

    #@3c
    move-object v0, p0

    #@3d
    .line 1050
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    #@40
    .line 1052
    iput-object v10, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    #@42
    .line 930
    return-void

    #@43
    .line 973
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
    .line 974
    :goto_1
    iget v0, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersMenuSelection:I

    #@4c
    invoke-direct {p0, v0, v6}, Lcom/android/internal/telephony/cat/CatService;->sendMenuSelection(IZ)V

    #@4f
    .line 975
    return-void

    #@50
    .line 973
    :cond_1
    const/4 v6, 0x0

    #@51
    goto :goto_1

    #@52
    .line 977
    :pswitch_4
    new-instance v5, Lcom/android/internal/telephony/cat/SelectItemResponseData;

    #@54
    iget v0, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersMenuSelection:I

    #@56
    invoke-direct {v5, v0}, Lcom/android/internal/telephony/cat/SelectItemResponseData;-><init>(I)V

    #@59
    .line 978
    .local v5, "resp":Lcom/android/internal/telephony/cat/ResponseData;
    goto :goto_0

    #@5a
    .line 981
    .end local v5    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    :pswitch_5
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    #@5c
    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geInput()Lcom/android/internal/telephony/cat/Input;

    #@5f
    move-result-object v7

    #@60
    .line 982
    .local v7, "input":Lcom/android/internal/telephony/cat/Input;
    iget-boolean v0, v7, Lcom/android/internal/telephony/cat/Input;->yesNo:Z

    #@62
    if-nez v0, :cond_2

    #@64
    .line 985
    if-nez v6, :cond_7

    #@66
    .line 986
    new-instance v5, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;

    #@68
    iget-object v0, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersInput:Ljava/lang/String;

    #@6a
    .line 987
    iget-boolean v2, v7, Lcom/android/internal/telephony/cat/Input;->ucs2:Z

    #@6c
    iget-boolean v3, v7, Lcom/android/internal/telephony/cat/Input;->packed:Z

    #@6e
    .line 986
    invoke-direct {v5, v0, v2, v3}, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;-><init>(Ljava/lang/String;ZZ)V

    #@71
    .restart local v5    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    goto :goto_0

    #@72
    .line 990
    .end local v5    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    :cond_2
    new-instance v5, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;

    #@74
    .line 991
    iget-boolean v0, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersYesNoSelection:Z

    #@76
    .line 990
    invoke-direct {v5, v0}, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;-><init>(Z)V

    #@79
    .restart local v5    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    goto :goto_0

    #@7a
    .line 995
    .end local v5    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    .end local v7    # "input":Lcom/android/internal/telephony/cat/Input;
    :pswitch_6
    iget-object v0, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    #@7c
    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    #@7e
    if-ne v0, v2, :cond_3

    #@80
    .line 998
    const/4 v0, 0x1

    #@81
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setAdditionalInfo(I)V

    #@84
    :goto_2
    move-object v5, v8

    #@85
    .line 1003
    .restart local v5    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    goto :goto_0

    #@86
    .line 1000
    .end local v5    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    :cond_3
    iput-boolean v5, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mIncludeAdditionalInfo:Z

    #@88
    .line 1001
    iput v5, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mAdditionalInfo:I

    #@8a
    goto :goto_2

    #@8b
    :pswitch_7
    move-object v5, v8

    #@8c
    .line 1005
    .restart local v5    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    goto :goto_0

    #@8d
    .line 1009
    .end local v5    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    :pswitch_8
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    #@8f
    iget-boolean v2, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersConfirm:Z

    #@91
    invoke-interface {v0, v2, v10}, Lcom/android/internal/telephony/CommandsInterface;->handleCallSetupRequestFromSim(ZLandroid/os/Message;)V

    #@94
    .line 1013
    iput-object v10, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    #@96
    .line 1014
    return-void

    #@97
    .line 1016
    :pswitch_9
    iget v0, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mEventValue:I

    #@99
    const/4 v2, 0x5

    #@9a
    if-ne v2, v0, :cond_4

    #@9c
    .line 1017
    iget v1, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mEventValue:I

    #@9e
    .line 1018
    .end local v1    # "cmdDet":Lcom/android/internal/telephony/cat/CommandDetails;
    iget-object v4, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mAddedInfo:[B

    #@a0
    .line 1017
    const/4 v2, 0x2

    #@a1
    move-object v0, p0

    #@a2
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->eventDownload(III[BZ)V

    #@a5
    .line 1024
    :goto_3
    return-void

    #@a6
    .line 1020
    .restart local v1    # "cmdDet":Lcom/android/internal/telephony/cat/CommandDetails;
    :cond_4
    iget v1, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mEventValue:I

    #@a8
    .line 1021
    .end local v1    # "cmdDet":Lcom/android/internal/telephony/cat/CommandDetails;
    iget-object v4, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mAddedInfo:[B

    #@aa
    .line 1020
    const/16 v2, 0x82

    #@ac
    move-object v0, p0

    #@ad
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->eventDownload(III[BZ)V

    #@b0
    goto :goto_3

    #@b1
    .line 1035
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
    .line 1036
    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    #@bb
    invoke-interface {v0, v5, v10}, Lcom/android/internal/telephony/CommandsInterface;->handleCallSetupRequestFromSim(ZLandroid/os/Message;)V

    #@be
    .line 1037
    iput-object v10, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    #@c0
    .line 1038
    return-void

    #@c1
    .line 1040
    :cond_6
    const/4 v5, 0x0

    #@c2
    .end local v8    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    .local v5, "resp":Lcom/android/internal/telephony/cat/ResponseData;
    goto/16 :goto_0

    #@c4
    .line 1045
    .end local v5    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    .restart local v8    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    :pswitch_b
    const/4 v5, 0x0

    #@c5
    .line 1046
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
    .line 955
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
    .line 971
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
    .locals 22
    .param p1, "cmdParams"    # Lcom/android/internal/telephony/cat/CommandParams;
    .param p2, "isProactiveCmd"    # Z

    #@0
    .prologue
    .line 363
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cat/CommandParams;->getCommandType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    #@3
    move-result-object v2

    #@4
    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->name()Ljava/lang/String;

    #@7
    move-result-object v2

    #@8
    move-object/from16 v0, p0

    #@a
    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    #@d
    .line 366
    if-eqz p2, :cond_0

    #@f
    .line 367
    move-object/from16 v0, p0

    #@11
    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    #@13
    if-eqz v2, :cond_0

    #@15
    .line 368
    move-object/from16 v0, p0

    #@17
    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    #@19
    new-instance v3, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    const-string/jumbo v5, "ProactiveCommand mSlotId="

    #@21
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v3

    #@25
    move-object/from16 v0, p0

    #@27
    iget v5, v0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    #@29
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v3

    #@2d
    .line 369
    const-string/jumbo v5, " cmdParams="

    #@30
    .line 368
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v3

    #@34
    move-object/from16 v0, p1

    #@36
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v3

    #@3a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v3

    #@3e
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/uicc/UiccController;->addCardLog(Ljava/lang/String;)V

    #@41
    .line 375
    :cond_0
    new-instance v18, Lcom/android/internal/telephony/cat/CatCmdMessage;

    #@43
    move-object/from16 v0, v18

    #@45
    move-object/from16 v1, p1

    #@47
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cat/CatCmdMessage;-><init>(Lcom/android/internal/telephony/cat/CommandParams;)V

    #@4a
    .line 376
    .local v18, "cmdMsg":Lcom/android/internal/telephony/cat/CatCmdMessage;
    invoke-static {}, Lcom/android/internal/telephony/cat/CatService;->-getcom-android-internal-telephony-cat-AppInterface$CommandTypeSwitchesValues()[I

    #@4d
    move-result-object v2

    #@4e
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cat/CommandParams;->getCommandType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    #@51
    move-result-object v3

    #@52
    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    #@55
    move-result v3

    #@56
    aget v2, v2, v3

    #@58
    packed-switch v2, :pswitch_data_0

    #@5b
    .line 504
    const-string/jumbo v2, "Unsupported command"

    #@5e
    move-object/from16 v0, p0

    #@60
    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    #@63
    .line 505
    return-void

    #@64
    .line 378
    :pswitch_0
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getMenu()Lcom/android/internal/telephony/cat/Menu;

    #@67
    move-result-object v2

    #@68
    move-object/from16 v0, p0

    #@6a
    invoke-direct {v0, v2}, Lcom/android/internal/telephony/cat/CatService;->removeMenu(Lcom/android/internal/telephony/cat/Menu;)Z

    #@6d
    move-result v2

    #@6e
    if-eqz v2, :cond_2

    #@70
    .line 379
    const/4 v2, 0x0

    #@71
    move-object/from16 v0, p0

    #@73
    iput-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    #@75
    .line 383
    :goto_0
    move-object/from16 v0, p1

    #@77
    iget-boolean v2, v0, Lcom/android/internal/telephony/cat/CommandParams;->mLoadIconFailed:Z

    #@79
    if-eqz v2, :cond_3

    #@7b
    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_ICON_NOT_DISPLAYED:Lcom/android/internal/telephony/cat/ResultCode;

    #@7d
    .line 385
    .local v4, "resultCode":Lcom/android/internal/telephony/cat/ResultCode;
    :goto_1
    move-object/from16 v0, p1

    #@7f
    iget-object v3, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    #@81
    const/4 v5, 0x0

    #@82
    const/4 v6, 0x0

    #@83
    const/4 v7, 0x0

    #@84
    move-object/from16 v2, p0

    #@86
    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    #@89
    .line 507
    .end local v4    # "resultCode":Lcom/android/internal/telephony/cat/ResultCode;
    .end local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    :cond_1
    :goto_2
    :pswitch_1
    move-object/from16 v0, v18

    #@8b
    move-object/from16 v1, p0

    #@8d
    iput-object v0, v1, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    #@8f
    .line 508
    move-object/from16 v0, p0

    #@91
    move-object/from16 v1, v18

    #@93
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cat/CatService;->broadcastCatCmdIntent(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    #@96
    .line 362
    return-void

    #@97
    .line 381
    .restart local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    :cond_2
    move-object/from16 v0, v18

    #@99
    move-object/from16 v1, p0

    #@9b
    iput-object v0, v1, Lcom/android/internal/telephony/cat/CatService;->mMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    #@9d
    goto :goto_0

    #@9e
    .line 384
    :cond_3
    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    #@a0
    .restart local v4    # "resultCode":Lcom/android/internal/telephony/cat/ResultCode;
    goto :goto_1

    #@a1
    .line 392
    .end local v4    # "resultCode":Lcom/android/internal/telephony/cat/ResultCode;
    :pswitch_2
    move-object/from16 v0, p1

    #@a3
    iget-object v2, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    #@a5
    sget-object v3, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_IDLE_MODE_TEXT:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    #@a7
    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->value()I

    #@aa
    move-result v3

    #@ab
    iput v3, v2, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    #@ad
    goto :goto_2

    #@ae
    .line 395
    :pswitch_3
    move-object/from16 v0, p1

    #@b0
    iget-boolean v2, v0, Lcom/android/internal/telephony/cat/CommandParams;->mLoadIconFailed:Z

    #@b2
    if-eqz v2, :cond_4

    #@b4
    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_ICON_NOT_DISPLAYED:Lcom/android/internal/telephony/cat/ResultCode;

    #@b6
    .line 397
    .restart local v4    # "resultCode":Lcom/android/internal/telephony/cat/ResultCode;
    :goto_3
    move-object/from16 v0, p1

    #@b8
    iget-object v3, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    #@ba
    const/4 v5, 0x0

    #@bb
    const/4 v6, 0x0

    #@bc
    const/4 v7, 0x0

    #@bd
    move-object/from16 v2, p0

    #@bf
    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    #@c2
    goto :goto_2

    #@c3
    .line 396
    .end local v4    # "resultCode":Lcom/android/internal/telephony/cat/ResultCode;
    :cond_4
    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    #@c5
    .restart local v4    # "resultCode":Lcom/android/internal/telephony/cat/ResultCode;
    goto :goto_3

    #@c6
    .line 400
    .end local v4    # "resultCode":Lcom/android/internal/telephony/cat/ResultCode;
    :pswitch_4
    move-object/from16 v0, p0

    #@c8
    move-object/from16 v1, v18

    #@ca
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cat/CatService;->isSupportedSetupEventCommand(Lcom/android/internal/telephony/cat/CatCmdMessage;)Z

    #@cd
    move-result v2

    #@ce
    if-eqz v2, :cond_5

    #@d0
    .line 401
    move-object/from16 v0, p1

    #@d2
    iget-object v6, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    #@d4
    sget-object v7, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    #@d6
    const/4 v8, 0x0

    #@d7
    const/4 v9, 0x0

    #@d8
    const/4 v10, 0x0

    #@d9
    move-object/from16 v5, p0

    #@db
    invoke-direct/range {v5 .. v10}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    #@de
    goto :goto_2

    #@df
    .line 403
    :cond_5
    move-object/from16 v0, p1

    #@e1
    iget-object v6, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    #@e3
    sget-object v7, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    #@e5
    .line 404
    const/4 v8, 0x0

    #@e6
    const/4 v9, 0x0

    #@e7
    const/4 v10, 0x0

    #@e8
    move-object/from16 v5, p0

    #@ea
    .line 403
    invoke-direct/range {v5 .. v10}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    #@ed
    goto :goto_2

    #@ee
    .line 409
    :pswitch_5
    move-object/from16 v0, p1

    #@f0
    iget-object v2, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    #@f2
    iget v2, v2, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    #@f4
    packed-switch v2, :pswitch_data_1

    #@f7
    .line 419
    move-object/from16 v0, p1

    #@f9
    iget-object v12, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    #@fb
    sget-object v13, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    #@fd
    const/4 v14, 0x0

    #@fe
    const/4 v15, 0x0

    #@ff
    const/16 v16, 0x0

    #@101
    move-object/from16 v11, p0

    #@103
    invoke-direct/range {v11 .. v16}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    #@106
    .line 422
    :goto_4
    return-void

    #@107
    .line 411
    :pswitch_6
    new-instance v10, Lcom/android/internal/telephony/cat/DTTZResponseData;

    #@109
    const/4 v2, 0x0

    #@10a
    invoke-direct {v10, v2}, Lcom/android/internal/telephony/cat/DTTZResponseData;-><init>(Ljava/util/Calendar;)V

    #@10d
    .line 412
    .local v10, "resp":Lcom/android/internal/telephony/cat/ResponseData;
    move-object/from16 v0, p1

    #@10f
    iget-object v6, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    #@111
    sget-object v7, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    #@113
    const/4 v8, 0x0

    #@114
    const/4 v9, 0x0

    #@115
    move-object/from16 v5, p0

    #@117
    invoke-direct/range {v5 .. v10}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    #@11a
    goto :goto_4

    #@11b
    .line 415
    .end local v10    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    :pswitch_7
    new-instance v10, Lcom/android/internal/telephony/cat/LanguageResponseData;

    #@11d
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@120
    move-result-object v2

    #@121
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    #@124
    move-result-object v2

    #@125
    invoke-direct {v10, v2}, Lcom/android/internal/telephony/cat/LanguageResponseData;-><init>(Ljava/lang/String;)V

    #@128
    .line 416
    .restart local v10    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    move-object/from16 v0, p1

    #@12a
    iget-object v6, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    #@12c
    sget-object v7, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    #@12e
    const/4 v8, 0x0

    #@12f
    const/4 v9, 0x0

    #@130
    move-object/from16 v5, p0

    #@132
    invoke-direct/range {v5 .. v10}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    #@135
    goto :goto_4

    #@136
    .end local v10    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    :pswitch_8
    move-object/from16 v2, p1

    #@138
    .line 424
    check-cast v2, Lcom/android/internal/telephony/cat/LaunchBrowserParams;

    #@13a
    iget-object v2, v2, Lcom/android/internal/telephony/cat/LaunchBrowserParams;->mConfirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    #@13c
    iget-object v2, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    #@13e
    if-eqz v2, :cond_1

    #@140
    move-object/from16 v2, p1

    #@142
    .line 425
    check-cast v2, Lcom/android/internal/telephony/cat/LaunchBrowserParams;

    #@144
    iget-object v2, v2, Lcom/android/internal/telephony/cat/LaunchBrowserParams;->mConfirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    #@146
    iget-object v2, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    #@148
    const-string/jumbo v3, "Default Message"

    #@14b
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@14e
    move-result v2

    #@14f
    .line 424
    if-eqz v2, :cond_1

    #@151
    .line 426
    move-object/from16 v0, p0

    #@153
    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    #@155
    const v3, 0x10404e2

    #@158
    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@15b
    move-result-object v20

    #@15c
    .line 427
    .local v20, "message":Ljava/lang/CharSequence;
    check-cast p1, Lcom/android/internal/telephony/cat/LaunchBrowserParams;

    #@15e
    .end local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    move-object/from16 v0, p1

    #@160
    iget-object v2, v0, Lcom/android/internal/telephony/cat/LaunchBrowserParams;->mConfirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    #@162
    invoke-interface/range {v20 .. v20}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@165
    move-result-object v3

    #@166
    iput-object v3, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    #@168
    goto/16 :goto_2

    #@16a
    .end local v20    # "message":Ljava/lang/CharSequence;
    .restart local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    :pswitch_9
    move-object/from16 v2, p1

    #@16c
    .line 438
    check-cast v2, Lcom/android/internal/telephony/cat/DisplayTextParams;

    #@16e
    iget-object v2, v2, Lcom/android/internal/telephony/cat/DisplayTextParams;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    #@170
    iget-object v2, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    #@172
    if-eqz v2, :cond_1

    #@174
    move-object/from16 v2, p1

    #@176
    .line 439
    check-cast v2, Lcom/android/internal/telephony/cat/DisplayTextParams;

    #@178
    iget-object v2, v2, Lcom/android/internal/telephony/cat/DisplayTextParams;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    #@17a
    iget-object v2, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    #@17c
    const-string/jumbo v3, "Default Message"

    #@17f
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@182
    move-result v2

    #@183
    .line 438
    if-eqz v2, :cond_1

    #@185
    .line 440
    move-object/from16 v0, p0

    #@187
    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    #@189
    const v3, 0x10404e1

    #@18c
    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@18f
    move-result-object v20

    #@190
    .line 441
    .restart local v20    # "message":Ljava/lang/CharSequence;
    check-cast p1, Lcom/android/internal/telephony/cat/DisplayTextParams;

    #@192
    .end local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    move-object/from16 v0, p1

    #@194
    iget-object v2, v0, Lcom/android/internal/telephony/cat/DisplayTextParams;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    #@196
    invoke-interface/range {v20 .. v20}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@199
    move-result-object v3

    #@19a
    iput-object v3, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    #@19c
    goto/16 :goto_2

    #@19e
    .end local v20    # "message":Ljava/lang/CharSequence;
    .restart local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    :pswitch_a
    move-object/from16 v2, p1

    #@1a0
    .line 447
    check-cast v2, Lcom/android/internal/telephony/cat/CallSetupParams;

    #@1a2
    iget-object v2, v2, Lcom/android/internal/telephony/cat/CallSetupParams;->mConfirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    #@1a4
    iget-object v2, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    #@1a6
    if-eqz v2, :cond_1

    #@1a8
    move-object/from16 v2, p1

    #@1aa
    .line 448
    check-cast v2, Lcom/android/internal/telephony/cat/CallSetupParams;

    #@1ac
    iget-object v2, v2, Lcom/android/internal/telephony/cat/CallSetupParams;->mConfirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    #@1ae
    iget-object v2, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    #@1b0
    const-string/jumbo v3, "Default Message"

    #@1b3
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1b6
    move-result v2

    #@1b7
    .line 447
    if-eqz v2, :cond_1

    #@1b9
    .line 449
    move-object/from16 v0, p0

    #@1bb
    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    #@1bd
    const v3, 0x10404e3

    #@1c0
    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@1c3
    move-result-object v20

    #@1c4
    .line 450
    .restart local v20    # "message":Ljava/lang/CharSequence;
    check-cast p1, Lcom/android/internal/telephony/cat/CallSetupParams;

    #@1c6
    .end local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    move-object/from16 v0, p1

    #@1c8
    iget-object v2, v0, Lcom/android/internal/telephony/cat/CallSetupParams;->mConfirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    #@1ca
    invoke-interface/range {v20 .. v20}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@1cd
    move-result-object v3

    #@1ce
    iput-object v3, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    #@1d0
    goto/16 :goto_2

    #@1d2
    .end local v20    # "message":Ljava/lang/CharSequence;
    .restart local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    :pswitch_b
    move-object/from16 v17, p1

    #@1d4
    .line 457
    check-cast v17, Lcom/android/internal/telephony/cat/BIPClientParams;

    #@1d6
    .line 463
    .local v17, "cmd":Lcom/android/internal/telephony/cat/BIPClientParams;
    const/16 v21, 0x0

    #@1d8
    .line 465
    .local v21, "noAlphaUsrCnf":Z
    :try_start_0
    move-object/from16 v0, p0

    #@1da
    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    #@1dc
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@1df
    move-result-object v2

    #@1e0
    .line 466
    const v3, 0x1120082

    #@1e3
    .line 465
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@1e6
    move-result v21

    #@1e7
    .line 470
    .end local v21    # "noAlphaUsrCnf":Z
    :goto_5
    move-object/from16 v0, v17

    #@1e9
    iget-object v2, v0, Lcom/android/internal/telephony/cat/BIPClientParams;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    #@1eb
    iget-object v2, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    #@1ed
    if-nez v2, :cond_9

    #@1ef
    move-object/from16 v0, v17

    #@1f1
    iget-boolean v2, v0, Lcom/android/internal/telephony/cat/BIPClientParams;->mHasAlphaId:Z

    #@1f3
    if-nez v2, :cond_6

    #@1f5
    if-eqz v21, :cond_9

    #@1f7
    .line 471
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    #@1f9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1fc
    const-string/jumbo v3, "cmd "

    #@1ff
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@202
    move-result-object v2

    #@203
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cat/CommandParams;->getCommandType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    #@206
    move-result-object v3

    #@207
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@20a
    move-result-object v2

    #@20b
    const-string/jumbo v3, " with null alpha id"

    #@20e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@211
    move-result-object v2

    #@212
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@215
    move-result-object v2

    #@216
    move-object/from16 v0, p0

    #@218
    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    #@21b
    .line 473
    if-eqz p2, :cond_8

    #@21d
    .line 474
    move-object/from16 v0, p1

    #@21f
    iget-object v12, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    #@221
    sget-object v13, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    #@223
    const/4 v14, 0x0

    #@224
    const/4 v15, 0x0

    #@225
    const/16 v16, 0x0

    #@227
    move-object/from16 v11, p0

    #@229
    invoke-direct/range {v11 .. v16}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    #@22c
    .line 478
    :cond_7
    :goto_6
    return-void

    #@22d
    .line 467
    .restart local v21    # "noAlphaUsrCnf":Z
    :catch_0
    move-exception v19

    #@22e
    .line 468
    .local v19, "e":Landroid/content/res/Resources$NotFoundException;
    const/16 v21, 0x0

    #@230
    goto :goto_5

    #@231
    .line 475
    .end local v19    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v21    # "noAlphaUsrCnf":Z
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cat/CommandParams;->getCommandType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    #@234
    move-result-object v2

    #@235
    sget-object v3, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->OPEN_CHANNEL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    #@237
    if-ne v2, v3, :cond_7

    #@239
    .line 476
    move-object/from16 v0, p0

    #@23b
    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    #@23d
    const/4 v3, 0x1

    #@23e
    const/4 v5, 0x0

    #@23f
    invoke-interface {v2, v3, v5}, Lcom/android/internal/telephony/CommandsInterface;->handleCallSetupRequestFromSim(ZLandroid/os/Message;)V

    #@242
    goto :goto_6

    #@243
    .line 481
    :cond_9
    move-object/from16 v0, p0

    #@245
    iget-boolean v2, v0, Lcom/android/internal/telephony/cat/CatService;->mStkAppInstalled:Z

    #@247
    if-nez v2, :cond_a

    #@249
    .line 482
    const-string/jumbo v2, "No STK application found."

    #@24c
    move-object/from16 v0, p0

    #@24e
    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    #@251
    .line 483
    if-eqz p2, :cond_a

    #@253
    .line 484
    move-object/from16 v0, p1

    #@255
    iget-object v12, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    #@257
    .line 485
    sget-object v13, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    #@259
    .line 486
    const/4 v14, 0x0

    #@25a
    const/4 v15, 0x0

    #@25b
    const/16 v16, 0x0

    #@25d
    move-object/from16 v11, p0

    #@25f
    .line 484
    invoke-direct/range {v11 .. v16}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    #@262
    .line 487
    return-void

    #@263
    .line 496
    :cond_a
    if-eqz p2, :cond_1

    #@265
    .line 497
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cat/CommandParams;->getCommandType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    #@268
    move-result-object v2

    #@269
    sget-object v3, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->CLOSE_CHANNEL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    #@26b
    if-eq v2, v3, :cond_b

    #@26d
    .line 498
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cat/CommandParams;->getCommandType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    #@270
    move-result-object v2

    #@271
    sget-object v3, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->RECEIVE_DATA:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    #@273
    if-ne v2, v3, :cond_c

    #@275
    .line 500
    :cond_b
    :goto_7
    move-object/from16 v0, p1

    #@277
    iget-object v12, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    #@279
    sget-object v13, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    #@27b
    const/4 v14, 0x0

    #@27c
    const/4 v15, 0x0

    #@27d
    const/16 v16, 0x0

    #@27f
    move-object/from16 v11, p0

    #@281
    invoke-direct/range {v11 .. v16}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    #@284
    goto/16 :goto_2

    #@286
    .line 499
    :cond_c
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cat/CommandParams;->getCommandType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    #@289
    move-result-object v2

    #@28a
    sget-object v3, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SEND_DATA:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    #@28c
    if-ne v2, v3, :cond_1

    #@28e
    goto :goto_7

    #@28f
    .line 376
    nop

    #@290
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

    #@2bc
    .line 409
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
    .line 525
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
    .line 527
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    #@1b
    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    #@1d
    .line 528
    new-instance v0, Landroid/content/Intent;

    #@1f
    const-string/jumbo v1, "android.intent.action.stk.session_end"

    #@22
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@25
    .line 529
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "SLOT_ID"

    #@28
    iget v2, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    #@2a
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@2d
    .line 530
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    #@2f
    const-string/jumbo v2, "android.permission.RECEIVE_STK_COMMANDS"

    #@32
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    #@35
    .line 524
    return-void
.end method

.method private isStkAppInstalled()Z
    .locals 6

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1056
    new-instance v1, Landroid/content/Intent;

    #@3
    const-string/jumbo v5, "android.intent.action.stk.command"

    #@6
    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@9
    .line 1057
    .local v1, "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    #@b
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@e
    move-result-object v3

    #@f
    .line 1059
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/16 v5, 0x80

    #@11
    invoke-virtual {v3, v1, v5}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    #@14
    move-result-object v0

    #@15
    .line 1060
    .local v0, "broadcastReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v0, :cond_1

    #@17
    move v2, v4

    #@18
    .line 1062
    .local v2, "numReceiver":I
    :goto_0
    if-lez v2, :cond_0

    #@1a
    const/4 v4, 0x1

    #@1b
    :cond_0
    return v4

    #@1c
    .line 1060
    .end local v2    # "numReceiver":I
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@1f
    move-result v2

    #@20
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
    .line 920
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
    .line 921
    return v3

    #@14
    .line 923
    :catch_0
    move-exception v0

    #@15
    .line 924
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v1, "Unable to get Menu\'s items size"

    #@18
    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    #@1b
    .line 925
    return v3

    #@1c
    .line 927
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
    .line 656
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    #@4
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@7
    .line 659
    .local v0, "buf":Ljava/io/ByteArrayOutputStream;
    const/16 v4, 0xd3

    #@9
    .line 660
    .local v4, "tag":I
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@c
    .line 663
    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@f
    .line 666
    sget-object v5, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@11
    invoke-virtual {v5}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    #@14
    move-result v5

    #@15
    or-int/lit16 v4, v5, 0x80

    #@17
    .line 667
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@1a
    .line 668
    const/4 v5, 0x2

    #@1b
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@1e
    .line 669
    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@21
    .line 670
    const/16 v5, 0x81

    #@23
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@26
    .line 673
    sget-object v5, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ITEM_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@28
    invoke-virtual {v5}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    #@2b
    move-result v5

    #@2c
    or-int/lit16 v4, v5, 0x80

    #@2e
    .line 674
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@31
    .line 675
    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@34
    .line 676
    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@37
    .line 679
    if-eqz p2, :cond_0

    #@39
    .line 680
    sget-object v5, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->HELP_REQUEST:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@3b
    invoke-virtual {v5}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    #@3e
    move-result v4

    #@3f
    .line 681
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@42
    .line 682
    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@45
    .line 685
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@48
    move-result-object v3

    #@49
    .line 688
    .local v3, "rawData":[B
    array-length v5, v3

    #@4a
    add-int/lit8 v2, v5, -0x2

    #@4c
    .line 689
    .local v2, "len":I
    int-to-byte v5, v2

    #@4d
    aput-byte v5, v3, v6

    #@4f
    .line 691
    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    #@52
    move-result-object v1

    #@53
    .line 693
    .local v1, "hexString":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    #@55
    const/4 v6, 0x0

    #@56
    invoke-interface {v5, v1, v6}, Lcom/android/internal/telephony/CommandsInterface;->sendEnvelope(Ljava/lang/String;Landroid/os/Message;)V

    #@59
    .line 654
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
    const/4 v3, 0x2

    #@1
    const/4 v7, 0x0

    #@2
    .line 538
    if-nez p1, :cond_0

    #@4
    .line 539
    return-void

    #@5
    .line 541
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    #@7
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@a
    .line 543
    .local v0, "buf":Ljava/io/ByteArrayOutputStream;
    const/4 v1, 0x0

    #@b
    .line 544
    .local v1, "cmdInput":Lcom/android/internal/telephony/cat/Input;
    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    #@d
    if-eqz v6, :cond_1

    #@f
    .line 545
    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    #@11
    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geInput()Lcom/android/internal/telephony/cat/Input;

    #@14
    move-result-object v1

    #@15
    .line 549
    .end local v1    # "cmdInput":Lcom/android/internal/telephony/cat/Input;
    :cond_1
    sget-object v6, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->COMMAND_DETAILS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@17
    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    #@1a
    move-result v5

    #@1b
    .line 550
    .local v5, "tag":I
    iget-boolean v6, p1, Lcom/android/internal/telephony/cat/CommandDetails;->compRequired:Z

    #@1d
    if-eqz v6, :cond_2

    #@1f
    .line 551
    or-int/lit16 v5, v5, 0x80

    #@21
    .line 553
    :cond_2
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@24
    .line 554
    const/4 v6, 0x3

    #@25
    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@28
    .line 555
    iget v6, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandNumber:I

    #@2a
    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@2d
    .line 556
    iget v6, p1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    #@2f
    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@32
    .line 557
    iget v6, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    #@34
    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@37
    .line 566
    sget-object v6, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@39
    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    #@3c
    move-result v5

    #@3d
    .line 567
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@40
    .line 568
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@43
    .line 569
    const/16 v6, 0x82

    #@45
    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@48
    .line 570
    const/16 v6, 0x81

    #@4a
    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@4d
    .line 573
    sget-object v6, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->RESULT:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@4f
    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    #@52
    move-result v5

    #@53
    .line 574
    iget-boolean v6, p1, Lcom/android/internal/telephony/cat/CommandDetails;->compRequired:Z

    #@55
    if-eqz v6, :cond_3

    #@57
    .line 575
    or-int/lit16 v5, v5, 0x80

    #@59
    .line 577
    :cond_3
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@5c
    .line 578
    if-eqz p3, :cond_5

    #@5e
    .line 579
    .local v3, "length":I
    :goto_0
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@61
    .line 580
    invoke-virtual {p2}, Lcom/android/internal/telephony/cat/ResultCode;->value()I

    #@64
    move-result v6

    #@65
    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@68
    .line 583
    if-eqz p3, :cond_4

    #@6a
    .line 584
    invoke-virtual {v0, p4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@6d
    .line 588
    :cond_4
    if-eqz p5, :cond_6

    #@6f
    .line 589
    invoke-virtual {p5, v0}, Lcom/android/internal/telephony/cat/ResponseData;->format(Ljava/io/ByteArrayOutputStream;)V

    #@72
    .line 594
    :goto_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@75
    move-result-object v4

    #@76
    .line 595
    .local v4, "rawData":[B
    invoke-static {v4}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    #@79
    move-result-object v2

    #@7a
    .line 600
    .local v2, "hexString":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    #@7c
    invoke-interface {v6, v2, v7}, Lcom/android/internal/telephony/CommandsInterface;->sendTerminalResponse(Ljava/lang/String;Landroid/os/Message;)V

    #@7f
    .line 536
    return-void

    #@80
    .line 578
    .end local v2    # "hexString":Ljava/lang/String;
    .end local v3    # "length":I
    .end local v4    # "rawData":[B
    :cond_5
    const/4 v3, 0x1

    #@81
    goto :goto_0

    #@82
    .line 591
    .restart local v3    # "length":I
    :cond_6
    invoke-direct {p0, p1, p2, v1, v0}, Lcom/android/internal/telephony/cat/CatService;->encodeOptionalTags(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;Lcom/android/internal/telephony/cat/Input;Ljava/io/ByteArrayOutputStream;)V

    #@85
    goto :goto_1
.end method

.method private validateResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)Z
    .locals 3
    .param p1, "resMsg"    # Lcom/android/internal/telephony/cat/CatResponseMessage;

    #@0
    .prologue
    .line 906
    const/4 v0, 0x0

    #@1
    .line 907
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
    .line 908
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
    .line 909
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
    .line 910
    const/4 v0, 0x1

    #@35
    .line 915
    .end local v0    # "validResponse":Z
    :cond_1
    :goto_0
    return v0

    #@36
    .line 911
    .restart local v0    # "validResponse":Z
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    #@38
    if-eqz v1, :cond_1

    #@3a
    .line 912
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
    .line 913
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
    .line 794
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
    .line 796
    iget v3, p1, Landroid/os/Message;->what:I

    #@23
    sparse-switch v3, :sswitch_data_0

    #@26
    .line 857
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
    .line 801
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
    .line 802
    const/4 v1, 0x0

    #@5c
    .line 803
    .local v1, "data":Ljava/lang/String;
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@5e
    if-eqz v3, :cond_0

    #@60
    .line 804
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@62
    check-cast v0, Landroid/os/AsyncResult;

    #@64
    .line 805
    .local v0, "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_0

    #@66
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@68
    if-eqz v3, :cond_0

    #@6a
    .line 807
    :try_start_0
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@6c
    .end local v1    # "data":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    #@6e
    .line 813
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
    .line 793
    :goto_0
    :sswitch_1
    return-void

    #@7b
    .line 816
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
    .line 821
    :sswitch_3
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@8a
    check-cast v3, Lcom/android/internal/telephony/cat/RilMessage;

    #@8c
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/cat/CatService;->handleRilMsg(Lcom/android/internal/telephony/cat/RilMessage;)V

    #@8f
    goto :goto_0

    #@90
    .line 824
    :sswitch_4
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@92
    check-cast v3, Lcom/android/internal/telephony/cat/CatResponseMessage;

    #@94
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/cat/CatService;->handleCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V

    #@97
    goto :goto_0

    #@98
    .line 827
    :sswitch_5
    const-string/jumbo v3, "MSG_ID_ICC_CHANGED"

    #@9b
    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    #@9e
    .line 828
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/CatService;->updateIccAvailability()V

    #@a1
    goto :goto_0

    #@a2
    .line 831
    :sswitch_6
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@a4
    if-eqz v3, :cond_2

    #@a6
    .line 832
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@a8
    check-cast v0, Landroid/os/AsyncResult;

    #@aa
    .line 833
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_1

    #@ac
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@ae
    if-eqz v3, :cond_1

    #@b0
    .line 834
    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    #@b2
    .line 835
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@b4
    check-cast v3, Lcom/android/internal/telephony/uicc/IccRefreshResponse;

    #@b6
    .line 834
    invoke-direct {p0, v4, v3}, Lcom/android/internal/telephony/cat/CatService;->broadcastCardStateAndIccRefreshResp(Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;Lcom/android/internal/telephony/uicc/IccRefreshResponse;)V

    #@b9
    goto :goto_0

    #@ba
    .line 837
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
    .line 840
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :cond_2
    const-string/jumbo v3, "IccRefresh Message is null"

    #@d7
    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    #@da
    goto :goto_0

    #@db
    .line 844
    :sswitch_7
    const-string/jumbo v3, "Received CAT CC Alpha message from card"

    #@de
    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    #@e1
    .line 845
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@e3
    if-eqz v3, :cond_4

    #@e5
    .line 846
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@e7
    check-cast v0, Landroid/os/AsyncResult;

    #@e9
    .line 847
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_3

    #@eb
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@ed
    if-eqz v3, :cond_3

    #@ef
    .line 848
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@f1
    check-cast v3, Ljava/lang/String;

    #@f3
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/cat/CatService;->broadcastAlphaMessage(Ljava/lang/String;)V

    #@f6
    goto :goto_0

    #@f7
    .line 850
    :cond_3
    const-string/jumbo v3, "CAT Alpha message: ar.result is null"

    #@fa
    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    #@fd
    goto/16 :goto_0

    #@ff
    .line 853
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :cond_4
    const-string/jumbo v3, "CAT Alpha message: msg.obj is null"

    #@102
    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    #@105
    goto/16 :goto_0

    #@107
    .line 808
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    :catch_0
    move-exception v2

    #@108
    .local v2, "e":Ljava/lang/ClassCastException;
    goto/16 :goto_0

    #@10a
    .line 796
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
    .line 897
    if-nez p1, :cond_0

    #@3
    monitor-exit p0

    #@4
    .line 898
    return-void

    #@5
    .line 901
    :cond_0
    const/4 v1, 0x6

    #@6
    :try_start_0
    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@9
    move-result-object v0

    #@a
    .line 902
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    monitor-exit p0

    #@e
    .line 896
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
    .line 1067
    const/4 v0, 0x0

    #@1
    .line 1068
    .local v0, "ca":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    const/4 v1, 0x0

    #@2
    .line 1070
    .local v1, "ir":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz p3, :cond_0

    #@4
    .line 1074
    const/4 v2, 0x0

    #@5
    invoke-virtual {p3, v2}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplicationIndex(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@8
    move-result-object v0

    #@9
    .line 1075
    .local v0, "ca":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v0, :cond_0

    #@b
    .line 1076
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    #@e
    move-result-object v1

    #@f
    .line 1080
    .end local v0    # "ca":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .end local v1    # "ir":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_0
    sget-object v3, Lcom/android/internal/telephony/cat/CatService;->sInstanceLock:Ljava/lang/Object;

    #@11
    monitor-enter v3

    #@12
    .line 1081
    if-eqz v1, :cond_2

    #@14
    :try_start_0
    sget-object v2, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@16
    if-eq v2, v1, :cond_2

    #@18
    .line 1082
    sget-object v2, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@1a
    if-eqz v2, :cond_1

    #@1c
    .line 1083
    sget-object v2, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@1e
    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    #@21
    .line 1087
    :cond_1
    const-string/jumbo v2, "Reinitialize the Service with SIMRecords and UiccCardApplication"

    #@24
    .line 1086
    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    #@27
    .line 1088
    sput-object v1, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@29
    .line 1089
    sput-object v0, Lcom/android/internal/telephony/cat/CatService;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@2b
    .line 1092
    sget-object v2, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@2d
    const/16 v4, 0x14

    #@2f
    const/4 v5, 0x0

    #@30
    invoke-virtual {v2, p0, v4, v5}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    #@33
    .line 1093
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
    .line 1066
    return-void

    #@59
    .line 1080
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
    .line 1099
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    #@3
    if-nez v3, :cond_0

    #@5
    .line 1100
    return-void

    #@6
    .line 1103
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    #@8
    .line 1104
    .local v1, "newState":Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    #@a
    iget v4, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    #@c
    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    #@f
    move-result-object v0

    #@10
    .line 1105
    .local v0, "newCard":Lcom/android/internal/telephony/uicc/UiccCard;
    if-eqz v0, :cond_1

    #@12
    .line 1106
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    #@15
    move-result-object v1

    #@16
    .line 1108
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    #@18
    .line 1109
    .local v2, "oldState":Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    #@1a
    .line 1110
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
    .line 1111
    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    #@45
    if-ne v2, v3, :cond_3

    #@47
    .line 1112
    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    #@49
    if-eq v1, v3, :cond_3

    #@4b
    .line 1113
    invoke-direct {p0, v1, v5}, Lcom/android/internal/telephony/cat/CatService;->broadcastCardStateAndIccRefreshResp(Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;Lcom/android/internal/telephony/uicc/IccRefreshResponse;)V

    #@4e
    .line 1098
    :cond_2
    :goto_0
    return-void

    #@4f
    .line 1114
    :cond_3
    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    #@51
    if-eq v2, v3, :cond_2

    #@53
    .line 1115
    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    #@55
    if-ne v1, v3, :cond_2

    #@57
    .line 1117
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    #@59
    invoke-interface {v3, v5}, Lcom/android/internal/telephony/CommandsInterface;->reportStkServiceIsRunning(Landroid/os/Message;)V

    #@5c
    goto :goto_0
.end method
