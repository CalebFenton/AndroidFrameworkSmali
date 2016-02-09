.class Lcom/android/internal/telephony/cat/CommandParamsFactory;
.super Landroid/os/Handler;
.source "CommandParamsFactory.java"


# static fields
.field private static synthetic -com_android_internal_telephony_cat_AppInterface$CommandTypeSwitchesValues:[I = null

.field static final DTTZ_SETTING:I = 0x3

.field static final LANGUAGE_SETTING:I = 0x4

.field static final LOAD_MULTI_ICONS:I = 0x2

.field static final LOAD_NO_ICON:I = 0x0

.field static final LOAD_SINGLE_ICON:I = 0x1

.field private static final MAX_GSM7_DEFAULT_CHARS:I = 0xef

.field private static final MAX_UCS2_CHARS:I = 0x76

.field static final MSG_ID_LOAD_ICON_DONE:I = 0x1

.field static final REFRESH_NAA_INIT:I = 0x3

.field static final REFRESH_NAA_INIT_AND_FILE_CHANGE:I = 0x2

.field static final REFRESH_NAA_INIT_AND_FULL_FILE_CHANGE:I = 0x0

.field static final REFRESH_UICC_RESET:I = 0x4

.field private static sInstance:Lcom/android/internal/telephony/cat/CommandParamsFactory;


# instance fields
.field private mCaller:Lcom/android/internal/telephony/cat/RilMessageDecoder;

.field private mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

.field private mIconLoadState:I

.field private mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;


# direct methods
.method private static synthetic -getcom_android_internal_telephony_cat_AppInterface$CommandTypeSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->-com_android_internal_telephony_cat_AppInterface$CommandTypeSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->-com_android_internal_telephony_cat_AppInterface$CommandTypeSwitchesValues:[I

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
    const/4 v2, 0x3

    #@27
    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_12

    #@29
    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->GET_INKEY:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    #@2b
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    #@2e
    move-result v1

    #@2f
    const/4 v2, 0x4

    #@30
    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_11

    #@32
    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->GET_INPUT:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    #@34
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    #@37
    move-result v1

    #@38
    const/4 v2, 0x5

    #@39
    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_10

    #@3b
    :goto_4
    :try_start_5
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->LAUNCH_BROWSER:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    #@3d
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    #@40
    move-result v1

    #@41
    const/4 v2, 0x6

    #@42
    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_f

    #@44
    :goto_5
    :try_start_6
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->OPEN_CHANNEL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    #@46
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    #@49
    move-result v1

    #@4a
    const/4 v2, 0x7

    #@4b
    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_e

    #@4d
    :goto_6
    :try_start_7
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->PLAY_TONE:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    #@4f
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    #@52
    move-result v1

    #@53
    const/16 v2, 0x8

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
    const/16 v2, 0x9

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
    const/16 v2, 0xa

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
    const/16 v2, 0xb

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
    const/16 v2, 0xc

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
    const/16 v2, 0xd

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
    const/16 v2, 0xe

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
    const/16 v2, 0xf

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
    const/16 v2, 0x10

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
    const/16 v2, 0x11

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
    const/16 v2, 0x12

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
    const/16 v2, 0x13

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
    const/16 v2, 0x14

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
    const/16 v2, 0x15

    #@d7
    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_0

    #@d9
    :goto_14
    sput-object v0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->-com_android_internal_telephony_cat_AppInterface$CommandTypeSwitchesValues:[I

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

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 44
    const/4 v0, 0x0

    #@1
    sput-object v0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->sInstance:Lcom/android/internal/telephony/cat/CommandParamsFactory;

    #@3
    .line 43
    return-void
.end method

.method private constructor <init>(Lcom/android/internal/telephony/cat/RilMessageDecoder;Lcom/android/internal/telephony/uicc/IccFileHandler;)V
    .locals 2
    .param p1, "caller"    # Lcom/android/internal/telephony/cat/RilMessageDecoder;
    .param p2, "fh"    # Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 95
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #@4
    .line 46
    iput-object v1, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    #@6
    .line 47
    const/4 v0, 0x0

    #@7
    iput v0, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoadState:I

    #@9
    .line 48
    iput-object v1, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCaller:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    #@b
    .line 96
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCaller:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    #@d
    .line 97
    invoke-static {p0, p2}, Lcom/android/internal/telephony/cat/IconLoader;->getInstance(Landroid/os/Handler;Lcom/android/internal/telephony/uicc/IccFileHandler;)Lcom/android/internal/telephony/cat/IconLoader;

    #@10
    move-result-object v0

    #@11
    iput-object v0, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    #@13
    .line 95
    return-void
.end method

.method static declared-synchronized getInstance(Lcom/android/internal/telephony/cat/RilMessageDecoder;Lcom/android/internal/telephony/uicc/IccFileHandler;)Lcom/android/internal/telephony/cat/CommandParamsFactory;
    .locals 3
    .param p0, "caller"    # Lcom/android/internal/telephony/cat/RilMessageDecoder;
    .param p1, "fh"    # Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const-class v1, Lcom/android/internal/telephony/cat/CommandParamsFactory;

    #@3
    monitor-enter v1

    #@4
    .line 86
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->sInstance:Lcom/android/internal/telephony/cat/CommandParamsFactory;

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 87
    sget-object v0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->sInstance:Lcom/android/internal/telephony/cat/CommandParamsFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    monitor-exit v1

    #@b
    return-object v0

    #@c
    .line 89
    :cond_0
    if-eqz p1, :cond_1

    #@e
    .line 90
    :try_start_1
    new-instance v0, Lcom/android/internal/telephony/cat/CommandParamsFactory;

    #@10
    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/cat/CommandParamsFactory;-><init>(Lcom/android/internal/telephony/cat/RilMessageDecoder;Lcom/android/internal/telephony/uicc/IccFileHandler;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@13
    monitor-exit v1

    #@14
    return-object v0

    #@15
    :cond_1
    monitor-exit v1

    #@16
    .line 92
    return-object v2

    #@17
    :catchall_0
    move-exception v0

    #@18
    monitor-exit v1

    #@19
    throw v0
.end method

.method private processBIPClient(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z
    .locals 9
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cat/CommandDetails;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    #@0
    .prologue
    .local p2, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const/4 v7, 0x0

    #@1
    const/4 v8, 0x1

    #@2
    .line 978
    iget v5, p1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    #@4
    invoke-static {v5}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    #@7
    move-result-object v0

    #@8
    .line 979
    .local v0, "commandType":Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    if-eqz v0, :cond_0

    #@a
    .line 980
    new-instance v5, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v6, "process "

    #@12
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v5

    #@16
    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->name()Ljava/lang/String;

    #@19
    move-result-object v6

    #@1a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v5

    #@1e
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v5

    #@22
    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    #@25
    .line 983
    :cond_0
    new-instance v4, Lcom/android/internal/telephony/cat/TextMessage;

    #@27
    invoke-direct {v4}, Lcom/android/internal/telephony/cat/TextMessage;-><init>()V

    #@2a
    .line 984
    .local v4, "textMsg":Lcom/android/internal/telephony/cat/TextMessage;
    const/4 v3, 0x0

    #@2b
    .line 985
    .local v3, "iconId":Lcom/android/internal/telephony/cat/IconId;
    const/4 v1, 0x0

    #@2c
    .line 986
    .local v1, "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    const/4 v2, 0x0

    #@2d
    .line 989
    .local v2, "has_alpha_id":Z
    sget-object v5, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@2f
    invoke-direct {p0, v5, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    #@32
    move-result-object v1

    #@33
    .line 990
    .local v1, "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    if-eqz v1, :cond_1

    #@35
    .line 991
    invoke-static {v1}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;

    #@38
    move-result-object v5

    #@39
    iput-object v5, v4, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    #@3b
    .line 992
    new-instance v5, Ljava/lang/StringBuilder;

    #@3d
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@40
    const-string/jumbo v6, "alpha TLV text="

    #@43
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v5

    #@47
    iget-object v6, v4, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    #@49
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v5

    #@4d
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50
    move-result-object v5

    #@51
    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    #@54
    .line 993
    const/4 v2, 0x1

    #@55
    .line 997
    :cond_1
    sget-object v5, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@57
    invoke-direct {p0, v5, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    #@5a
    move-result-object v1

    #@5b
    .line 998
    if-eqz v1, :cond_2

    #@5d
    .line 999
    invoke-static {v1}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/IconId;

    #@60
    move-result-object v3

    #@61
    .line 1000
    .local v3, "iconId":Lcom/android/internal/telephony/cat/IconId;
    iget-boolean v5, v3, Lcom/android/internal/telephony/cat/IconId;->selfExplanatory:Z

    #@63
    iput-boolean v5, v4, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    #@65
    .line 1003
    .end local v3    # "iconId":Lcom/android/internal/telephony/cat/IconId;
    :cond_2
    iput-boolean v7, v4, Lcom/android/internal/telephony/cat/TextMessage;->responseNeeded:Z

    #@67
    .line 1004
    new-instance v5, Lcom/android/internal/telephony/cat/BIPClientParams;

    #@69
    invoke-direct {v5, p1, v4, v2}, Lcom/android/internal/telephony/cat/BIPClientParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;Z)V

    #@6c
    iput-object v5, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    #@6e
    .line 1006
    if-eqz v3, :cond_3

    #@70
    .line 1007
    iput v8, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoadState:I

    #@72
    .line 1008
    iget-object v5, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    #@74
    iget v6, v3, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I

    #@76
    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    #@79
    move-result-object v7

    #@7a
    invoke-virtual {v5, v6, v7}, Lcom/android/internal/telephony/cat/IconLoader;->loadIcon(ILandroid/os/Message;)V

    #@7d
    .line 1009
    return v8

    #@7e
    .line 1011
    :cond_3
    return v7
.end method

.method private processCommandDetails(Ljava/util/List;)Lcom/android/internal/telephony/cat/CommandDetails;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)",
            "Lcom/android/internal/telephony/cat/CommandDetails;"
        }
    .end annotation

    #@0
    .prologue
    .line 101
    .local p1, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const/4 v0, 0x0

    #@1
    .line 103
    .local v0, "cmdDet":Lcom/android/internal/telephony/cat/CommandDetails;
    if-eqz p1, :cond_0

    #@3
    .line 106
    sget-object v3, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->COMMAND_DETAILS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@5
    .line 105
    invoke-direct {p0, v3, p1}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    #@8
    move-result-object v1

    #@9
    .line 107
    .local v1, "ctlvCmdDet":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    if-eqz v1, :cond_0

    #@b
    .line 109
    :try_start_0
    invoke-static {v1}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveCommandDetails(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/CommandDetails;
    :try_end_0
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    move-result-object v0

    #@f
    .line 116
    .end local v0    # "cmdDet":Lcom/android/internal/telephony/cat/CommandDetails;
    .end local v1    # "ctlvCmdDet":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    :cond_0
    :goto_0
    return-object v0

    #@10
    .line 110
    .restart local v0    # "cmdDet":Lcom/android/internal/telephony/cat/CommandDetails;
    .restart local v1    # "ctlvCmdDet":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    :catch_0
    move-exception v2

    #@11
    .line 112
    .local v2, "e":Lcom/android/internal/telephony/cat/ResultException;
    new-instance v3, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v4, "processCommandDetails: Failed to procees command details e="

    #@19
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v3

    #@1d
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v3

    #@21
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v3

    #@25
    .line 111
    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    #@28
    goto :goto_0
.end method

.method private processDisplayText(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z
    .locals 7
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cat/CommandDetails;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    #@0
    .prologue
    .local p2, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const/4 v4, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 316
    const-string/jumbo v3, "process DisplayText"

    #@5
    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    #@8
    .line 318
    new-instance v2, Lcom/android/internal/telephony/cat/TextMessage;

    #@a
    invoke-direct {v2}, Lcom/android/internal/telephony/cat/TextMessage;-><init>()V

    #@d
    .line 319
    .local v2, "textMsg":Lcom/android/internal/telephony/cat/TextMessage;
    const/4 v1, 0x0

    #@e
    .line 321
    .local v1, "iconId":Lcom/android/internal/telephony/cat/IconId;
    sget-object v3, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->TEXT_STRING:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@10
    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    #@13
    move-result-object v0

    #@14
    .line 323
    .local v0, "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    if-eqz v0, :cond_0

    #@16
    .line 324
    invoke-static {v0}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveTextString(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;

    #@19
    move-result-object v3

    #@1a
    iput-object v3, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    #@1c
    .line 328
    :cond_0
    iget-object v3, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    #@1e
    if-nez v3, :cond_1

    #@20
    .line 329
    new-instance v3, Lcom/android/internal/telephony/cat/ResultException;

    #@22
    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    #@24
    invoke-direct {v3, v4}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    #@27
    throw v3

    #@28
    .line 332
    :cond_1
    sget-object v3, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->IMMEDIATE_RESPONSE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@2a
    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    #@2d
    move-result-object v0

    #@2e
    .line 333
    if-eqz v0, :cond_2

    #@30
    .line 334
    iput-boolean v5, v2, Lcom/android/internal/telephony/cat/TextMessage;->responseNeeded:Z

    #@32
    .line 337
    :cond_2
    sget-object v3, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@34
    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    #@37
    move-result-object v0

    #@38
    .line 338
    if-eqz v0, :cond_3

    #@3a
    .line 339
    invoke-static {v0}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/IconId;

    #@3d
    move-result-object v1

    #@3e
    .line 340
    .local v1, "iconId":Lcom/android/internal/telephony/cat/IconId;
    iget-boolean v3, v1, Lcom/android/internal/telephony/cat/IconId;->selfExplanatory:Z

    #@40
    iput-boolean v3, v2, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    #@42
    .line 343
    .end local v1    # "iconId":Lcom/android/internal/telephony/cat/IconId;
    :cond_3
    sget-object v3, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DURATION:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@44
    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    #@47
    move-result-object v0

    #@48
    .line 344
    if-eqz v0, :cond_4

    #@4a
    .line 345
    invoke-static {v0}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveDuration(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/Duration;

    #@4d
    move-result-object v3

    #@4e
    iput-object v3, v2, Lcom/android/internal/telephony/cat/TextMessage;->duration:Lcom/android/internal/telephony/cat/Duration;

    #@50
    .line 349
    :cond_4
    iget v3, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    #@52
    and-int/lit8 v3, v3, 0x1

    #@54
    if-eqz v3, :cond_5

    #@56
    move v3, v4

    #@57
    :goto_0
    iput-boolean v3, v2, Lcom/android/internal/telephony/cat/TextMessage;->isHighPriority:Z

    #@59
    .line 350
    iget v3, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    #@5b
    and-int/lit16 v3, v3, 0x80

    #@5d
    if-eqz v3, :cond_6

    #@5f
    move v3, v4

    #@60
    :goto_1
    iput-boolean v3, v2, Lcom/android/internal/telephony/cat/TextMessage;->userClear:Z

    #@62
    .line 352
    new-instance v3, Lcom/android/internal/telephony/cat/DisplayTextParams;

    #@64
    invoke-direct {v3, p1, v2}, Lcom/android/internal/telephony/cat/DisplayTextParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;)V

    #@67
    iput-object v3, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    #@69
    .line 354
    if-eqz v1, :cond_7

    #@6b
    .line 355
    iput v4, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoadState:I

    #@6d
    .line 356
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    #@6f
    iget v5, v1, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I

    #@71
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    #@74
    move-result-object v6

    #@75
    invoke-virtual {v3, v5, v6}, Lcom/android/internal/telephony/cat/IconLoader;->loadIcon(ILandroid/os/Message;)V

    #@78
    .line 358
    return v4

    #@79
    :cond_5
    move v3, v5

    #@7a
    .line 349
    goto :goto_0

    #@7b
    :cond_6
    move v3, v5

    #@7c
    .line 350
    goto :goto_1

    #@7d
    .line 360
    :cond_7
    return v5
.end method

.method private processEventNotify(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z
    .locals 7
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cat/CommandDetails;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    #@0
    .prologue
    .local p2, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const/4 v4, 0x0

    #@1
    const/4 v6, 0x1

    #@2
    .line 677
    const-string/jumbo v3, "process EventNotify"

    #@5
    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    #@8
    .line 679
    new-instance v2, Lcom/android/internal/telephony/cat/TextMessage;

    #@a
    invoke-direct {v2}, Lcom/android/internal/telephony/cat/TextMessage;-><init>()V

    #@d
    .line 680
    .local v2, "textMsg":Lcom/android/internal/telephony/cat/TextMessage;
    const/4 v1, 0x0

    #@e
    .line 682
    .local v1, "iconId":Lcom/android/internal/telephony/cat/IconId;
    sget-object v3, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@10
    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    #@13
    move-result-object v0

    #@14
    .line 684
    .local v0, "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    invoke-static {v0}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;

    #@17
    move-result-object v3

    #@18
    iput-object v3, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    #@1a
    .line 686
    sget-object v3, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@1c
    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    #@1f
    move-result-object v0

    #@20
    .line 687
    if-eqz v0, :cond_0

    #@22
    .line 688
    invoke-static {v0}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/IconId;

    #@25
    move-result-object v1

    #@26
    .line 689
    .local v1, "iconId":Lcom/android/internal/telephony/cat/IconId;
    iget-boolean v3, v1, Lcom/android/internal/telephony/cat/IconId;->selfExplanatory:Z

    #@28
    iput-boolean v3, v2, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    #@2a
    .line 692
    .end local v1    # "iconId":Lcom/android/internal/telephony/cat/IconId;
    :cond_0
    iput-boolean v4, v2, Lcom/android/internal/telephony/cat/TextMessage;->responseNeeded:Z

    #@2c
    .line 693
    new-instance v3, Lcom/android/internal/telephony/cat/DisplayTextParams;

    #@2e
    invoke-direct {v3, p1, v2}, Lcom/android/internal/telephony/cat/DisplayTextParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;)V

    #@31
    iput-object v3, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    #@33
    .line 695
    if-eqz v1, :cond_1

    #@35
    .line 696
    iput v6, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoadState:I

    #@37
    .line 697
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    #@39
    iget v4, v1, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I

    #@3b
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    #@3e
    move-result-object v5

    #@3f
    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/cat/IconLoader;->loadIcon(ILandroid/os/Message;)V

    #@42
    .line 699
    return v6

    #@43
    .line 701
    :cond_1
    return v4
.end method

.method private processGetInkey(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z
    .locals 7
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cat/CommandDetails;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    #@0
    .prologue
    .local p2, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const/4 v5, 0x0

    #@1
    const/4 v4, 0x1

    #@2
    .line 418
    const-string/jumbo v3, "process GetInkey"

    #@5
    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    #@8
    .line 420
    new-instance v2, Lcom/android/internal/telephony/cat/Input;

    #@a
    invoke-direct {v2}, Lcom/android/internal/telephony/cat/Input;-><init>()V

    #@d
    .line 421
    .local v2, "input":Lcom/android/internal/telephony/cat/Input;
    const/4 v1, 0x0

    #@e
    .line 423
    .local v1, "iconId":Lcom/android/internal/telephony/cat/IconId;
    sget-object v3, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->TEXT_STRING:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@10
    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    #@13
    move-result-object v0

    #@14
    .line 425
    .local v0, "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    if-eqz v0, :cond_2

    #@16
    .line 426
    invoke-static {v0}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveTextString(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;

    #@19
    move-result-object v3

    #@1a
    iput-object v3, v2, Lcom/android/internal/telephony/cat/Input;->text:Ljava/lang/String;

    #@1c
    .line 431
    sget-object v3, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@1e
    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    #@21
    move-result-object v0

    #@22
    .line 432
    if-eqz v0, :cond_0

    #@24
    .line 433
    invoke-static {v0}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/IconId;

    #@27
    move-result-object v1

    #@28
    .line 437
    .end local v1    # "iconId":Lcom/android/internal/telephony/cat/IconId;
    :cond_0
    sget-object v3, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DURATION:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@2a
    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    #@2d
    move-result-object v0

    #@2e
    .line 438
    if-eqz v0, :cond_1

    #@30
    .line 439
    invoke-static {v0}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveDuration(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/Duration;

    #@33
    move-result-object v3

    #@34
    iput-object v3, v2, Lcom/android/internal/telephony/cat/Input;->duration:Lcom/android/internal/telephony/cat/Duration;

    #@36
    .line 442
    :cond_1
    iput v4, v2, Lcom/android/internal/telephony/cat/Input;->minLen:I

    #@38
    .line 443
    iput v4, v2, Lcom/android/internal/telephony/cat/Input;->maxLen:I

    #@3a
    .line 445
    iget v3, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    #@3c
    and-int/lit8 v3, v3, 0x1

    #@3e
    if-nez v3, :cond_3

    #@40
    move v3, v4

    #@41
    :goto_0
    iput-boolean v3, v2, Lcom/android/internal/telephony/cat/Input;->digitOnly:Z

    #@43
    .line 446
    iget v3, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    #@45
    and-int/lit8 v3, v3, 0x2

    #@47
    if-eqz v3, :cond_4

    #@49
    move v3, v4

    #@4a
    :goto_1
    iput-boolean v3, v2, Lcom/android/internal/telephony/cat/Input;->ucs2:Z

    #@4c
    .line 447
    iget v3, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    #@4e
    and-int/lit8 v3, v3, 0x4

    #@50
    if-eqz v3, :cond_5

    #@52
    move v3, v4

    #@53
    :goto_2
    iput-boolean v3, v2, Lcom/android/internal/telephony/cat/Input;->yesNo:Z

    #@55
    .line 448
    iget v3, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    #@57
    and-int/lit16 v3, v3, 0x80

    #@59
    if-eqz v3, :cond_6

    #@5b
    move v3, v4

    #@5c
    :goto_3
    iput-boolean v3, v2, Lcom/android/internal/telephony/cat/Input;->helpAvailable:Z

    #@5e
    .line 449
    iput-boolean v4, v2, Lcom/android/internal/telephony/cat/Input;->echo:Z

    #@60
    .line 451
    new-instance v3, Lcom/android/internal/telephony/cat/GetInputParams;

    #@62
    invoke-direct {v3, p1, v2}, Lcom/android/internal/telephony/cat/GetInputParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/Input;)V

    #@65
    iput-object v3, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    #@67
    .line 453
    if-eqz v1, :cond_7

    #@69
    .line 454
    iput v4, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoadState:I

    #@6b
    .line 455
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    #@6d
    iget v5, v1, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I

    #@6f
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    #@72
    move-result-object v6

    #@73
    invoke-virtual {v3, v5, v6}, Lcom/android/internal/telephony/cat/IconLoader;->loadIcon(ILandroid/os/Message;)V

    #@76
    .line 457
    return v4

    #@77
    .line 428
    .restart local v1    # "iconId":Lcom/android/internal/telephony/cat/IconId;
    :cond_2
    new-instance v3, Lcom/android/internal/telephony/cat/ResultException;

    #@79
    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cat/ResultCode;

    #@7b
    invoke-direct {v3, v4}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    #@7e
    throw v3

    #@7f
    .end local v1    # "iconId":Lcom/android/internal/telephony/cat/IconId;
    :cond_3
    move v3, v5

    #@80
    .line 445
    goto :goto_0

    #@81
    :cond_4
    move v3, v5

    #@82
    .line 446
    goto :goto_1

    #@83
    :cond_5
    move v3, v5

    #@84
    .line 447
    goto :goto_2

    #@85
    :cond_6
    move v3, v5

    #@86
    .line 448
    goto :goto_3

    #@87
    .line 459
    :cond_7
    return v5
.end method

.method private processGetInput(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z
    .locals 12
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cat/CommandDetails;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    #@0
    .prologue
    .local p2, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const/16 v11, 0xef

    #@2
    const/16 v10, 0x76

    #@4
    const/4 v7, 0x1

    #@5
    const/4 v8, 0x0

    #@6
    .line 475
    const-string/jumbo v6, "process GetInput"

    #@9
    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    #@c
    .line 477
    new-instance v3, Lcom/android/internal/telephony/cat/Input;

    #@e
    invoke-direct {v3}, Lcom/android/internal/telephony/cat/Input;-><init>()V

    #@11
    .line 478
    .local v3, "input":Lcom/android/internal/telephony/cat/Input;
    const/4 v2, 0x0

    #@12
    .line 480
    .local v2, "iconId":Lcom/android/internal/telephony/cat/IconId;
    sget-object v6, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->TEXT_STRING:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@14
    invoke-direct {p0, v6, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    #@17
    move-result-object v0

    #@18
    .line 482
    .local v0, "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    if-eqz v0, :cond_3

    #@1a
    .line 483
    invoke-static {v0}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveTextString(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;

    #@1d
    move-result-object v6

    #@1e
    iput-object v6, v3, Lcom/android/internal/telephony/cat/Input;->text:Ljava/lang/String;

    #@20
    .line 488
    sget-object v6, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->RESPONSE_LENGTH:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@22
    invoke-direct {p0, v6, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    #@25
    move-result-object v0

    #@26
    .line 489
    if-eqz v0, :cond_4

    #@28
    .line 491
    :try_start_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    #@2b
    move-result-object v4

    #@2c
    .line 492
    .local v4, "rawValue":[B
    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    #@2f
    move-result v5

    #@30
    .line 493
    .local v5, "valueIndex":I
    aget-byte v6, v4, v5

    #@32
    and-int/lit16 v6, v6, 0xff

    #@34
    iput v6, v3, Lcom/android/internal/telephony/cat/Input;->minLen:I

    #@36
    .line 494
    add-int/lit8 v6, v5, 0x1

    #@38
    aget-byte v6, v4, v6

    #@3a
    and-int/lit16 v6, v6, 0xff

    #@3c
    iput v6, v3, Lcom/android/internal/telephony/cat/Input;->maxLen:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@3e
    .line 502
    sget-object v6, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DEFAULT_TEXT:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@40
    invoke-direct {p0, v6, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    #@43
    move-result-object v0

    #@44
    .line 503
    if-eqz v0, :cond_0

    #@46
    .line 504
    invoke-static {v0}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveTextString(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;

    #@49
    move-result-object v6

    #@4a
    iput-object v6, v3, Lcom/android/internal/telephony/cat/Input;->defaultText:Ljava/lang/String;

    #@4c
    .line 507
    :cond_0
    sget-object v6, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@4e
    invoke-direct {p0, v6, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    #@51
    move-result-object v0

    #@52
    .line 508
    if-eqz v0, :cond_1

    #@54
    .line 509
    invoke-static {v0}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/IconId;

    #@57
    move-result-object v2

    #@58
    .line 512
    .end local v2    # "iconId":Lcom/android/internal/telephony/cat/IconId;
    :cond_1
    iget v6, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    #@5a
    and-int/lit8 v6, v6, 0x1

    #@5c
    if-nez v6, :cond_5

    #@5e
    move v6, v7

    #@5f
    :goto_0
    iput-boolean v6, v3, Lcom/android/internal/telephony/cat/Input;->digitOnly:Z

    #@61
    .line 513
    iget v6, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    #@63
    and-int/lit8 v6, v6, 0x2

    #@65
    if-eqz v6, :cond_6

    #@67
    move v6, v7

    #@68
    :goto_1
    iput-boolean v6, v3, Lcom/android/internal/telephony/cat/Input;->ucs2:Z

    #@6a
    .line 514
    iget v6, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    #@6c
    and-int/lit8 v6, v6, 0x4

    #@6e
    if-nez v6, :cond_7

    #@70
    move v6, v7

    #@71
    :goto_2
    iput-boolean v6, v3, Lcom/android/internal/telephony/cat/Input;->echo:Z

    #@73
    .line 515
    iget v6, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    #@75
    and-int/lit8 v6, v6, 0x8

    #@77
    if-eqz v6, :cond_8

    #@79
    move v6, v7

    #@7a
    :goto_3
    iput-boolean v6, v3, Lcom/android/internal/telephony/cat/Input;->packed:Z

    #@7c
    .line 516
    iget v6, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    #@7e
    and-int/lit16 v6, v6, 0x80

    #@80
    if-eqz v6, :cond_9

    #@82
    move v6, v7

    #@83
    :goto_4
    iput-boolean v6, v3, Lcom/android/internal/telephony/cat/Input;->helpAvailable:Z

    #@85
    .line 520
    iget-boolean v6, v3, Lcom/android/internal/telephony/cat/Input;->ucs2:Z

    #@87
    if-eqz v6, :cond_a

    #@89
    iget v6, v3, Lcom/android/internal/telephony/cat/Input;->maxLen:I

    #@8b
    if-le v6, v10, :cond_a

    #@8d
    .line 521
    new-instance v6, Ljava/lang/StringBuilder;

    #@8f
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@92
    const-string/jumbo v9, "UCS2: received maxLen = "

    #@95
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@98
    move-result-object v6

    #@99
    iget v9, v3, Lcom/android/internal/telephony/cat/Input;->maxLen:I

    #@9b
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@9e
    move-result-object v6

    #@9f
    .line 522
    const-string/jumbo v9, ", truncating to "

    #@a2
    .line 521
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a5
    move-result-object v6

    #@a6
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a9
    move-result-object v6

    #@aa
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ad
    move-result-object v6

    #@ae
    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    #@b1
    .line 523
    iput v10, v3, Lcom/android/internal/telephony/cat/Input;->maxLen:I

    #@b3
    .line 530
    :cond_2
    :goto_5
    new-instance v6, Lcom/android/internal/telephony/cat/GetInputParams;

    #@b5
    invoke-direct {v6, p1, v3}, Lcom/android/internal/telephony/cat/GetInputParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/Input;)V

    #@b8
    iput-object v6, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    #@ba
    .line 532
    if-eqz v2, :cond_b

    #@bc
    .line 533
    iput v7, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoadState:I

    #@be
    .line 534
    iget-object v6, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    #@c0
    iget v8, v2, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I

    #@c2
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    #@c5
    move-result-object v9

    #@c6
    invoke-virtual {v6, v8, v9}, Lcom/android/internal/telephony/cat/IconLoader;->loadIcon(ILandroid/os/Message;)V

    #@c9
    .line 536
    return v7

    #@ca
    .line 485
    .end local v4    # "rawValue":[B
    .end local v5    # "valueIndex":I
    .restart local v2    # "iconId":Lcom/android/internal/telephony/cat/IconId;
    :cond_3
    new-instance v6, Lcom/android/internal/telephony/cat/ResultException;

    #@cc
    sget-object v7, Lcom/android/internal/telephony/cat/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cat/ResultCode;

    #@ce
    invoke-direct {v6, v7}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    #@d1
    throw v6

    #@d2
    .line 495
    :catch_0
    move-exception v1

    #@d3
    .line 496
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v6, Lcom/android/internal/telephony/cat/ResultException;

    #@d5
    sget-object v7, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    #@d7
    invoke-direct {v6, v7}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    #@da
    throw v6

    #@db
    .line 499
    .end local v1    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_4
    new-instance v6, Lcom/android/internal/telephony/cat/ResultException;

    #@dd
    sget-object v7, Lcom/android/internal/telephony/cat/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cat/ResultCode;

    #@df
    invoke-direct {v6, v7}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    #@e2
    throw v6

    #@e3
    .end local v2    # "iconId":Lcom/android/internal/telephony/cat/IconId;
    .restart local v4    # "rawValue":[B
    .restart local v5    # "valueIndex":I
    :cond_5
    move v6, v8

    #@e4
    .line 512
    goto/16 :goto_0

    #@e6
    :cond_6
    move v6, v8

    #@e7
    .line 513
    goto :goto_1

    #@e8
    :cond_7
    move v6, v8

    #@e9
    .line 514
    goto :goto_2

    #@ea
    :cond_8
    move v6, v8

    #@eb
    .line 515
    goto :goto_3

    #@ec
    :cond_9
    move v6, v8

    #@ed
    .line 516
    goto :goto_4

    #@ee
    .line 524
    :cond_a
    iget-boolean v6, v3, Lcom/android/internal/telephony/cat/Input;->packed:Z

    #@f0
    if-nez v6, :cond_2

    #@f2
    iget v6, v3, Lcom/android/internal/telephony/cat/Input;->maxLen:I

    #@f4
    if-le v6, v11, :cond_2

    #@f6
    .line 525
    new-instance v6, Ljava/lang/StringBuilder;

    #@f8
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@fb
    const-string/jumbo v9, "GSM 7Bit Default: received maxLen = "

    #@fe
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@101
    move-result-object v6

    #@102
    iget v9, v3, Lcom/android/internal/telephony/cat/Input;->maxLen:I

    #@104
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@107
    move-result-object v6

    #@108
    .line 526
    const-string/jumbo v9, ", truncating to "

    #@10b
    .line 525
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10e
    move-result-object v6

    #@10f
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@112
    move-result-object v6

    #@113
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@116
    move-result-object v6

    #@117
    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    #@11a
    .line 527
    iput v11, v3, Lcom/android/internal/telephony/cat/Input;->maxLen:I

    #@11c
    goto :goto_5

    #@11d
    .line 538
    :cond_b
    return v8
.end method

.method private processLaunchBrowser(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z
    .locals 13
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cat/CommandDetails;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    #@0
    .prologue
    .local p2, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const/4 v10, 0x0

    #@1
    const/4 v12, 0x1

    #@2
    .line 767
    const-string/jumbo v9, "process LaunchBrowser"

    #@5
    invoke-static {p0, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    #@8
    .line 769
    new-instance v0, Lcom/android/internal/telephony/cat/TextMessage;

    #@a
    invoke-direct {v0}, Lcom/android/internal/telephony/cat/TextMessage;-><init>()V

    #@d
    .line 770
    .local v0, "confirmMsg":Lcom/android/internal/telephony/cat/TextMessage;
    const/4 v3, 0x0

    #@e
    .line 771
    .local v3, "iconId":Lcom/android/internal/telephony/cat/IconId;
    const/4 v6, 0x0

    #@f
    .line 773
    .local v6, "url":Ljava/lang/String;
    sget-object v9, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->URL:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@11
    invoke-direct {p0, v9, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    #@14
    move-result-object v1

    #@15
    .line 774
    .local v1, "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    if-eqz v1, :cond_0

    #@17
    .line 776
    :try_start_0
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    #@1a
    move-result-object v5

    #@1b
    .line 777
    .local v5, "rawValue":[B
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    #@1e
    move-result v7

    #@1f
    .line 778
    .local v7, "valueIndex":I
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    #@22
    move-result v8

    #@23
    .line 779
    .local v8, "valueLen":I
    if-lez v8, :cond_2

    #@25
    .line 780
    invoke-static {v5, v7, v8}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BII)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@28
    move-result-object v6

    #@29
    .line 791
    .end local v5    # "rawValue":[B
    .end local v6    # "url":Ljava/lang/String;
    .end local v7    # "valueIndex":I
    .end local v8    # "valueLen":I
    :cond_0
    :goto_0
    sget-object v9, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@2b
    invoke-direct {p0, v9, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    #@2e
    move-result-object v1

    #@2f
    .line 792
    invoke-static {v1}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;

    #@32
    move-result-object v9

    #@33
    iput-object v9, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    #@35
    .line 795
    sget-object v9, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@37
    invoke-direct {p0, v9, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    #@3a
    move-result-object v1

    #@3b
    .line 796
    if-eqz v1, :cond_1

    #@3d
    .line 797
    invoke-static {v1}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/IconId;

    #@40
    move-result-object v3

    #@41
    .line 798
    .local v3, "iconId":Lcom/android/internal/telephony/cat/IconId;
    iget-boolean v9, v3, Lcom/android/internal/telephony/cat/IconId;->selfExplanatory:Z

    #@43
    iput-boolean v9, v0, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    #@45
    .line 803
    .end local v3    # "iconId":Lcom/android/internal/telephony/cat/IconId;
    :cond_1
    iget v9, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    #@47
    packed-switch v9, :pswitch_data_0

    #@4a
    .line 806
    sget-object v4, Lcom/android/internal/telephony/cat/LaunchBrowserMode;->LAUNCH_IF_NOT_ALREADY_LAUNCHED:Lcom/android/internal/telephony/cat/LaunchBrowserMode;

    #@4c
    .line 816
    .local v4, "mode":Lcom/android/internal/telephony/cat/LaunchBrowserMode;
    :goto_1
    new-instance v9, Lcom/android/internal/telephony/cat/LaunchBrowserParams;

    #@4e
    invoke-direct {v9, p1, v0, v6, v4}, Lcom/android/internal/telephony/cat/LaunchBrowserParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;Ljava/lang/String;Lcom/android/internal/telephony/cat/LaunchBrowserMode;)V

    #@51
    iput-object v9, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    #@53
    .line 818
    if-eqz v3, :cond_3

    #@55
    .line 819
    iput v12, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoadState:I

    #@57
    .line 820
    iget-object v9, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    #@59
    iget v10, v3, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I

    #@5b
    invoke-virtual {p0, v12}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    #@5e
    move-result-object v11

    #@5f
    invoke-virtual {v9, v10, v11}, Lcom/android/internal/telephony/cat/IconLoader;->loadIcon(ILandroid/os/Message;)V

    #@62
    .line 822
    return v12

    #@63
    .line 783
    .end local v4    # "mode":Lcom/android/internal/telephony/cat/LaunchBrowserMode;
    .local v3, "iconId":Lcom/android/internal/telephony/cat/IconId;
    .restart local v5    # "rawValue":[B
    .restart local v6    # "url":Ljava/lang/String;
    .restart local v7    # "valueIndex":I
    .restart local v8    # "valueLen":I
    :cond_2
    const/4 v6, 0x0

    #@64
    goto :goto_0

    #@65
    .line 785
    .end local v5    # "rawValue":[B
    .end local v7    # "valueIndex":I
    .end local v8    # "valueLen":I
    :catch_0
    move-exception v2

    #@66
    .line 786
    .local v2, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v9, Lcom/android/internal/telephony/cat/ResultException;

    #@68
    sget-object v10, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    #@6a
    invoke-direct {v9, v10}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    #@6d
    throw v9

    #@6e
    .line 809
    .end local v2    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v3    # "iconId":Lcom/android/internal/telephony/cat/IconId;
    .end local v6    # "url":Ljava/lang/String;
    :pswitch_0
    sget-object v4, Lcom/android/internal/telephony/cat/LaunchBrowserMode;->USE_EXISTING_BROWSER:Lcom/android/internal/telephony/cat/LaunchBrowserMode;

    #@70
    .restart local v4    # "mode":Lcom/android/internal/telephony/cat/LaunchBrowserMode;
    goto :goto_1

    #@71
    .line 812
    .end local v4    # "mode":Lcom/android/internal/telephony/cat/LaunchBrowserMode;
    :pswitch_1
    sget-object v4, Lcom/android/internal/telephony/cat/LaunchBrowserMode;->LAUNCH_NEW_BROWSER:Lcom/android/internal/telephony/cat/LaunchBrowserMode;

    #@73
    .restart local v4    # "mode":Lcom/android/internal/telephony/cat/LaunchBrowserMode;
    goto :goto_1

    #@74
    .line 824
    :cond_3
    return v10

    #@75
    .line 803
    nop

    #@76
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private processPlayTone(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z
    .locals 13
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cat/CommandDetails;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    #@0
    .prologue
    .line 840
    .local p2, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const-string/jumbo v0, "process PlayTone"

    #@3
    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    #@6
    .line 842
    const/4 v3, 0x0

    #@7
    .line 843
    .local v3, "tone":Lcom/android/internal/telephony/cat/Tone;
    new-instance v2, Lcom/android/internal/telephony/cat/TextMessage;

    #@9
    invoke-direct {v2}, Lcom/android/internal/telephony/cat/TextMessage;-><init>()V

    #@c
    .line 844
    .local v2, "textMsg":Lcom/android/internal/telephony/cat/TextMessage;
    const/4 v4, 0x0

    #@d
    .line 845
    .local v4, "duration":Lcom/android/internal/telephony/cat/Duration;
    const/4 v8, 0x0

    #@e
    .line 847
    .local v8, "iconId":Lcom/android/internal/telephony/cat/IconId;
    sget-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->TONE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@10
    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    #@13
    move-result-object v6

    #@14
    .line 848
    .local v6, "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    if-eqz v6, :cond_0

    #@16
    .line 850
    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    #@19
    move-result v0

    #@1a
    if-lez v0, :cond_0

    #@1c
    .line 852
    :try_start_0
    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    #@1f
    move-result-object v9

    #@20
    .line 853
    .local v9, "rawValue":[B
    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    #@23
    move-result v11

    #@24
    .line 854
    .local v11, "valueIndex":I
    aget-byte v10, v9, v11

    #@26
    .line 855
    .local v10, "toneVal":I
    invoke-static {v10}, Lcom/android/internal/telephony/cat/Tone;->fromInt(I)Lcom/android/internal/telephony/cat/Tone;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@29
    move-result-object v3

    #@2a
    .line 863
    .end local v3    # "tone":Lcom/android/internal/telephony/cat/Tone;
    .end local v9    # "rawValue":[B
    .end local v10    # "toneVal":I
    .end local v11    # "valueIndex":I
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@2c
    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    #@2f
    move-result-object v6

    #@30
    .line 864
    if-eqz v6, :cond_1

    #@32
    .line 865
    invoke-static {v6}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;

    #@35
    move-result-object v0

    #@36
    iput-object v0, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    #@38
    .line 868
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DURATION:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@3a
    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    #@3d
    move-result-object v6

    #@3e
    .line 869
    if-eqz v6, :cond_2

    #@40
    .line 870
    invoke-static {v6}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveDuration(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/Duration;

    #@43
    move-result-object v4

    #@44
    .line 873
    .end local v4    # "duration":Lcom/android/internal/telephony/cat/Duration;
    :cond_2
    sget-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@46
    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    #@49
    move-result-object v6

    #@4a
    .line 874
    if-eqz v6, :cond_3

    #@4c
    .line 875
    invoke-static {v6}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/IconId;

    #@4f
    move-result-object v8

    #@50
    .line 876
    .local v8, "iconId":Lcom/android/internal/telephony/cat/IconId;
    iget-boolean v0, v8, Lcom/android/internal/telephony/cat/IconId;->selfExplanatory:Z

    #@52
    iput-boolean v0, v2, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    #@54
    .line 879
    .end local v8    # "iconId":Lcom/android/internal/telephony/cat/IconId;
    :cond_3
    iget v0, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    #@56
    and-int/lit8 v0, v0, 0x1

    #@58
    if-eqz v0, :cond_4

    #@5a
    const/4 v5, 0x1

    #@5b
    .line 881
    .local v5, "vibrate":Z
    :goto_0
    const/4 v0, 0x0

    #@5c
    iput-boolean v0, v2, Lcom/android/internal/telephony/cat/TextMessage;->responseNeeded:Z

    #@5e
    .line 882
    new-instance v0, Lcom/android/internal/telephony/cat/PlayToneParams;

    #@60
    move-object v1, p1

    #@61
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/PlayToneParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;Lcom/android/internal/telephony/cat/Tone;Lcom/android/internal/telephony/cat/Duration;Z)V

    #@64
    iput-object v0, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    #@66
    .line 884
    if-eqz v8, :cond_5

    #@68
    .line 885
    const/4 v0, 0x1

    #@69
    iput v0, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoadState:I

    #@6b
    .line 886
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    #@6d
    iget v1, v8, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I

    #@6f
    .line 887
    const/4 v12, 0x1

    #@70
    .line 886
    invoke-virtual {p0, v12}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    #@73
    move-result-object v12

    #@74
    invoke-virtual {v0, v1, v12}, Lcom/android/internal/telephony/cat/IconLoader;->loadIcon(ILandroid/os/Message;)V

    #@77
    .line 888
    const/4 v0, 0x1

    #@78
    return v0

    #@79
    .line 856
    .end local v5    # "vibrate":Z
    .restart local v3    # "tone":Lcom/android/internal/telephony/cat/Tone;
    .restart local v4    # "duration":Lcom/android/internal/telephony/cat/Duration;
    .local v8, "iconId":Lcom/android/internal/telephony/cat/IconId;
    :catch_0
    move-exception v7

    #@7a
    .line 857
    .local v7, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v0, Lcom/android/internal/telephony/cat/ResultException;

    #@7c
    .line 858
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    #@7e
    .line 857
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    #@81
    throw v0

    #@82
    .line 879
    .end local v3    # "tone":Lcom/android/internal/telephony/cat/Tone;
    .end local v4    # "duration":Lcom/android/internal/telephony/cat/Duration;
    .end local v7    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v8    # "iconId":Lcom/android/internal/telephony/cat/IconId;
    :cond_4
    const/4 v5, 0x0

    #@83
    .restart local v5    # "vibrate":Z
    goto :goto_0

    #@84
    .line 890
    :cond_5
    const/4 v0, 0x0

    #@85
    return v0
.end method

.method private processProvideLocalInfo(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z
    .locals 2
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cat/CommandDetails;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    #@0
    .prologue
    .line 957
    .local p2, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const-string/jumbo v0, "process ProvideLocalInfo"

    #@3
    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    #@6
    .line 958
    iget v0, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    #@8
    packed-switch v0, :pswitch_data_0

    #@b
    .line 968
    new-instance v0, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v1, "PLI["

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    iget v1, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    #@19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    const-string/jumbo v1, "] Command Not Supported"

    #@20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v0

    #@24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v0

    #@28
    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    #@2b
    .line 969
    new-instance v0, Lcom/android/internal/telephony/cat/CommandParams;

    #@2d
    invoke-direct {v0, p1}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    #@30
    iput-object v0, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    #@32
    .line 970
    new-instance v0, Lcom/android/internal/telephony/cat/ResultException;

    #@34
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    #@36
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    #@39
    throw v0

    #@3a
    .line 960
    :pswitch_0
    const-string/jumbo v0, "PLI [DTTZ_SETTING]"

    #@3d
    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    #@40
    .line 961
    new-instance v0, Lcom/android/internal/telephony/cat/CommandParams;

    #@42
    invoke-direct {v0, p1}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    #@45
    iput-object v0, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    #@47
    .line 972
    :goto_0
    const/4 v0, 0x0

    #@48
    return v0

    #@49
    .line 964
    :pswitch_1
    const-string/jumbo v0, "PLI [LANGUAGE_SETTING]"

    #@4c
    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    #@4f
    .line 965
    new-instance v0, Lcom/android/internal/telephony/cat/CommandParams;

    #@51
    invoke-direct {v0, p1}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    #@54
    iput-object v0, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    #@56
    goto :goto_0

    #@57
    .line 958
    nop

    #@58
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private processRefresh(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z
    .locals 2
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cat/CommandDetails;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 551
    .local p2, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const-string/jumbo v0, "process Refresh"

    #@3
    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    #@6
    .line 556
    iget v0, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    #@8
    packed-switch v0, :pswitch_data_0

    #@b
    .line 564
    :goto_0
    :pswitch_0
    const/4 v0, 0x0

    #@c
    return v0

    #@d
    .line 561
    :pswitch_1
    new-instance v0, Lcom/android/internal/telephony/cat/DisplayTextParams;

    #@f
    const/4 v1, 0x0

    #@10
    invoke-direct {v0, p1, v1}, Lcom/android/internal/telephony/cat/DisplayTextParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;)V

    #@13
    iput-object v0, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    #@15
    goto :goto_0

    #@16
    .line 556
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private processSelectItem(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z
    .locals 11
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cat/CommandDetails;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    #@0
    .prologue
    .local p2, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const/4 v8, 0x1

    #@1
    const/4 v9, 0x0

    #@2
    .line 580
    const-string/jumbo v7, "process SelectItem"

    #@5
    invoke-static {p0, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    #@8
    .line 582
    new-instance v3, Lcom/android/internal/telephony/cat/Menu;

    #@a
    invoke-direct {v3}, Lcom/android/internal/telephony/cat/Menu;-><init>()V

    #@d
    .line 583
    .local v3, "menu":Lcom/android/internal/telephony/cat/Menu;
    const/4 v6, 0x0

    #@e
    .line 584
    .local v6, "titleIconId":Lcom/android/internal/telephony/cat/IconId;
    const/4 v1, 0x0

    #@f
    .line 585
    .local v1, "itemsIconId":Lcom/android/internal/telephony/cat/ItemsIconId;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@12
    move-result-object v2

    #@13
    .line 587
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    sget-object v7, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@15
    invoke-direct {p0, v7, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    #@18
    move-result-object v0

    #@19
    .line 589
    .local v0, "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    if-eqz v0, :cond_0

    #@1b
    .line 590
    invoke-static {v0}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;

    #@1e
    move-result-object v7

    #@1f
    iput-object v7, v3, Lcom/android/internal/telephony/cat/Menu;->title:Ljava/lang/String;

    #@21
    .line 594
    :cond_0
    :goto_0
    sget-object v7, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ITEM:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@23
    invoke-direct {p0, v7, v2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForNextTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/Iterator;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    #@26
    move-result-object v0

    #@27
    .line 595
    if-eqz v0, :cond_1

    #@29
    .line 596
    iget-object v7, v3, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    #@2b
    invoke-static {v0}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveItem(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/Item;

    #@2e
    move-result-object v10

    #@2f
    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@32
    goto :goto_0

    #@33
    .line 603
    :cond_1
    iget-object v7, v3, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    #@35
    invoke-interface {v7}, Ljava/util/List;->size()I

    #@38
    move-result v7

    #@39
    if-nez v7, :cond_2

    #@3b
    .line 604
    new-instance v7, Lcom/android/internal/telephony/cat/ResultException;

    #@3d
    sget-object v8, Lcom/android/internal/telephony/cat/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cat/ResultCode;

    #@3f
    invoke-direct {v7, v8}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    #@42
    throw v7

    #@43
    .line 607
    :cond_2
    sget-object v7, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ITEM_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@45
    invoke-direct {p0, v7, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    #@48
    move-result-object v0

    #@49
    .line 608
    if-eqz v0, :cond_3

    #@4b
    .line 611
    invoke-static {v0}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveItemId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)I

    #@4e
    move-result v7

    #@4f
    add-int/lit8 v7, v7, -0x1

    #@51
    iput v7, v3, Lcom/android/internal/telephony/cat/Menu;->defaultItem:I

    #@53
    .line 614
    :cond_3
    sget-object v7, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@55
    invoke-direct {p0, v7, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    #@58
    move-result-object v0

    #@59
    .line 615
    if-eqz v0, :cond_4

    #@5b
    .line 616
    iput v8, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoadState:I

    #@5d
    .line 617
    invoke-static {v0}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/IconId;

    #@60
    move-result-object v6

    #@61
    .line 618
    .local v6, "titleIconId":Lcom/android/internal/telephony/cat/IconId;
    iget-boolean v7, v6, Lcom/android/internal/telephony/cat/IconId;->selfExplanatory:Z

    #@63
    iput-boolean v7, v3, Lcom/android/internal/telephony/cat/Menu;->titleIconSelfExplanatory:Z

    #@65
    .line 621
    .end local v6    # "titleIconId":Lcom/android/internal/telephony/cat/IconId;
    :cond_4
    sget-object v7, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ITEM_ICON_ID_LIST:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@67
    invoke-direct {p0, v7, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    #@6a
    move-result-object v0

    #@6b
    .line 622
    if-eqz v0, :cond_5

    #@6d
    .line 623
    const/4 v7, 0x2

    #@6e
    iput v7, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoadState:I

    #@70
    .line 624
    invoke-static {v0}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveItemsIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/ItemsIconId;

    #@73
    move-result-object v1

    #@74
    .line 625
    .local v1, "itemsIconId":Lcom/android/internal/telephony/cat/ItemsIconId;
    iget-boolean v7, v1, Lcom/android/internal/telephony/cat/ItemsIconId;->selfExplanatory:Z

    #@76
    iput-boolean v7, v3, Lcom/android/internal/telephony/cat/Menu;->itemsIconSelfExplanatory:Z

    #@78
    .line 628
    .end local v1    # "itemsIconId":Lcom/android/internal/telephony/cat/ItemsIconId;
    :cond_5
    iget v7, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    #@7a
    and-int/lit8 v7, v7, 0x1

    #@7c
    if-eqz v7, :cond_7

    #@7e
    const/4 v4, 0x1

    #@7f
    .line 629
    .local v4, "presentTypeSpecified":Z
    :goto_1
    if-eqz v4, :cond_6

    #@81
    .line 630
    iget v7, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    #@83
    and-int/lit8 v7, v7, 0x2

    #@85
    if-nez v7, :cond_8

    #@87
    .line 631
    sget-object v7, Lcom/android/internal/telephony/cat/PresentationType;->DATA_VALUES:Lcom/android/internal/telephony/cat/PresentationType;

    #@89
    iput-object v7, v3, Lcom/android/internal/telephony/cat/Menu;->presentationType:Lcom/android/internal/telephony/cat/PresentationType;

    #@8b
    .line 636
    :cond_6
    :goto_2
    iget v7, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    #@8d
    and-int/lit8 v7, v7, 0x4

    #@8f
    if-eqz v7, :cond_9

    #@91
    move v7, v8

    #@92
    :goto_3
    iput-boolean v7, v3, Lcom/android/internal/telephony/cat/Menu;->softKeyPreferred:Z

    #@94
    .line 637
    iget v7, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    #@96
    and-int/lit16 v7, v7, 0x80

    #@98
    if-eqz v7, :cond_a

    #@9a
    move v7, v8

    #@9b
    :goto_4
    iput-boolean v7, v3, Lcom/android/internal/telephony/cat/Menu;->helpAvailable:Z

    #@9d
    .line 639
    new-instance v10, Lcom/android/internal/telephony/cat/SelectItemParams;

    #@9f
    if-eqz v6, :cond_b

    #@a1
    move v7, v8

    #@a2
    :goto_5
    invoke-direct {v10, p1, v3, v7}, Lcom/android/internal/telephony/cat/SelectItemParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/Menu;Z)V

    #@a5
    iput-object v10, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    #@a7
    .line 642
    iget v7, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoadState:I

    #@a9
    packed-switch v7, :pswitch_data_0

    #@ac
    .line 662
    :goto_6
    return v8

    #@ad
    .line 628
    .end local v4    # "presentTypeSpecified":Z
    :cond_7
    const/4 v4, 0x0

    #@ae
    .restart local v4    # "presentTypeSpecified":Z
    goto :goto_1

    #@af
    .line 633
    :cond_8
    sget-object v7, Lcom/android/internal/telephony/cat/PresentationType;->NAVIGATION_OPTIONS:Lcom/android/internal/telephony/cat/PresentationType;

    #@b1
    iput-object v7, v3, Lcom/android/internal/telephony/cat/Menu;->presentationType:Lcom/android/internal/telephony/cat/PresentationType;

    #@b3
    goto :goto_2

    #@b4
    :cond_9
    move v7, v9

    #@b5
    .line 636
    goto :goto_3

    #@b6
    :cond_a
    move v7, v9

    #@b7
    .line 637
    goto :goto_4

    #@b8
    :cond_b
    move v7, v9

    #@b9
    .line 639
    goto :goto_5

    #@ba
    .line 644
    :pswitch_0
    return v9

    #@bb
    .line 646
    :pswitch_1
    iget-object v7, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    #@bd
    iget v9, v6, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I

    #@bf
    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    #@c2
    move-result-object v10

    #@c3
    invoke-virtual {v7, v9, v10}, Lcom/android/internal/telephony/cat/IconLoader;->loadIcon(ILandroid/os/Message;)V

    #@c6
    goto :goto_6

    #@c7
    .line 650
    :pswitch_2
    iget-object v5, v1, Lcom/android/internal/telephony/cat/ItemsIconId;->recordNumbers:[I

    #@c9
    .line 651
    .local v5, "recordNumbers":[I
    if-eqz v6, :cond_c

    #@cb
    .line 653
    iget-object v7, v1, Lcom/android/internal/telephony/cat/ItemsIconId;->recordNumbers:[I

    #@cd
    array-length v7, v7

    #@ce
    add-int/lit8 v7, v7, 0x1

    #@d0
    new-array v5, v7, [I

    #@d2
    .line 654
    iget v7, v6, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I

    #@d4
    aput v7, v5, v9

    #@d6
    .line 655
    iget-object v7, v1, Lcom/android/internal/telephony/cat/ItemsIconId;->recordNumbers:[I

    #@d8
    .line 656
    iget-object v10, v1, Lcom/android/internal/telephony/cat/ItemsIconId;->recordNumbers:[I

    #@da
    array-length v10, v10

    #@db
    .line 655
    invoke-static {v7, v9, v5, v8, v10}, Ljava/lang/System;->arraycopy([II[III)V

    #@de
    .line 658
    :cond_c
    iget-object v7, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    #@e0
    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    #@e3
    move-result-object v9

    #@e4
    invoke-virtual {v7, v5, v9}, Lcom/android/internal/telephony/cat/IconLoader;->loadIcons([ILandroid/os/Message;)V

    #@e7
    goto :goto_6

    #@e8
    .line 642
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private processSetUpEventList(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z
    .locals 10
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cat/CommandDetails;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p2, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const/4 v9, 0x0

    #@1
    .line 717
    const-string/jumbo v8, "process SetUpEventList"

    #@4
    invoke-static {p0, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    #@7
    .line 718
    sget-object v8, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->EVENT_LIST:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@9
    invoke-direct {p0, v8, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    #@c
    move-result-object v0

    #@d
    .line 719
    .local v0, "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    if-eqz v0, :cond_1

    #@f
    .line 721
    :try_start_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    #@12
    move-result-object v5

    #@13
    .line 722
    .local v5, "rawValue":[B
    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    #@16
    move-result v6

    #@17
    .line 723
    .local v6, "valueIndex":I
    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    #@1a
    move-result v7

    #@1b
    .line 724
    .local v7, "valueLen":I
    new-array v2, v7, [I

    #@1d
    .line 725
    .local v2, "eventList":[I
    const/4 v3, -0x1

    #@1e
    .line 726
    .local v3, "eventValue":I
    const/4 v4, 0x0

    #@1f
    .line 727
    .local v4, "i":I
    :goto_0
    if-lez v7, :cond_0

    #@21
    .line 728
    aget-byte v8, v5, v6

    #@23
    and-int/lit16 v3, v8, 0xff

    #@25
    .line 729
    add-int/lit8 v6, v6, 0x1

    #@27
    .line 730
    add-int/lit8 v7, v7, -0x1

    #@29
    .line 732
    sparse-switch v3, :sswitch_data_0

    #@2c
    goto :goto_0

    #@2d
    .line 738
    :sswitch_0
    aput v3, v2, v4

    #@2f
    .line 739
    add-int/lit8 v4, v4, 0x1

    #@31
    .line 740
    goto :goto_0

    #@32
    .line 746
    :cond_0
    new-instance v8, Lcom/android/internal/telephony/cat/SetEventListParams;

    #@34
    invoke-direct {v8, p1, v2}, Lcom/android/internal/telephony/cat/SetEventListParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;[I)V

    #@37
    iput-object v8, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@39
    .line 751
    .end local v2    # "eventList":[I
    .end local v3    # "eventValue":I
    .end local v4    # "i":I
    .end local v5    # "rawValue":[B
    .end local v6    # "valueIndex":I
    .end local v7    # "valueLen":I
    :cond_1
    :goto_1
    return v9

    #@3a
    .line 747
    :catch_0
    move-exception v1

    #@3b
    .line 748
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v8, " IndexOutofBoundException in processSetUpEventList"

    #@3e
    invoke-static {p0, v8}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    #@41
    goto :goto_1

    #@42
    .line 732
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x5 -> :sswitch_0
        0x7 -> :sswitch_0
        0x8 -> :sswitch_0
        0xf -> :sswitch_0
    .end sparse-switch
.end method

.method private processSetUpIdleModeText(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z
    .locals 7
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cat/CommandDetails;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    #@0
    .prologue
    .local p2, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const/4 v6, 0x1

    #@1
    .line 376
    const-string/jumbo v3, "process SetUpIdleModeText"

    #@4
    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    #@7
    .line 378
    new-instance v2, Lcom/android/internal/telephony/cat/TextMessage;

    #@9
    invoke-direct {v2}, Lcom/android/internal/telephony/cat/TextMessage;-><init>()V

    #@c
    .line 379
    .local v2, "textMsg":Lcom/android/internal/telephony/cat/TextMessage;
    const/4 v1, 0x0

    #@d
    .line 381
    .local v1, "iconId":Lcom/android/internal/telephony/cat/IconId;
    sget-object v3, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->TEXT_STRING:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@f
    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    #@12
    move-result-object v0

    #@13
    .line 383
    .local v0, "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    if-eqz v0, :cond_0

    #@15
    .line 384
    invoke-static {v0}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveTextString(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;

    #@18
    move-result-object v3

    #@19
    iput-object v3, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    #@1b
    .line 387
    :cond_0
    iget-object v3, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    #@1d
    if-eqz v3, :cond_1

    #@1f
    .line 388
    sget-object v3, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@21
    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    #@24
    move-result-object v0

    #@25
    .line 389
    if-eqz v0, :cond_1

    #@27
    .line 390
    invoke-static {v0}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/IconId;

    #@2a
    move-result-object v1

    #@2b
    .line 391
    .local v1, "iconId":Lcom/android/internal/telephony/cat/IconId;
    iget-boolean v3, v1, Lcom/android/internal/telephony/cat/IconId;->selfExplanatory:Z

    #@2d
    iput-boolean v3, v2, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    #@2f
    .line 394
    .end local v1    # "iconId":Lcom/android/internal/telephony/cat/IconId;
    :cond_1
    new-instance v3, Lcom/android/internal/telephony/cat/DisplayTextParams;

    #@31
    invoke-direct {v3, p1, v2}, Lcom/android/internal/telephony/cat/DisplayTextParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;)V

    #@34
    iput-object v3, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    #@36
    .line 396
    if-eqz v1, :cond_2

    #@38
    .line 397
    iput v6, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoadState:I

    #@3a
    .line 398
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    #@3c
    iget v4, v1, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I

    #@3e
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    #@41
    move-result-object v5

    #@42
    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/cat/IconLoader;->loadIcon(ILandroid/os/Message;)V

    #@45
    .line 400
    return v6

    #@46
    .line 402
    :cond_2
    const/4 v3, 0x0

    #@47
    return v3
.end method

.method private processSetupCall(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z
    .locals 12
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cat/CommandDetails;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    #@0
    .prologue
    .local p2, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const/4 v11, 0x2

    #@1
    const/4 v10, 0x0

    #@2
    const/4 v8, -0x1

    #@3
    const/4 v9, 0x1

    #@4
    .line 905
    const-string/jumbo v7, "process SetupCall"

    #@7
    invoke-static {p0, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    #@a
    .line 907
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@d
    move-result-object v5

    #@e
    .line 908
    .local v5, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const/4 v4, 0x0

    #@f
    .line 910
    .local v4, "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    new-instance v3, Lcom/android/internal/telephony/cat/TextMessage;

    #@11
    invoke-direct {v3}, Lcom/android/internal/telephony/cat/TextMessage;-><init>()V

    #@14
    .line 912
    .local v3, "confirmMsg":Lcom/android/internal/telephony/cat/TextMessage;
    new-instance v1, Lcom/android/internal/telephony/cat/TextMessage;

    #@16
    invoke-direct {v1}, Lcom/android/internal/telephony/cat/TextMessage;-><init>()V

    #@19
    .line 913
    .local v1, "callMsg":Lcom/android/internal/telephony/cat/TextMessage;
    const/4 v2, 0x0

    #@1a
    .line 914
    .local v2, "confirmIconId":Lcom/android/internal/telephony/cat/IconId;
    const/4 v0, 0x0

    #@1b
    .line 917
    .local v0, "callIconId":Lcom/android/internal/telephony/cat/IconId;
    sget-object v7, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@1d
    invoke-direct {p0, v7, v5}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForNextTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/Iterator;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    #@20
    move-result-object v4

    #@21
    .line 918
    .local v4, "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    invoke-static {v4}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;

    #@24
    move-result-object v7

    #@25
    iput-object v7, v3, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    #@27
    .line 920
    sget-object v7, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@29
    invoke-direct {p0, v7, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    #@2c
    move-result-object v4

    #@2d
    .line 921
    if-eqz v4, :cond_0

    #@2f
    .line 922
    invoke-static {v4}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/IconId;

    #@32
    move-result-object v2

    #@33
    .line 923
    .local v2, "confirmIconId":Lcom/android/internal/telephony/cat/IconId;
    iget-boolean v7, v2, Lcom/android/internal/telephony/cat/IconId;->selfExplanatory:Z

    #@35
    iput-boolean v7, v3, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    #@37
    .line 927
    .end local v2    # "confirmIconId":Lcom/android/internal/telephony/cat/IconId;
    :cond_0
    sget-object v7, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@39
    invoke-direct {p0, v7, v5}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForNextTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/Iterator;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    #@3c
    move-result-object v4

    #@3d
    .line 928
    if-eqz v4, :cond_1

    #@3f
    .line 929
    invoke-static {v4}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;

    #@42
    move-result-object v7

    #@43
    iput-object v7, v1, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    #@45
    .line 932
    :cond_1
    sget-object v7, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@47
    invoke-direct {p0, v7, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    #@4a
    move-result-object v4

    #@4b
    .line 933
    if-eqz v4, :cond_2

    #@4d
    .line 934
    invoke-static {v4}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/IconId;

    #@50
    move-result-object v0

    #@51
    .line 935
    .local v0, "callIconId":Lcom/android/internal/telephony/cat/IconId;
    iget-boolean v7, v0, Lcom/android/internal/telephony/cat/IconId;->selfExplanatory:Z

    #@53
    iput-boolean v7, v1, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    #@55
    .line 938
    .end local v0    # "callIconId":Lcom/android/internal/telephony/cat/IconId;
    :cond_2
    new-instance v7, Lcom/android/internal/telephony/cat/CallSetupParams;

    #@57
    invoke-direct {v7, p1, v3, v1}, Lcom/android/internal/telephony/cat/CallSetupParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;Lcom/android/internal/telephony/cat/TextMessage;)V

    #@5a
    iput-object v7, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    #@5c
    .line 940
    if-nez v2, :cond_3

    #@5e
    if-eqz v0, :cond_6

    #@60
    .line 941
    :cond_3
    iput v11, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoadState:I

    #@62
    .line 942
    new-array v6, v11, [I

    #@64
    .line 943
    .local v6, "recordNumbers":[I
    if-eqz v2, :cond_5

    #@66
    .line 944
    iget v7, v2, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I

    #@68
    .line 943
    :goto_0
    aput v7, v6, v10

    #@6a
    .line 945
    if-eqz v0, :cond_4

    #@6c
    iget v8, v0, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I

    #@6e
    :cond_4
    aput v8, v6, v9

    #@70
    .line 948
    iget-object v7, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    #@72
    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    #@75
    move-result-object v8

    #@76
    invoke-virtual {v7, v6, v8}, Lcom/android/internal/telephony/cat/IconLoader;->loadIcons([ILandroid/os/Message;)V

    #@79
    .line 950
    return v9

    #@7a
    :cond_5
    move v7, v8

    #@7b
    .line 944
    goto :goto_0

    #@7c
    .line 952
    .end local v6    # "recordNumbers":[I
    :cond_6
    return v10
.end method

.method private searchForNextTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/Iterator;)Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .locals 3
    .param p1, "tag"    # Lcom/android/internal/telephony/cat/ComprehensionTlvTag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/ComprehensionTlvTag;",
            "Ljava/util/Iterator",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;"
        }
    .end annotation

    #@0
    .prologue
    .line 292
    .local p2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    #@3
    move-result v1

    #@4
    .line 293
    .local v1, "tagValue":I
    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    #@7
    move-result v2

    #@8
    if-eqz v2, :cond_1

    #@a
    .line 294
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Lcom/android/internal/telephony/cat/ComprehensionTlv;

    #@10
    .line 295
    .local v0, "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getTag()I

    #@13
    move-result v2

    #@14
    if-ne v2, v1, :cond_0

    #@16
    .line 296
    return-object v0

    #@17
    .line 299
    .end local v0    # "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    :cond_1
    const/4 v2, 0x0

    #@18
    return-object v2
.end method

.method private searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .locals 2
    .param p1, "tag"    # Lcom/android/internal/telephony/cat/ComprehensionTlvTag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/ComprehensionTlvTag;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;"
        }
    .end annotation

    #@0
    .prologue
    .line 274
    .local p2, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@3
    move-result-object v0

    #@4
    .line 275
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForNextTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/Iterator;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    #@7
    move-result-object v1

    #@8
    return-object v1
.end method

.method private sendCmdParams(Lcom/android/internal/telephony/cat/ResultCode;)V
    .locals 2
    .param p1, "resCode"    # Lcom/android/internal/telephony/cat/ResultCode;

    #@0
    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCaller:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    #@2
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    #@4
    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->sendMsgParamsDecoded(Lcom/android/internal/telephony/cat/ResultCode;Lcom/android/internal/telephony/cat/CommandParams;)V

    #@7
    .line 259
    return-void
.end method

.method private setIcons(Ljava/lang/Object;)Lcom/android/internal/telephony/cat/ResultCode;
    .locals 6
    .param p1, "data"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 238
    const/4 v2, 0x0

    #@1
    .line 239
    .local v2, "icons":[Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    #@2
    .line 241
    .local v1, "iconIndex":I
    if-nez p1, :cond_0

    #@4
    .line 242
    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    #@6
    return-object v3

    #@7
    .line 244
    :cond_0
    iget v3, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoadState:I

    #@9
    packed-switch v3, :pswitch_data_0

    #@c
    .line 256
    .end local v2    # "icons":[Landroid/graphics/Bitmap;
    .end local p1    # "data":Ljava/lang/Object;
    :cond_1
    :goto_0
    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    #@e
    return-object v3

    #@f
    .line 246
    .restart local v2    # "icons":[Landroid/graphics/Bitmap;
    .restart local p1    # "data":Ljava/lang/Object;
    :pswitch_0
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    #@11
    check-cast p1, Landroid/graphics/Bitmap;

    #@13
    .end local p1    # "data":Ljava/lang/Object;
    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/cat/CommandParams;->setIcon(Landroid/graphics/Bitmap;)Z

    #@16
    goto :goto_0

    #@17
    .restart local p1    # "data":Ljava/lang/Object;
    :pswitch_1
    move-object v2, p1

    #@18
    .line 249
    check-cast v2, [Landroid/graphics/Bitmap;

    #@1a
    .line 251
    .local v2, "icons":[Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    #@1b
    array-length v4, v2

    #@1c
    :goto_1
    if-ge v3, v4, :cond_1

    #@1e
    aget-object v0, v2, v3

    #@20
    .line 252
    .local v0, "icon":Landroid/graphics/Bitmap;
    iget-object v5, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    #@22
    invoke-virtual {v5, v0}, Lcom/android/internal/telephony/cat/CommandParams;->setIcon(Landroid/graphics/Bitmap;)Z

    #@25
    .line 251
    add-int/lit8 v3, v3, 0x1

    #@27
    goto :goto_1

    #@28
    .line 244
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public dispose()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1015
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    #@3
    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/IconLoader;->dispose()V

    #@6
    .line 1016
    iput-object v1, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    #@8
    .line 1017
    iput-object v1, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    #@a
    .line 1018
    iput-object v1, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCaller:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    #@c
    .line 1019
    sput-object v1, Lcom/android/internal/telephony/cat/CommandParamsFactory;->sInstance:Lcom/android/internal/telephony/cat/CommandParamsFactory;

    #@e
    .line 1014
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 230
    iget v0, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 229
    :goto_0
    return-void

    #@6
    .line 232
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@8
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->setIcons(Ljava/lang/Object;)Lcom/android/internal/telephony/cat/ResultCode;

    #@b
    move-result-object v0

    #@c
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->sendCmdParams(Lcom/android/internal/telephony/cat/ResultCode;)V

    #@f
    goto :goto_0

    #@10
    .line 230
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method make(Lcom/android/internal/telephony/cat/BerTlv;)V
    .locals 7
    .param p1, "berTlv"    # Lcom/android/internal/telephony/cat/BerTlv;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 120
    if-nez p1, :cond_0

    #@3
    .line 121
    return-void

    #@4
    .line 124
    :cond_0
    iput-object v5, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    #@6
    .line 125
    const/4 v5, 0x0

    #@7
    iput v5, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoadState:I

    #@9
    .line 127
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/BerTlv;->getTag()I

    #@c
    move-result v5

    #@d
    const/16 v6, 0xd0

    #@f
    if-eq v5, v6, :cond_1

    #@11
    .line 128
    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->CMD_TYPE_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    #@13
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->sendCmdParams(Lcom/android/internal/telephony/cat/ResultCode;)V

    #@16
    .line 129
    return-void

    #@17
    .line 131
    :cond_1
    const/4 v1, 0x0

    #@18
    .line 132
    .local v1, "cmdPending":Z
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/BerTlv;->getComprehensionTlvs()Ljava/util/List;

    #@1b
    move-result-object v3

    #@1c
    .line 134
    .local v3, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->processCommandDetails(Ljava/util/List;)Lcom/android/internal/telephony/cat/CommandDetails;

    #@1f
    move-result-object v0

    #@20
    .line 135
    .local v0, "cmdDet":Lcom/android/internal/telephony/cat/CommandDetails;
    if-nez v0, :cond_2

    #@22
    .line 136
    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->CMD_TYPE_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    #@24
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->sendCmdParams(Lcom/android/internal/telephony/cat/ResultCode;)V

    #@27
    .line 137
    return-void

    #@28
    .line 143
    :cond_2
    iget v5, v0, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    #@2a
    .line 142
    invoke-static {v5}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    #@2d
    move-result-object v2

    #@2e
    .line 144
    .local v2, "cmdType":Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    if-nez v2, :cond_3

    #@30
    .line 147
    new-instance v5, Lcom/android/internal/telephony/cat/CommandParams;

    #@32
    invoke-direct {v5, v0}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    #@35
    iput-object v5, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    #@37
    .line 148
    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    #@39
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->sendCmdParams(Lcom/android/internal/telephony/cat/ResultCode;)V

    #@3c
    .line 149
    return-void

    #@3d
    .line 153
    :cond_3
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/BerTlv;->isLengthValid()Z

    #@40
    move-result v5

    #@41
    if-nez v5, :cond_4

    #@43
    .line 154
    new-instance v5, Lcom/android/internal/telephony/cat/CommandParams;

    #@45
    invoke-direct {v5, v0}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    #@48
    iput-object v5, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    #@4a
    .line 155
    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    #@4c
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->sendCmdParams(Lcom/android/internal/telephony/cat/ResultCode;)V

    #@4f
    .line 156
    return-void

    #@50
    .line 160
    :cond_4
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->-getcom_android_internal_telephony_cat_AppInterface$CommandTypeSwitchesValues()[I

    #@53
    move-result-object v5

    #@54
    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    #@57
    move-result v6

    #@58
    aget v5, v5, v6

    #@5a
    packed-switch v5, :pswitch_data_0

    #@5d
    .line 213
    new-instance v5, Lcom/android/internal/telephony/cat/CommandParams;

    #@5f
    invoke-direct {v5, v0}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    #@62
    iput-object v5, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    #@64
    .line 214
    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    #@66
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->sendCmdParams(Lcom/android/internal/telephony/cat/ResultCode;)V

    #@69
    .line 215
    return-void

    #@6a
    .line 162
    :pswitch_0
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->processSelectItem(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z
    :try_end_0
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_0 .. :try_end_0} :catch_0

    #@6d
    move-result v1

    #@6e
    .line 223
    .end local v1    # "cmdPending":Z
    :goto_0
    if-nez v1, :cond_5

    #@70
    .line 224
    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    #@72
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->sendCmdParams(Lcom/android/internal/telephony/cat/ResultCode;)V

    #@75
    .line 119
    :cond_5
    return-void

    #@76
    .line 165
    .restart local v1    # "cmdPending":Z
    :pswitch_1
    :try_start_1
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->processSelectItem(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z

    #@79
    move-result v1

    #@7a
    .local v1, "cmdPending":Z
    goto :goto_0

    #@7b
    .line 168
    .local v1, "cmdPending":Z
    :pswitch_2
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->processDisplayText(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z

    #@7e
    move-result v1

    #@7f
    .local v1, "cmdPending":Z
    goto :goto_0

    #@80
    .line 171
    .local v1, "cmdPending":Z
    :pswitch_3
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->processSetUpIdleModeText(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z

    #@83
    move-result v1

    #@84
    .local v1, "cmdPending":Z
    goto :goto_0

    #@85
    .line 174
    .local v1, "cmdPending":Z
    :pswitch_4
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->processGetInkey(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z

    #@88
    move-result v1

    #@89
    .local v1, "cmdPending":Z
    goto :goto_0

    #@8a
    .line 177
    .local v1, "cmdPending":Z
    :pswitch_5
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->processGetInput(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z

    #@8d
    move-result v1

    #@8e
    .local v1, "cmdPending":Z
    goto :goto_0

    #@8f
    .line 183
    .local v1, "cmdPending":Z
    :pswitch_6
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->processEventNotify(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z

    #@92
    move-result v1

    #@93
    .local v1, "cmdPending":Z
    goto :goto_0

    #@94
    .line 187
    .local v1, "cmdPending":Z
    :pswitch_7
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->processSetupCall(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z

    #@97
    move-result v1

    #@98
    .local v1, "cmdPending":Z
    goto :goto_0

    #@99
    .line 190
    .local v1, "cmdPending":Z
    :pswitch_8
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->processRefresh(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z

    #@9c
    .line 191
    const/4 v1, 0x0

    #@9d
    .line 192
    goto :goto_0

    #@9e
    .line 194
    :pswitch_9
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->processLaunchBrowser(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z

    #@a1
    move-result v1

    #@a2
    .local v1, "cmdPending":Z
    goto :goto_0

    #@a3
    .line 197
    .local v1, "cmdPending":Z
    :pswitch_a
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->processPlayTone(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z

    #@a6
    move-result v1

    #@a7
    .local v1, "cmdPending":Z
    goto :goto_0

    #@a8
    .line 200
    .local v1, "cmdPending":Z
    :pswitch_b
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->processSetUpEventList(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z

    #@ab
    move-result v1

    #@ac
    .local v1, "cmdPending":Z
    goto :goto_0

    #@ad
    .line 203
    .local v1, "cmdPending":Z
    :pswitch_c
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->processProvideLocalInfo(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z

    #@b0
    move-result v1

    #@b1
    .local v1, "cmdPending":Z
    goto :goto_0

    #@b2
    .line 209
    .local v1, "cmdPending":Z
    :pswitch_d
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->processBIPClient(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z
    :try_end_1
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_1 .. :try_end_1} :catch_0

    #@b5
    move-result v1

    #@b6
    .local v1, "cmdPending":Z
    goto :goto_0

    #@b7
    .line 217
    .local v1, "cmdPending":Z
    :catch_0
    move-exception v4

    #@b8
    .line 218
    .local v4, "e":Lcom/android/internal/telephony/cat/ResultException;
    new-instance v5, Ljava/lang/StringBuilder;

    #@ba
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@bd
    const-string/jumbo v6, "make: caught ResultException e="

    #@c0
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c3
    move-result-object v5

    #@c4
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@c7
    move-result-object v5

    #@c8
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@cb
    move-result-object v5

    #@cc
    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    #@cf
    .line 219
    new-instance v5, Lcom/android/internal/telephony/cat/CommandParams;

    #@d1
    invoke-direct {v5, v0}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    #@d4
    iput-object v5, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    #@d6
    .line 220
    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/ResultException;->result()Lcom/android/internal/telephony/cat/ResultCode;

    #@d9
    move-result-object v5

    #@da
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->sendCmdParams(Lcom/android/internal/telephony/cat/ResultCode;)V

    #@dd
    .line 221
    return-void

    #@de
    .line 160
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_2
        :pswitch_7
        :pswitch_4
        :pswitch_5
        :pswitch_9
        :pswitch_d
        :pswitch_a
        :pswitch_c
        :pswitch_d
        :pswitch_8
        :pswitch_1
        :pswitch_d
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_b
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method
