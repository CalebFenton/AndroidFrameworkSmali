.class public Lcom/android/internal/telephony/uicc/UiccCard;
.super Ljava/lang/Object;
.source "UiccCard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/uicc/UiccCard$1;
    }
.end annotation


# static fields
.field protected static final DBG:Z = true

.field private static final EVENT_CARD_ADDED:I = 0xe

.field private static final EVENT_CARD_REMOVED:I = 0xd

.field private static final EVENT_CARRIER_PRIVILIGES_LOADED:I = 0x14

.field private static final EVENT_CLOSE_LOGICAL_CHANNEL_DONE:I = 0x10

.field private static final EVENT_OPEN_LOGICAL_CHANNEL_DONE:I = 0xf

.field private static final EVENT_SIM_IO_DONE:I = 0x13

.field private static final EVENT_TRANSMIT_APDU_BASIC_CHANNEL_DONE:I = 0x12

.field private static final EVENT_TRANSMIT_APDU_LOGICAL_CHANNEL_DONE:I = 0x11

.field protected static final LOG_TAG:Ljava/lang/String; = "UiccCard"

.field private static final OPERATOR_BRAND_OVERRIDE_PREFIX:Ljava/lang/String; = "operator_branding_"

.field private static final mLocalLog:Landroid/util/LocalLog;


# instance fields
.field private mAbsentRegistrants:Landroid/os/RegistrantList;

.field private mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

.field private mCarrierPrivilegeRegistrants:Landroid/os/RegistrantList;

.field private mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

.field private mCatService:Lcom/android/internal/telephony/cat/CatService;

.field private mCdmaSubscriptionAppIndex:I

.field private mCi:Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field private mGsmUmtsSubscriptionAppIndex:I

.field protected mHandler:Landroid/os/Handler;

.field private mImsSubscriptionAppIndex:I

.field private mLastRadioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

.field private final mLock:Ljava/lang/Object;

.field private mPhoneId:I

.field private mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

.field private mUniversalPinState:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;


