.class public Lcom/android/internal/telephony/uicc/UiccCardApplication;
.super Ljava/lang/Object;
.source "UiccCardApplication.java"


# static fields
.field public static final blacklist AUTHTYPE_GBA_NAF_KEY_EXTERNAL:I = 0x85

.field public static final blacklist AUTH_CONTEXT_EAP_AKA:I = 0x81

.field public static final blacklist AUTH_CONTEXT_EAP_SIM:I = 0x80

.field public static final blacklist AUTH_CONTEXT_GBA_BOOTSTRAP:I = 0x84

.field public static final blacklist AUTH_CONTEXT_UNDEFINED:I = -0x1


# instance fields
.field private greylist-max-r mAid:Ljava/lang/String;

.field private blacklist mAppLabel:Ljava/lang/String;

.field private greylist-max-r mAppState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

.field private greylist-max-r mAppType:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

.field private blacklist mAuthContext:I

.field private greylist-max-r mCi:Lcom/android/internal/telephony/CommandsInterface;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mDesiredFdnEnabled:Z

.field private blacklist mDesiredPinLocked:Z

.field private greylist-max-r mDestroyed:Z

.field private blacklist mDetectedRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field private final blacklist mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

.field private blacklist mHandler:Landroid/os/Handler;

.field private blacklist mIccFdnAvailable:Z

.field private blacklist mIccFdnEnabled:Z

.field private blacklist mIccFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

.field private blacklist mIccLockEnabled:Z

.field private blacklist mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

.field private blacklist mIgnoreApp:Z

.field private final greylist-max-r mLock:Ljava/lang/Object;

.field private blacklist mNetworkLockedRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field private greylist-max-r mPersoSubState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

.field private blacklist mPin1Replaced:Z

.field private greylist-max-r mPin1State:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

.field private blacklist mPin2State:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

