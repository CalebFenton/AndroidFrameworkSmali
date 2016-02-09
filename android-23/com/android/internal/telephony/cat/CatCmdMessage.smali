.class public Lcom/android/internal/telephony/cat/CatCmdMessage;
.super Ljava/lang/Object;
.source "CatCmdMessage.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;,
        Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;,
        Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;,
        Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListConstants;,
        Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserTerminationCauses;,
        Lcom/android/internal/telephony/cat/CatCmdMessage$1;
    }
.end annotation


# static fields
.field private static synthetic -com_android_internal_telephony_cat_AppInterface$CommandTypeSwitchesValues:[I

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/telephony/cat/CatCmdMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

.field private mCallSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

.field mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

.field private mInput:Lcom/android/internal/telephony/cat/Input;

.field private mMenu:Lcom/android/internal/telephony/cat/Menu;

.field private mSetupEventListSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

.field private mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

.field private mToneSettings:Lcom/android/internal/telephony/cat/ToneSettings;


# direct methods
.method private static synthetic -getcom_android_internal_telephony_cat_AppInterface$CommandTypeSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->-com_android_internal_telephony_cat_AppInterface$CommandTypeSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->-com_android_internal_telephony_cat_AppInterface$CommandTypeSwitchesValues:[I

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
    sput-object v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->-com_android_internal_telephony_cat_AppInterface$CommandTypeSwitchesValues:[I

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
    .line 187
    new-instance v0, Lcom/android/internal/telephony/cat/CatCmdMessage$1;

    #@2
    invoke-direct {v0}, Lcom/android/internal/telephony/cat/CatCmdMessage$1;-><init>()V

    #@5
    sput-object v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 33
    iput-object v4, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    #@6
    .line 34
    iput-object v4, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mToneSettings:Lcom/android/internal/telephony/cat/ToneSettings;

    #@8
    .line 35
    iput-object v4, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCallSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    #@a
    .line 36
    iput-object v4, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mSetupEventListSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

    #@c
    .line 130
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@f
    move-result-object v2

    #@10
    check-cast v2, Lcom/android/internal/telephony/cat/CommandDetails;

    #@12
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    #@14
    .line 131
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@17
    move-result-object v2

    #@18
    check-cast v2, Lcom/android/internal/telephony/cat/TextMessage;

    #@1a
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    #@1c
    .line 132
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@1f
    move-result-object v2

    #@20
    check-cast v2, Lcom/android/internal/telephony/cat/Menu;

    #@22
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mMenu:Lcom/android/internal/telephony/cat/Menu;

    #@24
    .line 133
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@27
    move-result-object v2

    #@28
    check-cast v2, Lcom/android/internal/telephony/cat/Input;

    #@2a
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mInput:Lcom/android/internal/telephony/cat/Input;

    #@2c
    .line 134
    invoke-static {}, Lcom/android/internal/telephony/cat/CatCmdMessage;->-getcom_android_internal_telephony_cat_AppInterface$CommandTypeSwitchesValues()[I

    #@2f
    move-result-object v2

    #@30
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    #@33
    move-result-object v3

    #@34
    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    #@37
    move-result v3

    #@38
    aget v2, v2, v3

    #@3a
    sparse-switch v2, :sswitch_data_0

    #@3d
    .line 129
    :cond_0
    :goto_0
    return-void

    #@3e
    .line 136
    :sswitch_0
    new-instance v2, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    #@40
    invoke-direct {v2, p0}, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;-><init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    #@43
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    #@45
    .line 137
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    #@47
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@4a
    move-result-object v3

    #@4b
    iput-object v3, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;->url:Ljava/lang/String;

    #@4d
    .line 138
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    #@4f
    invoke-static {}, Lcom/android/internal/telephony/cat/LaunchBrowserMode;->values()[Lcom/android/internal/telephony/cat/LaunchBrowserMode;

    #@52
    move-result-object v3

    #@53
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@56
    move-result v4

    #@57
    aget-object v3, v3, v4

    #@59
    iput-object v3, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;->mode:Lcom/android/internal/telephony/cat/LaunchBrowserMode;

    #@5b
    goto :goto_0

    #@5c
    .line 141
    :sswitch_1
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@5f
    move-result-object v2

    #@60
    check-cast v2, Lcom/android/internal/telephony/cat/ToneSettings;

    #@62
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mToneSettings:Lcom/android/internal/telephony/cat/ToneSettings;

    #@64
    goto :goto_0

    #@65
    .line 144
    :sswitch_2
    new-instance v2, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    #@67
    invoke-direct {v2, p0}, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;-><init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    #@6a
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCallSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    #@6c
    .line 145
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCallSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    #@6e
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@71
    move-result-object v2

    #@72
    check-cast v2, Lcom/android/internal/telephony/cat/TextMessage;

    #@74
    iput-object v2, v3, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;->confirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    #@76
    .line 146
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCallSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    #@78
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@7b
    move-result-object v2

    #@7c
    check-cast v2, Lcom/android/internal/telephony/cat/TextMessage;

    #@7e
    iput-object v2, v3, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;->callMsg:Lcom/android/internal/telephony/cat/TextMessage;

    #@80
    goto :goto_0

    #@81
    .line 149
    :sswitch_3
    new-instance v2, Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

    #@83
    invoke-direct {v2, p0}, Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;-><init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    #@86
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mSetupEventListSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

    #@88
    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@8b
    move-result v1

    #@8c
    .line 151
    .local v1, "length":I
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mSetupEventListSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

    #@8e
    new-array v3, v1, [I

    #@90
    iput-object v3, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;->eventList:[I

    #@92
    .line 152
    const/4 v0, 0x0

    #@93
    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_0

    #@95
    .line 153
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mSetupEventListSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

    #@97
    iget-object v2, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;->eventList:[I

    #@99
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@9c
    move-result v3

    #@9d
    aput v3, v2, v0

    #@9f
    .line 152
    add-int/lit8 v0, v0, 0x1

    #@a1
    goto :goto_1

    #@a2
    .line 134
    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x13 -> :sswitch_3
    .end sparse-switch
.end method

.method constructor <init>(Lcom/android/internal/telephony/cat/CommandParams;)V
    .locals 4
    .param p1, "cmdParams"    # Lcom/android/internal/telephony/cat/CommandParams;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 33
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    #@6
    .line 34
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mToneSettings:Lcom/android/internal/telephony/cat/ToneSettings;

    #@8
    .line 35
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCallSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    #@a
    .line 36
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mSetupEventListSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

    #@c
    .line 74
    iget-object v2, p1, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    #@e
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    #@10
    .line 75
    invoke-static {}, Lcom/android/internal/telephony/cat/CatCmdMessage;->-getcom_android_internal_telephony_cat_AppInterface$CommandTypeSwitchesValues()[I

    #@13
    move-result-object v2

    #@14
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    #@17
    move-result-object v3

    #@18
    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    #@1b
    move-result v3

    #@1c
    aget v2, v2, v3

    #@1e
    packed-switch v2, :pswitch_data_0

    #@21
    .line 73
    .end local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    :goto_0
    :pswitch_0
    return-void

    #@22
    .line 78
    .restart local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    :pswitch_1
    check-cast p1, Lcom/android/internal/telephony/cat/SelectItemParams;

    #@24
    .end local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    iget-object v2, p1, Lcom/android/internal/telephony/cat/SelectItemParams;->mMenu:Lcom/android/internal/telephony/cat/Menu;

    #@26
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mMenu:Lcom/android/internal/telephony/cat/Menu;

    #@28
    goto :goto_0

    #@29
    .line 86
    .restart local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    :pswitch_2
    check-cast p1, Lcom/android/internal/telephony/cat/DisplayTextParams;

    #@2b
    .end local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    iget-object v2, p1, Lcom/android/internal/telephony/cat/DisplayTextParams;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    #@2d
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    #@2f
    goto :goto_0

    #@30
    .line 90
    .restart local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    :pswitch_3
    check-cast p1, Lcom/android/internal/telephony/cat/GetInputParams;

    #@32
    .end local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    iget-object v2, p1, Lcom/android/internal/telephony/cat/GetInputParams;->mInput:Lcom/android/internal/telephony/cat/Input;

    #@34
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mInput:Lcom/android/internal/telephony/cat/Input;

    #@36
    goto :goto_0

    #@37
    .restart local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    :pswitch_4
    move-object v2, p1

    #@38
    .line 93
    check-cast v2, Lcom/android/internal/telephony/cat/LaunchBrowserParams;

    #@3a
    iget-object v2, v2, Lcom/android/internal/telephony/cat/LaunchBrowserParams;->mConfirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    #@3c
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    #@3e
    .line 94
    new-instance v2, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    #@40
    invoke-direct {v2, p0}, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;-><init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    #@43
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    #@45
    .line 95
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    #@47
    move-object v2, p1

    #@48
    check-cast v2, Lcom/android/internal/telephony/cat/LaunchBrowserParams;

    #@4a
    iget-object v2, v2, Lcom/android/internal/telephony/cat/LaunchBrowserParams;->mUrl:Ljava/lang/String;

    #@4c
    iput-object v2, v3, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;->url:Ljava/lang/String;

    #@4e
    .line 96
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    #@50
    check-cast p1, Lcom/android/internal/telephony/cat/LaunchBrowserParams;

    #@52
    .end local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    iget-object v3, p1, Lcom/android/internal/telephony/cat/LaunchBrowserParams;->mMode:Lcom/android/internal/telephony/cat/LaunchBrowserMode;

    #@54
    iput-object v3, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;->mode:Lcom/android/internal/telephony/cat/LaunchBrowserMode;

    #@56
    goto :goto_0

    #@57
    .restart local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    :pswitch_5
    move-object v1, p1

    #@58
    .line 99
    check-cast v1, Lcom/android/internal/telephony/cat/PlayToneParams;

    #@5a
    .line 100
    .local v1, "params":Lcom/android/internal/telephony/cat/PlayToneParams;
    iget-object v2, v1, Lcom/android/internal/telephony/cat/PlayToneParams;->mSettings:Lcom/android/internal/telephony/cat/ToneSettings;

    #@5c
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mToneSettings:Lcom/android/internal/telephony/cat/ToneSettings;

    #@5e
    .line 101
    iget-object v2, v1, Lcom/android/internal/telephony/cat/PlayToneParams;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    #@60
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    #@62
    goto :goto_0

    #@63
    .line 104
    .end local v1    # "params":Lcom/android/internal/telephony/cat/PlayToneParams;
    :pswitch_6
    check-cast p1, Lcom/android/internal/telephony/cat/CallSetupParams;

    #@65
    .end local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    iget-object v2, p1, Lcom/android/internal/telephony/cat/CallSetupParams;->mConfirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    #@67
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    #@69
    goto :goto_0

    #@6a
    .line 107
    .restart local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    :pswitch_7
    new-instance v2, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    #@6c
    invoke-direct {v2, p0}, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;-><init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    #@6f
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCallSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    #@71
    .line 108
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCallSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    #@73
    move-object v2, p1

    #@74
    check-cast v2, Lcom/android/internal/telephony/cat/CallSetupParams;

    #@76
    iget-object v2, v2, Lcom/android/internal/telephony/cat/CallSetupParams;->mConfirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    #@78
    iput-object v2, v3, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;->confirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    #@7a
    .line 109
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCallSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    #@7c
    check-cast p1, Lcom/android/internal/telephony/cat/CallSetupParams;

    #@7e
    .end local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    iget-object v3, p1, Lcom/android/internal/telephony/cat/CallSetupParams;->mCallMsg:Lcom/android/internal/telephony/cat/TextMessage;

    #@80
    iput-object v3, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;->callMsg:Lcom/android/internal/telephony/cat/TextMessage;

    #@82
    goto :goto_0

    #@83
    .restart local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    :pswitch_8
    move-object v0, p1

    #@84
    .line 115
    check-cast v0, Lcom/android/internal/telephony/cat/BIPClientParams;

    #@86
    .line 116
    .local v0, "param":Lcom/android/internal/telephony/cat/BIPClientParams;
    iget-object v2, v0, Lcom/android/internal/telephony/cat/BIPClientParams;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    #@88
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    #@8a
    goto :goto_0

    #@8b
    .line 119
    .end local v0    # "param":Lcom/android/internal/telephony/cat/BIPClientParams;
    :pswitch_9
    new-instance v2, Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

    #@8d
    invoke-direct {v2, p0}, Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;-><init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    #@90
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mSetupEventListSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

    #@92
    .line 120
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mSetupEventListSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

    #@94
    check-cast p1, Lcom/android/internal/telephony/cat/SetEventListParams;

    #@96
    .end local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    iget-object v3, p1, Lcom/android/internal/telephony/cat/SetEventListParams;->mEventInfo:[I

    #@98
    iput-object v3, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;->eventList:[I

    #@9a
    goto :goto_0

    #@9b
    .line 75
    nop

    #@9c
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_2
        :pswitch_6
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_8
        :pswitch_5
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_1
        :pswitch_8
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_7
        :pswitch_9
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 201
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public geInput()Lcom/android/internal/telephony/cat/Input;
    .locals 1

    #@0
    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mInput:Lcom/android/internal/telephony/cat/Input;

    #@2
    return-object v0
.end method

.method public geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;
    .locals 1

    #@0
    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    #@2
    return-object v0
.end method

.method public getBrowserSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;
    .locals 1

    #@0
    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    #@2
    return-object v0
.end method

.method public getCallSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;
    .locals 1

    #@0
    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCallSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    #@2
    return-object v0
.end method

.method public getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    .locals 1

    #@0
    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    #@2
    iget v0, v0, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    #@4
    invoke-static {v0}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getMenu()Lcom/android/internal/telephony/cat/Menu;
    .locals 1

    #@0
    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mMenu:Lcom/android/internal/telephony/cat/Menu;

    #@2
    return-object v0
.end method

.method public getSetEventList()Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;
    .locals 1

    #@0
    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mSetupEventListSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

    #@2
    return-object v0
.end method

.method public getToneSettings()Lcom/android/internal/telephony/cat/ToneSettings;
    .locals 1

    #@0
    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mToneSettings:Lcom/android/internal/telephony/cat/ToneSettings;

    #@2
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 163
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    #@3
    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@6
    .line 164
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    #@8
    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@b
    .line 165
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mMenu:Lcom/android/internal/telephony/cat/Menu;

    #@d
    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@10
    .line 166
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mInput:Lcom/android/internal/telephony/cat/Input;

    #@12
    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@15
    .line 167
    invoke-static {}, Lcom/android/internal/telephony/cat/CatCmdMessage;->-getcom_android_internal_telephony_cat_AppInterface$CommandTypeSwitchesValues()[I

    #@18
    move-result-object v0

    #@19
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    #@20
    move-result v1

    #@21
    aget v0, v0, v1

    #@23
    sparse-switch v0, :sswitch_data_0

    #@26
    .line 162
    :goto_0
    return-void

    #@27
    .line 169
    :sswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    #@29
    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;->url:Ljava/lang/String;

    #@2b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@2e
    .line 170
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    #@30
    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;->mode:Lcom/android/internal/telephony/cat/LaunchBrowserMode;

    #@32
    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/LaunchBrowserMode;->ordinal()I

    #@35
    move-result v0

    #@36
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@39
    goto :goto_0

    #@3a
    .line 173
    :sswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mToneSettings:Lcom/android/internal/telephony/cat/ToneSettings;

    #@3c
    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@3f
    goto :goto_0

    #@40
    .line 176
    :sswitch_2
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCallSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    #@42
    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;->confirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    #@44
    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@47
    .line 177
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCallSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    #@49
    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;->callMsg:Lcom/android/internal/telephony/cat/TextMessage;

    #@4b
    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@4e
    goto :goto_0

    #@4f
    .line 180
    :sswitch_3
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mSetupEventListSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

    #@51
    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;->eventList:[I

    #@53
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    #@56
    goto :goto_0

    #@57
    .line 167
    nop

    #@58
    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x13 -> :sswitch_3
    .end sparse-switch
.end method