# direct methods
.method static synthetic -get0(Lcom/android/internal/telephony/uicc/UiccCard;)Landroid/content/Context;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/internal/telephony/uicc/UiccCard;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/internal/telephony/uicc/UiccCard;Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Lcom/android/internal/telephony/uicc/UiccCard;Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccCard;->loge(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Lcom/android/internal/telephony/uicc/UiccCard;Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccCard;->loglocal(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Lcom/android/internal/telephony/uicc/UiccCard;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccCard;->onCarrierPriviligesLoadedMessage()V

    #@3
    return-void
.end method

.method static synthetic -wrap4(Lcom/android/internal/telephony/uicc/UiccCard;Z)V
    .locals 0
    .param p1, "isAdded"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccCard;->onIccSwap(Z)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 99
    new-instance v0, Landroid/util/LocalLog;

    #@2
    const/16 v1, 0x64

    #@4
    invoke-direct {v0, v1}, Landroid/util/LocalLog;-><init>(I)V

    #@7
    sput-object v0, Lcom/android/internal/telephony/uicc/UiccCard;->mLocalLog:Landroid/util/LocalLog;

    #@9
    .line 67
    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 73
    new-instance v0, Ljava/lang/Object;

    #@5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;

    #@a
    .line 80
    const/16 v0, 0x8

    #@c
    new-array v0, v0, [Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@e
    .line 79
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@10
    .line 84
    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    #@12
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLastRadioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    #@14
    .line 87
    new-instance v0, Landroid/os/RegistrantList;

    #@16
    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    #@19
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mAbsentRegistrants:Landroid/os/RegistrantList;

    #@1b
    .line 88
    new-instance v0, Landroid/os/RegistrantList;

    #@1d
    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    #@20
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCarrierPrivilegeRegistrants:Landroid/os/RegistrantList;

    #@22
    .line 354
    new-instance v0, Lcom/android/internal/telephony/uicc/UiccCard$1;

    #@24
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/uicc/UiccCard$1;-><init>(Lcom/android/internal/telephony/uicc/UiccCard;)V

    #@27
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mHandler:Landroid/os/Handler;

    #@29
    .line 115
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;)V
    .locals 1
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p3, "ics"    # Lcom/android/internal/telephony/uicc/IccCardStatus;

    #@0
    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 73
    new-instance v0, Ljava/lang/Object;

    #@5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;

    #@a
    .line 80
    const/16 v0, 0x8

    #@c
    new-array v0, v0, [Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@e
    .line 79
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@10
    .line 84
    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    #@12
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLastRadioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    #@14
    .line 87
    new-instance v0, Landroid/os/RegistrantList;

    #@16
    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    #@19
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mAbsentRegistrants:Landroid/os/RegistrantList;

    #@1b
    .line 88
    new-instance v0, Landroid/os/RegistrantList;

    #@1d
    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    #@20
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCarrierPrivilegeRegistrants:Landroid/os/RegistrantList;

    #@22
    .line 354
    new-instance v0, Lcom/android/internal/telephony/uicc/UiccCard$1;

    #@24
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/uicc/UiccCard$1;-><init>(Lcom/android/internal/telephony/uicc/UiccCard;)V

    #@27
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mHandler:Landroid/os/Handler;

    #@29
    .line 104
    const-string/jumbo v0, "Creating"

    #@2c
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    #@2f
    .line 105
    iget-object v0, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    #@31
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    #@33
    .line 106
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccCard;->update(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;)V

    #@36
    .line 103
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;I)V
    .locals 1
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p3, "ics"    # Lcom/android/internal/telephony/uicc/IccCardStatus;
    .param p4, "phoneId"    # I

    #@0
    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 73
    new-instance v0, Ljava/lang/Object;

    #@5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;

    #@a
    .line 80
    const/16 v0, 0x8

    #@c
    new-array v0, v0, [Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@e
    .line 79
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@10
    .line 84
    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    #@12
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLastRadioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    #@14
    .line 87
    new-instance v0, Landroid/os/RegistrantList;

    #@16
    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    #@19
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mAbsentRegistrants:Landroid/os/RegistrantList;

    #@1b
    .line 88
    new-instance v0, Landroid/os/RegistrantList;

    #@1d
    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    #@20
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCarrierPrivilegeRegistrants:Landroid/os/RegistrantList;

    #@22
    .line 354
    new-instance v0, Lcom/android/internal/telephony/uicc/UiccCard$1;

    #@24
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/uicc/UiccCard$1;-><init>(Lcom/android/internal/telephony/uicc/UiccCard;)V

    #@27
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mHandler:Landroid/os/Handler;

    #@29
    .line 110
    iget-object v0, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    #@2b
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    #@2d
    .line 111
    iput p4, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mPhoneId:I

    #@2f
    .line 112
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccCard;->update(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;)V

    #@32
    .line 109
    return-void
.end method

.method private checkIndex(ILcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)I
    .locals 3
    .param p1, "index"    # I
    .param p2, "expectedAppType"    # Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    .param p3, "altExpectedAppType"    # Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    #@0
    .prologue
    const/4 v2, -0x1

    #@1
    .line 236
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@3
    if-eqz v0, :cond_0

    #@5
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@7
    array-length v0, v0

    #@8
    if-lt p1, v0, :cond_1

    #@a
    .line 237
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v1, "App index "

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v0

    #@1a
    const-string/jumbo v1, " is invalid since there are no applications"

    #@1d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v0

    #@21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v0

    #@25
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccCard;->loge(Ljava/lang/String;)V

    #@28
    .line 238
    return v2

    #@29
    .line 241
    :cond_1
    if-gez p1, :cond_2

    #@2b
    .line 243
    return v2

    #@2c
    .line 246
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@2e
    aget-object v0, v0, p1

    #@30
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    #@33
    move-result-object v0

    #@34
    if-eq v0, p2, :cond_3

    #@36
    .line 247
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@38
    aget-object v0, v0, p1

    #@3a
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    #@3d
    move-result-object v0

    #@3e
    if-eq v0, p3, :cond_3

    #@40
    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    #@42
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@45
    const-string/jumbo v1, "App index "

    #@48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v0

    #@4c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v0

    #@50
    const-string/jumbo v1, " is invalid since it\'s not "

    #@53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v0

    #@57
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v0

    #@5b
    .line 249
    const-string/jumbo v1, " and not "

    #@5e
    .line 248
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v0

    #@62
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v0

    #@66
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@69
    move-result-object v0

    #@6a
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccCard;->loge(Ljava/lang/String;)V

    #@6d
    .line 250
    return v2

    #@6e
    .line 254
    :cond_3
    return p1
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 642
    const-string/jumbo v0, "UiccCard"

    #@3
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 641
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 646
    const-string/jumbo v0, "UiccCard"

    #@3
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 645
    return-void
.end method

.method private loglocal(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 650
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccCard;->mLocalLog:Landroid/util/LocalLog;

    #@2
    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    #@5
    .line 649
    return-void
.end method

.method private onCarrierPriviligesLoadedMessage()V
    .locals 2

    #@0
    .prologue
    .line 387
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 388
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCarrierPrivilegeRegistrants:Landroid/os/RegistrantList;

    #@5
    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 386
    return-void

    #@a
    .line 387
    :catchall_0
    move-exception v0

    #@b
    monitor-exit v1

    #@c
    throw v0
.end method

.method private onIccSwap(Z)V
    .locals 11
    .param p1, "isAdded"    # Z

    #@0
    .prologue
    .line 301
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@5
    move-result-object v8

    #@6
    .line 302
    const v9, 0x1120042

    #@9
    .line 301
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@c
    move-result v2

    #@d
    .line 304
    .local v2, "isHotSwapSupported":Z
    if-eqz v2, :cond_0

    #@f
    .line 305
    const-string/jumbo v8, "onIccSwap: isHotSwapSupported is true, don\'t prompt for rebooting"

    #@12
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    #@15
    .line 306
    return-void

    #@16
    .line 308
    :cond_0
    const-string/jumbo v8, "onIccSwap: isHotSwapSupported is false, prompt for rebooting"

    #@19
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    #@1c
    .line 310
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;

    #@1e
    monitor-enter v9

    #@1f
    .line 315
    const/4 v3, 0x0

    #@20
    .line 321
    .local v3, "listener":Landroid/content/DialogInterface$OnClickListener;
    :try_start_0
    new-instance v4, Lcom/android/internal/telephony/uicc/UiccCard$2;

    #@22
    invoke-direct {v4, p0}, Lcom/android/internal/telephony/uicc/UiccCard$2;-><init>(Lcom/android/internal/telephony/uicc/UiccCard;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    .line 336
    .local v4, "listener":Landroid/content/DialogInterface$OnClickListener;
    :try_start_1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@28
    .end local v3    # "listener":Landroid/content/DialogInterface$OnClickListener;
    move-result-object v6

    #@29
    .line 338
    .local v6, "r":Landroid/content/res/Resources;
    if-eqz p1, :cond_1

    #@2b
    const v8, 0x10403bc

    #@2e
    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@31
    move-result-object v7

    #@32
    .line 340
    .local v7, "title":Ljava/lang/String;
    :goto_0
    if-eqz p1, :cond_2

    #@34
    const v8, 0x10403bd

    #@37
    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@3a
    move-result-object v5

    #@3b
    .line 342
    .local v5, "message":Ljava/lang/String;
    :goto_1
    const v8, 0x10403be

    #@3e
    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@41
    move-result-object v0

    #@42
    .line 344
    .local v0, "buttonTxt":Ljava/lang/String;
    new-instance v8, Landroid/app/AlertDialog$Builder;

    #@44
    iget-object v10, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mContext:Landroid/content/Context;

    #@46
    invoke-direct {v8, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    #@49
    invoke-virtual {v8, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    #@4c
    move-result-object v8

    #@4d
    invoke-virtual {v8, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    #@50
    move-result-object v8

    #@51
    invoke-virtual {v8, v0, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    #@54
    move-result-object v8

    #@55
    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    #@58
    move-result-object v1

    #@59
    .line 349
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    #@5c
    move-result-object v8

    #@5d
    const/16 v10, 0x7d3

    #@5f
    invoke-virtual {v8, v10}, Landroid/view/Window;->setType(I)V

    #@62
    .line 350
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@65
    monitor-exit v9

    #@66
    .line 299
    return-void

    #@67
    .line 339
    .end local v0    # "buttonTxt":Ljava/lang/String;
    .end local v1    # "dialog":Landroid/app/AlertDialog;
    .end local v5    # "message":Ljava/lang/String;
    .end local v7    # "title":Ljava/lang/String;
    :cond_1
    const v8, 0x10403b9

    #@6a
    :try_start_2
    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@6d
    move-result-object v7

    #@6e
    .restart local v7    # "title":Ljava/lang/String;
    goto :goto_0

    #@6f
    .line 341
    :cond_2
    const v8, 0x10403ba

    #@72
    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@75
    move-result-object v5

    #@76
    .restart local v5    # "message":Ljava/lang/String;
    goto :goto_1

    #@77
    .line 310
    .end local v4    # "listener":Landroid/content/DialogInterface$OnClickListener;
    .end local v5    # "message":Ljava/lang/String;
    .end local v6    # "r":Landroid/content/res/Resources;
    .end local v7    # "title":Ljava/lang/String;
    .restart local v3    # "listener":Landroid/content/DialogInterface$OnClickListener;
    :catchall_0
    move-exception v8

    #@78
    .end local v3    # "listener":Landroid/content/DialogInterface$OnClickListener;
    :goto_2
    monitor-exit v9

    #@79
    throw v8

    #@7a
    .restart local v4    # "listener":Landroid/content/DialogInterface$OnClickListener;
    :catchall_1
    move-exception v8

    #@7b
    move-object v3, v4

    #@7c
    .end local v4    # "listener":Landroid/content/DialogInterface$OnClickListener;
    .local v3, "listener":Landroid/content/DialogInterface$OnClickListener;
    goto :goto_2
.end method

.method private sanitizeApplicationIndexes()V
    .locals 3

    #@0
    .prologue
    .line 228
    iget v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mGsmUmtsSubscriptionAppIndex:I

    #@2
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_SIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    #@4
    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    #@6
    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccCard;->checkIndex(ILcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)I

    #@9
    move-result v0

    #@a
    .line 227
    iput v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mGsmUmtsSubscriptionAppIndex:I

    #@c
    .line 230
    iget v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCdmaSubscriptionAppIndex:I

    #@e
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    #@10
    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    #@12
    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccCard;->checkIndex(ILcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)I

    #@15
    move-result v0

    #@16
    .line 229
    iput v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCdmaSubscriptionAppIndex:I

    #@18
    .line 232
    iget v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mImsSubscriptionAppIndex:I

    #@1a
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_ISIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    #@1c
    const/4 v2, 0x0

    #@1d
    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccCard;->checkIndex(ILcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)I

    #@20
    move-result v0

    #@21
    .line 231
    iput v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mImsSubscriptionAppIndex:I

    #@23
    .line 226
    return-void
.end method


# virtual methods
.method public areCarrierPriviligeRulesLoaded()Z
    .locals 1

    #@0
    .prologue
    .line 558
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 559
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    #@6
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->areCarrierPriviligeRulesLoaded()Z

    #@9
    move-result v0

    #@a
    .line 558
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x1

    #@c
    goto :goto_0
.end method

.method protected createAndUpdateCatService()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 197
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@4
    array-length v0, v0

    #@5
    if-lez v0, :cond_1

    #@7
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@9
    aget-object v0, v0, v2

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 199
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    #@f
    if-nez v0, :cond_0

    #@11
    .line 200
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@13
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mContext:Landroid/content/Context;

    #@15
    iget v2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mPhoneId:I

    #@17
    invoke-static {v0, v1, p0, v2}, Lcom/android/internal/telephony/cat/CatService;->getInstance(Lcom/android/internal/telephony/CommandsInterface;Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccCard;I)Lcom/android/internal/telephony/cat/CatService;

    #@1a
    move-result-object v0

    #@1b
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    #@1d
    .line 196
    :goto_0
    return-void

    #@1e
    .line 202
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    #@20
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@22
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mContext:Landroid/content/Context;

    #@24
    invoke-virtual {v0, v1, v2, p0}, Lcom/android/internal/telephony/cat/CatService;->update(Lcom/android/internal/telephony/CommandsInterface;Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccCard;)V

    #@27
    goto :goto_0

    #@28
    .line 205
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    #@2a
    if-eqz v0, :cond_2

    #@2c
    .line 206
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    #@2e
    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/CatService;->dispose()V

    #@31
    .line 208
    :cond_2
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    #@33
    goto :goto_0
.end method

.method public dispose()V
    .locals 5

    #@0
    .prologue
    .line 119
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 120
    :try_start_0
    const-string/jumbo v1, "Disposing card"

    #@6
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    #@9
    .line 121
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    #@b
    if-eqz v1, :cond_0

    #@d
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    #@f
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/CatService;->dispose()V

    #@12
    .line 122
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@14
    const/4 v1, 0x0

    #@15
    array-length v4, v3

    #@16
    :goto_0
    if-ge v1, v4, :cond_2

    #@18
    aget-object v0, v3, v1

    #@1a
    .line 123
    .local v0, "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v0, :cond_1

    #@1c
    .line 124
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->dispose()V

    #@1f
    .line 122
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@21
    goto :goto_0

    #@22
    .line 127
    .end local v0    # "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :cond_2
    const/4 v1, 0x0

    #@23
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    #@25
    .line 128
    const/4 v1, 0x0

    #@26
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@28
    .line 129
    const/4 v1, 0x0

    #@29
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2b
    monitor-exit v2

    #@2c
    .line 118
    return-void

    #@2d
    .line 119
    :catchall_0
    move-exception v1

    #@2e
    monitor-exit v2

    #@2f
    throw v1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v6, 0x0

    #@2
    .line 654
    const-string/jumbo v3, "UiccCard:"

    #@5
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@8
    .line 655
    new-instance v3, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v5, " mCi="

    #@10
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v3

    #@14
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@16
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v3

    #@1a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v3

    #@1e
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@21
    .line 656
    new-instance v3, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    const-string/jumbo v5, " mLastRadioState="

    #@29
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v3

    #@2d
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLastRadioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    #@2f
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v3

    #@33
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v3

    #@37
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3a
    .line 657
    new-instance v3, Ljava/lang/StringBuilder;

    #@3c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@3f
    const-string/jumbo v5, " mCatService="

    #@42
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v3

    #@46
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    #@48
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v3

    #@4c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f
    move-result-object v3

    #@50
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@53
    .line 658
    new-instance v3, Ljava/lang/StringBuilder;

    #@55
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@58
    const-string/jumbo v5, " mAbsentRegistrants: size="

    #@5b
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v3

    #@5f
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mAbsentRegistrants:Landroid/os/RegistrantList;

    #@61
    invoke-virtual {v5}, Landroid/os/RegistrantList;->size()I

    #@64
    move-result v5

    #@65
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@68
    move-result-object v3

    #@69
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6c
    move-result-object v3

    #@6d
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@70
    .line 659
    const/4 v1, 0x0

    #@71
    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mAbsentRegistrants:Landroid/os/RegistrantList;

    #@73
    invoke-virtual {v3}, Landroid/os/RegistrantList;->size()I

    #@76
    move-result v3

    #@77
    if-ge v1, v3, :cond_0

    #@79
    .line 660
    new-instance v3, Ljava/lang/StringBuilder;

    #@7b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@7e
    const-string/jumbo v5, "  mAbsentRegistrants["

    #@81
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v3

    #@85
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@88
    move-result-object v3

    #@89
    const-string/jumbo v5, "]="

    #@8c
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v5

    #@90
    .line 661
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mAbsentRegistrants:Landroid/os/RegistrantList;

    #@92
    invoke-virtual {v3, v1}, Landroid/os/RegistrantList;->get(I)Ljava/lang/Object;

    #@95
    move-result-object v3

    #@96
    check-cast v3, Landroid/os/Registrant;

    #@98
    invoke-virtual {v3}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    #@9b
    move-result-object v3

    #@9c
    .line 660
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@9f
    move-result-object v3

    #@a0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a3
    move-result-object v3

    #@a4
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@a7
    .line 659
    add-int/lit8 v1, v1, 0x1

    #@a9
    goto :goto_0

    #@aa
    .line 663
    :cond_0
    const/4 v1, 0x0

    #@ab
    :goto_1
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCarrierPrivilegeRegistrants:Landroid/os/RegistrantList;

    #@ad
    invoke-virtual {v3}, Landroid/os/RegistrantList;->size()I

    #@b0
    move-result v3

    #@b1
    if-ge v1, v3, :cond_1

    #@b3
    .line 664
    new-instance v3, Ljava/lang/StringBuilder;

    #@b5
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@b8
    const-string/jumbo v5, "  mCarrierPrivilegeRegistrants["

    #@bb
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@be
    move-result-object v3

    #@bf
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@c2
    move-result-object v3

    #@c3
    const-string/jumbo v5, "]="

    #@c6
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c9
    move-result-object v5

    #@ca
    .line 665
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCarrierPrivilegeRegistrants:Landroid/os/RegistrantList;

    #@cc
    invoke-virtual {v3, v1}, Landroid/os/RegistrantList;->get(I)Ljava/lang/Object;

    #@cf
    move-result-object v3

    #@d0
    check-cast v3, Landroid/os/Registrant;

    #@d2
    invoke-virtual {v3}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    #@d5
    move-result-object v3

    #@d6
    .line 664
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@d9
    move-result-object v3

    #@da
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@dd
    move-result-object v3

    #@de
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@e1
    .line 663
    add-int/lit8 v1, v1, 0x1

    #@e3
    goto :goto_1

    #@e4
    .line 667
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    #@e6
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@e9
    const-string/jumbo v5, " mCardState="

    #@ec
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ef
    move-result-object v3

    #@f0
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    #@f2
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f5
    move-result-object v3

    #@f6
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f9
    move-result-object v3

    #@fa
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@fd
    .line 668
    new-instance v3, Ljava/lang/StringBuilder;

    #@ff
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@102
    const-string/jumbo v5, " mUniversalPinState="

    #@105
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@108
    move-result-object v3

    #@109
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUniversalPinState:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    #@10b
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@10e
    move-result-object v3

    #@10f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@112
    move-result-object v3

    #@113
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@116
    .line 669
    new-instance v3, Ljava/lang/StringBuilder;

    #@118
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@11b
    const-string/jumbo v5, " mGsmUmtsSubscriptionAppIndex="

    #@11e
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@121
    move-result-object v3

    #@122
    iget v5, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mGsmUmtsSubscriptionAppIndex:I

    #@124
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@127
    move-result-object v3

    #@128
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@12b
    move-result-object v3

    #@12c
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@12f
    .line 670
    new-instance v3, Ljava/lang/StringBuilder;

    #@131
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@134
    const-string/jumbo v5, " mCdmaSubscriptionAppIndex="

    #@137
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13a
    move-result-object v3

    #@13b
    iget v5, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCdmaSubscriptionAppIndex:I

    #@13d
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@140
    move-result-object v3

    #@141
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@144
    move-result-object v3

    #@145
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@148
    .line 671
    new-instance v3, Ljava/lang/StringBuilder;

    #@14a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@14d
    const-string/jumbo v5, " mImsSubscriptionAppIndex="

    #@150
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@153
    move-result-object v3

    #@154
    iget v5, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mImsSubscriptionAppIndex:I

    #@156
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@159
    move-result-object v3

    #@15a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15d
    move-result-object v3

    #@15e
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@161
    .line 672
    new-instance v3, Ljava/lang/StringBuilder;

    #@163
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@166
    const-string/jumbo v5, " mImsSubscriptionAppIndex="

    #@169
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16c
    move-result-object v3

    #@16d
    iget v5, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mImsSubscriptionAppIndex:I

    #@16f
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@172
    move-result-object v3

    #@173
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@176
    move-result-object v3

    #@177
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@17a
    .line 673
    new-instance v3, Ljava/lang/StringBuilder;

    #@17c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@17f
    const-string/jumbo v5, " mUiccApplications: length="

    #@182
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@185
    move-result-object v3

    #@186
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@188
    array-length v5, v5

    #@189
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18c
    move-result-object v3

    #@18d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@190
    move-result-object v3

    #@191
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@194
    .line 674
    const/4 v1, 0x0

    #@195
    :goto_2
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@197
    array-length v3, v3

    #@198
    if-ge v1, v3, :cond_3

    #@19a
    .line 675
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@19c
    aget-object v3, v3, v1

    #@19e
    if-nez v3, :cond_2

    #@1a0
    .line 676
    new-instance v3, Ljava/lang/StringBuilder;

    #@1a2
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1a5
    const-string/jumbo v5, "  mUiccApplications["

    #@1a8
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ab
    move-result-object v3

    #@1ac
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1af
    move-result-object v3

    #@1b0
    const-string/jumbo v5, "]="

    #@1b3
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b6
    move-result-object v3

    #@1b7
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1ba
    move-result-object v3

    #@1bb
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1be
    move-result-object v3

    #@1bf
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1c2
    .line 674
    :goto_3
    add-int/lit8 v1, v1, 0x1

    #@1c4
    goto :goto_2

    #@1c5
    .line 678
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    #@1c7
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1ca
    const-string/jumbo v5, "  mUiccApplications["

    #@1cd
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d0
    move-result-object v3

    #@1d1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1d4
    move-result-object v3

    #@1d5
    const-string/jumbo v5, "]="

    #@1d8
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1db
    move-result-object v3

    #@1dc
    .line 679
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@1de
    aget-object v5, v5, v1

    #@1e0
    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    #@1e3
    move-result-object v5

    #@1e4
    .line 678
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e7
    move-result-object v3

    #@1e8
    .line 679
    const-string/jumbo v5, " "

    #@1eb
    .line 678
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ee
    move-result-object v3

    #@1ef
    .line 679
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@1f1
    aget-object v5, v5, v1

    #@1f3
    .line 678
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1f6
    move-result-object v3

    #@1f7
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1fa
    move-result-object v3

    #@1fb
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1fe
    goto :goto_3

    #@1ff
    .line 682
    :cond_3
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    #@202
    .line 684
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@204
    array-length v6, v5

    #@205
    move v3, v4

    #@206
    :goto_4
    if-ge v3, v6, :cond_5

    #@208
    aget-object v0, v5, v3

    #@20a
    .line 685
    .local v0, "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v0, :cond_4

    #@20c
    .line 686
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@20f
    .line 687
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    #@212
    .line 684
    :cond_4
    add-int/lit8 v3, v3, 0x1

    #@214
    goto :goto_4

    #@215
    .line 691
    .end local v0    # "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :cond_5
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@217
    array-length v6, v5

    #@218
    move v3, v4

    #@219
    :goto_5
    if-ge v3, v6, :cond_7

    #@21b
    aget-object v0, v5, v3

    #@21d
    .line 692
    .restart local v0    # "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v0, :cond_6

    #@21f
    .line 693
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    #@222
    move-result-object v2

    #@223
    .line 694
    .local v2, "ir":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v2, :cond_6

    #@225
    .line 695
    invoke-virtual {v2, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccRecords;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@228
    .line 696
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    #@22b
    .line 691
    .end local v2    # "ir":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_6
    add-int/lit8 v3, v3, 0x1

    #@22d
    goto :goto_5

    #@22e
    .line 701
    .end local v0    # "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :cond_7
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    #@230
    if-nez v3, :cond_8

    #@232
    .line 702
    const-string/jumbo v3, " mCarrierPrivilegeRules: null"

    #@235
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@238
    .line 707
    :goto_6
    new-instance v3, Ljava/lang/StringBuilder;

    #@23a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@23d
    const-string/jumbo v4, " mCarrierPrivilegeRegistrants: size="

    #@240
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@243
    move-result-object v3

    #@244
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCarrierPrivilegeRegistrants:Landroid/os/RegistrantList;

    #@246
    invoke-virtual {v4}, Landroid/os/RegistrantList;->size()I

    #@249
    move-result v4

    #@24a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@24d
    move-result-object v3

    #@24e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@251
    move-result-object v3

    #@252
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@255
    .line 708
    const/4 v1, 0x0

    #@256
    :goto_7
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCarrierPrivilegeRegistrants:Landroid/os/RegistrantList;

    #@258
    invoke-virtual {v3}, Landroid/os/RegistrantList;->size()I

    #@25b
    move-result v3

    #@25c
    if-ge v1, v3, :cond_9

    #@25e
    .line 709
    new-instance v3, Ljava/lang/StringBuilder;

    #@260
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@263
    const-string/jumbo v4, "  mCarrierPrivilegeRegistrants["

    #@266
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@269
    move-result-object v3

    #@26a
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@26d
    move-result-object v3

    #@26e
    const-string/jumbo v4, "]="

    #@271
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@274
    move-result-object v4

    #@275
    .line 710
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCarrierPrivilegeRegistrants:Landroid/os/RegistrantList;

    #@277
    invoke-virtual {v3, v1}, Landroid/os/RegistrantList;->get(I)Ljava/lang/Object;

    #@27a
    move-result-object v3

    #@27b
    check-cast v3, Landroid/os/Registrant;

    #@27d
    invoke-virtual {v3}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    #@280
    move-result-object v3

    #@281
    .line 709
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@284
    move-result-object v3

    #@285
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@288
    move-result-object v3

    #@289
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@28c
    .line 708
    add-int/lit8 v1, v1, 0x1

    #@28e
    goto :goto_7

    #@28f
    .line 704
    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    #@291
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@294
    const-string/jumbo v4, " mCarrierPrivilegeRules: "

    #@297
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29a
    move-result-object v3

    #@29b
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    #@29d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2a0
    move-result-object v3

    #@2a1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a4
    move-result-object v3

    #@2a5
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2a8
    .line 705
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    #@2aa
    invoke-virtual {v3, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@2ad
    goto :goto_6

    #@2ae
    .line 712
    :cond_9
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    #@2b1
    .line 713
    const-string/jumbo v3, "mLocalLog:"

    #@2b4
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2b7
    .line 714
    sget-object v3, Lcom/android/internal/telephony/uicc/UiccCard;->mLocalLog:Landroid/util/LocalLog;

    #@2b9
    invoke-virtual {v3, p1, p2, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@2bc
    .line 715
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    #@2bf
    .line 653
    return-void
.end method

.method protected finalize()V
    .locals 1

    #@0
    .prologue
    .line 218
    const-string/jumbo v0, "UiccCard finalized"

    #@3
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    #@6
    .line 217
    return-void
.end method

.method public getApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .locals 3
    .param p1, "family"    # I

    #@0
    .prologue
    .line 416
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 417
    const/16 v0, 0x8

    #@5
    .line 418
    .local v0, "index":I
    packed-switch p1, :pswitch_data_0

    #@8
    .line 429
    :goto_0
    if-ltz v0, :cond_0

    #@a
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@c
    array-length v1, v1

    #@d
    if-ge v0, v1, :cond_0

    #@f
    .line 430
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@11
    aget-object v1, v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    monitor-exit v2

    #@14
    return-object v1

    #@15
    .line 420
    :pswitch_0
    :try_start_1
    iget v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mGsmUmtsSubscriptionAppIndex:I

    #@17
    goto :goto_0

    #@18
    .line 423
    :pswitch_1
    iget v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCdmaSubscriptionAppIndex:I

    #@1a
    goto :goto_0

    #@1b
    .line 426
    :pswitch_2
    iget v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mImsSubscriptionAppIndex:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1d
    goto :goto_0

    #@1e
    .line 432
    :cond_0
    const/4 v1, 0x0

    #@1f
    monitor-exit v2

    #@20
    return-object v1

    #@21
    .line 416
    :catchall_0
    move-exception v1

    #@22
    monitor-exit v2

    #@23
    throw v1

    #@24
    .line 418
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getApplicationByType(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .locals 4
    .param p1, "type"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 452
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;

    #@3
    monitor-enter v2

    #@4
    .line 453
    const/4 v0, 0x0

    #@5
    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@7
    array-length v1, v1

    #@8
    if-ge v0, v1, :cond_1

    #@a
    .line 454
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@c
    aget-object v1, v1, v0

    #@e
    if-eqz v1, :cond_0

    #@10
    .line 455
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@12
    aget-object v1, v1, v0

    #@14
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->ordinal()I

    #@1b
    move-result v1

    #@1c
    if-ne v1, p1, :cond_0

    #@1e
    .line 456
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@20
    aget-object v1, v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    monitor-exit v2

    #@23
    return-object v1

    #@24
    .line 453
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@26
    goto :goto_0

    #@27
    :cond_1
    monitor-exit v2

    #@28
    .line 459
    return-object v3

    #@29
    .line 452
    :catchall_0
    move-exception v1

    #@2a
    monitor-exit v2

    #@2b
    throw v1
.end method

.method public getApplicationIndex(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    .line 437
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 438
    if-ltz p1, :cond_0

    #@5
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@7
    array-length v0, v0

    #@8
    if-ge p1, v0, :cond_0

    #@a
    .line 439
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@c
    aget-object v0, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    monitor-exit v1

    #@f
    return-object v0

    #@10
    .line 441
    :cond_0
    const/4 v0, 0x0

    #@11
    monitor-exit v1

    #@12
    return-object v0

    #@13
    .line 437
    :catchall_0
    move-exception v0

    #@14
    monitor-exit v1

    #@15
    throw v0
.end method

.method public getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    .locals 2

    #@0
    .prologue
    .line 404
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 405
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return-object v1

    #@7
    .line 404
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method public getCarrierPackageNamesForIntent(Landroid/content/pm/PackageManager;Landroid/content/Intent;)Ljava/util/List;
    .locals 2
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
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
    const/4 v0, 0x0

    #@1
    .line 594
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    #@3
    if-nez v1, :cond_0

    #@5
    :goto_0
    return-object v0

    #@6
    .line 595
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    #@8
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->getCarrierPackageNamesForIntent(Landroid/content/pm/PackageManager;Landroid/content/Intent;)Ljava/util/List;

    #@b
    move-result-object v0

    #@c
    goto :goto_0
.end method

.method public getCarrierPrivilegeStatus(Landroid/content/pm/PackageManager;Ljava/lang/String;)I
    .locals 1
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p2, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 575
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 576
    const/4 v0, -0x1

    #@5
    .line 575
    :goto_0
    return v0

    #@6
    .line 577
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    #@8
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->getCarrierPrivilegeStatus(Landroid/content/pm/PackageManager;Ljava/lang/String;)I

    #@b
    move-result v0

    #@c
    goto :goto_0
.end method

.method public getCarrierPrivilegeStatus(Landroid/content/pm/Signature;Ljava/lang/String;)I
    .locals 1
    .param p1, "signature"    # Landroid/content/pm/Signature;
    .param p2, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 566
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 567
    const/4 v0, -0x1

    #@5
    .line 566
    :goto_0
    return v0

    #@6
    .line 568
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    #@8
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->getCarrierPrivilegeStatus(Landroid/content/pm/Signature;Ljava/lang/String;)I

    #@b
    move-result v0

    #@c
    goto :goto_0
.end method

.method public getCarrierPrivilegeStatusForCurrentTransaction(Landroid/content/pm/PackageManager;)I
    .locals 1
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;

    #@0
    .prologue
    .line 584
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 585
    const/4 v0, -0x1

    #@5
    .line 584
    :goto_0
    return v0

    #@6
    .line 586
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    #@8
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->getCarrierPrivilegeStatusForCurrentTransaction(Landroid/content/pm/PackageManager;)I

    #@b
    move-result v0

    #@c
    goto :goto_0
.end method

.method public getCatService()Lcom/android/internal/telephony/cat/CatService;
    .locals 1

    #@0
    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    #@2
    return-object v0
.end method

.method public getIccId()Ljava/lang/String;
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 630
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@3
    const/4 v2, 0x0

    #@4
    array-length v4, v3

    #@5
    :goto_0
    if-ge v2, v4, :cond_1

    #@7
    aget-object v0, v3, v2

    #@9
    .line 631
    .local v0, "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v0, :cond_0

    #@b
    .line 632
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    #@e
    move-result-object v1

    #@f
    .line 633
    .local v1, "ir":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v1, :cond_0

    #@11
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccRecords;->getIccId()Ljava/lang/String;

    #@14
    move-result-object v5

    #@15
    if-eqz v5, :cond_0

    #@17
    .line 634
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccRecords;->getIccId()Ljava/lang/String;

    #@1a
    move-result-object v2

    #@1b
    return-object v2

    #@1c
    .line 630
    .end local v1    # "ir":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 638
    .end local v0    # "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :cond_1
    return-object v6
.end method

.method public getNumApplications()I
    .locals 5

    #@0
    .prologue
    .line 541
    const/4 v1, 0x0

    #@1
    .line 542
    .local v1, "count":I
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@3
    const/4 v2, 0x0

    #@4
    array-length v4, v3

    #@5
    :goto_0
    if-ge v2, v4, :cond_1

    #@7
    aget-object v0, v3, v2

    #@9
    .line 543
    .local v0, "a":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v0, :cond_0

    #@b
    .line 544
    add-int/lit8 v1, v1, 0x1

    #@d
    .line 542
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@f
    goto :goto_0

    #@10
    .line 547
    .end local v0    # "a":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :cond_1
    return v1
.end method

.method public getOperatorBrandOverride()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 620
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccCard;->getIccId()Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    .line 621
    .local v0, "iccId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@8
    move-result v2

    #@9
    if-eqz v2, :cond_0

    #@b
    .line 622
    return-object v4

    #@c
    .line 624
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mContext:Landroid/content/Context;

    #@e
    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    #@11
    move-result-object v1

    #@12
    .line 625
    .local v1, "sp":Landroid/content/SharedPreferences;
    new-instance v2, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v3, "operator_branding_"

    #@1a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v2

    #@26
    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@29
    move-result-object v2

    #@2a
    return-object v2
.end method

.method public getPhoneId()I
    .locals 1

    #@0
    .prologue
    .line 551
    iget v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mPhoneId:I

    #@2
    return v0
.end method

.method public getUniversalPinState()Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;
    .locals 2

    #@0
    .prologue
    .line 410
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 411
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUniversalPinState:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return-object v1

    #@7
    .line 410
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method public iccCloseLogicalChannel(ILandroid/os/Message;)V
    .locals 3
    .param p1, "channel"    # I
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 500
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "Close Logical Channel: "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccCard;->loglocal(Ljava/lang/String;)V

    #@17
    .line 501
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@19
    .line 502
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mHandler:Landroid/os/Handler;

    #@1b
    const/16 v2, 0x10

    #@1d
    invoke-virtual {v1, v2, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@20
    move-result-object v1

    #@21
    .line 501
    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->iccCloseLogicalChannel(ILandroid/os/Message;)V

    #@24
    .line 499
    return-void
.end method

.method public iccExchangeSimIO(IIIIILjava/lang/String;Landroid/os/Message;)V
    .locals 11
    .param p1, "fileID"    # I
    .param p2, "command"    # I
    .param p3, "p1"    # I
    .param p4, "p2"    # I
    .param p5, "p3"    # I
    .param p6, "pathID"    # Ljava/lang/String;
    .param p7, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 528
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2
    .line 529
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mHandler:Landroid/os/Handler;

    #@4
    const/16 v3, 0x13

    #@6
    move-object/from16 v0, p7

    #@8
    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@b
    move-result-object v10

    #@c
    .line 528
    const/4 v8, 0x0

    #@d
    const/4 v9, 0x0

    #@e
    move v2, p2

    #@f
    move v3, p1

    #@10
    move-object/from16 v4, p6

    #@12
    move v5, p3

    #@13
    move v6, p4

    #@14
    move/from16 v7, p5

    #@16
    invoke-interface/range {v1 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    #@19
    .line 527
    return-void
.end method

.method public iccOpenLogicalChannel(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "AID"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 490
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "Open Logical Channel: "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    const-string/jumbo v1, " by pid:"

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@1a
    move-result v1

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 491
    const-string/jumbo v1, " uid:"

    #@22
    .line 490
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    .line 491
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@29
    move-result v1

    #@2a
    .line 490
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v0

    #@2e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v0

    #@32
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccCard;->loglocal(Ljava/lang/String;)V

    #@35
    .line 492
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@37
    .line 493
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mHandler:Landroid/os/Handler;

    #@39
    const/16 v2, 0xf

    #@3b
    invoke-virtual {v1, v2, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@3e
    move-result-object v1

    #@3f
    .line 492
    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->iccOpenLogicalChannel(Ljava/lang/String;Landroid/os/Message;)V

    #@42
    .line 489
    return-void
.end method

.method public iccTransmitApduBasicChannel(IIIIILjava/lang/String;Landroid/os/Message;)V
    .locals 8
    .param p1, "cla"    # I
    .param p2, "command"    # I
    .param p3, "p1"    # I
    .param p4, "p2"    # I
    .param p5, "p3"    # I
    .param p6, "data"    # Ljava/lang/String;
    .param p7, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 519
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2
    .line 520
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mHandler:Landroid/os/Handler;

    #@4
    const/16 v2, 0x12

    #@6
    invoke-virtual {v1, v2, p7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@9
    move-result-object v7

    #@a
    move v1, p1

    #@b
    move v2, p2

    #@c
    move v3, p3

    #@d
    move v4, p4

    #@e
    move v5, p5

    #@f
    move-object v6, p6

    #@10
    .line 519
    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/CommandsInterface;->iccTransmitApduBasicChannel(IIIIILjava/lang/String;Landroid/os/Message;)V

    #@13
    .line 518
    return-void
.end method

.method public iccTransmitApduLogicalChannel(IIIIIILjava/lang/String;Landroid/os/Message;)V
    .locals 10
    .param p1, "channel"    # I
    .param p2, "cla"    # I
    .param p3, "command"    # I
    .param p4, "p1"    # I
    .param p5, "p2"    # I
    .param p6, "p3"    # I
    .param p7, "data"    # Ljava/lang/String;
    .param p8, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 510
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2
    .line 511
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mHandler:Landroid/os/Handler;

    #@4
    const/16 v3, 0x11

    #@6
    move-object/from16 v0, p8

    #@8
    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@b
    move-result-object v9

    #@c
    move v2, p1

    #@d
    move v3, p2

    #@e
    move v4, p3

    #@f
    move v5, p4

    #@10
    move v6, p5

    #@11
    move/from16 v7, p6

    #@13
    move-object/from16 v8, p7

    #@15
    .line 510
    invoke-interface/range {v1 .. v9}, Lcom/android/internal/telephony/CommandsInterface;->iccTransmitApduLogicalChannel(IIIIIILjava/lang/String;Landroid/os/Message;)V

    #@18
    .line 509
    return-void
.end method

.method public isApplicationOnIcc(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Z
    .locals 3
    .param p1, "type"    # Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    #@0
    .prologue
    .line 393
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 394
    const/4 v0, 0x0

    #@4
    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@6
    array-length v1, v1

    #@7
    if-ge v0, v1, :cond_1

    #@9
    .line 395
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@b
    aget-object v1, v1, v0

    #@d
    if-eqz v1, :cond_0

    #@f
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@11
    aget-object v1, v1, v0

    #@13
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    move-result-object v1

    #@17
    if-ne v1, p1, :cond_0

    #@19
    .line 396
    const/4 v1, 0x1

    #@1a
    monitor-exit v2

    #@1b
    return v1

    #@1c
    .line 394
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 399
    :cond_1
    const/4 v1, 0x0

    #@20
    monitor-exit v2

    #@21
    return v1

    #@22
    .line 393
    :catchall_0
    move-exception v1

    #@23
    monitor-exit v2

    #@24
    throw v1
.end method

.method public registerForAbsent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 261
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 262
    :try_start_0
    new-instance v0, Landroid/os/Registrant;

    #@5
    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    #@8
    .line 264
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mAbsentRegistrants:Landroid/os/RegistrantList;

    #@a
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    #@d
    .line 266
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    #@f
    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    #@11
    if-ne v1, v3, :cond_0

    #@13
    .line 267
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    :cond_0
    monitor-exit v2

    #@17
    .line 260
    return-void

    #@18
    .line 261
    .end local v0    # "r":Landroid/os/Registrant;
    :catchall_0
    move-exception v1

    #@19
    monitor-exit v2

    #@1a
    throw v1
.end method

.method public registerForCarrierPrivilegeRulesLoaded(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 282
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 283
    :try_start_0
    new-instance v0, Landroid/os/Registrant;

    #@5
    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    #@8
    .line 285
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCarrierPrivilegeRegistrants:Landroid/os/RegistrantList;

    #@a
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    #@d
    .line 287
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccCard;->areCarrierPriviligeRulesLoaded()Z

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_0

    #@13
    .line 288
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    :cond_0
    monitor-exit v2

    #@17
    .line 281
    return-void

    #@18
    .line 282
    .end local v0    # "r":Landroid/os/Registrant;
    :catchall_0
    move-exception v1

    #@19
    monitor-exit v2

    #@1a
    throw v1
.end method

.method public resetAppWithAid(Ljava/lang/String;)Z
    .locals 5
    .param p1, "aid"    # Ljava/lang/String;

    #@0
    .prologue
    .line 469
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v3

    #@3
    .line 470
    const/4 v0, 0x0

    #@4
    .line 471
    .local v0, "changed":Z
    const/4 v1, 0x0

    #@5
    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@7
    array-length v2, v2

    #@8
    if-ge v1, v2, :cond_2

    #@a
    .line 472
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@c
    aget-object v2, v2, v1

    #@e
    if-eqz v2, :cond_1

    #@10
    .line 473
    if-eqz p1, :cond_0

    #@12
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@14
    aget-object v2, v2, v1

    #@16
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getAid()Ljava/lang/String;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1d
    move-result v2

    #@1e
    .line 472
    if-eqz v2, :cond_1

    #@20
    .line 475
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@22
    aget-object v2, v2, v1

    #@24
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->dispose()V

    #@27
    .line 476
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@29
    const/4 v4, 0x0

    #@2a
    aput-object v4, v2, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2c
    .line 477
    const/4 v0, 0x1

    #@2d
    .line 471
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@2f
    goto :goto_0

    #@30
    :cond_2
    monitor-exit v3

    #@31
    .line 480
    return v0

    #@32
    .line 469
    :catchall_0
    move-exception v2

    #@33
    monitor-exit v3

    #@34
    throw v2
.end method

.method public sendEnvelopeWithStatus(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "contents"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 536
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->sendEnvelopeWithStatus(Ljava/lang/String;Landroid/os/Message;)V

    #@5
    .line 535
    return-void
.end method

.method public setOperatorBrandOverride(Ljava/lang/String;)Z
    .locals 5
    .param p1, "brand"    # Ljava/lang/String;

    #@0
    .prologue
    .line 600
    new-instance v3, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v4, "setOperatorBrandOverride: "

    #@8
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v3

    #@c
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v3

    #@10
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v3

    #@14
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    #@17
    .line 601
    new-instance v3, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v4, "current iccId: "

    #@1f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v3

    #@23
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccCard;->getIccId()Ljava/lang/String;

    #@26
    move-result-object v4

    #@27
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v3

    #@2b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v3

    #@2f
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    #@32
    .line 603
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccCard;->getIccId()Ljava/lang/String;

    #@35
    move-result-object v0

    #@36
    .line 604
    .local v0, "iccId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@39
    move-result v3

    #@3a
    if-eqz v3, :cond_0

    #@3c
    .line 605
    const/4 v3, 0x0

    #@3d
    return v3

    #@3e
    .line 609
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mContext:Landroid/content/Context;

    #@40
    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    #@43
    move-result-object v3

    #@44
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    #@47
    move-result-object v2

    #@48
    .line 610
    .local v2, "spEditor":Landroid/content/SharedPreferences$Editor;
    new-instance v3, Ljava/lang/StringBuilder;

    #@4a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@4d
    const-string/jumbo v4, "operator_branding_"

    #@50
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v3

    #@54
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v3

    #@58
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5b
    move-result-object v1

    #@5c
    .line 611
    .local v1, "key":Ljava/lang/String;
    if-nez p1, :cond_1

    #@5e
    .line 612
    invoke-interface {v2, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    #@61
    move-result-object v3

    #@62
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    #@65
    .line 616
    :goto_0
    const/4 v3, 0x1

    #@66
    return v3

    #@67
    .line 614
    :cond_1
    invoke-interface {v2, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    #@6a
    move-result-object v3

    #@6b
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    #@6e
    goto :goto_0
.end method

.method public unregisterForAbsent(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 273
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 274
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mAbsentRegistrants:Landroid/os/RegistrantList;

    #@5
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 272
    return-void

    #@a
    .line 273
    :catchall_0
    move-exception v0

    #@b
    monitor-exit v1

    #@c
    throw v0
.end method

.method public unregisterForCarrierPrivilegeRulesLoaded(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 294
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 295
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCarrierPrivilegeRegistrants:Landroid/os/RegistrantList;

    #@5
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 293
    return-void

    #@a
    .line 294
    :catchall_0
    move-exception v0

    #@b
    monitor-exit v1

    #@c
    throw v0
.end method

.method public update(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;)V
    .locals 9
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p3, "ics"    # Lcom/android/internal/telephony/uicc/IccCardStatus;

    #@0
    .prologue
    .line 134
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v4

    #@3
    .line 135
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    #@5
    .line 136
    .local v1, "oldState":Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    iget-object v3, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    #@7
    iput-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    #@9
    .line 137
    iget-object v3, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mUniversalPinState:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    #@b
    iput-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUniversalPinState:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    #@d
    .line 138
    iget v3, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mGsmUmtsSubscriptionAppIndex:I

    #@f
    iput v3, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mGsmUmtsSubscriptionAppIndex:I

    #@11
    .line 139
    iget v3, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mCdmaSubscriptionAppIndex:I

    #@13
    iput v3, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCdmaSubscriptionAppIndex:I

    #@15
    .line 140
    iget v3, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mImsSubscriptionAppIndex:I

    #@17
    iput v3, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mImsSubscriptionAppIndex:I

    #@19
    .line 141
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mContext:Landroid/content/Context;

    #@1b
    .line 142
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@1d
    .line 145
    new-instance v3, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    iget-object v5, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    #@24
    array-length v5, v5

    #@25
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@28
    move-result-object v3

    #@29
    const-string/jumbo v5, " applications"

    #@2c
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v3

    #@30
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v3

    #@34
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    #@37
    .line 146
    const/4 v0, 0x0

    #@38
    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@3a
    array-length v3, v3

    #@3b
    if-ge v0, v3, :cond_3

    #@3d
    .line 147
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@3f
    aget-object v3, v3, v0

    #@41
    if-nez v3, :cond_1

    #@43
    .line 149
    iget-object v3, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    #@45
    array-length v3, v3

    #@46
    if-ge v0, v3, :cond_0

    #@48
    .line 150
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@4a
    new-instance v5, Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@4c
    .line 151
    iget-object v6, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    #@4e
    aget-object v6, v6, v0

    #@50
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mContext:Landroid/content/Context;

    #@52
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@54
    .line 150
    invoke-direct {v5, p0, v6, v7, v8}, Lcom/android/internal/telephony/uicc/UiccCardApplication;-><init>(Lcom/android/internal/telephony/uicc/UiccCard;Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    #@57
    aput-object v5, v3, v0

    #@59
    .line 146
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    #@5b
    goto :goto_0

    #@5c
    .line 153
    :cond_1
    iget-object v3, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    #@5e
    array-length v3, v3

    #@5f
    if-lt v0, v3, :cond_2

    #@61
    .line 155
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@63
    aget-object v3, v3, v0

    #@65
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->dispose()V

    #@68
    .line 156
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@6a
    const/4 v5, 0x0

    #@6b
    aput-object v5, v3, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6d
    goto :goto_1

    #@6e
    .line 134
    .end local v0    # "i":I
    .end local v1    # "oldState":Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    :catchall_0
    move-exception v3

    #@6f
    monitor-exit v4

    #@70
    throw v3

    #@71
    .line 159
    .restart local v0    # "i":I
    .restart local v1    # "oldState":Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@73
    aget-object v3, v3, v0

    #@75
    iget-object v5, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    #@77
    aget-object v5, v5, v0

    #@79
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mContext:Landroid/content/Context;

    #@7b
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@7d
    invoke-virtual {v3, v5, v6, v7}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->update(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    #@80
    goto :goto_1

    #@81
    .line 163
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccCard;->createAndUpdateCatService()V

    #@84
    .line 166
    new-instance v3, Ljava/lang/StringBuilder;

    #@86
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@89
    const-string/jumbo v5, "Before privilege rules: "

    #@8c
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v3

    #@90
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    #@92
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v3

    #@96
    const-string/jumbo v5, " : "

    #@99
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9c
    move-result-object v3

    #@9d
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    #@9f
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a2
    move-result-object v3

    #@a3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a6
    move-result-object v3

    #@a7
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    #@aa
    .line 167
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    #@ac
    if-nez v3, :cond_6

    #@ae
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    #@b0
    sget-object v5, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    #@b2
    if-ne v3, v5, :cond_6

    #@b4
    .line 168
    new-instance v3, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    #@b6
    .line 169
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mHandler:Landroid/os/Handler;

    #@b8
    const/16 v6, 0x14

    #@ba
    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@bd
    move-result-object v5

    #@be
    .line 168
    invoke-direct {v3, p0, v5}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;-><init>(Lcom/android/internal/telephony/uicc/UiccCard;Landroid/os/Message;)V

    #@c1
    iput-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    #@c3
    .line 174
    :cond_4
    :goto_2
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccCard;->sanitizeApplicationIndexes()V

    #@c6
    .line 176
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@c8
    invoke-interface {v3}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    #@cb
    move-result-object v2

    #@cc
    .line 177
    .local v2, "radioState":Lcom/android/internal/telephony/CommandsInterface$RadioState;
    new-instance v3, Ljava/lang/StringBuilder;

    #@ce
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@d1
    const-string/jumbo v5, "update: radioState="

    #@d4
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d7
    move-result-object v3

    #@d8
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@db
    move-result-object v3

    #@dc
    const-string/jumbo v5, " mLastRadioState="

    #@df
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e2
    move-result-object v3

    #@e3
    .line 178
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLastRadioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    #@e5
    .line 177
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@e8
    move-result-object v3

    #@e9
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ec
    move-result-object v3

    #@ed
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    #@f0
    .line 180
    sget-object v3, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_ON:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    #@f2
    if-ne v2, v3, :cond_5

    #@f4
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLastRadioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    #@f6
    sget-object v5, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_ON:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    #@f8
    if-ne v3, v5, :cond_5

    #@fa
    .line 181
    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    #@fc
    if-eq v1, v3, :cond_7

    #@fe
    .line 182
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    #@100
    sget-object v5, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    #@102
    if-ne v3, v5, :cond_7

    #@104
    .line 183
    const-string/jumbo v3, "update: notify card removed"

    #@107
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    #@10a
    .line 184
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mAbsentRegistrants:Landroid/os/RegistrantList;

    #@10c
    invoke-virtual {v3}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@10f
    .line 185
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mHandler:Landroid/os/Handler;

    #@111
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mHandler:Landroid/os/Handler;

    #@113
    const/16 v6, 0xd

    #@115
    const/4 v7, 0x0

    #@116
    invoke-virtual {v5, v6, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@119
    move-result-object v5

    #@11a
    invoke-virtual {v3, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@11d
    .line 192
    :cond_5
    :goto_3
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mLastRadioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@11f
    monitor-exit v4

    #@120
    .line 133
    return-void

    #@121
    .line 170
    .end local v2    # "radioState":Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :cond_6
    :try_start_2
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    #@123
    if-eqz v3, :cond_4

    #@125
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    #@127
    sget-object v5, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    #@129
    if-eq v3, v5, :cond_4

    #@12b
    .line 171
    const/4 v3, 0x0

    #@12c
    iput-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCarrierPrivilegeRules:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    #@12e
    goto :goto_2

    #@12f
    .line 186
    .restart local v2    # "radioState":Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :cond_7
    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    #@131
    if-ne v1, v3, :cond_5

    #@133
    .line 187
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    #@135
    sget-object v5, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    #@137
    if-eq v3, v5, :cond_5

    #@139
    .line 188
    const-string/jumbo v3, "update: notify card added"

    #@13c
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V

    #@13f
    .line 189
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mHandler:Landroid/os/Handler;

    #@141
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCard;->mHandler:Landroid/os/Handler;

    #@143
    const/16 v6, 0xe

    #@145
    const/4 v7, 0x0

    #@146
    invoke-virtual {v5, v6, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@149
    move-result-object v5

    #@14a
    invoke-virtual {v3, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@14d
    goto :goto_3
.end method