.field private blacklist mPinLockedRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field private blacklist mReadyRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field private blacklist mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDestroyed(Lcom/android/internal/telephony/uicc/UiccCardApplication;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mDestroyed:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAppState(Lcom/android/internal/telephony/uicc/UiccCardApplication;Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mlog(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->log(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mloge(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monChangeFacilityLock(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/os/AsyncResult;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->onChangeFacilityLock(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monChangeFdnDone(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/os/AsyncResult;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->onChangeFdnDone(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monQueryFacilityLock(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/os/AsyncResult;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->onQueryFacilityLock(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monQueryFdnEnabled(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/os/AsyncResult;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->onQueryFdnEnabled(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mparsePinPukErrorResult(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/os/AsyncResult;)I
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->parsePinPukErrorResult(Landroid/os/AsyncResult;)I

    move-result p0

    return p0
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/uicc/UiccProfile;Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V
    .registers 8

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 94
    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccFdnAvailable:Z

    .line 105
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mReadyRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 106
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mDetectedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 107
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPinLockedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 108
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mNetworkLockedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 397
    new-instance v0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;)V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mHandler:Landroid/os/Handler;

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Creating UiccApp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 117
    iput-object p5, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    .line 118
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    .line 119
    iget-object p1, p2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_state:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    .line 120
    iget-object p1, p2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppType:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .line 121
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getAuthContext(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAuthContext:I

    .line 122
    iget-object p1, p2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->perso_substate:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPersoSubState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .line 123
    iget-object p1, p2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->aid:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAid:Ljava/lang/String;

    .line 124
    iget-object p1, p2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_label:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppLabel:Ljava/lang/String;

    .line 125
    iget-boolean p1, p2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin1_replaced:Z

    iput-boolean p1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPin1Replaced:Z

    .line 126
    iget-object p1, p2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin1:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPin1State:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    .line 127
    iget-object p1, p2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin2:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPin2State:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    const/4 p1, 0x0

    .line 128
    iput-boolean p1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIgnoreApp:Z

    .line 130
    iput-object p3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mContext:Landroid/content/Context;

    .line 131
    iput-object p4, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 133
    iget-object p1, p2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->createIccFileHandler(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 134
    iget-object p1, p2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    iget-object p2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mContext:Landroid/content/Context;

    iget-object p3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->createIccRecords(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 135
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    sget-object p2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-ne p1, p2, :cond_95

    .line 136
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->queryFdn()V

    .line 137
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->queryPin1State()V

    .line 139
    :cond_95
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mHandler:Landroid/os/Handler;

    const/16 p2, 0x9

    const/4 p3, 0x0

    invoke-interface {p1, p0, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerForNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method private blacklist createIccFileHandler(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Lcom/android/internal/telephony/uicc/IccFileHandler;
    .registers 4

    .line 224
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccCardApplication$2;->$SwitchMap$com$android$internal$telephony$uicc$IccCardApplicationStatus$AppType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_41

    const/4 v0, 0x2

    if-eq p1, v0, :cond_37

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2d

    const/4 v0, 0x4

    if-eq p1, v0, :cond_23

    const/4 v0, 0x5

    if-eq p1, v0, :cond_19

    const/4 p0, 0x0

    return-object p0

    .line 234
    :cond_19
    new-instance p1, Lcom/android/internal/telephony/uicc/IsimFileHandler;

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAid:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p1, p0, v0, v1}, Lcom/android/internal/telephony/uicc/IsimFileHandler;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    return-object p1

    .line 232
    :cond_23
    new-instance p1, Lcom/android/internal/telephony/uicc/CsimFileHandler;

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAid:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p1, p0, v0, v1}, Lcom/android/internal/telephony/uicc/CsimFileHandler;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    return-object p1

    .line 230
    :cond_2d
    new-instance p1, Lcom/android/internal/telephony/uicc/UsimFileHandler;

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAid:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p1, p0, v0, v1}, Lcom/android/internal/telephony/uicc/UsimFileHandler;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    return-object p1

    .line 228
    :cond_37
    new-instance p1, Lcom/android/internal/telephony/uicc/RuimFileHandler;

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAid:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p1, p0, v0, v1}, Lcom/android/internal/telephony/uicc/RuimFileHandler;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    return-object p1

    .line 226
    :cond_41
    new-instance p1, Lcom/android/internal/telephony/uicc/SIMFileHandler;

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAid:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p1, p0, v0, v1}, Lcom/android/internal/telephony/uicc/SIMFileHandler;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    return-object p1
.end method

.method private blacklist createIccRecords(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/uicc/IccRecords;
    .registers 5

    .line 211
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-eq p1, v0, :cond_26

    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_SIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne p1, v0, :cond_9

    goto :goto_26

    .line 213
    :cond_9
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-eq p1, v0, :cond_20

    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne p1, v0, :cond_12

    goto :goto_20

    .line 215
    :cond_12
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_ISIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne p1, v0, :cond_1e

    .line 216
    new-instance p1, Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    invoke-direct {p1, p0, p2, p3, v0}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V

    return-object p1

    :cond_1e
    const/4 p0, 0x0

    return-object p0

    .line 214
    :cond_20
    :goto_20
    new-instance p1, Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-direct {p1, p0, p2, p3}, Lcom/android/internal/telephony/uicc/RuimRecords;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    return-object p1

    .line 212
    :cond_26
    :goto_26
    new-instance p1, Lcom/android/internal/telephony/uicc/SIMRecords;

    invoke-direct {p1, p0, p2, p3}, Lcom/android/internal/telephony/uicc/SIMRecords;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    return-object p1
.end method

.method private static blacklist getAuthContext(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)I
    .registers 2

    .line 653
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccCardApplication$2;->$SwitchMap$com$android$internal$telephony$uicc$IccCardApplicationStatus$AppType:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_13

    const/4 v0, 0x3

    if-eq p0, v0, :cond_10

    const/4 p0, -0x1

    return p0

    :cond_10
    const/16 p0, 0x81

    return p0

    :cond_13
    const/16 p0, 0x80

    return p0
.end method

.method private greylist-max-r log(Ljava/lang/String;)V
    .registers 2

    .line 988
    const-string p0, "UiccCardApplication"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private greylist-max-r loge(Ljava/lang/String;)V
    .registers 2

    .line 993
    const-string p0, "UiccCardApplication"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist notifyDetectedRegistrantsIfNeeded(Lcom/android/internal/telephony/Registrant;)V
    .registers 4

    .line 557
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mDestroyed:Z

    if-eqz v0, :cond_5

    goto :goto_26

    .line 560
    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_DETECTED:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-ne v0, v1, :cond_26

    if-nez p1, :cond_18

    .line 562
    const-string p1, "Notifying registrants: DETECTED"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 563
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mDetectedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    return-void

    .line 565
    :cond_18
    const-string v0, "Notifying 1 registrant: DETECTED"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 566
    new-instance p0, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_26
    :goto_26
    return-void
.end method

.method private blacklist notifyNetworkLockedRegistrantsIfNeeded(Lcom/android/internal/telephony/Registrant;)V
    .registers 5

    .line 605
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mDestroyed:Z

    if-eqz v0, :cond_5

    goto :goto_5a

    .line 609
    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_SUBSCRIPTION_PERSO:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-ne v0, v1, :cond_5a

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPersoSubState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .line 610
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->isPersoLocked(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 611
    new-instance v0, Landroid/os/AsyncResult;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPersoSubState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    if-nez p1, :cond_41

    .line 613
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Notifying registrants: NETWORK_LOCKED with mPersoSubState"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPersoSubState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 614
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mNetworkLockedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void

    .line 616
    :cond_41
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Notifying 1 registrant: NETWORK_LOCKED with mPersoSubState"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPersoSubState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 617
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_5a
    :goto_5a
    return-void
.end method

.method private blacklist notifyPinLockedRegistrantsIfNeeded(Lcom/android/internal/telephony/Registrant;)V
    .registers 4

    .line 577
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mDestroyed:Z

    if-eqz v0, :cond_5

    goto :goto_10

    .line 581
    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_PIN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-eq v0, v1, :cond_11

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-ne v0, v1, :cond_10

    goto :goto_11

    :cond_10
    :goto_10
    return-void

    .line 583
    :cond_11
    :goto_11
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPin1State:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_ENABLED_VERIFIED:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    if-eq v0, v1, :cond_38

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_DISABLED:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    if-ne v0, v1, :cond_1c

    goto :goto_38

    :cond_1c
    if-nez p1, :cond_29

    .line 590
    const-string p1, "Notifying registrants: LOCKED"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 591
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPinLockedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    return-void

    .line 593
    :cond_29
    const-string v0, "Notifying 1 registrant: LOCKED"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 594
    new-instance p0, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    return-void

    .line 585
    :cond_38
    :goto_38
    const-string p1, "Sanity check failed! APPSTATE is locked while PIN1 is not!!!"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist notifyReadyRegistrantsIfNeeded(Lcom/android/internal/telephony/Registrant;)V
    .registers 4

    .line 530
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mDestroyed:Z

    if-eqz v0, :cond_5

    goto :goto_3b

    .line 533
    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-ne v0, v1, :cond_3b

    .line 534
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPin1State:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_ENABLED_NOT_VERIFIED:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    if-eq v0, v1, :cond_36

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_ENABLED_BLOCKED:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    if-eq v0, v1, :cond_36

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_ENABLED_PERM_BLOCKED:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    if-ne v0, v1, :cond_1a

    goto :goto_36

    :cond_1a
    if-nez p1, :cond_27

    .line 542
    const-string p1, "Notifying registrants: READY"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 543
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mReadyRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    return-void

    .line 545
    :cond_27
    const-string v0, "Notifying 1 registrant: READY"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 546
    new-instance p0, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    return-void

    .line 537
    :cond_36
    :goto_36
    const-string p1, "Sanity check failed! APPSTATE is ready while PIN1 is not verified!!!"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->loge(Ljava/lang/String;)V

    :cond_3b
    :goto_3b
    return-void
.end method

.method private blacklist onChangeFacilityLock(Landroid/os/AsyncResult;)V
    .registers 6

    .line 361
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 364
    :try_start_3
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_25

    .line 365
    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mDesiredPinLocked:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccLockEnabled:Z

    .line 366
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVENT_CHANGE_FACILITY_LOCK_DONE: mIccLockEnabled= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccLockEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->log(Ljava/lang/String;)V

    const/4 p0, -0x1

    goto :goto_40

    :catchall_23
    move-exception p0

    goto :goto_53

    .line 369
    :cond_25
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->parsePinPukErrorResult(Landroid/os/AsyncResult;)I

    move-result v1

    .line 370
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error change facility lock with exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->loge(Ljava/lang/String;)V

    move p0, v1

    .line 372
    :goto_40
    iget-object v1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;

    .line 373
    invoke-static {v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object p1, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 374
    iput p0, v1, Landroid/os/Message;->arg1:I

    .line 375
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 376
    monitor-exit v0

    return-void

    :goto_53
    monitor-exit v0
    :try_end_54
    .catchall {:try_start_3 .. :try_end_54} :catchall_23

    throw p0
.end method

.method private blacklist onChangeFdnDone(Landroid/os/AsyncResult;)V
    .registers 6

    .line 285
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 288
    :try_start_3
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_25

    .line 289
    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mDesiredFdnEnabled:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccFdnEnabled:Z

    .line 290
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVENT_CHANGE_FACILITY_FDN_DONE: mIccFdnEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccFdnEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->log(Ljava/lang/String;)V

    const/4 p0, -0x1

    goto :goto_40

    :catchall_23
    move-exception p0

    goto :goto_53

    .line 293
    :cond_25
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->parsePinPukErrorResult(Landroid/os/AsyncResult;)I

    move-result v1

    .line 294
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error change facility fdn with exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->loge(Ljava/lang/String;)V

    move p0, v1

    .line 296
    :goto_40
    iget-object v1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;

    .line 297
    iput p0, v1, Landroid/os/Message;->arg1:I

    .line 298
    invoke-static {v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object p0

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object p1, p0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 299
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 300
    monitor-exit v0

    return-void

    :goto_53
    monitor-exit v0
    :try_end_54
    .catchall {:try_start_3 .. :try_end_54} :catchall_23

    throw p0
.end method

.method private blacklist onQueryFacilityLock(Landroid/os/AsyncResult;)V
    .registers 6

    .line 315
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 316
    :try_start_3
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_22

    .line 317
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in querying facility lock:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 318
    monitor-exit v0

    return-void

    :catchall_1f
    move-exception p0

    goto/16 :goto_92

    .line 321
    :cond_22
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [I

    .line 322
    array-length v1, p1

    if-eqz v1, :cond_8b

    .line 323
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Query facility lock : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    aget v3, p1, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 325
    aget p1, p1, v2

    const/4 v1, 0x1

    if-eqz p1, :cond_46

    move v2, v1

    :cond_46
    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccLockEnabled:Z

    .line 333
    sget-object p1, Lcom/android/internal/telephony/uicc/UiccCardApplication$2;->$SwitchMap$com$android$internal$telephony$uicc$IccCardStatus$PinState:[I

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPin1State:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget p1, p1, v2

    if-eq p1, v1, :cond_81

    const/4 v1, 0x2

    if-eq p1, v1, :cond_61

    const/4 v1, 0x3

    if-eq p1, v1, :cond_61

    const/4 v1, 0x4

    if-eq p1, v1, :cond_61

    const/4 v1, 0x5

    if-eq p1, v1, :cond_61

    goto :goto_6a

    .line 344
    :cond_61
    iget-boolean p1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccLockEnabled:Z

    if-nez p1, :cond_6a

    .line 345
    const-string p1, "QUERY_FACILITY_LOCK:disabled GET_SIM_STATUS.Pin1:enabled. Fixme"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->loge(Ljava/lang/String;)V

    .line 350
    :cond_6a
    :goto_6a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring: pin1state="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPin1State:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->log(Ljava/lang/String;)V

    goto :goto_90

    .line 335
    :cond_81
    iget-boolean p1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccLockEnabled:Z

    if-eqz p1, :cond_90

    .line 336
    const-string p1, "QUERY_FACILITY_LOCK:enabled GET_SIM_STATUS.Pin1:disabled. Fixme"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->loge(Ljava/lang/String;)V

    goto :goto_90

    .line 354
    :cond_8b
    const-string p1, "Bogus facility lock response"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->loge(Ljava/lang/String;)V

    .line 356
    :cond_90
    :goto_90
    monitor-exit v0

    return-void

    :goto_92
    monitor-exit v0
    :try_end_93
    .catchall {:try_start_3 .. :try_end_93} :catchall_1f

    throw p0
.end method

.method private blacklist onQueryFdnEnabled(Landroid/os/AsyncResult;)V
    .registers 5

    .line 257
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 258
    :try_start_3
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_21

    .line 259
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in querying facility lock:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 260
    monitor-exit v0

    return-void

    :catchall_1f
    move-exception p0

    goto :goto_70

    .line 263
    :cond_21
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [I

    .line 264
    array-length v1, p1

    if-eqz v1, :cond_5c

    const/4 v1, 0x0

    .line 266
    aget p1, p1, v1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_33

    .line 267
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccFdnEnabled:Z

    .line 268
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccFdnAvailable:Z

    goto :goto_3b

    :cond_33
    const/4 v2, 0x1

    if-ne p1, v2, :cond_37

    move v1, v2

    .line 270
    :cond_37
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccFdnEnabled:Z

    .line 271
    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccFdnAvailable:Z

    .line 273
    :goto_3b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Query facility FDN : FDN service available: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccFdnAvailable:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " enabled: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccFdnEnabled:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->log(Ljava/lang/String;)V

    goto :goto_61

    .line 276
    :cond_5c
    const-string p1, "Bogus facility lock response"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->loge(Ljava/lang/String;)V

    .line 278
    :goto_61
    iget-boolean p1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccFdnEnabled:Z

    if-eqz p1, :cond_6e

    iget-boolean p1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccFdnAvailable:Z

    if-eqz p1, :cond_6e

    .line 279
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->loadFdnRecords()V

    .line 281
    :cond_6e
    monitor-exit v0

    return-void

    :goto_70
    monitor-exit v0
    :try_end_71
    .catchall {:try_start_3 .. :try_end_71} :catchall_1f

    throw p0
.end method

.method private blacklist parsePinPukErrorResult(Landroid/os/AsyncResult;)I
    .registers 4

    .line 383
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [I

    const/4 v0, -0x1

    if-nez p1, :cond_8

    return v0

    .line 387
    :cond_8
    array-length v1, p1

    if-lez v1, :cond_e

    const/4 v0, 0x0

    .line 390
    aget v0, p1, v0

    .line 392
    :cond_e
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parsePinPukErrorResult: attemptsRemaining="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->log(Ljava/lang/String;)V

    return v0
.end method

.method private blacklist queryPin1State()V
    .registers 7

    .line 308
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAid:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    .line 310
    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 308
    const-string v1, "SC"

    const-string v2, ""

    const/4 v3, 0x7

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/CommandsInterface;->queryFacilityLockForApp(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    return-void
.end method


# virtual methods
.method public blacklist changeIccFdnPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 8

    .line 926
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 927
    :try_start_3
    const-string v1, "changeIccFdnPassword"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 928
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAid:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    .line 929
    invoke-virtual {p0, v3, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 928
    invoke-interface {v1, p1, p2, v2, p0}, Lcom/android/internal/telephony/CommandsInterface;->changeIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 930
    monitor-exit v0

    return-void

    :catchall_18
    move-exception p0

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw p0
.end method

.method public blacklist changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 8

    .line 906
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 907
    :try_start_3
    const-string v1, "changeIccLockPassword"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 908
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAid:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    .line 909
    invoke-virtual {p0, v3, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 908
    invoke-interface {v1, p1, p2, v2, p0}, Lcom/android/internal/telephony/CommandsInterface;->changeIccPinForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 910
    monitor-exit v0

    return-void

    :catchall_18
    move-exception p0

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw p0
.end method

.method greylist-max-r dispose()V
    .registers 4

    .line 199
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 200
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppType:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " being Disposed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->log(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 201
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mDestroyed:Z

    .line 202
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v1, :cond_26

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccRecords;->dispose()V

    goto :goto_26

    :catchall_24
    move-exception p0

    goto :goto_3b

    .line 203
    :cond_26
    :goto_26
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    if-eqz v1, :cond_2d

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->dispose()V

    :cond_2d
    const/4 v1, 0x0

    .line 204
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 205
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 206
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mHandler:Landroid/os/Handler;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForNotAvailable(Landroid/os/Handler;)V

    .line 207
    monitor-exit v0

    return-void

    :goto_3b
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3 .. :try_end_3c} :catchall_24

    throw p0
.end method

.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    .line 997
    new-instance p1, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    const-string p3, "  "

    invoke-direct {p1, p2, p3}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 998
    const-string p2, "UiccCardApplication: "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 999
    invoke-virtual {p1}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 1000
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mUiccProfile="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1001
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mAppState="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1002
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mAppType="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppType:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1003
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mPersoSubState="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPersoSubState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1004
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mAid="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAid:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1005
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mAppLabel="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppLabel:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1006
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mPin1Replaced="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPin1Replaced:Z

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1007
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mPin1State="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPin1State:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1008
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mPin2State="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPin2State:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1009
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mIccFdnEnabled="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccFdnEnabled:Z

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1010
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mDesiredFdnEnabled="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mDesiredFdnEnabled:Z

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1011
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mIccLockEnabled="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccLockEnabled:Z

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1012
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mDesiredPinLocked="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mDesiredPinLocked:Z

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1013
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mIccRecords="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1014
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mIccFh="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1015
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mDestroyed="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mDestroyed:Z

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1016
    invoke-virtual {p1}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 1017
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method public greylist getAid()Ljava/lang/String;
    .registers 2

    .line 679
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 680
    :try_start_3
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAid:Ljava/lang/String;

    monitor-exit v0

    return-object p0

    :catchall_7
    move-exception p0

    .line 681
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public blacklist getAppLabel()Ljava/lang/String;
    .registers 1

    .line 685
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppLabel:Ljava/lang/String;

    return-object p0
.end method

.method public greylist-max-r getAuthContext()I
    .registers 2

    .line 638
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 639
    :try_start_3
    iget p0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAuthContext:I

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 640
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public blacklist getIccFdnAvailable()Z
    .registers 1

    .line 834
    iget-boolean p0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccFdnAvailable:Z

    return p0
.end method

.method public blacklist getIccFdnEnabled()Z
    .registers 2

    .line 823
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 824
    :try_start_3
    iget-boolean p0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccFdnEnabled:Z

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 825
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public greylist getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;
    .registers 2

    .line 700
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 701
    :try_start_3
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    monitor-exit v0

    return-object p0

    :catchall_7
    move-exception p0

    .line 702
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public blacklist getIccLockEnabled()Z
    .registers 1

    .line 804
    iget-boolean p0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccLockEnabled:Z

    return p0
.end method

.method public blacklist getIccPin2Blocked()Z
    .registers 3

    .line 955
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 956
    :try_start_3
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPin2State:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_ENABLED_BLOCKED:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    if-ne p0, v1, :cond_b

    const/4 p0, 0x1

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    monitor-exit v0

    return p0

    :catchall_e
    move-exception p0

    .line 957
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p0
.end method

.method public blacklist getIccPuk2Blocked()Z
    .registers 3

    .line 964
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 965
    :try_start_3
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPin2State:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_ENABLED_PERM_BLOCKED:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    if-ne p0, v1, :cond_b

    const/4 p0, 0x1

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    monitor-exit v0

    return p0

    :catchall_e
    move-exception p0

    .line 966
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p0
.end method

.method public greylist getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;
    .registers 2

    .line 707
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 708
    :try_start_3
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    monitor-exit v0

    return-object p0

    :catchall_7
    move-exception p0

    .line 709
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public greylist-max-r getPersoSubState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    .registers 2

    .line 672
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 673
    :try_start_3
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPersoSubState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    monitor-exit v0

    return-object p0

    :catchall_7
    move-exception p0

    .line 674
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public greylist-max-r getPhoneId()I
    .registers 1

    .line 971
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->getPhoneId()I

    move-result p0

    return p0
.end method

.method public greylist-max-r getPin1State()Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;
    .registers 3

    .line 690
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 691
    :try_start_3
    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPin1Replaced:Z

    if-eqz v1, :cond_11

    .line 692
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->getUniversalPinState()Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_f
    move-exception p0

    goto :goto_15

    .line 694
    :cond_11
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPin1State:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    monitor-exit v0

    return-object p0

    .line 695
    :goto_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_f

    throw p0
.end method

.method public greylist getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;
    .registers 2

    .line 624
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 625
    :try_start_3
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    monitor-exit v0

    return-object p0

    :catchall_7
    move-exception p0

    .line 626
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public greylist getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    .registers 2

    .line 631
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 632
    :try_start_3
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppType:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    monitor-exit v0

    return-object p0

    :catchall_7
    move-exception p0

    .line 633
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method protected blacklist getUiccProfile()Lcom/android/internal/telephony/uicc/UiccProfile;
    .registers 1

    .line 983
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    return-object p0
.end method

.method public blacklist isAppIgnored()Z
    .registers 1

    .line 975
    iget-boolean p0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIgnoreApp:Z

    return p0
.end method

.method public blacklist isReady()Z
    .registers 5

    .line 937
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 938
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    const/4 v3, 0x0

    if-eq v1, v2, :cond_e

    .line 939
    monitor-exit v0

    return v3

    :catchall_c
    move-exception p0

    goto :goto_27

    .line 940
    :cond_e
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPin1State:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_ENABLED_NOT_VERIFIED:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    if-eq v1, v2, :cond_20

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_ENABLED_BLOCKED:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    if-eq v1, v2, :cond_20

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_ENABLED_PERM_BLOCKED:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    if-ne v1, v2, :cond_1d

    goto :goto_20

    :cond_1d
    const/4 p0, 0x1

    .line 946
    monitor-exit v0

    return p0

    .line 943
    :cond_20
    :goto_20
    const-string v1, "Sanity check failed! APPSTATE is ready while PIN1 is not verified!!!"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->loge(Ljava/lang/String;)V

    .line 944
    monitor-exit v0

    return v3

    .line 948
    :goto_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_c

    throw p0
.end method

.method public blacklist queryFdn()V
    .registers 7

    .line 248
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAid:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    .line 250
    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 248
    const-string v1, "FD"

    const-string v2, ""

    const/4 v3, 0x7

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/CommandsInterface;->queryFacilityLockForApp(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public blacklist registerForDetected(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 6

    .line 477
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 478
    :try_start_3
    new-instance v1, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 479
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mDetectedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    .line 480
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->notifyDetectedRegistrantsIfNeeded(Lcom/android/internal/telephony/Registrant;)V

    .line 481
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p0
.end method

.method protected blacklist registerForLocked(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 6

    .line 494
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 495
    :try_start_3
    new-instance v1, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 496
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPinLockedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    .line 497
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->notifyPinLockedRegistrantsIfNeeded(Lcom/android/internal/telephony/Registrant;)V

    .line 498
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p0
.end method

.method protected blacklist registerForNetworkLocked(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 6

    .line 511
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 512
    :try_start_3
    new-instance v1, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 513
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mNetworkLockedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    .line 514
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->notifyNetworkLockedRegistrantsIfNeeded(Lcom/android/internal/telephony/Registrant;)V

    .line 515
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public greylist-max-r registerForReady(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 6

    .line 462
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 463
    :try_start_3
    new-instance v1, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 464
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mReadyRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    .line 465
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->notifyReadyRegistrantsIfNeeded(Lcom/android/internal/telephony/Registrant;)V

    .line 466
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public blacklist setAppIgnoreState(Z)V
    .registers 2

    .line 979
    iput-boolean p1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIgnoreApp:Z

    return-void
.end method

.method public blacklist setIccFdnEnabled(ZLjava/lang/String;Landroid/os/Message;)V
    .registers 13

    .line 877
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 884
    :try_start_3
    iput-boolean p1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mDesiredFdnEnabled:Z

    .line 886
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const-string v3, "FD"

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAid:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x5

    .line 888
    invoke-virtual {p0, v0, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    const/16 v6, 0xf

    move v4, p1

    move-object v5, p2

    .line 886
    invoke-interface/range {v2 .. v8}, Lcom/android/internal/telephony/CommandsInterface;->setFacilityLockForApp(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    .line 889
    monitor-exit v1

    return-void

    :catchall_1b
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1b

    throw p0
.end method

.method public blacklist setIccLockEnabled(ZLjava/lang/String;Landroid/os/Message;)V
    .registers 13

    .line 850
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 856
    :try_start_3
    iput-boolean p1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mDesiredPinLocked:Z

    .line 858
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const-string v3, "SC"

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAid:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x7

    .line 860
    invoke-virtual {p0, v0, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    const/4 v6, 0x7

    move v4, p1

    move-object v5, p2

    .line 858
    invoke-interface/range {v2 .. v8}, Lcom/android/internal/telephony/CommandsInterface;->setFacilityLockForApp(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    .line 861
    monitor-exit v1

    return-void

    :catchall_1a
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1a

    throw p0
.end method

.method public blacklist supplyNetworkDepersonalization(Ljava/lang/String;Landroid/os/Message;)V
    .registers 5

    .line 782
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 783
    :try_start_3
    const-string v1, "supplyNetworkDepersonalization"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 784
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->supplyNetworkDepersonalization(Ljava/lang/String;Landroid/os/Message;)V

    .line 785
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public blacklist supplyPin(Ljava/lang/String;Landroid/os/Message;)V
    .registers 7

    .line 732
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 733
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAid:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {p0, v3, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-interface {v1, p1, v2, p0}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPinForApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 735
    monitor-exit v0

    return-void

    :catchall_13
    move-exception p0

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw p0
.end method

.method public blacklist supplyPin2(Ljava/lang/String;Landroid/os/Message;)V
    .registers 7

    .line 768
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 769
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAid:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x8

    .line 770
    invoke-virtual {p0, v3, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 769
    invoke-interface {v1, p1, v2, p0}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 771
    monitor-exit v0

    return-void

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p0
.end method

.method public blacklist supplyPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 8

    .line 761
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 762
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAid:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    .line 763
    invoke-virtual {p0, v3, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 762
    invoke-interface {v1, p1, p2, v2, p0}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPukForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 764
    monitor-exit v0

    return-void

    :catchall_13
    move-exception p0

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw p0
.end method

.method public blacklist supplyPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 8

    .line 775
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 776
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAid:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x8

    .line 777
    invoke-virtual {p0, v3, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 776
    invoke-interface {v1, p1, p2, v2, p0}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPuk2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 778
    monitor-exit v0

    return-void

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p0
.end method

.method public blacklist supplySimDepersonalization(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;Ljava/lang/String;Landroid/os/Message;)V
    .registers 6

    .line 790
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 791
    :try_start_3
    const-string v1, "supplySimDepersonalization"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 792
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->supplySimDepersonalization(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;Ljava/lang/String;Landroid/os/Message;)V

    .line 793
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public blacklist unregisterForDetected(Landroid/os/Handler;)V
    .registers 3

    .line 485
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 486
    :try_start_3
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mDetectedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 487
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method protected blacklist unregisterForLocked(Landroid/os/Handler;)V
    .registers 3

    .line 502
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 503
    :try_start_3
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPinLockedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 504
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method protected blacklist unregisterForNetworkLocked(Landroid/os/Handler;)V
    .registers 3

    .line 519
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 520
    :try_start_3
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mNetworkLockedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 521
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public greylist unregisterForReady(Landroid/os/Handler;)V
    .registers 3

    .line 471
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 472
    :try_start_3
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mReadyRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 473
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public greylist-max-r update(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .registers 10

    .line 144
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 145
    :try_start_3
    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mDestroyed:Z

    if-eqz v1, :cond_11

    .line 146
    const-string p1, "Application updated after destroyed! Fix me!"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->loge(Ljava/lang/String;)V

    .line 147
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    goto/16 :goto_d0

    .line 150
    :cond_11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppType:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " update. New "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 151
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mContext:Landroid/content/Context;

    .line 152
    iput-object p3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 153
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppType:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .line 154
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    .line 155
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPersoSubState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .line 156
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPin1State:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    .line 157
    iget-object v5, p1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    iput-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppType:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .line 158
    invoke-static {v5}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getAuthContext(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)I

    move-result v5

    iput v5, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAuthContext:I

    .line 159
    iget-object v5, p1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_state:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    iput-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    .line 160
    iget-object v5, p1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->perso_substate:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    iput-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPersoSubState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .line 161
    iget-object v5, p1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->aid:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAid:Ljava/lang/String;

    .line 162
    iget-object v5, p1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_label:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppLabel:Ljava/lang/String;

    .line 163
    iget-boolean v5, p1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin1_replaced:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPin1Replaced:Z

    .line 164
    iget-object v5, p1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin1:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    iput-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPin1State:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    .line 165
    iget-object v5, p1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin2:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    iput-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPin2State:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    .line 167
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppType:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-eq v5, v1, :cond_7e

    .line 168
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    if-eqz v5, :cond_67

    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/IccFileHandler;->dispose()V

    .line 169
    :cond_67
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v5, :cond_6e

    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/IccRecords;->dispose()V

    .line 170
    :cond_6e
    iget-object v5, p1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->createIccFileHandler(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 171
    iget-object p1, p1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->createIccRecords(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 174
    :cond_7e
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPersoSubState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    const/4 p2, 0x0

    if-eq p1, v3, :cond_8c

    .line 175
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->isPersoLocked(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;)Z

    move-result p1

    if-eqz p1, :cond_8c

    .line 176
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->notifyNetworkLockedRegistrantsIfNeeded(Lcom/android/internal/telephony/Registrant;)V

    .line 179
    :cond_8c
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-eq p1, v2, :cond_c7

    .line 180
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " changed state: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " -> "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 183
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    sget-object p3, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-ne p1, p3, :cond_bd

    .line 184
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->queryFdn()V

    .line 185
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->queryPin1State()V

    .line 187
    :cond_bd
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->notifyPinLockedRegistrantsIfNeeded(Lcom/android/internal/telephony/Registrant;)V

    .line 188
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->notifyReadyRegistrantsIfNeeded(Lcom/android/internal/telephony/Registrant;)V

    .line 189
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->notifyDetectedRegistrantsIfNeeded(Lcom/android/internal/telephony/Registrant;)V

    goto :goto_ce

    .line 191
    :cond_c7
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPin1State:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    if-eq p1, v4, :cond_ce

    .line 192
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->queryPin1State()V

    .line 194
    :cond_ce
    :goto_ce
    monitor-exit v0

    return-void

    :goto_d0
    monitor-exit v0
    :try_end_d1
    .catchall {:try_start_3 .. :try_end_d1} :catchall_e

    throw p0
.end method
