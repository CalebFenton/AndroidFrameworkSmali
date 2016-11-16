.class Lcom/android/internal/telephony/cat/CommandParamsFactory;
.super Landroid/os/Handler;
.source "CommandParamsFactory.java"


# static fields
.field private static final synthetic -com-android-internal-telephony-cat-AppInterface$CommandTypeSwitchesValues:[I = null

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

.field private mloadIcon:Z


# direct methods
.method private static synthetic -getcom-android-internal-telephony-cat-AppInterface$CommandTypeSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->-com-android-internal-telephony-cat-AppInterface$CommandTypeSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->-com-android-internal-telephony-cat-AppInterface$CommandTypeSwitchesValues:[I

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
    sput-object v0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->-com-android-internal-telephony-cat-AppInterface$CommandTypeSwitchesValues:[I

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
    const/4 v0, 0x0

    #@2
    .line 96
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #@5
    .line 46
    iput-object v1, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    #@7
    .line 47
    iput v0, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoadState:I

    #@9
    .line 48
    iput-object v1, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCaller:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    #@b
    .line 49
    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mloadIcon:Z

    #@d
    .line 97
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCaller:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    #@f
    .line 98
    invoke-static {p0, p2}, Lcom/android/internal/telephony/cat/IconLoader;->getInstance(Landroid/os/Handler;Lcom/android/internal/telephony/uicc/IccFileHandler;)Lcom/android/internal/telephony/cat/IconLoader;

    #@12
    move-result-object v0

    #@13
    iput-object v0, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    #@15
    .line 96
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
    .line 87
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->sInstance:Lcom/android/internal/telephony/cat/CommandParamsFactory;

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 88
    sget-object v0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->sInstance:Lcom/android/internal/telephony/cat/CommandParamsFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    monitor-exit v1

    #@b
    return-object v0

    #@c
    .line 90
    :cond_0
    if-eqz p1, :cond_1

    #@e
    .line 91
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
    .line 93
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
    .line 1016
    iget v5, p1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    #@4
    invoke-static {v5}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    #@7
    move-result-object v0

    #@8
    .line 1017
    .local v0, "commandType":Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    if-eqz v0, :cond_0

    #@a
    .line 1018
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
    .line 1021
    :cond_0
    new-instance v4, Lcom/android/internal/telephony/cat/TextMessage;

    #@27
    invoke-direct {v4}, Lcom/android/internal/telephony/cat/TextMessage;-><init>()V

    #@2a
    .line 1022
    .local v4, "textMsg":Lcom/android/internal/telephony/cat/TextMessage;
    const/4 v3, 0x0

    #@2b
    .line 1023
    .local v3, "iconId":Lcom/android/internal/telephony/cat/IconId;
    const/4 v1, 0x0

    #@2c
    .line 1024
    .local v1, "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    const/4 v2, 0x0

    #@2d
    .line 1027
    .local v2, "has_alpha_id":Z
    sget-object v5, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@2f
    invoke-direct {p0, v5, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    #@32
    move-result-object v1

    #@33
    .line 1028
    .local v1, "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    if-eqz v1, :cond_1

    #@35
    .line 1029
    invoke-static {v1}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;

    #@38
    move-result-object v5

    #@39
    iput-object v5, v4, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    #@3b
    .line 1030
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
    .line 1031
    const/4 v2, 0x1

    #@55
    .line 1035
    :cond_1
    sget-object v5, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@57
    invoke-direct {p0, v5, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    #@5a
    move-result-object v1

    #@5b
    .line 1036
    if-eqz v1, :cond_2

    #@5d
    .line 1037
    invoke-static {v1}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/IconId;

    #@60
    move-result-object v3

    #@61
    .line 1038
    .local v3, "iconId":Lcom/android/internal/telephony/cat/IconId;
    iget-boolean v5, v3, Lcom/android/internal/telephony/cat/IconId;->selfExplanatory:Z

    #@63
    iput-boolean v5, v4, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    #@65
    .line 1041
    .end local v3    # "iconId":Lcom/android/internal/telephony/cat/IconId;
    :cond_2
    iput-boolean v7, v4, Lcom/android/internal/telephony/cat/TextMessage;->responseNeeded:Z

    #@67
    .line 1042
    new-instance v5, Lcom/android/internal/telephony/cat/BIPClientParams;

    #@69
    invoke-direct {v5, p1, v4, v2}, Lcom/android/internal/telephony/cat/BIPClientParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;Z)V

    #@6c
    iput-object v5, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    #@6e
    .line 1044
    if-eqz v3, :cond_3

    #@70
    .line 1045
    iput v8, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoadState:I

    #@72
    .line 1046
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
    .line 1047
    return v8

    #@7e
    .line 1049
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
    .line 102
    .local p1, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const/4 v0, 0x0

    #@1
    .line 104
    .local v0, "cmdDet":Lcom/android/internal/telephony/cat/CommandDetails;
    if-eqz p1, :cond_0

    #@3
    .line 107
    sget-object v3, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->COMMAND_DETAILS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@5
    .line 106
    invoke-direct {p0, v3, p1}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    #@8
    move-result-object v1

    #@9
    .line 108
    .local v1, "ctlvCmdDet":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    if-eqz v1, :cond_0

    #@b
    .line 110
    :try_start_0
    invoke-static {v1}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveCommandDetails(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/CommandDetails;
    :try_end_0
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    move-result-object v0

    #@f
    .line 117
    .end local v0    # "cmdDet":Lcom/android/internal/telephony/cat/CommandDetails;
    .end local v1    # "ctlvCmdDet":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    :cond_0
    :goto_0
    return-object v0

    #@10
    .line 111
    .restart local v0    # "cmdDet":Lcom/android/internal/telephony/cat/CommandDetails;
    .restart local v1    # "ctlvCmdDet":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    :catch_0
    move-exception v2

    #@11
    .line 113
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
    .line 112
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
    .line 330
    const-string/jumbo v3, "process DisplayText"

    #@5
    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    #@8
    .line 332
    new-instance v2, Lcom/android/internal/telephony/cat/TextMessage;

    #@a
    invoke-direct {v2}, Lcom/android/internal/telephony/cat/TextMessage;-><init>()V

    #@d
    .line 333
    .local v2, "textMsg":Lcom/android/internal/telephony/cat/TextMessage;
    const/4 v1, 0x0

    #@e
    .line 335
    .local v1, "iconId":Lcom/android/internal/telephony/cat/IconId;
    sget-object v3, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->TEXT_STRING:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@10
    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    #@13
    move-result-object v0

    #@14
    .line 337
    .local v0, "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    if-eqz v0, :cond_0

    #@16
    .line 338
    invoke-static {v0}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveTextString(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;

    #@19
    move-result-object v3

    #@1a
    iput-object v3, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    #@1c
    .line 342
    :cond_0
    iget-object v3, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    #@1e
    if-nez v3, :cond_1

    #@20
    .line 343
    new-instance v3, Lcom/android/internal/telephony/cat/ResultException;

    #@22
    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    #@24
    invoke-direct {v3, v4}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    #@27
    throw v3

    #@28
    .line 346
    :cond_1
    sget-object v3, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->IMMEDIATE_RESPONSE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@2a
    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    #@2d
    move-result-object v0

    #@2e
    .line 347
    if-eqz v0, :cond_2

    #@30
    .line 348
    iput-boolean v5, v2, Lcom/android/internal/telephony/cat/TextMessage;->responseNeeded:Z

    #@32
    .line 351
    :cond_2
    sget-object v3, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@34
    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    #@37
    move-result-object v0

    #@38
    .line 352
    if-eqz v0, :cond_3

    #@3a
    .line 353
    invoke-static {v0}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/IconId;

    #@3d
    move-result-object v1

    #@3e
    .line 354
    .local v1, "iconId":Lcom/android/internal/telephony/cat/IconId;
    iget-boolean v3, v1, Lcom/android/internal/telephony/cat/IconId;->selfExplanatory:Z

    #@40
    iput-boolean v3, v2, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    #@42
    .line 357
    .end local v1    # "iconId":Lcom/android/internal/telephony/cat/IconId;
    :cond_3
    sget-object v3, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DURATION:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@44
    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    #@47
    move-result-object v0

    #@48
    .line 358
    if-eqz v0, :cond_4

    #@4a
    .line 359
    invoke-static {v0}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveDuration(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/Duration;

    #@4d
    move-result-object v3

    #@4e
    iput-object v3, v2, Lcom/android/internal/telephony/cat/TextMessage;->duration:Lcom/android/internal/telephony/cat/Duration;

    #@50
    .line 363
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
    .line 364
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
    .line 366
    new-instance v3, Lcom/android/internal/telephony/cat/DisplayTextParams;

    #@64
    invoke-direct {v3, p1, v2}, Lcom/android/internal/telephony/cat/DisplayTextParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;)V

    #@67
    iput-object v3, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    #@69
    .line 368
    if-eqz v1, :cond_7

    #@6b
    .line 369
    iput-boolean v4, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mloadIcon:Z

    #@6d
    .line 370
    iput v4, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoadState:I

    #@6f
    .line 371
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    #@71
    iget v5, v1, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I

    #@73
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    #@76
    move-result-object v6

    #@77
    invoke-virtual {v3, v5, v6}, Lcom/android/internal/telephony/cat/IconLoader;->loadIcon(ILandroid/os/Message;)V

    #@7a
    .line 373
    return v4

    #@7b
    :cond_5
    move v3, v5

    #@7c
    .line 363
    goto :goto_0

    #@7d
    :cond_6
    move v3, v5

    #@7e
    .line 364
    goto :goto_1

    #@7f
    .line 375
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
    .line 714
    const-string/jumbo v3, "process EventNotify"

    #@5
    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    #@8
    .line 716
    new-instance v2, Lcom/android/internal/telephony/cat/TextMessage;

    #@a
    invoke-direct {v2}, Lcom/android/internal/telephony/cat/TextMessage;-><init>()V

    #@d
    .line 717
    .local v2, "textMsg":Lcom/android/internal/telephony/cat/TextMessage;
    const/4 v1, 0x0

    #@e
    .line 719
    .local v1, "iconId":Lcom/android/internal/telephony/cat/IconId;
    sget-object v3, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@10
    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    #@13
    move-result-object v0

    #@14
    .line 721
    .local v0, "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    invoke-static {v0}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;

    #@17
    move-result-object v3

    #@18
    iput-object v3, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    #@1a
    .line 723
    sget-object v3, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@1c
    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    #@1f
    move-result-object v0

    #@20
    .line 724
    if-eqz v0, :cond_0

    #@22
    .line 725
    invoke-static {v0}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/IconId;

    #@25
    move-result-object v1

    #@26
    .line 726
    .local v1, "iconId":Lcom/android/internal/telephony/cat/IconId;
    iget-boolean v3, v1, Lcom/android/internal/telephony/cat/IconId;->selfExplanatory:Z

    #@28
    iput-boolean v3, v2, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    #@2a
    .line 729
    .end local v1    # "iconId":Lcom/android/internal/telephony/cat/IconId;
    :cond_0
    iput-boolean v4, v2, Lcom/android/internal/telephony/cat/TextMessage;->responseNeeded:Z

    #@2c
    .line 730
    new-instance v3, Lcom/android/internal/telephony/cat/DisplayTextParams;

    #@2e
    invoke-direct {v3, p1, v2}, Lcom/android/internal/telephony/cat/DisplayTextParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;)V

    #@31
    iput-object v3, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    #@33
    .line 732
    if-eqz v1, :cond_1

    #@35
    .line 733
    iput-boolean v6, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mloadIcon:Z

    #@37
    .line 734
    iput v6, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoadState:I

    #@39
    .line 735
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    #@3b
    iget v4, v1, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I

    #@3d
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    #@40
    move-result-object v5

    #@41
    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/cat/IconLoader;->loadIcon(ILandroid/os/Message;)V

    #@44
    .line 737
    return v6

    #@45
    .line 739
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
    .line 441
    const-string/jumbo v3, "process GetInkey"

    #@5
    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    #@8
    .line 443
    new-instance v2, Lcom/android/internal/telephony/cat/Input;

    #@a
    invoke-direct {v2}, Lcom/android/internal/telephony/cat/Input;-><init>()V

    #@d
    .line 444
    .local v2, "input":Lcom/android/internal/telephony/cat/Input;
    const/4 v1, 0x0

    #@e
    .line 446
    .local v1, "iconId":Lcom/android/internal/telephony/cat/IconId;
    sget-object v3, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->TEXT_STRING:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@10
    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    #@13
    move-result-object v0

    #@14
    .line 448
    .local v0, "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    if-eqz v0, :cond_2

    #@16
    .line 449
    invoke-static {v0}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveTextString(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;

    #@19
    move-result-object v3

    #@1a
    iput-object v3, v2, Lcom/android/internal/telephony/cat/Input;->text:Ljava/lang/String;

    #@1c
    .line 454
    sget-object v3, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@1e
    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    #@21
    move-result-object v0

    #@22
    .line 455
    if-eqz v0, :cond_0

    #@24
    .line 456
    invoke-static {v0}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/IconId;

    #@27
    move-result-object v1

    #@28
    .line 460
    .end local v1    # "iconId":Lcom/android/internal/telephony/cat/IconId;
    :cond_0
    sget-object v3, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DURATION:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@2a
    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    #@2d
    move-result-object v0

    #@2e
    .line 461
    if-eqz v0, :cond_1

    #@30
    .line 462
    invoke-static {v0}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveDuration(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/Duration;

    #@33
    move-result-object v3

    #@34
    iput-object v3, v2, Lcom/android/internal/telephony/cat/Input;->duration:Lcom/android/internal/telephony/cat/Duration;

    #@36
    .line 465
    :cond_1
    iput v4, v2, Lcom/android/internal/telephony/cat/Input;->minLen:I

    #@38
    .line 466
    iput v4, v2, Lcom/android/internal/telephony/cat/Input;->maxLen:I

    #@3a
    .line 468
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
    .line 469
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
    .line 470
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
    .line 471
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
    .line 472
    iput-boolean v4, v2, Lcom/android/internal/telephony/cat/Input;->echo:Z

    #@60
    .line 474
    new-instance v3, Lcom/android/internal/telephony/cat/GetInputParams;

    #@62
    invoke-direct {v3, p1, v2}, Lcom/android/internal/telephony/cat/GetInputParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/Input;)V

    #@65
    iput-object v3, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    #@67
    .line 476
    if-eqz v1, :cond_7

    #@69
    .line 477
    iput-boolean v4, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mloadIcon:Z

    #@6b
    .line 478
    iput v4, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoadState:I

    #@6d
    .line 479
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
    .line 481
    return v4

    #@79
    .line 451
    .restart local v1    # "iconId":Lcom/android/internal/telephony/cat/IconId;
    :cond_2
    new-instance v3, Lcom/android/internal/telephony/cat/ResultException;

    #@7b
    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cat/ResultCode;

    #@7d
    invoke-direct {v3, v4}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    #@80
    throw v3

    #@81
    .end local v1    # "iconId":Lcom/android/internal/telephony/cat/IconId;
    :cond_3
    move v3, v5

    #@82
    .line 468
    goto :goto_0

    #@83
    :cond_4
    move v3, v5

    #@84
    .line 469
    goto :goto_1

    #@85
    :cond_5
    move v3, v5

    #@86
    .line 470
    goto :goto_2

    #@87
    :cond_6
    move v3, v5

    #@88
    .line 471
    goto :goto_3

    #@89
    .line 483
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
    .line 499
    const-string/jumbo v6, "process GetInput"

    #@9
    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    #@c
    .line 501
    new-instance v3, Lcom/android/internal/telephony/cat/Input;

    #@e
    invoke-direct {v3}, Lcom/android/internal/telephony/cat/Input;-><init>()V

    #@11
    .line 502
    .local v3, "input":Lcom/android/internal/telephony/cat/Input;
    const/4 v2, 0x0

    #@12
    .line 504
    .local v2, "iconId":Lcom/android/internal/telephony/cat/IconId;
    sget-object v6, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->TEXT_STRING:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@14
    invoke-direct {p0, v6, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    #@17
    move-result-object v0

    #@18
    .line 506
    .local v0, "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    if-eqz v0, :cond_3

    #@1a
    .line 507
    invoke-static {v0}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveTextString(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;

    #@1d
    move-result-object v6

    #@1e
    iput-object v6, v3, Lcom/android/internal/telephony/cat/Input;->text:Ljava/lang/String;

    #@20
    .line 512
    sget-object v6, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->RESPONSE_LENGTH:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@22
    invoke-direct {p0, v6, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    #@25
    move-result-object v0

    #@26
    .line 513
    if-eqz v0, :cond_4

    #@28
    .line 515
    :try_start_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    #@2b
    move-result-object v4

    #@2c
    .line 516
    .local v4, "rawValue":[B
    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    #@2f
    move-result v5

    #@30
    .line 517
    .local v5, "valueIndex":I
    aget-byte v6, v4, v5

    #@32
    and-int/lit16 v6, v6, 0xff

    #@34
    iput v6, v3, Lcom/android/internal/telephony/cat/Input;->minLen:I

    #@36
    .line 518
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
    .line 526
    sget-object v6, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DEFAULT_TEXT:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@40
    invoke-direct {p0, v6, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    #@43
    move-result-object v0

    #@44
    .line 527
    if-eqz v0, :cond_0

    #@46
    .line 528
    invoke-static {v0}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveTextString(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;

    #@49
    move-result-object v6

    #@4a
    iput-object v6, v3, Lcom/android/internal/telephony/cat/Input;->defaultText:Ljava/lang/String;

    #@4c
    .line 531
    :cond_0
    sget-object v6, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@4e
    invoke-direct {p0, v6, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    #@51
    move-result-object v0

    #@52
    .line 532
    if-eqz v0, :cond_1

    #@54
    .line 533
    invoke-static {v0}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/IconId;

    #@57
    move-result-object v2

    #@58
    .line 536
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
    .line 537
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
    .line 538
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
    .line 539
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
    .line 540
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
    .line 544
    iget-boolean v6, v3, Lcom/android/internal/telephony/cat/Input;->ucs2:Z

    #@87
    if-eqz v6, :cond_a

    #@89
    iget v6, v3, Lcom/android/internal/telephony/cat/Input;->maxLen:I

    #@8b
    if-le v6, v10, :cond_a

    #@8d
    .line 545
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
    .line 546
    const-string/jumbo v9, ", truncating to "

    #@a2
    .line 545
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
    .line 547
    iput v10, v3, Lcom/android/internal/telephony/cat/Input;->maxLen:I

    #@b3
    .line 554
    :cond_2
    :goto_5
    new-instance v6, Lcom/android/internal/telephony/cat/GetInputParams;

    #@b5
    invoke-direct {v6, p1, v3}, Lcom/android/internal/telephony/cat/GetInputParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/Input;)V

    #@b8
    iput-object v6, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    #@ba
    .line 556
    if-eqz v2, :cond_b

    #@bc
    .line 557
    iput-boolean v7, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mloadIcon:Z

    #@be
    .line 558
    iput v7, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoadState:I

    #@c0
    .line 559
    iget-object v6, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    #@c2
    iget v8, v2, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I

    #@c4
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    #@c7
    move-result-object v9

    #@c8
    invoke-virtual {v6, v8, v9}, Lcom/android/internal/telephony/cat/IconLoader;->loadIcon(ILandroid/os/Message;)V

    #@cb
    .line 561
    return v7

    #@cc
    .line 509
    .end local v4    # "rawValue":[B
    .end local v5    # "valueIndex":I
    .restart local v2    # "iconId":Lcom/android/internal/telephony/cat/IconId;
    :cond_3
    new-instance v6, Lcom/android/internal/telephony/cat/ResultException;

    #@ce
    sget-object v7, Lcom/android/internal/telephony/cat/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cat/ResultCode;

    #@d0
    invoke-direct {v6, v7}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    #@d3
    throw v6

    #@d4
    .line 519
    :catch_0
    move-exception v1

    #@d5
    .line 520
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v6, Lcom/android/internal/telephony/cat/ResultException;

    #@d7
    sget-object v7, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    #@d9
    invoke-direct {v6, v7}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    #@dc
    throw v6

    #@dd
    .line 523
    .end local v1    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_4
    new-instance v6, Lcom/android/internal/telephony/cat/ResultException;

    #@df
    sget-object v7, Lcom/android/internal/telephony/cat/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cat/ResultCode;

    #@e1
    invoke-direct {v6, v7}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    #@e4
    throw v6

    #@e5
    .end local v2    # "iconId":Lcom/android/internal/telephony/cat/IconId;
    .restart local v4    # "rawValue":[B
    .restart local v5    # "valueIndex":I
    :cond_5
    move v6, v8

    #@e6
    .line 536
    goto/16 :goto_0

    #@e8
    :cond_6
    move v6, v8

    #@e9
    .line 537
    goto/16 :goto_1

    #@eb
    :cond_7
    move v6, v8

    #@ec
    .line 538
    goto :goto_2

    #@ed
    :cond_8
    move v6, v8

    #@ee
    .line 539
    goto :goto_3

    #@ef
    :cond_9
    move v6, v8

    #@f0
    .line 540
    goto :goto_4

    #@f1
    .line 548
    :cond_a
    iget-boolean v6, v3, Lcom/android/internal/telephony/cat/Input;->packed:Z

    #@f3
    if-nez v6, :cond_2

    #@f5
    iget v6, v3, Lcom/android/internal/telephony/cat/Input;->maxLen:I

    #@f7
    if-le v6, v11, :cond_2

    #@f9
    .line 549
    new-instance v6, Ljava/lang/StringBuilder;

    #@fb
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@fe
    const-string/jumbo v9, "GSM 7Bit Default: received maxLen = "

    #@101
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@104
    move-result-object v6

    #@105
    iget v9, v3, Lcom/android/internal/telephony/cat/Input;->maxLen:I

    #@107
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@10a
    move-result-object v6

    #@10b
    .line 550
    const-string/jumbo v9, ", truncating to "

    #@10e
    .line 549
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@111
    move-result-object v6

    #@112
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@115
    move-result-object v6

    #@116
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@119
    move-result-object v6

    #@11a
    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    #@11d
    .line 551
    iput v11, v3, Lcom/android/internal/telephony/cat/Input;->maxLen:I

    #@11f
    goto :goto_5

    #@120
    .line 563
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
    .line 805
    const-string/jumbo v9, "process LaunchBrowser"

    #@5
    invoke-static {p0, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    #@8
    .line 807
    new-instance v0, Lcom/android/internal/telephony/cat/TextMessage;

    #@a
    invoke-direct {v0}, Lcom/android/internal/telephony/cat/TextMessage;-><init>()V

    #@d
    .line 808
    .local v0, "confirmMsg":Lcom/android/internal/telephony/cat/TextMessage;
    const/4 v3, 0x0

    #@e
    .line 809
    .local v3, "iconId":Lcom/android/internal/telephony/cat/IconId;
    const/4 v6, 0x0

    #@f
    .line 811
    .local v6, "url":Ljava/lang/String;
    sget-object v9, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->URL:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@11
    invoke-direct {p0, v9, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    #@14
    move-result-object v1

    #@15
    .line 812
    .local v1, "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    if-eqz v1, :cond_0

    #@17
    .line 814
    :try_start_0
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    #@1a
    move-result-object v5

    #@1b
    .line 815
    .local v5, "rawValue":[B
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    #@1e
    move-result v7

    #@1f
    .line 816
    .local v7, "valueIndex":I
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    #@22
    move-result v8

    #@23
    .line 817
    .local v8, "valueLen":I
    if-lez v8, :cond_2

    #@25
    .line 818
    invoke-static {v5, v7, v8}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BII)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@28
    move-result-object v6

    #@29
    .line 829
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
    .line 830
    invoke-static {v1}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;

    #@32
    move-result-object v9

    #@33
    iput-object v9, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    #@35
    .line 833
    sget-object v9, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@37
    invoke-direct {p0, v9, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    #@3a
    move-result-object v1

    #@3b
    .line 834
    if-eqz v1, :cond_1

    #@3d
    .line 835
    invoke-static {v1}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/IconId;

    #@40
    move-result-object v3

    #@41
    .line 836
    .local v3, "iconId":Lcom/android/internal/telephony/cat/IconId;
    iget-boolean v9, v3, Lcom/android/internal/telephony/cat/IconId;->selfExplanatory:Z

    #@43
    iput-boolean v9, v0, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    #@45
    .line 841
    .end local v3    # "iconId":Lcom/android/internal/telephony/cat/IconId;
    :cond_1
    iget v9, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    #@47
    packed-switch v9, :pswitch_data_0

    #@4a
    .line 844
    sget-object v4, Lcom/android/internal/telephony/cat/LaunchBrowserMode;->LAUNCH_IF_NOT_ALREADY_LAUNCHED:Lcom/android/internal/telephony/cat/LaunchBrowserMode;

    #@4c
    .line 854
    .local v4, "mode":Lcom/android/internal/telephony/cat/LaunchBrowserMode;
    :goto_1
    new-instance v9, Lcom/android/internal/telephony/cat/LaunchBrowserParams;

    #@4e
    invoke-direct {v9, p1, v0, v6, v4}, Lcom/android/internal/telephony/cat/LaunchBrowserParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;Ljava/lang/String;Lcom/android/internal/telephony/cat/LaunchBrowserMode;)V

    #@51
    iput-object v9, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    #@53
    .line 856
    if-eqz v3, :cond_3

    #@55
    .line 857
    iput v12, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoadState:I

    #@57
    .line 858
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
    .line 860
    return v12

    #@63
    .line 821
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
    .line 823
    .end local v5    # "rawValue":[B
    .end local v7    # "valueIndex":I
    .end local v8    # "valueLen":I
    :catch_0
    move-exception v2

    #@66
    .line 824
    .local v2, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v9, Lcom/android/internal/telephony/cat/ResultException;

    #@68
    sget-object v10, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    #@6a
    invoke-direct {v9, v10}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    #@6d
    throw v9

    #@6e
    .line 847
    .end local v2    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v3    # "iconId":Lcom/android/internal/telephony/cat/IconId;
    .end local v6    # "url":Ljava/lang/String;
    :pswitch_0
    sget-object v4, Lcom/android/internal/telephony/cat/LaunchBrowserMode;->USE_EXISTING_BROWSER:Lcom/android/internal/telephony/cat/LaunchBrowserMode;

    #@70
    .restart local v4    # "mode":Lcom/android/internal/telephony/cat/LaunchBrowserMode;
    goto :goto_1

    #@71
    .line 850
    .end local v4    # "mode":Lcom/android/internal/telephony/cat/LaunchBrowserMode;
    :pswitch_1
    sget-object v4, Lcom/android/internal/telephony/cat/LaunchBrowserMode;->LAUNCH_NEW_BROWSER:Lcom/android/internal/telephony/cat/LaunchBrowserMode;

    #@73
    .restart local v4    # "mode":Lcom/android/internal/telephony/cat/LaunchBrowserMode;
    goto :goto_1

    #@74
    .line 862
    :cond_3
    return v10

    #@75
    .line 841
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
    .line 878
    .local p2, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const-string/jumbo v0, "process PlayTone"

    #@3
    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    #@6
    .line 880
    const/4 v3, 0x0

    #@7
    .line 881
    .local v3, "tone":Lcom/android/internal/telephony/cat/Tone;
    new-instance v2, Lcom/android/internal/telephony/cat/TextMessage;

    #@9
    invoke-direct {v2}, Lcom/android/internal/telephony/cat/TextMessage;-><init>()V

    #@c
    .line 882
    .local v2, "textMsg":Lcom/android/internal/telephony/cat/TextMessage;
    const/4 v4, 0x0

    #@d
    .line 883
    .local v4, "duration":Lcom/android/internal/telephony/cat/Duration;
    const/4 v8, 0x0

    #@e
    .line 885
    .local v8, "iconId":Lcom/android/internal/telephony/cat/IconId;
    sget-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->TONE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@10
    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    #@13
    move-result-object v6

    #@14
    .line 886
    .local v6, "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    if-eqz v6, :cond_0

    #@16
    .line 888
    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    #@19
    move-result v0

    #@1a
    if-lez v0, :cond_0

    #@1c
    .line 890
    :try_start_0
    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    #@1f
    move-result-object v9

    #@20
    .line 891
    .local v9, "rawValue":[B
    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    #@23
    move-result v11

    #@24
    .line 892
    .local v11, "valueIndex":I
    aget-byte v10, v9, v11

    #@26
    .line 893
    .local v10, "toneVal":I
    invoke-static {v10}, Lcom/android/internal/telephony/cat/Tone;->fromInt(I)Lcom/android/internal/telephony/cat/Tone;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@29
    move-result-object v3

    #@2a
    .line 901
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
    .line 902
    if-eqz v6, :cond_1

    #@32
    .line 903
    invoke-static {v6}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;

    #@35
    move-result-object v0

    #@36
    iput-object v0, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    #@38
    .line 906
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DURATION:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@3a
    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    #@3d
    move-result-object v6

    #@3e
    .line 907
    if-eqz v6, :cond_2

    #@40
    .line 908
    invoke-static {v6}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveDuration(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/Duration;

    #@43
    move-result-object v4

    #@44
    .line 911
    .end local v4    # "duration":Lcom/android/internal/telephony/cat/Duration;
    :cond_2
    sget-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@46
    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    #@49
    move-result-object v6

    #@4a
    .line 912
    if-eqz v6, :cond_3

    #@4c
    .line 913
    invoke-static {v6}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/IconId;

    #@4f
    move-result-object v8

    #@50
    .line 914
    .local v8, "iconId":Lcom/android/internal/telephony/cat/IconId;
    iget-boolean v0, v8, Lcom/android/internal/telephony/cat/IconId;->selfExplanatory:Z

    #@52
    iput-boolean v0, v2, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    #@54
    .line 917
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
    .line 919
    .local v5, "vibrate":Z
    :goto_0
    const/4 v0, 0x0

    #@5c
    iput-boolean v0, v2, Lcom/android/internal/telephony/cat/TextMessage;->responseNeeded:Z

    #@5e
    .line 920
    new-instance v0, Lcom/android/internal/telephony/cat/PlayToneParams;

    #@60
    move-object v1, p1

    #@61
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/PlayToneParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;Lcom/android/internal/telephony/cat/Tone;Lcom/android/internal/telephony/cat/Duration;Z)V

    #@64
    iput-object v0, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    #@66
    .line 922
    if-eqz v8, :cond_5

    #@68
    .line 923
    const/4 v0, 0x1

    #@69
    iput v0, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoadState:I

    #@6b
    .line 924
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    #@6d
    iget v1, v8, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I

    #@6f
    .line 925
    const/4 v12, 0x1

    #@70
    .line 924
    invoke-virtual {p0, v12}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    #@73
    move-result-object v12

    #@74
    invoke-virtual {v0, v1, v12}, Lcom/android/internal/telephony/cat/IconLoader;->loadIcon(ILandroid/os/Message;)V

    #@77
    .line 926
    const/4 v0, 0x1

    #@78
    return v0

    #@79
    .line 894
    .end local v5    # "vibrate":Z
    .restart local v3    # "tone":Lcom/android/internal/telephony/cat/Tone;
    .restart local v4    # "duration":Lcom/android/internal/telephony/cat/Duration;
    .local v8, "iconId":Lcom/android/internal/telephony/cat/IconId;
    :catch_0
    move-exception v7

    #@7a
    .line 895
    .local v7, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v0, Lcom/android/internal/telephony/cat/ResultException;

    #@7c
    .line 896
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    #@7e
    .line 895
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    #@81
    throw v0

    #@82
    .line 917
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
    .line 928
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
    .line 995
    .local p2, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const-string/jumbo v0, "process ProvideLocalInfo"

    #@3
    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    #@6
    .line 996
    iget v0, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    #@8
    packed-switch v0, :pswitch_data_0

    #@b
    .line 1006
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
    .line 1007
    new-instance v0, Lcom/android/internal/telephony/cat/CommandParams;

    #@2d
    invoke-direct {v0, p1}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    #@30
    iput-object v0, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    #@32
    .line 1008
    new-instance v0, Lcom/android/internal/telephony/cat/ResultException;

    #@34
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    #@36
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    #@39
    throw v0

    #@3a
    .line 998
    :pswitch_0
    const-string/jumbo v0, "PLI [DTTZ_SETTING]"

    #@3d
    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    #@40
    .line 999
    new-instance v0, Lcom/android/internal/telephony/cat/CommandParams;

    #@42
    invoke-direct {v0, p1}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    #@45
    iput-object v0, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    #@47
    .line 1010
    :goto_0
    const/4 v0, 0x0

    #@48
    return v0

    #@49
    .line 1002
    :pswitch_1
    const-string/jumbo v0, "PLI [LANGUAGE_SETTING]"

    #@4c
    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    #@4f
    .line 1003
    new-instance v0, Lcom/android/internal/telephony/cat/CommandParams;

    #@51
    invoke-direct {v0, p1}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    #@54
    iput-object v0, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    #@56
    goto :goto_0

    #@57
    .line 996
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
    .line 576
    .local p2, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const-string/jumbo v0, "process Refresh"

    #@3
    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    #@6
    .line 581
    iget v0, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    #@8
    packed-switch v0, :pswitch_data_0

    #@b
    .line 589
    :goto_0
    :pswitch_0
    const/4 v0, 0x0

    #@c
    return v0

    #@d
    .line 586
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
    .line 581
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
    const/4 v9, 0x1

    #@1
    const/4 v10, 0x0

    #@2
    .line 605
    const-string/jumbo v8, "process SelectItem"

    #@5
    invoke-static {p0, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    #@8
    .line 607
    new-instance v4, Lcom/android/internal/telephony/cat/Menu;

    #@a
    invoke-direct {v4}, Lcom/android/internal/telephony/cat/Menu;-><init>()V

    #@d
    .line 608
    .local v4, "menu":Lcom/android/internal/telephony/cat/Menu;
    const/4 v7, 0x0

    #@e
    .line 609
    .local v7, "titleIconId":Lcom/android/internal/telephony/cat/IconId;
    const/4 v2, 0x0

    #@f
    .line 610
    .local v2, "itemsIconId":Lcom/android/internal/telephony/cat/ItemsIconId;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@12
    move-result-object v3

    #@13
    .line 613
    .local v3, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    iget v8, p1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    #@15
    .line 612
    invoke-static {v8}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    #@18
    move-result-object v0

    #@19
    .line 615
    .local v0, "cmdType":Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    sget-object v8, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@1b
    invoke-direct {p0, v8, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    #@1e
    move-result-object v1

    #@1f
    .line 617
    .local v1, "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    if-eqz v1, :cond_1

    #@21
    .line 618
    invoke-static {v1}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;

    #@24
    move-result-object v8

    #@25
    iput-object v8, v4, Lcom/android/internal/telephony/cat/Menu;->title:Ljava/lang/String;

    #@27
    .line 629
    :cond_0
    :goto_0
    sget-object v8, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ITEM:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@29
    invoke-direct {p0, v8, v3}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForNextTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/Iterator;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    #@2c
    move-result-object v1

    #@2d
    .line 630
    if-eqz v1, :cond_2

    #@2f
    .line 631
    iget-object v8, v4, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    #@31
    invoke-static {v1}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveItem(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/Item;

    #@34
    move-result-object v11

    #@35
    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@38
    goto :goto_0

    #@39
    .line 619
    :cond_1
    sget-object v8, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_MENU:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    #@3b
    if-ne v0, v8, :cond_0

    #@3d
    .line 625
    new-instance v8, Lcom/android/internal/telephony/cat/ResultException;

    #@3f
    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cat/ResultCode;

    #@41
    invoke-direct {v8, v9}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    #@44
    throw v8

    #@45
    .line 638
    :cond_2
    iget-object v8, v4, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    #@47
    invoke-interface {v8}, Ljava/util/List;->size()I

    #@4a
    move-result v8

    #@4b
    if-nez v8, :cond_3

    #@4d
    .line 639
    new-instance v8, Lcom/android/internal/telephony/cat/ResultException;

    #@4f
    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cat/ResultCode;

    #@51
    invoke-direct {v8, v9}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    #@54
    throw v8

    #@55
    .line 642
    :cond_3
    sget-object v8, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ITEM_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@57
    invoke-direct {p0, v8, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    #@5a
    move-result-object v1

    #@5b
    .line 643
    if-eqz v1, :cond_4

    #@5d
    .line 646
    invoke-static {v1}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveItemId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)I

    #@60
    move-result v8

    #@61
    add-int/lit8 v8, v8, -0x1

    #@63
    iput v8, v4, Lcom/android/internal/telephony/cat/Menu;->defaultItem:I

    #@65
    .line 649
    :cond_4
    sget-object v8, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@67
    invoke-direct {p0, v8, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    #@6a
    move-result-object v1

    #@6b
    .line 650
    if-eqz v1, :cond_5

    #@6d
    .line 651
    iput v9, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoadState:I

    #@6f
    .line 652
    invoke-static {v1}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/IconId;

    #@72
    move-result-object v7

    #@73
    .line 653
    .local v7, "titleIconId":Lcom/android/internal/telephony/cat/IconId;
    iget-boolean v8, v7, Lcom/android/internal/telephony/cat/IconId;->selfExplanatory:Z

    #@75
    iput-boolean v8, v4, Lcom/android/internal/telephony/cat/Menu;->titleIconSelfExplanatory:Z

    #@77
    .line 656
    .end local v7    # "titleIconId":Lcom/android/internal/telephony/cat/IconId;
    :cond_5
    sget-object v8, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ITEM_ICON_ID_LIST:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@79
    invoke-direct {p0, v8, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    #@7c
    move-result-object v1

    #@7d
    .line 657
    if-eqz v1, :cond_6

    #@7f
    .line 658
    const/4 v8, 0x2

    #@80
    iput v8, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoadState:I

    #@82
    .line 659
    invoke-static {v1}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveItemsIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/ItemsIconId;

    #@85
    move-result-object v2

    #@86
    .line 660
    .local v2, "itemsIconId":Lcom/android/internal/telephony/cat/ItemsIconId;
    iget-boolean v8, v2, Lcom/android/internal/telephony/cat/ItemsIconId;->selfExplanatory:Z

    #@88
    iput-boolean v8, v4, Lcom/android/internal/telephony/cat/Menu;->itemsIconSelfExplanatory:Z

    #@8a
    .line 663
    .end local v2    # "itemsIconId":Lcom/android/internal/telephony/cat/ItemsIconId;
    :cond_6
    iget v8, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    #@8c
    and-int/lit8 v8, v8, 0x1

    #@8e
    if-eqz v8, :cond_8

    #@90
    move v5, v9

    #@91
    .line 664
    .local v5, "presentTypeSpecified":Z
    :goto_1
    if-eqz v5, :cond_7

    #@93
    .line 665
    iget v8, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    #@95
    and-int/lit8 v8, v8, 0x2

    #@97
    if-nez v8, :cond_9

    #@99
    .line 666
    sget-object v8, Lcom/android/internal/telephony/cat/PresentationType;->DATA_VALUES:Lcom/android/internal/telephony/cat/PresentationType;

    #@9b
    iput-object v8, v4, Lcom/android/internal/telephony/cat/Menu;->presentationType:Lcom/android/internal/telephony/cat/PresentationType;

    #@9d
    .line 671
    :cond_7
    :goto_2
    iget v8, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    #@9f
    and-int/lit8 v8, v8, 0x4

    #@a1
    if-eqz v8, :cond_a

    #@a3
    move v8, v9

    #@a4
    :goto_3
    iput-boolean v8, v4, Lcom/android/internal/telephony/cat/Menu;->softKeyPreferred:Z

    #@a6
    .line 672
    iget v8, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    #@a8
    and-int/lit16 v8, v8, 0x80

    #@aa
    if-eqz v8, :cond_b

    #@ac
    move v8, v9

    #@ad
    :goto_4
    iput-boolean v8, v4, Lcom/android/internal/telephony/cat/Menu;->helpAvailable:Z

    #@af
    .line 674
    new-instance v11, Lcom/android/internal/telephony/cat/SelectItemParams;

    #@b1
    if-eqz v7, :cond_c

    #@b3
    move v8, v9

    #@b4
    :goto_5
    invoke-direct {v11, p1, v4, v8}, Lcom/android/internal/telephony/cat/SelectItemParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/Menu;Z)V

    #@b7
    iput-object v11, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    #@b9
    .line 677
    iget v8, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoadState:I

    #@bb
    packed-switch v8, :pswitch_data_0

    #@be
    .line 699
    :goto_6
    return v9

    #@bf
    .end local v5    # "presentTypeSpecified":Z
    :cond_8
    move v5, v10

    #@c0
    .line 663
    goto :goto_1

    #@c1
    .line 668
    .restart local v5    # "presentTypeSpecified":Z
    :cond_9
    sget-object v8, Lcom/android/internal/telephony/cat/PresentationType;->NAVIGATION_OPTIONS:Lcom/android/internal/telephony/cat/PresentationType;

    #@c3
    iput-object v8, v4, Lcom/android/internal/telephony/cat/Menu;->presentationType:Lcom/android/internal/telephony/cat/PresentationType;

    #@c5
    goto :goto_2

    #@c6
    :cond_a
    move v8, v10

    #@c7
    .line 671
    goto :goto_3

    #@c8
    :cond_b
    move v8, v10

    #@c9
    .line 672
    goto :goto_4

    #@ca
    :cond_c
    move v8, v10

    #@cb
    .line 674
    goto :goto_5

    #@cc
    .line 679
    :pswitch_0
    return v10

    #@cd
    .line 681
    :pswitch_1
    iput-boolean v9, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mloadIcon:Z

    #@cf
    .line 682
    iget-object v8, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    #@d1
    iget v10, v7, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I

    #@d3
    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    #@d6
    move-result-object v11

    #@d7
    invoke-virtual {v8, v10, v11}, Lcom/android/internal/telephony/cat/IconLoader;->loadIcon(ILandroid/os/Message;)V

    #@da
    goto :goto_6

    #@db
    .line 686
    :pswitch_2
    iget-object v6, v2, Lcom/android/internal/telephony/cat/ItemsIconId;->recordNumbers:[I

    #@dd
    .line 687
    .local v6, "recordNumbers":[I
    if-eqz v7, :cond_d

    #@df
    .line 689
    iget-object v8, v2, Lcom/android/internal/telephony/cat/ItemsIconId;->recordNumbers:[I

    #@e1
    array-length v8, v8

    #@e2
    add-int/lit8 v8, v8, 0x1

    #@e4
    new-array v6, v8, [I

    #@e6
    .line 690
    iget v8, v7, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I

    #@e8
    aput v8, v6, v10

    #@ea
    .line 691
    iget-object v8, v2, Lcom/android/internal/telephony/cat/ItemsIconId;->recordNumbers:[I

    #@ec
    .line 692
    iget-object v11, v2, Lcom/android/internal/telephony/cat/ItemsIconId;->recordNumbers:[I

    #@ee
    array-length v11, v11

    #@ef
    .line 691
    invoke-static {v8, v10, v6, v9, v11}, Ljava/lang/System;->arraycopy([II[III)V

    #@f2
    .line 694
    :cond_d
    iput-boolean v9, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mloadIcon:Z

    #@f4
    .line 695
    iget-object v8, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    #@f6
    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    #@f9
    move-result-object v10

    #@fa
    invoke-virtual {v8, v6, v10}, Lcom/android/internal/telephony/cat/IconLoader;->loadIcons([ILandroid/os/Message;)V

    #@fd
    goto :goto_6

    #@fe
    .line 677
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
    .line 755
    const-string/jumbo v8, "process SetUpEventList"

    #@4
    invoke-static {p0, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    #@7
    .line 756
    sget-object v8, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->EVENT_LIST:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@9
    invoke-direct {p0, v8, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    #@c
    move-result-object v0

    #@d
    .line 757
    .local v0, "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    if-eqz v0, :cond_1

    #@f
    .line 759
    :try_start_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    #@12
    move-result-object v5

    #@13
    .line 760
    .local v5, "rawValue":[B
    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    #@16
    move-result v6

    #@17
    .line 761
    .local v6, "valueIndex":I
    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    #@1a
    move-result v7

    #@1b
    .line 762
    .local v7, "valueLen":I
    new-array v2, v7, [I

    #@1d
    .line 763
    .local v2, "eventList":[I
    const/4 v3, -0x1

    #@1e
    .line 764
    .local v3, "eventValue":I
    const/4 v4, 0x0

    #@1f
    .line 765
    .local v4, "i":I
    :goto_0
    if-lez v7, :cond_0

    #@21
    .line 766
    aget-byte v8, v5, v6

    #@23
    and-int/lit16 v3, v8, 0xff

    #@25
    .line 767
    add-int/lit8 v6, v6, 0x1

    #@27
    .line 768
    add-int/lit8 v7, v7, -0x1

    #@29
    .line 770
    sparse-switch v3, :sswitch_data_0

    #@2c
    goto :goto_0

    #@2d
    .line 776
    :sswitch_0
    aput v3, v2, v4

    #@2f
    .line 777
    add-int/lit8 v4, v4, 0x1

    #@31
    .line 778
    goto :goto_0

    #@32
    .line 784
    :cond_0
    new-instance v8, Lcom/android/internal/telephony/cat/SetEventListParams;

    #@34
    invoke-direct {v8, p1, v2}, Lcom/android/internal/telephony/cat/SetEventListParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;[I)V

    #@37
    iput-object v8, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@39
    .line 789
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
    .line 785
    :catch_0
    move-exception v1

    #@3b
    .line 786
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v8, " IndexOutofBoundException in processSetUpEventList"

    #@3e
    invoke-static {p0, v8}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    #@41
    goto :goto_1

    #@42
    .line 770
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
    .line 391
    const-string/jumbo v3, "process SetUpIdleModeText"

    #@4
    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    #@7
    .line 393
    new-instance v2, Lcom/android/internal/telephony/cat/TextMessage;

    #@9
    invoke-direct {v2}, Lcom/android/internal/telephony/cat/TextMessage;-><init>()V

    #@c
    .line 394
    .local v2, "textMsg":Lcom/android/internal/telephony/cat/TextMessage;
    const/4 v1, 0x0

    #@d
    .line 396
    .local v1, "iconId":Lcom/android/internal/telephony/cat/IconId;
    sget-object v3, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->TEXT_STRING:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@f
    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    #@12
    move-result-object v0

    #@13
    .line 398
    .local v0, "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    if-eqz v0, :cond_0

    #@15
    .line 399
    invoke-static {v0}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveTextString(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;

    #@18
    move-result-object v3

    #@19
    iput-object v3, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    #@1b
    .line 402
    :cond_0
    sget-object v3, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@1d
    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    #@20
    move-result-object v0

    #@21
    .line 403
    if-eqz v0, :cond_1

    #@23
    .line 404
    invoke-static {v0}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/IconId;

    #@26
    move-result-object v1

    #@27
    .line 405
    .local v1, "iconId":Lcom/android/internal/telephony/cat/IconId;
    iget-boolean v3, v1, Lcom/android/internal/telephony/cat/IconId;->selfExplanatory:Z

    #@29
    iput-boolean v3, v2, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    #@2b
    .line 413
    .end local v1    # "iconId":Lcom/android/internal/telephony/cat/IconId;
    :cond_1
    iget-object v3, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    #@2d
    if-nez v3, :cond_2

    #@2f
    if-eqz v1, :cond_2

    #@31
    iget-boolean v3, v2, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    #@33
    if-eqz v3, :cond_3

    #@35
    .line 416
    :cond_2
    new-instance v3, Lcom/android/internal/telephony/cat/DisplayTextParams;

    #@37
    invoke-direct {v3, p1, v2}, Lcom/android/internal/telephony/cat/DisplayTextParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;)V

    #@3a
    iput-object v3, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    #@3c
    .line 418
    if-eqz v1, :cond_4

    #@3e
    .line 419
    iput-boolean v6, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mloadIcon:Z

    #@40
    .line 420
    iput v6, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoadState:I

    #@42
    .line 421
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    #@44
    iget v4, v1, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I

    #@46
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    #@49
    move-result-object v5

    #@4a
    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/cat/IconLoader;->loadIcon(ILandroid/os/Message;)V

    #@4d
    .line 423
    return v6

    #@4e
    .line 414
    :cond_3
    new-instance v3, Lcom/android/internal/telephony/cat/ResultException;

    #@50
    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    #@52
    invoke-direct {v3, v4}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    #@55
    throw v3

    #@56
    .line 425
    :cond_4
    const/4 v3, 0x0

    #@57
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
    .line 943
    const-string/jumbo v7, "process SetupCall"

    #@7
    invoke-static {p0, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    #@a
    .line 945
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@d
    move-result-object v5

    #@e
    .line 946
    .local v5, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const/4 v4, 0x0

    #@f
    .line 948
    .local v4, "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    new-instance v3, Lcom/android/internal/telephony/cat/TextMessage;

    #@11
    invoke-direct {v3}, Lcom/android/internal/telephony/cat/TextMessage;-><init>()V

    #@14
    .line 950
    .local v3, "confirmMsg":Lcom/android/internal/telephony/cat/TextMessage;
    new-instance v1, Lcom/android/internal/telephony/cat/TextMessage;

    #@16
    invoke-direct {v1}, Lcom/android/internal/telephony/cat/TextMessage;-><init>()V

    #@19
    .line 951
    .local v1, "callMsg":Lcom/android/internal/telephony/cat/TextMessage;
    const/4 v2, 0x0

    #@1a
    .line 952
    .local v2, "confirmIconId":Lcom/android/internal/telephony/cat/IconId;
    const/4 v0, 0x0

    #@1b
    .line 955
    .local v0, "callIconId":Lcom/android/internal/telephony/cat/IconId;
    sget-object v7, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@1d
    invoke-direct {p0, v7, v5}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForNextTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/Iterator;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    #@20
    move-result-object v4

    #@21
    .line 956
    .local v4, "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    invoke-static {v4}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;

    #@24
    move-result-object v7

    #@25
    iput-object v7, v3, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    #@27
    .line 958
    sget-object v7, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@29
    invoke-direct {p0, v7, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    #@2c
    move-result-object v4

    #@2d
    .line 959
    if-eqz v4, :cond_0

    #@2f
    .line 960
    invoke-static {v4}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/IconId;

    #@32
    move-result-object v2

    #@33
    .line 961
    .local v2, "confirmIconId":Lcom/android/internal/telephony/cat/IconId;
    iget-boolean v7, v2, Lcom/android/internal/telephony/cat/IconId;->selfExplanatory:Z

    #@35
    iput-boolean v7, v3, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    #@37
    .line 965
    .end local v2    # "confirmIconId":Lcom/android/internal/telephony/cat/IconId;
    :cond_0
    sget-object v7, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@39
    invoke-direct {p0, v7, v5}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForNextTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/Iterator;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    #@3c
    move-result-object v4

    #@3d
    .line 966
    if-eqz v4, :cond_1

    #@3f
    .line 967
    invoke-static {v4}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;

    #@42
    move-result-object v7

    #@43
    iput-object v7, v1, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    #@45
    .line 970
    :cond_1
    sget-object v7, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@47
    invoke-direct {p0, v7, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    #@4a
    move-result-object v4

    #@4b
    .line 971
    if-eqz v4, :cond_2

    #@4d
    .line 972
    invoke-static {v4}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/IconId;

    #@50
    move-result-object v0

    #@51
    .line 973
    .local v0, "callIconId":Lcom/android/internal/telephony/cat/IconId;
    iget-boolean v7, v0, Lcom/android/internal/telephony/cat/IconId;->selfExplanatory:Z

    #@53
    iput-boolean v7, v1, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    #@55
    .line 976
    .end local v0    # "callIconId":Lcom/android/internal/telephony/cat/IconId;
    :cond_2
    new-instance v7, Lcom/android/internal/telephony/cat/CallSetupParams;

    #@57
    invoke-direct {v7, p1, v3, v1}, Lcom/android/internal/telephony/cat/CallSetupParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;Lcom/android/internal/telephony/cat/TextMessage;)V

    #@5a
    iput-object v7, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    #@5c
    .line 978
    if-nez v2, :cond_3

    #@5e
    if-eqz v0, :cond_6

    #@60
    .line 979
    :cond_3
    iput v11, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoadState:I

    #@62
    .line 980
    new-array v6, v11, [I

    #@64
    .line 981
    .local v6, "recordNumbers":[I
    if-eqz v2, :cond_5

    #@66
    .line 982
    iget v7, v2, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I

    #@68
    .line 981
    :goto_0
    aput v7, v6, v10

    #@6a
    .line 983
    if-eqz v0, :cond_4

    #@6c
    iget v8, v0, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I

    #@6e
    :cond_4
    aput v8, v6, v9

    #@70
    .line 986
    iget-object v7, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    #@72
    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    #@75
    move-result-object v8

    #@76
    invoke-virtual {v7, v6, v8}, Lcom/android/internal/telephony/cat/IconLoader;->loadIcons([ILandroid/os/Message;)V

    #@79
    .line 988
    return v9

    #@7a
    :cond_5
    move v7, v8

    #@7b
    .line 982
    goto :goto_0

    #@7c
    .line 990
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
    .line 306
    .local p2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    #@3
    move-result v1

    #@4
    .line 307
    .local v1, "tagValue":I
    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    #@7
    move-result v2

    #@8
    if-eqz v2, :cond_1

    #@a
    .line 308
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Lcom/android/internal/telephony/cat/ComprehensionTlv;

    #@10
    .line 309
    .local v0, "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getTag()I

    #@13
    move-result v2

    #@14
    if-ne v2, v1, :cond_0

    #@16
    .line 310
    return-object v0

    #@17
    .line 313
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
    .line 288
    .local p2, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@3
    move-result-object v0

    #@4
    .line 289
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
    .line 274
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCaller:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    #@2
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    #@4
    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->sendMsgParamsDecoded(Lcom/android/internal/telephony/cat/ResultCode;Lcom/android/internal/telephony/cat/CommandParams;)V

    #@7
    .line 273
    return-void
.end method

.method private setIcons(Ljava/lang/Object;)Lcom/android/internal/telephony/cat/ResultCode;
    .locals 7
    .param p1, "data"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 239
    const/4 v2, 0x0

    #@3
    .line 240
    .local v2, "icons":[Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    #@4
    .line 242
    .local v1, "iconIndex":I
    if-nez p1, :cond_0

    #@6
    .line 243
    const-string/jumbo v4, "Optional Icon data is NULL"

    #@9
    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    #@c
    .line 244
    iget-object v4, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    #@e
    iput-boolean v6, v4, Lcom/android/internal/telephony/cat/CommandParams;->mLoadIconFailed:Z

    #@10
    .line 245
    iput-boolean v3, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mloadIcon:Z

    #@12
    .line 252
    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    #@14
    return-object v3

    #@15
    .line 254
    :cond_0
    iget v4, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoadState:I

    #@17
    packed-switch v4, :pswitch_data_0

    #@1a
    .line 270
    .end local v2    # "icons":[Landroid/graphics/Bitmap;
    .end local p1    # "data":Ljava/lang/Object;
    :cond_1
    :goto_0
    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    #@1c
    return-object v3

    #@1d
    .line 256
    .restart local v2    # "icons":[Landroid/graphics/Bitmap;
    .restart local p1    # "data":Ljava/lang/Object;
    :pswitch_0
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    #@1f
    check-cast p1, Landroid/graphics/Bitmap;

    #@21
    .end local p1    # "data":Ljava/lang/Object;
    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/cat/CommandParams;->setIcon(Landroid/graphics/Bitmap;)Z

    #@24
    goto :goto_0

    #@25
    .restart local p1    # "data":Ljava/lang/Object;
    :pswitch_1
    move-object v2, p1

    #@26
    .line 259
    check-cast v2, [Landroid/graphics/Bitmap;

    #@28
    .line 261
    .local v2, "icons":[Landroid/graphics/Bitmap;
    array-length v4, v2

    #@29
    :goto_1
    if-ge v3, v4, :cond_1

    #@2b
    aget-object v0, v2, v3

    #@2d
    .line 262
    .local v0, "icon":Landroid/graphics/Bitmap;
    iget-object v5, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    #@2f
    invoke-virtual {v5, v0}, Lcom/android/internal/telephony/cat/CommandParams;->setIcon(Landroid/graphics/Bitmap;)Z

    #@32
    .line 263
    if-nez v0, :cond_2

    #@34
    iget-boolean v5, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mloadIcon:Z

    #@36
    if-eqz v5, :cond_2

    #@38
    .line 264
    const-string/jumbo v5, "Optional Icon data is NULL while loading multi icons"

    #@3b
    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    #@3e
    .line 265
    iget-object v5, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    #@40
    iput-boolean v6, v5, Lcom/android/internal/telephony/cat/CommandParams;->mLoadIconFailed:Z

    #@42
    .line 261
    :cond_2
    add-int/lit8 v3, v3, 0x1

    #@44
    goto :goto_1

    #@45
    .line 254
    nop

    #@46
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
    .line 1053
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    #@3
    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/IconLoader;->dispose()V

    #@6
    .line 1054
    iput-object v1, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    #@8
    .line 1055
    iput-object v1, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    #@a
    .line 1056
    iput-object v1, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCaller:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    #@c
    .line 1057
    sput-object v1, Lcom/android/internal/telephony/cat/CommandParamsFactory;->sInstance:Lcom/android/internal/telephony/cat/CommandParamsFactory;

    #@e
    .line 1052
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 231
    iget v0, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 230
    :goto_0
    return-void

    #@6
    .line 233
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
    .line 231
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
    .line 121
    if-nez p1, :cond_0

    #@3
    .line 122
    return-void

    #@4
    .line 125
    :cond_0
    iput-object v5, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    #@6
    .line 126
    const/4 v5, 0x0

    #@7
    iput v5, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoadState:I

    #@9
    .line 128
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/BerTlv;->getTag()I

    #@c
    move-result v5

    #@d
    const/16 v6, 0xd0

    #@f
    if-eq v5, v6, :cond_1

    #@11
    .line 129
    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->CMD_TYPE_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    #@13
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->sendCmdParams(Lcom/android/internal/telephony/cat/ResultCode;)V

    #@16
    .line 130
    return-void

    #@17
    .line 132
    :cond_1
    const/4 v1, 0x0

    #@18
    .line 133
    .local v1, "cmdPending":Z
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/BerTlv;->getComprehensionTlvs()Ljava/util/List;

    #@1b
    move-result-object v3

    #@1c
    .line 135
    .local v3, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->processCommandDetails(Ljava/util/List;)Lcom/android/internal/telephony/cat/CommandDetails;

    #@1f
    move-result-object v0

    #@20
    .line 136
    .local v0, "cmdDet":Lcom/android/internal/telephony/cat/CommandDetails;
    if-nez v0, :cond_2

    #@22
    .line 137
    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->CMD_TYPE_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    #@24
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->sendCmdParams(Lcom/android/internal/telephony/cat/ResultCode;)V

    #@27
    .line 138
    return-void

    #@28
    .line 144
    :cond_2
    iget v5, v0, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    #@2a
    .line 143
    invoke-static {v5}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    #@2d
    move-result-object v2

    #@2e
    .line 145
    .local v2, "cmdType":Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    if-nez v2, :cond_3

    #@30
    .line 148
    new-instance v5, Lcom/android/internal/telephony/cat/CommandParams;

    #@32
    invoke-direct {v5, v0}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    #@35
    iput-object v5, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    #@37
    .line 149
    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    #@39
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->sendCmdParams(Lcom/android/internal/telephony/cat/ResultCode;)V

    #@3c
    .line 150
    return-void

    #@3d
    .line 154
    :cond_3
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/BerTlv;->isLengthValid()Z

    #@40
    move-result v5

    #@41
    if-nez v5, :cond_4

    #@43
    .line 155
    new-instance v5, Lcom/android/internal/telephony/cat/CommandParams;

    #@45
    invoke-direct {v5, v0}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    #@48
    iput-object v5, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    #@4a
    .line 156
    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    #@4c
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->sendCmdParams(Lcom/android/internal/telephony/cat/ResultCode;)V

    #@4f
    .line 157
    return-void

    #@50
    .line 161
    :cond_4
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->-getcom-android-internal-telephony-cat-AppInterface$CommandTypeSwitchesValues()[I

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
    .line 214
    new-instance v5, Lcom/android/internal/telephony/cat/CommandParams;

    #@5f
    invoke-direct {v5, v0}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    #@62
    iput-object v5, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    #@64
    .line 215
    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    #@66
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->sendCmdParams(Lcom/android/internal/telephony/cat/ResultCode;)V

    #@69
    .line 216
    return-void

    #@6a
    .line 163
    :pswitch_0
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->processSelectItem(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z
    :try_end_0
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_0 .. :try_end_0} :catch_0

    #@6d
    move-result v1

    #@6e
    .line 224
    .end local v1    # "cmdPending":Z
    :goto_0
    if-nez v1, :cond_5

    #@70
    .line 225
    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    #@72
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->sendCmdParams(Lcom/android/internal/telephony/cat/ResultCode;)V

    #@75
    .line 120
    :cond_5
    return-void

    #@76
    .line 166
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
    .line 169
    .local v1, "cmdPending":Z
    :pswitch_2
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->processDisplayText(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z

    #@7e
    move-result v1

    #@7f
    .local v1, "cmdPending":Z
    goto :goto_0

    #@80
    .line 172
    .local v1, "cmdPending":Z
    :pswitch_3
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->processSetUpIdleModeText(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z

    #@83
    move-result v1

    #@84
    .local v1, "cmdPending":Z
    goto :goto_0

    #@85
    .line 175
    .local v1, "cmdPending":Z
    :pswitch_4
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->processGetInkey(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z

    #@88
    move-result v1

    #@89
    .local v1, "cmdPending":Z
    goto :goto_0

    #@8a
    .line 178
    .local v1, "cmdPending":Z
    :pswitch_5
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->processGetInput(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z

    #@8d
    move-result v1

    #@8e
    .local v1, "cmdPending":Z
    goto :goto_0

    #@8f
    .line 184
    .local v1, "cmdPending":Z
    :pswitch_6
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->processEventNotify(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z

    #@92
    move-result v1

    #@93
    .local v1, "cmdPending":Z
    goto :goto_0

    #@94
    .line 188
    .local v1, "cmdPending":Z
    :pswitch_7
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->processSetupCall(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z

    #@97
    move-result v1

    #@98
    .local v1, "cmdPending":Z
    goto :goto_0

    #@99
    .line 191
    .local v1, "cmdPending":Z
    :pswitch_8
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->processRefresh(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z

    #@9c
    .line 192
    const/4 v1, 0x0

    #@9d
    .line 193
    goto :goto_0

    #@9e
    .line 195
    :pswitch_9
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->processLaunchBrowser(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z

    #@a1
    move-result v1

    #@a2
    .local v1, "cmdPending":Z
    goto :goto_0

    #@a3
    .line 198
    .local v1, "cmdPending":Z
    :pswitch_a
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->processPlayTone(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z

    #@a6
    move-result v1

    #@a7
    .local v1, "cmdPending":Z
    goto :goto_0

    #@a8
    .line 201
    .local v1, "cmdPending":Z
    :pswitch_b
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->processSetUpEventList(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z

    #@ab
    move-result v1

    #@ac
    .local v1, "cmdPending":Z
    goto :goto_0

    #@ad
    .line 204
    .local v1, "cmdPending":Z
    :pswitch_c
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->processProvideLocalInfo(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z

    #@b0
    move-result v1

    #@b1
    .local v1, "cmdPending":Z
    goto :goto_0

    #@b2
    .line 210
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
    .line 218
    .local v1, "cmdPending":Z
    :catch_0
    move-exception v4

    #@b8
    .line 219
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
    .line 220
    new-instance v5, Lcom/android/internal/telephony/cat/CommandParams;

    #@d1
    invoke-direct {v5, v0}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    #@d4
    iput-object v5, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    #@d6
    .line 221
    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/ResultException;->result()Lcom/android/internal/telephony/cat/ResultCode;

    #@d9
    move-result-object v5

    #@da
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->sendCmdParams(Lcom/android/internal/telephony/cat/ResultCode;)V

    #@dd
    .line 222
    return-void

    #@de
    .line 161
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
