.class public Lcom/android/internal/telephony/uicc/UiccCardApplication;
.super Ljava/lang/Object;
.source "UiccCardApplication.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/uicc/UiccCardApplication$1;
    }
.end annotation


# static fields
.field private static synthetic -com_android_internal_telephony_uicc_IccCardApplicationStatus$AppTypeSwitchesValues:[I = null

.field private static synthetic -com_android_internal_telephony_uicc_IccCardStatus$PinStateSwitchesValues:[I = null

.field public static final AUTH_CONTEXT_EAP_AKA:I = 0x81

.field public static final AUTH_CONTEXT_EAP_SIM:I = 0x80

.field public static final AUTH_CONTEXT_UNDEFINED:I = -0x1

.field private static final DBG:Z = true

.field private static final EVENT_CHANGE_FACILITY_FDN_DONE:I = 0x5

.field private static final EVENT_CHANGE_FACILITY_LOCK_DONE:I = 0x7

.field private static final EVENT_CHANGE_PIN1_DONE:I = 0x2

.field private static final EVENT_CHANGE_PIN2_DONE:I = 0x3

.field private static final EVENT_PIN1_PUK1_DONE:I = 0x1

.field private static final EVENT_PIN2_PUK2_DONE:I = 0x8

.field private static final EVENT_QUERY_FACILITY_FDN_DONE:I = 0x4

.field private static final EVENT_QUERY_FACILITY_LOCK_DONE:I = 0x6

.field private static final EVENT_RADIO_UNAVAILABLE:I = 0x9

.field private static final LOG_TAG:Ljava/lang/String; = "UiccCardApplication"


# instance fields
.field private mAid:Ljava/lang/String;

.field private mAppLabel:Ljava/lang/String;

.field private mAppState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

.field private mAppType:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

.field private mAuthContext:I

.field private mCi:Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field private mDesiredFdnEnabled:Z

.field private mDesiredPinLocked:Z

.field private mDestroyed:Z

.field private mHandler:Landroid/os/Handler;

.field private mIccFdnAvailable:Z

.field private mIccFdnEnabled:Z

.field private mIccFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

.field private mIccLockEnabled:Z

.field private mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

.field private final mLock:Ljava/lang/Object;

.field private mNetworkLockedRegistrants:Landroid/os/RegistrantList;

.field private mPersoSubState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

.field private mPin1Replaced:Z

.field private mPin1State:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

.field private mPin2State:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

.field private mPinLockedRegistrants:Landroid/os/RegistrantList;

.field private mReadyRegistrants:Landroid/os/RegistrantList;

.field private mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;


# direct methods
.method static synthetic -get0(Lcom/android/internal/telephony/uicc/UiccCardApplication;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mDestroyed:Z

    #@2
    return v0
.end method

.method private static synthetic -getcom_android_internal_telephony_uicc_IccCardApplicationStatus$AppTypeSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->-com_android_internal_telephony_uicc_IccCardApplicationStatus$AppTypeSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->-com_android_internal_telephony_uicc_IccCardApplicationStatus$AppTypeSwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->values()[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    #@10
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->ordinal()I

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
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_ISIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    #@19
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->ordinal()I

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
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    #@22
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->ordinal()I

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
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_SIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    #@2b
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->ordinal()I

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
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    #@34
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->ordinal()I

    #@37
    move-result v1

    #@38
    const/16 v2, 0xc

    #@3a
    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    #@3c
    :goto_4
    :try_start_5
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    #@3e
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->ordinal()I

    #@41
    move-result v1

    #@42
    const/4 v2, 0x5

    #@43
    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    #@45
    :goto_5
    sput-object v0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->-com_android_internal_telephony_uicc_IccCardApplicationStatus$AppTypeSwitchesValues:[I

    #@47
    return-object v0

    #@48
    :catch_0
    move-exception v1

    #@49
    goto :goto_5

    #@4a
    :catch_1
    move-exception v1

    #@4b
    goto :goto_4

    #@4c
    :catch_2
    move-exception v1

    #@4d
    goto :goto_3

    #@4e
    :catch_3
    move-exception v1

    #@4f
    goto :goto_2

    #@50
    :catch_4
    move-exception v1

    #@51
    goto :goto_1

    #@52
    :catch_5
    move-exception v1

    #@53
    goto :goto_0
.end method

.method private static synthetic -getcom_android_internal_telephony_uicc_IccCardStatus$PinStateSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->-com_android_internal_telephony_uicc_IccCardStatus$PinStateSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->-com_android_internal_telephony_uicc_IccCardStatus$PinStateSwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->values()[Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_DISABLED:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    #@10
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->ordinal()I

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
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_ENABLED_BLOCKED:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    #@19
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->ordinal()I

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
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_ENABLED_NOT_VERIFIED:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    #@22
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->ordinal()I

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
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_ENABLED_PERM_BLOCKED:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    #@2b
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->ordinal()I

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
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_ENABLED_VERIFIED:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    #@34
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->ordinal()I

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
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    #@3d
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->ordinal()I

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
    sput-object v0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->-com_android_internal_telephony_uicc_IccCardStatus$PinStateSwitchesValues:[I

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

.method static synthetic -set0(Lcom/android/internal/telephony/uicc/UiccCardApplication;Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    #@2
    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/os/AsyncResult;)I
    .locals 1
    .param p1, "ar"    # Landroid/os/AsyncResult;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->parsePinPukErrorResult(Landroid/os/AsyncResult;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->log(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->loge(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/os/AsyncResult;)V
    .locals 0
    .param p1, "ar"    # Landroid/os/AsyncResult;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->onChangeFacilityLock(Landroid/os/AsyncResult;)V

    #@3
    return-void
.end method

.method static synthetic -wrap4(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/os/AsyncResult;)V
    .locals 0
    .param p1, "ar"    # Landroid/os/AsyncResult;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->onChangeFdnDone(Landroid/os/AsyncResult;)V

    #@3
    return-void
.end method

.method static synthetic -wrap5(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/os/AsyncResult;)V
    .locals 0
    .param p1, "ar"    # Landroid/os/AsyncResult;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->onQueryFacilityLock(Landroid/os/AsyncResult;)V

    #@3
    return-void
.end method

.method static synthetic -wrap6(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/os/AsyncResult;)V
    .locals 0
    .param p1, "ar"    # Landroid/os/AsyncResult;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->onQueryFdnEnabled(Landroid/os/AsyncResult;)V

    #@3
    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/uicc/UiccCard;Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 4
    .param p1, "uiccCard"    # Lcom/android/internal/telephony/uicc/UiccCard;
    .param p2, "as"    # Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;
    .param p3, "c"    # Landroid/content/Context;
    .param p4, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 62
    new-instance v2, Ljava/lang/Object;

    #@7
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    #@a
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    #@c
    .line 77
    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccFdnAvailable:Z

    #@e
    .line 86
    new-instance v2, Landroid/os/RegistrantList;

    #@10
    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    #@13
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mReadyRegistrants:Landroid/os/RegistrantList;

    #@15
    .line 87
    new-instance v2, Landroid/os/RegistrantList;

    #@17
    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    #@1a
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    #@1c
    .line 88
    new-instance v2, Landroid/os/RegistrantList;

    #@1e
    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    #@21
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;

    #@23
    .line 367
    new-instance v2, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;

    #@25
    invoke-direct {v2, p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;)V

    #@28
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mHandler:Landroid/os/Handler;

    #@2a
    .line 94
    new-instance v2, Ljava/lang/StringBuilder;

    #@2c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@2f
    const-string/jumbo v3, "Creating UiccApp: "

    #@32
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v2

    #@36
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v2

    #@3a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v2

    #@3e
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->log(Ljava/lang/String;)V

    #@41
    .line 95
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    #@43
    .line 96
    iget-object v2, p2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_state:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    #@45
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    #@47
    .line 97
    iget-object v2, p2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    #@49
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppType:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    #@4b
    .line 98
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppType:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    #@4d
    invoke-static {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getAuthContext(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)I

    #@50
    move-result v2

    #@51
    iput v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAuthContext:I

    #@53
    .line 99
    iget-object v2, p2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->perso_substate:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    #@55
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPersoSubState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    #@57
    .line 100
    iget-object v2, p2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->aid:Ljava/lang/String;

    #@59
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAid:Ljava/lang/String;

    #@5b
    .line 101
    iget-object v2, p2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_label:Ljava/lang/String;

    #@5d
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppLabel:Ljava/lang/String;

    #@5f
    .line 102
    iget v2, p2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin1_replaced:I

    #@61
    if-eqz v2, :cond_1

    #@63
    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPin1Replaced:Z

    #@65
    .line 103
    iget-object v0, p2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin1:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    #@67
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPin1State:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    #@69
    .line 104
    iget-object v0, p2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin2:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    #@6b
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPin2State:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    #@6d
    .line 106
    iput-object p3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mContext:Landroid/content/Context;

    #@6f
    .line 107
    iput-object p4, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@71
    .line 109
    iget-object v0, p2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    #@73
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->createIccFileHandler(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@76
    move-result-object v0

    #@77
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@79
    .line 110
    iget-object v0, p2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    #@7b
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mContext:Landroid/content/Context;

    #@7d
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@7f
    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->createIccRecords(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/uicc/IccRecords;

    #@82
    move-result-object v0

    #@83
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@85
    .line 111
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    #@87
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    #@89
    if-ne v0, v1, :cond_0

    #@8b
    .line 112
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->queryFdn()V

    #@8e
    .line 113
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->queryPin1State()V

    #@91
    .line 115
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@93
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mHandler:Landroid/os/Handler;

    #@95
    const/16 v2, 0x9

    #@97
    const/4 v3, 0x0

    #@98
    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    #@9b
    .line 93
    return-void

    #@9c
    :cond_1
    move v0, v1

    #@9d
    .line 102
    goto :goto_0
.end method

.method private createIccFileHandler(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Lcom/android/internal/telephony/uicc/IccFileHandler;
    .locals 3
    .param p1, "type"    # Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    #@0
    .prologue
    .line 193
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->-getcom_android_internal_telephony_uicc_IccCardApplicationStatus$AppTypeSwitchesValues()[I

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->ordinal()I

    #@7
    move-result v1

    #@8
    aget v0, v0, v1

    #@a
    packed-switch v0, :pswitch_data_0

    #@d
    .line 205
    const/4 v0, 0x0

    #@e
    return-object v0

    #@f
    .line 195
    :pswitch_0
    new-instance v0, Lcom/android/internal/telephony/uicc/SIMFileHandler;

    #@11
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAid:Ljava/lang/String;

    #@13
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@15
    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/SIMFileHandler;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    #@18
    return-object v0

    #@19
    .line 197
    :pswitch_1
    new-instance v0, Lcom/android/internal/telephony/uicc/RuimFileHandler;

    #@1b
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAid:Ljava/lang/String;

    #@1d
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@1f
    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/RuimFileHandler;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    #@22
    return-object v0

    #@23
    .line 199
    :pswitch_2
    new-instance v0, Lcom/android/internal/telephony/uicc/UsimFileHandler;

    #@25
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAid:Ljava/lang/String;

    #@27
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@29
    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/UsimFileHandler;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    #@2c
    return-object v0

    #@2d
    .line 201
    :pswitch_3
    new-instance v0, Lcom/android/internal/telephony/uicc/CsimFileHandler;

    #@2f
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAid:Ljava/lang/String;

    #@31
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@33
    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/CsimFileHandler;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    #@36
    return-object v0

    #@37
    .line 203
    :pswitch_4
    new-instance v0, Lcom/android/internal/telephony/uicc/IsimFileHandler;

    #@39
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAid:Ljava/lang/String;

    #@3b
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@3d
    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/IsimFileHandler;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    #@40
    return-object v0

    #@41
    .line 193
    nop

    #@42
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private createIccRecords(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/uicc/IccRecords;
    .locals 1
    .param p1, "type"    # Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    .param p2, "c"    # Landroid/content/Context;
    .param p3, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    #@0
    .prologue
    .line 180
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    #@2
    if-eq p1, v0, :cond_0

    #@4
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_SIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    #@6
    if-ne p1, v0, :cond_1

    #@8
    .line 181
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/uicc/SIMRecords;

    #@a
    invoke-direct {v0, p0, p2, p3}, Lcom/android/internal/telephony/uicc/SIMRecords;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    #@d
    return-object v0

    #@e
    .line 182
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    #@10
    if-eq p1, v0, :cond_2

    #@12
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    #@14
    if-ne p1, v0, :cond_3

    #@16
    .line 183
    :cond_2
    new-instance v0, Lcom/android/internal/telephony/uicc/RuimRecords;

    #@18
    invoke-direct {v0, p0, p2, p3}, Lcom/android/internal/telephony/uicc/RuimRecords;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    #@1b
    return-object v0

    #@1c
    .line 184
    :cond_3
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_ISIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    #@1e
    if-ne p1, v0, :cond_4

    #@20
    .line 185
    new-instance v0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    #@22
    invoke-direct {v0, p0, p2, p3}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    #@25
    return-object v0

    #@26
    .line 188
    :cond_4
    const/4 v0, 0x0

    #@27
    return-object v0
.end method

.method private static getAuthContext(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)I
    .locals 3
    .param p0, "appType"    # Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    #@0
    .prologue
    .line 574
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->-getcom_android_internal_telephony_uicc_IccCardApplicationStatus$AppTypeSwitchesValues()[I

    #@3
    move-result-object v1

    #@4
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->ordinal()I

    #@7
    move-result v2

    #@8
    aget v1, v1, v2

    #@a
    packed-switch v1, :pswitch_data_0

    #@d
    .line 584
    const/4 v0, -0x1

    #@e
    .line 588
    .local v0, "authContext":I
    :goto_0
    return v0

    #@f
    .line 576
    .end local v0    # "authContext":I
    :pswitch_0
    const/16 v0, 0x80

    #@11
    .line 577
    .restart local v0    # "authContext":I
    goto :goto_0

    #@12
    .line 580
    .end local v0    # "authContext":I
    :pswitch_1
    const/16 v0, 0x81

    #@14
    .line 581
    .restart local v0    # "authContext":I
    goto :goto_0

    #@15
    .line 574
    nop

    #@16
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 868
    const-string/jumbo v0, "UiccCardApplication"

    #@3
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 867
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 872
    const-string/jumbo v0, "UiccCardApplication"

    #@3
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 871
    return-void
.end method

.method private notifyNetworkLockedRegistrantsIfNeeded(Landroid/os/Registrant;)V
    .locals 3
    .param p1, "r"    # Landroid/os/Registrant;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 530
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mDestroyed:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 531
    return-void

    #@6
    .line 534
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    #@8
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_SUBSCRIPTION_PERSO:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    #@a
    if-ne v0, v1, :cond_1

    #@c
    .line 535
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPersoSubState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    #@e
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    #@10
    if-ne v0, v1, :cond_1

    #@12
    .line 536
    if-nez p1, :cond_2

    #@14
    .line 537
    const-string/jumbo v0, "Notifying registrants: NETWORK_LOCKED"

    #@17
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->log(Ljava/lang/String;)V

    #@1a
    .line 538
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;

    #@1c
    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@1f
    .line 529
    :cond_1
    :goto_0
    return-void

    #@20
    .line 540
    :cond_2
    const-string/jumbo v0, "Notifying 1 registrant: NETWORK_LOCED"

    #@23
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->log(Ljava/lang/String;)V

    #@26
    .line 541
    new-instance v0, Landroid/os/AsyncResult;

    #@28
    invoke-direct {v0, v2, v2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@2b
    invoke-virtual {p1, v0}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    #@2e
    goto :goto_0
.end method

.method private notifyPinLockedRegistrantsIfNeeded(Landroid/os/Registrant;)V
    .locals 3
    .param p1, "r"    # Landroid/os/Registrant;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 502
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mDestroyed:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 503
    return-void

    #@6
    .line 506
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    #@8
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_PIN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    #@a
    if-eq v0, v1, :cond_1

    #@c
    .line 507
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    #@e
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    #@10
    if-ne v0, v1, :cond_4

    #@12
    .line 508
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPin1State:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    #@14
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_ENABLED_VERIFIED:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    #@16
    if-eq v0, v1, :cond_2

    #@18
    .line 509
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPin1State:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    #@1a
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_DISABLED:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    #@1c
    if-ne v0, v1, :cond_3

    #@1e
    .line 510
    :cond_2
    const-string/jumbo v0, "Sanity check failed! APPSTATE is locked while PIN1 is not!!!"

    #@21
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->loge(Ljava/lang/String;)V

    #@24
    .line 512
    return-void

    #@25
    .line 514
    :cond_3
    if-nez p1, :cond_5

    #@27
    .line 515
    const-string/jumbo v0, "Notifying registrants: LOCKED"

    #@2a
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->log(Ljava/lang/String;)V

    #@2d
    .line 516
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    #@2f
    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@32
    .line 501
    :cond_4
    :goto_0
    return-void

    #@33
    .line 518
    :cond_5
    const-string/jumbo v0, "Notifying 1 registrant: LOCKED"

    #@36
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->log(Ljava/lang/String;)V

    #@39
    .line 519
    new-instance v0, Landroid/os/AsyncResult;

    #@3b
    invoke-direct {v0, v2, v2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@3e
    invoke-virtual {p1, v0}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    #@41
    goto :goto_0
.end method

.method private notifyReadyRegistrantsIfNeeded(Landroid/os/Registrant;)V
    .locals 3
    .param p1, "r"    # Landroid/os/Registrant;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 475
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mDestroyed:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 476
    return-void

    #@6
    .line 478
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    #@8
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    #@a
    if-ne v0, v1, :cond_3

    #@c
    .line 479
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPin1State:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    #@e
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_ENABLED_NOT_VERIFIED:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    #@10
    if-eq v0, v1, :cond_1

    #@12
    .line 480
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPin1State:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    #@14
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_ENABLED_BLOCKED:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    #@16
    if-ne v0, v1, :cond_2

    #@18
    .line 482
    :cond_1
    const-string/jumbo v0, "Sanity check failed! APPSTATE is ready while PIN1 is not verified!!!"

    #@1b
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->loge(Ljava/lang/String;)V

    #@1e
    .line 484
    return-void

    #@1f
    .line 481
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPin1State:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    #@21
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_ENABLED_PERM_BLOCKED:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    #@23
    if-eq v0, v1, :cond_1

    #@25
    .line 486
    if-nez p1, :cond_4

    #@27
    .line 487
    const-string/jumbo v0, "Notifying registrants: READY"

    #@2a
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->log(Ljava/lang/String;)V

    #@2d
    .line 488
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mReadyRegistrants:Landroid/os/RegistrantList;

    #@2f
    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@32
    .line 474
    :cond_3
    :goto_0
    return-void

    #@33
    .line 490
    :cond_4
    const-string/jumbo v0, "Notifying 1 registrant: READY"

    #@36
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->log(Ljava/lang/String;)V

    #@39
    .line 491
    new-instance v0, Landroid/os/AsyncResult;

    #@3b
    invoke-direct {v0, v2, v2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@3e
    invoke-virtual {p1, v0}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    #@41
    goto :goto_0
.end method

.method private onChangeFacilityLock(Landroid/os/AsyncResult;)V
    .locals 5
    .param p1, "ar"    # Landroid/os/AsyncResult;

    #@0
    .prologue
    .line 331
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v3

    #@3
    .line 332
    const/4 v0, -0x1

    #@4
    .line 334
    .local v0, "attemptsRemaining":I
    :try_start_0
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@6
    if-nez v2, :cond_0

    #@8
    .line 335
    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mDesiredPinLocked:Z

    #@a
    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccLockEnabled:Z

    #@c
    .line 336
    new-instance v2, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v4, "EVENT_CHANGE_FACILITY_LOCK_DONE: mIccLockEnabled= "

    #@14
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    .line 337
    iget-boolean v4, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccLockEnabled:Z

    #@1a
    .line 336
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->log(Ljava/lang/String;)V

    #@25
    .line 342
    :goto_0
    iget-object v1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    #@27
    check-cast v1, Landroid/os/Message;

    #@29
    .line 343
    .local v1, "response":Landroid/os/Message;
    invoke-static {v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    #@2c
    move-result-object v2

    #@2d
    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@2f
    iput-object v4, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@31
    .line 344
    iput v0, v1, Landroid/os/Message;->arg1:I

    #@33
    .line 345
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@36
    monitor-exit v3

    #@37
    .line 330
    return-void

    #@38
    .line 339
    .end local v1    # "response":Landroid/os/Message;
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->parsePinPukErrorResult(Landroid/os/AsyncResult;)I

    #@3b
    move-result v0

    #@3c
    .line 340
    new-instance v2, Ljava/lang/StringBuilder;

    #@3e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@41
    const-string/jumbo v4, "Error change facility lock with exception "

    #@44
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v2

    #@48
    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@4a
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v2

    #@4e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@51
    move-result-object v2

    #@52
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->loge(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@55
    goto :goto_0

    #@56
    .line 331
    :catchall_0
    move-exception v2

    #@57
    monitor-exit v3

    #@58
    throw v2
.end method

.method private onChangeFdnDone(Landroid/os/AsyncResult;)V
    .locals 5
    .param p1, "ar"    # Landroid/os/AsyncResult;

    #@0
    .prologue
    .line 251
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v3

    #@3
    .line 252
    const/4 v0, -0x1

    #@4
    .line 254
    .local v0, "attemptsRemaining":I
    :try_start_0
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@6
    if-nez v2, :cond_0

    #@8
    .line 255
    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mDesiredFdnEnabled:Z

    #@a
    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccFdnEnabled:Z

    #@c
    .line 256
    new-instance v2, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v4, "EVENT_CHANGE_FACILITY_FDN_DONE: mIccFdnEnabled="

    #@14
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    .line 257
    iget-boolean v4, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccFdnEnabled:Z

    #@1a
    .line 256
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->log(Ljava/lang/String;)V

    #@25
    .line 262
    :goto_0
    iget-object v1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    #@27
    check-cast v1, Landroid/os/Message;

    #@29
    .line 263
    .local v1, "response":Landroid/os/Message;
    iput v0, v1, Landroid/os/Message;->arg1:I

    #@2b
    .line 264
    invoke-static {v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    #@2e
    move-result-object v2

    #@2f
    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@31
    iput-object v4, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@33
    .line 265
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@36
    monitor-exit v3

    #@37
    .line 250
    return-void

    #@38
    .line 259
    .end local v1    # "response":Landroid/os/Message;
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->parsePinPukErrorResult(Landroid/os/AsyncResult;)I

    #@3b
    move-result v0

    #@3c
    .line 260
    new-instance v2, Ljava/lang/StringBuilder;

    #@3e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@41
    const-string/jumbo v4, "Error change facility fdn with exception "

    #@44
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v2

    #@48
    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@4a
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v2

    #@4e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@51
    move-result-object v2

    #@52
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->loge(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@55
    goto :goto_0

    #@56
    .line 251
    :catchall_0
    move-exception v2

    #@57
    monitor-exit v3

    #@58
    throw v2
.end method

.method private onQueryFacilityLock(Landroid/os/AsyncResult;)V
    .locals 5
    .param p1, "ar"    # Landroid/os/AsyncResult;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 281
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    #@3
    monitor-enter v2

    #@4
    .line 282
    :try_start_0
    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@6
    if-eqz v3, :cond_0

    #@8
    .line 283
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v3, "Error in querying facility lock:"

    #@10
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@16
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    monitor-exit v2

    #@22
    .line 284
    return-void

    #@23
    .line 287
    :cond_0
    :try_start_1
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@25
    check-cast v0, [I

    #@27
    .line 288
    .local v0, "ints":[I
    array-length v3, v0

    #@28
    if-eqz v3, :cond_5

    #@2a
    .line 289
    new-instance v3, Ljava/lang/StringBuilder;

    #@2c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@2f
    const-string/jumbo v4, "Query facility lock : "

    #@32
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v3

    #@36
    const/4 v4, 0x0

    #@37
    aget v4, v0, v4

    #@39
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v3

    #@3d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v3

    #@41
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->log(Ljava/lang/String;)V

    #@44
    .line 291
    const/4 v3, 0x0

    #@45
    aget v3, v0, v3

    #@47
    if-eqz v3, :cond_1

    #@49
    const/4 v1, 0x1

    #@4a
    :cond_1
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccLockEnabled:Z

    #@4c
    .line 293
    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccLockEnabled:Z

    #@4e
    if-eqz v1, :cond_2

    #@50
    .line 294
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    #@52
    invoke-virtual {v1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@55
    .line 303
    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->-getcom_android_internal_telephony_uicc_IccCardStatus$PinStateSwitchesValues()[I

    #@58
    move-result-object v1

    #@59
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPin1State:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    #@5b
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->ordinal()I

    #@5e
    move-result v3

    #@5f
    aget v1, v1, v3

    #@61
    packed-switch v1, :pswitch_data_0

    #@64
    .line 320
    :cond_3
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@66
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@69
    const-string/jumbo v3, "Ignoring: pin1state="

    #@6c
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v1

    #@70
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPin1State:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    #@72
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v1

    #@76
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@79
    move-result-object v1

    #@7a
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@7d
    :cond_4
    :goto_1
    monitor-exit v2

    #@7e
    .line 280
    return-void

    #@7f
    .line 305
    :pswitch_0
    :try_start_2
    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccLockEnabled:Z

    #@81
    if-eqz v1, :cond_4

    #@83
    .line 306
    const-string/jumbo v1, "QUERY_FACILITY_LOCK:enabled GET_SIM_STATUS.Pin1:disabled. Fixme"

    #@86
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->loge(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@89
    goto :goto_1

    #@8a
    .line 281
    .end local v0    # "ints":[I
    :catchall_0
    move-exception v1

    #@8b
    monitor-exit v2

    #@8c
    throw v1

    #@8d
    .line 314
    .restart local v0    # "ints":[I
    :pswitch_1
    :try_start_3
    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccLockEnabled:Z

    #@8f
    if-nez v1, :cond_3

    #@91
    .line 315
    const-string/jumbo v1, "QUERY_FACILITY_LOCK:disabled GET_SIM_STATUS.Pin1:enabled. Fixme"

    #@94
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->loge(Ljava/lang/String;)V

    #@97
    goto :goto_0

    #@98
    .line 324
    :cond_5
    const-string/jumbo v1, "Bogus facility lock response"

    #@9b
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->loge(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@9e
    goto :goto_1

    #@9f
    .line 303
    nop

    #@a0
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private onQueryFdnEnabled(Landroid/os/AsyncResult;)V
    .locals 6
    .param p1, "ar"    # Landroid/os/AsyncResult;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 226
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    #@4
    monitor-enter v3

    #@5
    .line 227
    :try_start_0
    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@7
    if-eqz v4, :cond_0

    #@9
    .line 228
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v2, "Error in querying facility lock:"

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    monitor-exit v3

    #@23
    .line 229
    return-void

    #@24
    .line 232
    :cond_0
    :try_start_1
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@26
    check-cast v0, [I

    #@28
    .line 233
    .local v0, "result":[I
    array-length v4, v0

    #@29
    if-eqz v4, :cond_3

    #@2b
    .line 235
    const/4 v4, 0x0

    #@2c
    aget v4, v0, v4

    #@2e
    const/4 v5, 0x2

    #@2f
    if-ne v4, v5, :cond_1

    #@31
    .line 236
    const/4 v1, 0x0

    #@32
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccFdnEnabled:Z

    #@34
    .line 237
    const/4 v1, 0x0

    #@35
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccFdnAvailable:Z

    #@37
    .line 242
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@39
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@3c
    const-string/jumbo v2, "Query facility FDN : FDN service available: "

    #@3f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v1

    #@43
    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccFdnAvailable:Z

    #@45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@48
    move-result-object v1

    #@49
    .line 243
    const-string/jumbo v2, " enabled: "

    #@4c
    .line 242
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v1

    #@50
    .line 243
    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccFdnEnabled:Z

    #@52
    .line 242
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@55
    move-result-object v1

    #@56
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@59
    move-result-object v1

    #@5a
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@5d
    :goto_1
    monitor-exit v3

    #@5e
    .line 225
    return-void

    #@5f
    .line 239
    :cond_1
    const/4 v4, 0x0

    #@60
    :try_start_2
    aget v4, v0, v4

    #@62
    if-ne v4, v1, :cond_2

    #@64
    :goto_2
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccFdnEnabled:Z

    #@66
    .line 240
    const/4 v1, 0x1

    #@67
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccFdnAvailable:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@69
    goto :goto_0

    #@6a
    .line 226
    .end local v0    # "result":[I
    :catchall_0
    move-exception v1

    #@6b
    monitor-exit v3

    #@6c
    throw v1

    #@6d
    .restart local v0    # "result":[I
    :cond_2
    move v1, v2

    #@6e
    .line 239
    goto :goto_2

    #@6f
    .line 245
    :cond_3
    :try_start_3
    const-string/jumbo v1, "Bogus facility lock response"

    #@72
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->loge(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@75
    goto :goto_1
.end method

.method private parsePinPukErrorResult(Landroid/os/AsyncResult;)I
    .locals 5
    .param p1, "ar"    # Landroid/os/AsyncResult;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 353
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@3
    check-cast v2, [I

    #@5
    .line 354
    .local v2, "result":[I
    if-nez v2, :cond_0

    #@7
    .line 355
    const/4 v3, -0x1

    #@8
    return v3

    #@9
    .line 357
    :cond_0
    array-length v1, v2

    #@a
    .line 358
    .local v1, "length":I
    const/4 v0, -0x1

    #@b
    .line 359
    .local v0, "attemptsRemaining":I
    if-lez v1, :cond_1

    #@d
    .line 360
    aget v0, v2, v3

    #@f
    .line 362
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v4, "parsePinPukErrorResult: attemptsRemaining="

    #@17
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v3

    #@1b
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v3

    #@1f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v3

    #@23
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->log(Ljava/lang/String;)V

    #@26
    .line 363
    return v0
.end method

.method private queryPin1State()V
    .locals 7

    #@0
    .prologue
    .line 271
    const/4 v3, 0x7

    #@1
    .line 274
    .local v3, "serviceClassX":I
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@3
    .line 275
    const-string/jumbo v1, "SC"

    #@6
    const-string/jumbo v2, ""

    #@9
    .line 276
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAid:Ljava/lang/String;

    #@b
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mHandler:Landroid/os/Handler;

    #@d
    const/4 v6, 0x6

    #@e
    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@11
    move-result-object v5

    #@12
    .line 274
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/CommandsInterface;->queryFacilityLockForApp(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    #@15
    .line 270
    return-void
.end method


# virtual methods
.method public changeIccFdnPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 5
    .param p1, "oldPassword"    # Ljava/lang/String;
    .param p2, "newPassword"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    .line 834
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 835
    :try_start_0
    const-string/jumbo v0, "changeIccFdnPassword"

    #@6
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->log(Ljava/lang/String;)V

    #@9
    .line 836
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@b
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAid:Ljava/lang/String;

    #@d
    .line 837
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mHandler:Landroid/os/Handler;

    #@f
    const/4 v4, 0x3

    #@10
    invoke-virtual {v3, v4, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@13
    move-result-object v3

    #@14
    .line 836
    invoke-interface {v0, p1, p2, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->changeIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    monitor-exit v1

    #@18
    .line 833
    return-void

    #@19
    .line 834
    :catchall_0
    move-exception v0

    #@1a
    monitor-exit v1

    #@1b
    throw v0
.end method

.method public changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 5
    .param p1, "oldPassword"    # Ljava/lang/String;
    .param p2, "newPassword"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    .line 814
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 815
    :try_start_0
    const-string/jumbo v0, "changeIccLockPassword"

    #@6
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->log(Ljava/lang/String;)V

    #@9
    .line 816
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@b
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAid:Ljava/lang/String;

    #@d
    .line 817
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mHandler:Landroid/os/Handler;

    #@f
    const/4 v4, 0x2

    #@10
    invoke-virtual {v3, v4, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@13
    move-result-object v3

    #@14
    .line 816
    invoke-interface {v0, p1, p2, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->changeIccPinForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    monitor-exit v1

    #@18
    .line 813
    return-void

    #@19
    .line 814
    :catchall_0
    move-exception v0

    #@1a
    monitor-exit v1

    #@1b
    throw v0
.end method

.method dispose()V
    .locals 3

    #@0
    .prologue
    .line 168
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 169
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppType:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    #@a
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v0

    #@e
    const-string/jumbo v2, " being Disposed"

    #@11
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v0

    #@15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->log(Ljava/lang/String;)V

    #@1c
    .line 170
    const/4 v0, 0x1

    #@1d
    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mDestroyed:Z

    #@1f
    .line 171
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@21
    if-eqz v0, :cond_0

    #@23
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@25
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->dispose()V

    #@28
    .line 172
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@2a
    if-eqz v0, :cond_1

    #@2c
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@2e
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccFileHandler;->dispose()V

    #@31
    .line 173
    :cond_1
    const/4 v0, 0x0

    #@32
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@34
    .line 174
    const/4 v0, 0x0

    #@35
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@37
    .line 175
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@39
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mHandler:Landroid/os/Handler;

    #@3b
    invoke-interface {v0, v2}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForNotAvailable(Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3e
    monitor-exit v1

    #@3f
    .line 167
    return-void

    #@40
    .line 168
    :catchall_0
    move-exception v0

    #@41
    monitor-exit v1

    #@42
    throw v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 876
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v2, "UiccCardApplication: "

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
    .line 877
    new-instance v1, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v2, " mUiccCard="

    #@1f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

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
    .line 878
    new-instance v1, Ljava/lang/StringBuilder;

    #@32
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@35
    const-string/jumbo v2, " mAppState="

    #@38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v1

    #@3c
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

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
    .line 879
    new-instance v1, Ljava/lang/StringBuilder;

    #@4b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@4e
    const-string/jumbo v2, " mAppType="

    #@51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v1

    #@55
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppType:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    #@57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v1

    #@5b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5e
    move-result-object v1

    #@5f
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@62
    .line 880
    new-instance v1, Ljava/lang/StringBuilder;

    #@64
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@67
    const-string/jumbo v2, " mPersoSubState="

    #@6a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v1

    #@6e
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPersoSubState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    #@70
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v1

    #@74
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@77
    move-result-object v1

    #@78
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@7b
    .line 881
    new-instance v1, Ljava/lang/StringBuilder;

    #@7d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@80
    const-string/jumbo v2, " mAid="

    #@83
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v1

    #@87
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAid:Ljava/lang/String;

    #@89
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v1

    #@8d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@90
    move-result-object v1

    #@91
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@94
    .line 882
    new-instance v1, Ljava/lang/StringBuilder;

    #@96
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@99
    const-string/jumbo v2, " mAppLabel="

    #@9c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9f
    move-result-object v1

    #@a0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppLabel:Ljava/lang/String;

    #@a2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a5
    move-result-object v1

    #@a6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a9
    move-result-object v1

    #@aa
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@ad
    .line 883
    new-instance v1, Ljava/lang/StringBuilder;

    #@af
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b2
    const-string/jumbo v2, " mPin1Replaced="

    #@b5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b8
    move-result-object v1

    #@b9
    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPin1Replaced:Z

    #@bb
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@be
    move-result-object v1

    #@bf
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c2
    move-result-object v1

    #@c3
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@c6
    .line 884
    new-instance v1, Ljava/lang/StringBuilder;

    #@c8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@cb
    const-string/jumbo v2, " mPin1State="

    #@ce
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d1
    move-result-object v1

    #@d2
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPin1State:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    #@d4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@d7
    move-result-object v1

    #@d8
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@db
    move-result-object v1

    #@dc
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@df
    .line 885
    new-instance v1, Ljava/lang/StringBuilder;

    #@e1
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@e4
    const-string/jumbo v2, " mPin2State="

    #@e7
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ea
    move-result-object v1

    #@eb
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPin2State:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    #@ed
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f0
    move-result-object v1

    #@f1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f4
    move-result-object v1

    #@f5
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@f8
    .line 886
    new-instance v1, Ljava/lang/StringBuilder;

    #@fa
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@fd
    const-string/jumbo v2, " mIccFdnEnabled="

    #@100
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@103
    move-result-object v1

    #@104
    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccFdnEnabled:Z

    #@106
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@109
    move-result-object v1

    #@10a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10d
    move-result-object v1

    #@10e
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@111
    .line 887
    new-instance v1, Ljava/lang/StringBuilder;

    #@113
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@116
    const-string/jumbo v2, " mDesiredFdnEnabled="

    #@119
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11c
    move-result-object v1

    #@11d
    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mDesiredFdnEnabled:Z

    #@11f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@122
    move-result-object v1

    #@123
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@126
    move-result-object v1

    #@127
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@12a
    .line 888
    new-instance v1, Ljava/lang/StringBuilder;

    #@12c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@12f
    const-string/jumbo v2, " mIccLockEnabled="

    #@132
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@135
    move-result-object v1

    #@136
    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccLockEnabled:Z

    #@138
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@13b
    move-result-object v1

    #@13c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13f
    move-result-object v1

    #@140
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@143
    .line 889
    new-instance v1, Ljava/lang/StringBuilder;

    #@145
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@148
    const-string/jumbo v2, " mDesiredPinLocked="

    #@14b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14e
    move-result-object v1

    #@14f
    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mDesiredPinLocked:Z

    #@151
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@154
    move-result-object v1

    #@155
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@158
    move-result-object v1

    #@159
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@15c
    .line 890
    new-instance v1, Ljava/lang/StringBuilder;

    #@15e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@161
    const-string/jumbo v2, " mCi="

    #@164
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@167
    move-result-object v1

    #@168
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@16a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@16d
    move-result-object v1

    #@16e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@171
    move-result-object v1

    #@172
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@175
    .line 891
    new-instance v1, Ljava/lang/StringBuilder;

    #@177
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@17a
    const-string/jumbo v2, " mIccRecords="

    #@17d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@180
    move-result-object v1

    #@181
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@183
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@186
    move-result-object v1

    #@187
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18a
    move-result-object v1

    #@18b
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@18e
    .line 892
    new-instance v1, Ljava/lang/StringBuilder;

    #@190
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@193
    const-string/jumbo v2, " mIccFh="

    #@196
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@199
    move-result-object v1

    #@19a
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@19c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@19f
    move-result-object v1

    #@1a0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a3
    move-result-object v1

    #@1a4
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1a7
    .line 893
    new-instance v1, Ljava/lang/StringBuilder;

    #@1a9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1ac
    const-string/jumbo v2, " mDestroyed="

    #@1af
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b2
    move-result-object v1

    #@1b3
    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mDestroyed:Z

    #@1b5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1b8
    move-result-object v1

    #@1b9
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1bc
    move-result-object v1

    #@1bd
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1c0
    .line 894
    new-instance v1, Ljava/lang/StringBuilder;

    #@1c2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1c5
    const-string/jumbo v2, " mReadyRegistrants: size="

    #@1c8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1cb
    move-result-object v1

    #@1cc
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mReadyRegistrants:Landroid/os/RegistrantList;

    #@1ce
    invoke-virtual {v2}, Landroid/os/RegistrantList;->size()I

    #@1d1
    move-result v2

    #@1d2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1d5
    move-result-object v1

    #@1d6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d9
    move-result-object v1

    #@1da
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1dd
    .line 895
    const/4 v0, 0x0

    #@1de
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mReadyRegistrants:Landroid/os/RegistrantList;

    #@1e0
    invoke-virtual {v1}, Landroid/os/RegistrantList;->size()I

    #@1e3
    move-result v1

    #@1e4
    if-ge v0, v1, :cond_0

    #@1e6
    .line 896
    new-instance v1, Ljava/lang/StringBuilder;

    #@1e8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1eb
    const-string/jumbo v2, "  mReadyRegistrants["

    #@1ee
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f1
    move-result-object v1

    #@1f2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1f5
    move-result-object v1

    #@1f6
    const-string/jumbo v2, "]="

    #@1f9
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1fc
    move-result-object v2

    #@1fd
    .line 897
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mReadyRegistrants:Landroid/os/RegistrantList;

    #@1ff
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->get(I)Ljava/lang/Object;

    #@202
    move-result-object v1

    #@203
    check-cast v1, Landroid/os/Registrant;

    #@205
    invoke-virtual {v1}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    #@208
    move-result-object v1

    #@209
    .line 896
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@20c
    move-result-object v1

    #@20d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@210
    move-result-object v1

    #@211
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@214
    .line 895
    add-int/lit8 v0, v0, 0x1

    #@216
    goto :goto_0

    #@217
    .line 899
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@219
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@21c
    const-string/jumbo v2, " mPinLockedRegistrants: size="

    #@21f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@222
    move-result-object v1

    #@223
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    #@225
    invoke-virtual {v2}, Landroid/os/RegistrantList;->size()I

    #@228
    move-result v2

    #@229
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@22c
    move-result-object v1

    #@22d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@230
    move-result-object v1

    #@231
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@234
    .line 900
    const/4 v0, 0x0

    #@235
    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    #@237
    invoke-virtual {v1}, Landroid/os/RegistrantList;->size()I

    #@23a
    move-result v1

    #@23b
    if-ge v0, v1, :cond_1

    #@23d
    .line 901
    new-instance v1, Ljava/lang/StringBuilder;

    #@23f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@242
    const-string/jumbo v2, "  mPinLockedRegistrants["

    #@245
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@248
    move-result-object v1

    #@249
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@24c
    move-result-object v1

    #@24d
    const-string/jumbo v2, "]="

    #@250
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@253
    move-result-object v2

    #@254
    .line 902
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    #@256
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->get(I)Ljava/lang/Object;

    #@259
    move-result-object v1

    #@25a
    check-cast v1, Landroid/os/Registrant;

    #@25c
    invoke-virtual {v1}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    #@25f
    move-result-object v1

    #@260
    .line 901
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@263
    move-result-object v1

    #@264
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@267
    move-result-object v1

    #@268
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@26b
    .line 900
    add-int/lit8 v0, v0, 0x1

    #@26d
    goto :goto_1

    #@26e
    .line 904
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    #@270
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@273
    const-string/jumbo v2, " mNetworkLockedRegistrants: size="

    #@276
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@279
    move-result-object v1

    #@27a
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;

    #@27c
    invoke-virtual {v2}, Landroid/os/RegistrantList;->size()I

    #@27f
    move-result v2

    #@280
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@283
    move-result-object v1

    #@284
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@287
    move-result-object v1

    #@288
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@28b
    .line 905
    const/4 v0, 0x0

    #@28c
    :goto_2
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;

    #@28e
    invoke-virtual {v1}, Landroid/os/RegistrantList;->size()I

    #@291
    move-result v1

    #@292
    if-ge v0, v1, :cond_2

    #@294
    .line 906
    new-instance v1, Ljava/lang/StringBuilder;

    #@296
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@299
    const-string/jumbo v2, "  mNetworkLockedRegistrants["

    #@29c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29f
    move-result-object v1

    #@2a0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2a3
    move-result-object v1

    #@2a4
    const-string/jumbo v2, "]="

    #@2a7
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2aa
    move-result-object v2

    #@2ab
    .line 907
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;

    #@2ad
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->get(I)Ljava/lang/Object;

    #@2b0
    move-result-object v1

    #@2b1
    check-cast v1, Landroid/os/Registrant;

    #@2b3
    invoke-virtual {v1}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    #@2b6
    move-result-object v1

    #@2b7
    .line 906
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2ba
    move-result-object v1

    #@2bb
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2be
    move-result-object v1

    #@2bf
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2c2
    .line 905
    add-int/lit8 v0, v0, 0x1

    #@2c4
    goto :goto_2

    #@2c5
    .line 909
    :cond_2
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    #@2c8
    .line 875
    return-void
.end method

.method public getAid()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 598
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 599
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAid:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return-object v1

    #@7
    .line 598
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method public getAppLabel()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 604
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppLabel:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getAuthContext()I
    .locals 2

    #@0
    .prologue
    .line 559
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 560
    :try_start_0
    iget v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAuthContext:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return v1

    #@7
    .line 559
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method public getIccFdnAvailable()Z
    .locals 1

    #@0
    .prologue
    .line 742
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccFdnAvailable:Z

    #@2
    return v0
.end method

.method public getIccFdnEnabled()Z
    .locals 2

    #@0
    .prologue
    .line 731
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 732
    :try_start_0
    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccFdnEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return v1

    #@7
    .line 731
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method public getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;
    .locals 2

    #@0
    .prologue
    .line 617
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 618
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccFh:Lcom/android/internal/telephony/uicc/IccFileHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return-object v1

    #@7
    .line 617
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method public getIccLockEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 712
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccLockEnabled:Z

    #@2
    return v0
.end method

.method public getIccPin2Blocked()Z
    .locals 3

    #@0
    .prologue
    .line 845
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 846
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPin2State:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    #@5
    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_ENABLED_BLOCKED:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    if-ne v0, v2, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :goto_0
    monitor-exit v1

    #@b
    return v0

    #@c
    :cond_0
    const/4 v0, 0x0

    #@d
    goto :goto_0

    #@e
    .line 845
    :catchall_0
    move-exception v0

    #@f
    monitor-exit v1

    #@10
    throw v0
.end method

.method public getIccPuk2Blocked()Z
    .locals 3

    #@0
    .prologue
    .line 854
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 855
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPin2State:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    #@5
    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_ENABLED_PERM_BLOCKED:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    if-ne v0, v2, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :goto_0
    monitor-exit v1

    #@b
    return v0

    #@c
    :cond_0
    const/4 v0, 0x0

    #@d
    goto :goto_0

    #@e
    .line 854
    :catchall_0
    move-exception v0

    #@f
    monitor-exit v1

    #@10
    throw v0
.end method

.method public getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;
    .locals 2

    #@0
    .prologue
    .line 623
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 624
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return-object v1

    #@7
    .line 623
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method public getPersoSubState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    .locals 2

    #@0
    .prologue
    .line 592
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 593
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPersoSubState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return-object v1

    #@7
    .line 592
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method public getPhoneId()I
    .locals 1

    #@0
    .prologue
    .line 860
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCard;->getPhoneId()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getPin1State()Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;
    .locals 2

    #@0
    .prologue
    .line 608
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 609
    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPin1Replaced:Z

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 610
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    #@9
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCard;->getUniversalPinState()Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    move-result-object v0

    #@d
    monitor-exit v1

    #@e
    return-object v0

    #@f
    .line 612
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPin1State:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@11
    monitor-exit v1

    #@12
    return-object v0

    #@13
    .line 608
    :catchall_0
    move-exception v0

    #@14
    monitor-exit v1

    #@15
    throw v0
.end method

.method public getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;
    .locals 2

    #@0
    .prologue
    .line 547
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 548
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return-object v1

    #@7
    .line 547
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method public getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    .locals 2

    #@0
    .prologue
    .line 553
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 554
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppType:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return-object v1

    #@7
    .line 553
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method protected getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;
    .locals 1

    #@0
    .prologue
    .line 864
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    #@2
    return-object v0
.end method

.method queryFdn()V
    .locals 7

    #@0
    .prologue
    .line 214
    const/4 v3, 0x7

    #@1
    .line 217
    .local v3, "serviceClassX":I
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@3
    .line 218
    const-string/jumbo v1, "FD"

    #@6
    const-string/jumbo v2, ""

    #@9
    .line 219
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAid:Ljava/lang/String;

    #@b
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mHandler:Landroid/os/Handler;

    #@d
    const/4 v6, 0x4

    #@e
    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@11
    move-result-object v5

    #@12
    .line 217
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/CommandsInterface;->queryFacilityLockForApp(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    #@15
    .line 210
    return-void
.end method

.method public registerForLocked(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 439
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 440
    :try_start_0
    new-instance v0, Landroid/os/Registrant;

    #@5
    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    #@8
    .line 441
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    #@a
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    #@d
    .line 442
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->notifyPinLockedRegistrantsIfNeeded(Landroid/os/Registrant;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    monitor-exit v2

    #@11
    .line 438
    return-void

    #@12
    .line 439
    .end local v0    # "r":Landroid/os/Registrant;
    :catchall_0
    move-exception v1

    #@13
    monitor-exit v2

    #@14
    throw v1
.end method

.method public registerForNetworkLocked(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 456
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 457
    :try_start_0
    new-instance v0, Landroid/os/Registrant;

    #@5
    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    #@8
    .line 458
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;

    #@a
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    #@d
    .line 459
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->notifyNetworkLockedRegistrantsIfNeeded(Landroid/os/Registrant;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    monitor-exit v2

    #@11
    .line 455
    return-void

    #@12
    .line 456
    .end local v0    # "r":Landroid/os/Registrant;
    :catchall_0
    move-exception v1

    #@13
    monitor-exit v2

    #@14
    throw v1
.end method

.method public registerForReady(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 422
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 423
    :try_start_0
    new-instance v0, Landroid/os/Registrant;

    #@5
    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    #@8
    .line 424
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mReadyRegistrants:Landroid/os/RegistrantList;

    #@a
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    #@d
    .line 425
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->notifyReadyRegistrantsIfNeeded(Landroid/os/Registrant;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    monitor-exit v2

    #@11
    .line 421
    return-void

    #@12
    .line 422
    .end local v0    # "r":Landroid/os/Registrant;
    :catchall_0
    move-exception v1

    #@13
    monitor-exit v2

    #@14
    throw v1
.end method

.method public setIccFdnEnabled(ZLjava/lang/String;Landroid/os/Message;)V
    .locals 8
    .param p1, "enabled"    # Z
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    .line 785
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v7

    #@3
    .line 787
    const/16 v4, 0xf

    #@5
    .line 792
    .local v4, "serviceClassX":I
    :try_start_0
    iput-boolean p1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mDesiredFdnEnabled:Z

    #@7
    .line 794
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@9
    const-string/jumbo v1, "FD"

    #@c
    .line 795
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAid:Ljava/lang/String;

    #@e
    .line 796
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mHandler:Landroid/os/Handler;

    #@10
    const/4 v3, 0x5

    #@11
    invoke-virtual {v2, v3, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@14
    move-result-object v6

    #@15
    move v2, p1

    #@16
    move-object v3, p2

    #@17
    .line 794
    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/CommandsInterface;->setFacilityLockForApp(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    monitor-exit v7

    #@1b
    .line 784
    return-void

    #@1c
    .line 785
    :catchall_0
    move-exception v0

    #@1d
    monitor-exit v7

    #@1e
    throw v0
.end method

.method public setIccLockEnabled(ZLjava/lang/String;Landroid/os/Message;)V
    .locals 8
    .param p1, "enabled"    # Z
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    .line 758
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v7

    #@3
    .line 760
    const/4 v4, 0x7

    #@4
    .line 764
    .local v4, "serviceClassX":I
    :try_start_0
    iput-boolean p1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mDesiredPinLocked:Z

    #@6
    .line 766
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@8
    const-string/jumbo v1, "SC"

    #@b
    .line 767
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAid:Ljava/lang/String;

    #@d
    .line 768
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mHandler:Landroid/os/Handler;

    #@f
    const/4 v3, 0x7

    #@10
    invoke-virtual {v2, v3, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@13
    move-result-object v6

    #@14
    move v2, p1

    #@15
    move-object v3, p2

    #@16
    .line 766
    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/CommandsInterface;->setFacilityLockForApp(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    monitor-exit v7

    #@1a
    .line 757
    return-void

    #@1b
    .line 758
    :catchall_0
    move-exception v0

    #@1c
    monitor-exit v7

    #@1d
    throw v0
.end method

.method public supplyNetworkDepersonalization(Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    .line 698
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 699
    :try_start_0
    const-string/jumbo v0, "supplyNetworkDepersonalization"

    #@6
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->log(Ljava/lang/String;)V

    #@9
    .line 700
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@b
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->supplyNetworkDepersonalization(Ljava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    monitor-exit v1

    #@f
    .line 697
    return-void

    #@10
    .line 698
    :catchall_0
    move-exception v0

    #@11
    monitor-exit v1

    #@12
    throw v0
.end method

.method public supplyPin(Ljava/lang/String;Landroid/os/Message;)V
    .locals 5
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    .line 648
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 649
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@5
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAid:Ljava/lang/String;

    #@7
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mHandler:Landroid/os/Handler;

    #@9
    const/4 v4, 0x1

    #@a
    invoke-virtual {v3, v4, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@d
    move-result-object v3

    #@e
    invoke-interface {v0, p1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPinForApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    monitor-exit v1

    #@12
    .line 647
    return-void

    #@13
    .line 648
    :catchall_0
    move-exception v0

    #@14
    monitor-exit v1

    #@15
    throw v0
.end method

.method public supplyPin2(Ljava/lang/String;Landroid/os/Message;)V
    .locals 5
    .param p1, "pin2"    # Ljava/lang/String;
    .param p2, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    .line 684
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 685
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@5
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAid:Ljava/lang/String;

    #@7
    .line 686
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mHandler:Landroid/os/Handler;

    #@9
    const/16 v4, 0x8

    #@b
    invoke-virtual {v3, v4, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@e
    move-result-object v3

    #@f
    .line 685
    invoke-interface {v0, p1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    monitor-exit v1

    #@13
    .line 683
    return-void

    #@14
    .line 684
    :catchall_0
    move-exception v0

    #@15
    monitor-exit v1

    #@16
    throw v0
.end method

.method public supplyPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 5
    .param p1, "puk"    # Ljava/lang/String;
    .param p2, "newPin"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    .line 677
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 678
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@5
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAid:Ljava/lang/String;

    #@7
    .line 679
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mHandler:Landroid/os/Handler;

    #@9
    const/4 v4, 0x1

    #@a
    invoke-virtual {v3, v4, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@d
    move-result-object v3

    #@e
    .line 678
    invoke-interface {v0, p1, p2, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPukForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    monitor-exit v1

    #@12
    .line 676
    return-void

    #@13
    .line 677
    :catchall_0
    move-exception v0

    #@14
    monitor-exit v1

    #@15
    throw v0
.end method

.method public supplyPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 5
    .param p1, "puk2"    # Ljava/lang/String;
    .param p2, "newPin2"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    .line 691
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 692
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@5
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAid:Ljava/lang/String;

    #@7
    .line 693
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mHandler:Landroid/os/Handler;

    #@9
    const/16 v4, 0x8

    #@b
    invoke-virtual {v3, v4, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@e
    move-result-object v3

    #@f
    .line 692
    invoke-interface {v0, p1, p2, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPuk2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    monitor-exit v1

    #@13
    .line 690
    return-void

    #@14
    .line 691
    :catchall_0
    move-exception v0

    #@15
    monitor-exit v1

    #@16
    throw v0
.end method

.method public unregisterForLocked(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 447
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 448
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    #@5
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 446
    return-void

    #@a
    .line 447
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
    .line 464
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 465
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;

    #@5
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 463
    return-void

    #@a
    .line 464
    :catchall_0
    move-exception v0

    #@b
    monitor-exit v1

    #@c
    throw v0
.end method

.method public unregisterForReady(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 430
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 431
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mReadyRegistrants:Landroid/os/RegistrantList;

    #@5
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 429
    return-void

    #@a
    .line 430
    :catchall_0
    move-exception v0

    #@b
    monitor-exit v1

    #@c
    throw v0
.end method

.method update(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 7
    .param p1, "as"    # Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;
    .param p2, "c"    # Landroid/content/Context;
    .param p3, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 119
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    #@3
    monitor-enter v4

    #@4
    .line 120
    :try_start_0
    iget-boolean v5, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mDestroyed:Z

    #@6
    if-eqz v5, :cond_0

    #@8
    .line 121
    const-string/jumbo v3, "Application updated after destroyed! Fix me!"

    #@b
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->loge(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    monitor-exit v4

    #@f
    .line 122
    return-void

    #@10
    .line 125
    :cond_0
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppType:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    #@17
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v5

    #@1b
    const-string/jumbo v6, " update. New "

    #@1e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v5

    #@22
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v5

    #@26
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v5

    #@2a
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->log(Ljava/lang/String;)V

    #@2d
    .line 126
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mContext:Landroid/content/Context;

    #@2f
    .line 127
    iput-object p3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@31
    .line 128
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppType:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    #@33
    .line 129
    .local v1, "oldAppType":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    #@35
    .line 130
    .local v0, "oldAppState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPersoSubState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    #@37
    .line 131
    .local v2, "oldPersoSubState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    iget-object v5, p1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    #@39
    iput-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppType:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    #@3b
    .line 132
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppType:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    #@3d
    invoke-static {v5}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getAuthContext(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)I

    #@40
    move-result v5

    #@41
    iput v5, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAuthContext:I

    #@43
    .line 133
    iget-object v5, p1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_state:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    #@45
    iput-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    #@47
    .line 134
    iget-object v5, p1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->perso_substate:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    #@49
    iput-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPersoSubState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    #@4b
    .line 135
    iget-object v5, p1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->aid:Ljava/lang/String;

    #@4d
    iput-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAid:Ljava/lang/String;

    #@4f
    .line 136
    iget-object v5, p1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_label:Ljava/lang/String;

    #@51
    iput-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppLabel:Ljava/lang/String;

    #@53
    .line 137
    iget v5, p1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin1_replaced:I

    #@55
    if-eqz v5, :cond_1

    #@57
    const/4 v3, 0x1

    #@58
    :cond_1
    iput-boolean v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPin1Replaced:Z

    #@5a
    .line 138
    iget-object v3, p1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin1:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    #@5c
    iput-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPin1State:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    #@5e
    .line 139
    iget-object v3, p1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin2:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    #@60
    iput-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPin2State:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    #@62
    .line 141
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppType:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    #@64
    if-eq v3, v1, :cond_4

    #@66
    .line 142
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@68
    if-eqz v3, :cond_2

    #@6a
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@6c
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->dispose()V

    #@6f
    .line 143
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@71
    if-eqz v3, :cond_3

    #@73
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@75
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/IccRecords;->dispose()V

    #@78
    .line 144
    :cond_3
    iget-object v3, p1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    #@7a
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->createIccFileHandler(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@7d
    move-result-object v3

    #@7e
    iput-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@80
    .line 145
    iget-object v3, p1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    #@82
    invoke-direct {p0, v3, p2, p3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->createIccRecords(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/uicc/IccRecords;

    #@85
    move-result-object v3

    #@86
    iput-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@88
    .line 148
    :cond_4
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPersoSubState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    #@8a
    if-eq v3, v2, :cond_5

    #@8c
    .line 149
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPersoSubState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    #@8e
    sget-object v5, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    #@90
    if-ne v3, v5, :cond_5

    #@92
    .line 150
    const/4 v3, 0x0

    #@93
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->notifyNetworkLockedRegistrantsIfNeeded(Landroid/os/Registrant;)V

    #@96
    .line 153
    :cond_5
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    #@98
    if-eq v3, v0, :cond_7

    #@9a
    .line 154
    new-instance v3, Ljava/lang/StringBuilder;

    #@9c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@9f
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a2
    move-result-object v3

    #@a3
    const-string/jumbo v5, " changed state: "

    #@a6
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a9
    move-result-object v3

    #@aa
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@ad
    move-result-object v3

    #@ae
    const-string/jumbo v5, " -> "

    #@b1
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b4
    move-result-object v3

    #@b5
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    #@b7
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@ba
    move-result-object v3

    #@bb
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@be
    move-result-object v3

    #@bf
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->log(Ljava/lang/String;)V

    #@c2
    .line 157
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    #@c4
    sget-object v5, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    #@c6
    if-ne v3, v5, :cond_6

    #@c8
    .line 158
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->queryFdn()V

    #@cb
    .line 159
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->queryPin1State()V

    #@ce
    .line 161
    :cond_6
    const/4 v3, 0x0

    #@cf
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->notifyPinLockedRegistrantsIfNeeded(Landroid/os/Registrant;)V

    #@d2
    .line 162
    const/4 v3, 0x0

    #@d3
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->notifyReadyRegistrantsIfNeeded(Landroid/os/Registrant;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@d6
    :cond_7
    monitor-exit v4

    #@d7
    .line 118
    return-void

    #@d8
    .line 119
    .end local v0    # "oldAppState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;
    .end local v1    # "oldAppType":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    .end local v2    # "oldPersoSubState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    :catchall_0
    move-exception v3

    #@d9
    monitor-exit v4

    #@da
    throw v3
.end method
