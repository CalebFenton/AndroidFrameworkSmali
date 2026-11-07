.class public Lcom/android/internal/telephony/uicc/UiccSlot;
.super Landroid/os/Handler;
.source "UiccSlot.java"


# static fields
.field public static final blacklist EXTRA_ICC_CARD_ADDED:Ljava/lang/String; = "com.android.internal.telephony.uicc.ICC_CARD_ADDED"

.field public static final blacklist INVALID_PHONE_ID:I = -0x1

.field public static final blacklist VOLTAGE_CLASS_A:I = 0x1

.field public static final blacklist VOLTAGE_CLASS_B:I = 0x2

.field public static final blacklist VOLTAGE_CLASS_C:I = 0x3

.field public static final blacklist VOLTAGE_CLASS_UNKNOWN:I


# instance fields
.field private blacklist mActive:Z

.field private blacklist mAtr:Lcom/android/internal/telephony/uicc/AnswerToReset;

.field private blacklist mCardState:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mEid:Ljava/lang/String;

.field private blacklist mIccIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mIsEuicc:Z

.field private blacklist mIsRemovable:Z

.field private blacklist mLastRadioState:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mLock:Ljava/lang/Object;

.field private blacklist mMinimumVoltageClass:I

.field private blacklist mPortIdxToPhoneId:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mStateIsUnknown:Z

.field private blacklist mSupportedMepMode:Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;

.field private blacklist mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;


# direct methods
.method public static synthetic blacklist $r8$lambda$EoANDaoGoiZ579qj7mJdCx_KJGU(Ljava/util/Map$Entry;)Ljava/lang/String;
    .registers 1

    .line 672
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Landroid/telephony/SubscriptionInfo;->getPrintableId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmContext(Lcom/android/internal/telephony/uicc/UiccSlot;)Landroid/content/Context;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLock(Lcom/android/internal/telephony/uicc/UiccSlot;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mlog(Lcom/android/internal/telephony/uicc/UiccSlot;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccSlot;->log(Ljava/lang/String;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Z)V
    .registers 4

    .line 109
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 84
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mLock:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 86
    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mStateIsUnknown:Z

    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mPortIdxToPhoneId:Ljava/util/HashMap;

    .line 99
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mLastRadioState:Ljava/util/HashMap;

    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mIccIds:Ljava/util/HashMap;

    .line 104
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mCardState:Ljava/util/HashMap;

    .line 110
    const-string v0, "Creating"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccSlot;->log(Ljava/lang/String;)V

    .line 111
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mContext:Landroid/content/Context;

    .line 112
    iput-boolean p2, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mActive:Z

    .line 113
    sget-object p1, Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;->NONE:Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mSupportedMepMode:Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;

    return-void
.end method

.method private blacklist absentStateUpdateNeeded(Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;I)Z
    .registers 4

    .line 348
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne p1, v0, :cond_8

    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    if-eqz p1, :cond_16

    :cond_8
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mCardState:Ljava/util/HashMap;

    .line 349
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist checkIsEuiccSupported()V
    .registers 3

    .line 432
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mAtr:Lcom/android/internal/telephony/uicc/AnswerToReset;

    if-nez v0, :cond_8

    const/4 v0, 0x0

    .line 433
    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mIsEuicc:Z

    return-void

    .line 436
    :cond_8
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/AnswerToReset;->isEuiccSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mIsEuicc:Z

    .line 437
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " checkIsEuiccSupported : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mIsEuicc:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccSlot;->log(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist checkMinimumVoltageClass()V
    .registers 6

    const/4 v0, 0x0

    .line 441
    iput v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mMinimumVoltageClass:I

    .line 442
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mAtr:Lcom/android/internal/telephony/uicc/AnswerToReset;

    if-nez v1, :cond_8

    goto :goto_63

    .line 447
    :cond_8
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/AnswerToReset;->getInterfaceBytes()Ljava/util/List;

    move-result-object v1

    .line 448
    :goto_c
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ge v0, v2, :cond_67

    .line 449
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;->getTD()Ljava/lang/Byte;

    move-result-object v2

    if-eqz v2, :cond_64

    .line 450
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;->getTD()Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    const/16 v4, 0xf

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_64

    add-int/lit8 v2, v0, 0x1

    .line 452
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;->getTA()Ljava/lang/Byte;

    move-result-object v4

    if-eqz v4, :cond_64

    .line 453
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;->getTA()Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_55

    .line 455
    iput v3, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mMinimumVoltageClass:I

    :cond_55
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_5c

    const/4 v1, 0x2

    .line 458
    iput v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mMinimumVoltageClass:I

    :cond_5c
    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_63

    const/4 v0, 0x3

    .line 461
    iput v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mMinimumVoltageClass:I

    :cond_63
    :goto_63
    return-void

    :cond_64
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 467
    :cond_67
    iput v3, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mMinimumVoltageClass:I

    return-void
.end method

.method private blacklist disposeUiccCardIfNeeded(ZI)V
    .registers 4

    .line 383
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    if-eqz v0, :cond_17

    .line 385
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/uicc/UiccCard;->disposePort(I)V

    .line 386
    iget-object p2, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/UiccCard;->getUiccPortList()[Lcom/android/internal/telephony/uicc/UiccPort;

    move-result-object p2

    invoke-static {p2}, Lcom/android/internal/telephony/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_16

    .line 388
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccSlot;->nullifyUiccCard(Z)V

    :cond_16
    return-void

    .line 391
    :cond_17
    iput-boolean p1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mStateIsUnknown:Z

    return-void
.end method

.method private blacklist getAnyValidPhoneId()I
    .registers 3

    .line 284
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mPortIdxToPhoneId:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 285
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_a

    return v0

    :cond_21
    const/4 p0, -0x1

    return p0
.end method

.method private blacklist getPrintableIccIds()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 667
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 668
    :try_start_3
    new-instance v1, Ljava/util/HashMap;

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mIccIds:Ljava/util/HashMap;

    invoke-direct {v1, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 669
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_28

    .line 670
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/uicc/UiccSlot$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/UiccSlot$$ExternalSyntheticLambda0;-><init>()V

    new-instance v1, Lcom/android/internal/telephony/uicc/UiccSlot$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/internal/telephony/uicc/UiccSlot$$ExternalSyntheticLambda1;-><init>()V

    .line 671
    invoke-static {v0, v1}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0

    :catchall_28
    move-exception p0

    .line 669
    :try_start_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw p0
.end method

.method private blacklist hasActivePort([Lcom/android/internal/telephony/uicc/IccSimPortInfo;)Z
    .registers 5

    .line 274
    array-length p0, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_3
    if-ge v1, p0, :cond_10

    aget-object v2, p1, v1

    .line 275
    iget-boolean v2, v2, Lcom/android/internal/telephony/uicc/IccSimPortInfo;->mPortActive:Z

    if-eqz v2, :cond_d

    const/4 p0, 0x1

    return p0

    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_10
    return v0
.end method

.method private blacklist isSlotRemovable(I)Z
    .registers 7

    .line 417
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x1070105

    .line 418
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p0

    const/4 v0, 0x1

    if-nez p0, :cond_11

    return v0

    .line 422
    :cond_11
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_14
    if-ge v3, v1, :cond_1e

    aget v4, p0, v3

    if-ne v4, p1, :cond_1b

    return v2

    :cond_1b
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    :cond_1e
    return v0
.end method

.method private blacklist log(Ljava/lang/String;)V
    .registers 2

    .line 658
    const-string p0, "UiccSlot"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist loge(Ljava/lang/String;)V
    .registers 2

    .line 662
    const-string p0, "UiccSlot"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist nullifyUiccCard(Z)V
    .registers 3

    .line 375
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    if-eqz v0, :cond_7

    .line 376
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCard;->dispose()V

    .line 378
    :cond_7
    iput-boolean p1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mStateIsUnknown:Z

    const/4 p1, 0x0

    .line 379
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    return-void
.end method

.method private blacklist onIccSwap(Z)V
    .registers 4

    .line 519
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11101c4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 523
    const-string p1, "onIccSwap: isHotSwapSupported is true, don\'t prompt for rebooting"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccSlot;->log(Ljava/lang/String;)V

    return-void

    .line 527
    :cond_15
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccSlot;->getAnyValidPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 528
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isShuttingDown()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 529
    const-string p1, "onIccSwap: already doing shutdown, no need to prompt"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccSlot;->log(Ljava/lang/String;)V

    return-void

    .line 533
    :cond_2b
    const-string v0, "onIccSwap: isHotSwapSupported is false, prompt for rebooting"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccSlot;->log(Ljava/lang/String;)V

    .line 535
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccSlot;->promptForRestart(Z)V

    return-void
.end method

.method private blacklist parseAtr(Ljava/lang/String;)V
    .registers 2

    .line 471
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/AnswerToReset;->parseAtr(Ljava/lang/String;)Lcom/android/internal/telephony/uicc/AnswerToReset;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mAtr:Lcom/android/internal/telephony/uicc/AnswerToReset;

    .line 472
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccSlot;->checkIsEuiccSupported()V

    .line 473
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccSlot;->checkMinimumVoltageClass()V

    return-void
.end method

.method private blacklist promptForRestart(Z)V
    .registers 7

    .line 539
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 540
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x104028a

    .line 542
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 541
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_4b

    .line 544
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x10000000

    .line 545
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.android.internal.telephony.uicc.ICC_CARD_ADDED"

    .line 546
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_34

    .line 548
    :try_start_2b
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_32
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2b .. :try_end_32} :catch_36
    .catchall {:try_start_2b .. :try_end_32} :catchall_34

    .line 549
    :try_start_32
    monitor-exit v0

    return-void

    :catchall_34
    move-exception p0

    goto :goto_a2

    :catch_36
    move-exception v1

    .line 551
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find ICC hotswap prompt for restart activity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccSlot;->loge(Ljava/lang/String;)V

    .line 565
    :cond_4b
    new-instance v1, Lcom/android/internal/telephony/uicc/UiccSlot$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/uicc/UiccSlot$1;-><init>(Lcom/android/internal/telephony/uicc/UiccSlot;)V

    .line 580
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz p1, :cond_5e

    const v3, 0x10409ce

    .line 582
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_65

    :cond_5e
    const v3, 0x10409d1

    .line 583
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_65
    if-eqz p1, :cond_6f

    const p1, 0x10409cd

    .line 584
    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_76

    :cond_6f
    const p1, 0x10409d0

    .line 585
    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_76
    const v4, 0x10409d2

    .line 586
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 588
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mContext:Landroid/content/Context;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 589
    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 590
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 591
    invoke-virtual {p0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 592
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    .line 593
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v1, 0x7d3

    invoke-virtual {p1, v1}, Landroid/view/Window;->setType(I)V

    .line 594
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    .line 595
    monitor-exit v0

    return-void

    :goto_a2
    monitor-exit v0
    :try_end_a3
    .catchall {:try_start_32 .. :try_end_a3} :catchall_34

    throw p0
.end method

.method private blacklist updateCardStateAbsent(III)V
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 356
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-eq p1, v1, :cond_28

    .line 354
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mLastRadioState:Ljava/util/HashMap;

    .line 356
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 355
    invoke-virtual {p1, v3, v2}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eq p1, v1, :cond_28

    .line 358
    const-string p1, "update: notify card removed"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccSlot;->log(Ljava/lang/String;)V

    const/16 p1, 0xd

    .line 359
    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 362
    :cond_28
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object p1

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {p1, p2, v1, v0}, Lcom/android/internal/telephony/uicc/UiccController;->updateSimState(ILcom/android/internal/telephony/IccCardConstants$State;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 364
    invoke-direct {p0, p1, p3}, Lcom/android/internal/telephony/uicc/UiccSlot;->disposeUiccCardIfNeeded(ZI)V

    .line 367
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mPortIdxToPhoneId:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mLastRadioState:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private blacklist updateSupportedMepMode(Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;)V
    .registers 3

    .line 257
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mSupportedMepMode:Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;

    .line 260
    sget-object v0, Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;->NONE:Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;

    if-ne p1, v0, :cond_24

    .line 264
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mPortIdxToPhoneId:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_24

    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mAtr:Lcom/android/internal/telephony/uicc/AnswerToReset;

    if-eqz p1, :cond_24

    .line 265
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AnswerToReset;->isMultipleEnabledProfilesSupported()Z

    move-result p1

    if-eqz p1, :cond_24

    .line 267
    const-string p1, "UiccSlot"

    const-string v0, "Modem does not send proper supported MEP mode or older HAL version"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    sget-object p1, Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;->MEP_B:Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mSupportedMepMode:Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;

    :cond_24
    return-void
.end method


# virtual methods
.method public blacklist dispose()V
    .registers 2

    const/4 v0, 0x0

    .line 399
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccSlot;->nullifyUiccCard(Z)V

    return-void
.end method

.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7

    .line 679
    new-instance v0, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 680
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mActive="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mActive:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 681
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsEuicc="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mIsEuicc:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 682
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isEuiccSupportsMultipleEnabledProfiles="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccSlot;->isMultipleEnabledProfileSupported()Z

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 683
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsRemovable="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mIsRemovable:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 684
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLastRadioState="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mLastRadioState:Ljava/util/HashMap;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 685
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIccIds="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccSlot;->getPrintableIccIds()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 686
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPortIdxToPhoneId="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mPortIdxToPhoneId:Ljava/util/HashMap;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 687
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mEid="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_DEBUGGABLE:Z

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mEid:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->pii(ZLjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 688
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCardState="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mCardState:Ljava/util/HashMap;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 689
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSupportedMepMode="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mSupportedMepMode:Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 690
    iget-object p2, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    if-eqz p2, :cond_fc

    .line 691
    const-string p2, "mUiccCard="

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 692
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {p0, p1, v0, p3}, Lcom/android/internal/telephony/uicc/UiccCard;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_101

    .line 694
    :cond_fc
    const-string p0, "mUiccCard=null"

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 696
    :goto_101
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->println()V

    .line 697
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method protected whitelist test-api finalize()V
    .registers 2

    .line 514
    const-string v0, "UiccSlot finalized"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccSlot;->log(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    .registers 3

    .line 617
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 619
    :try_start_3
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mCardState:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-nez p0, :cond_17

    .line 620
    sget-object p0, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    goto :goto_17

    :catchall_15
    move-exception p0

    goto :goto_19

    :cond_17
    :goto_17
    monitor-exit v0

    return-object p0

    .line 621
    :goto_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_15

    throw p0
.end method

.method public blacklist getEid()Ljava/lang/String;
    .registers 1

    .line 505
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mEid:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getIccId(I)Ljava/lang/String;
    .registers 3

    .line 499
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 500
    :try_start_3
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mIccIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    monitor-exit v0

    return-object p0

    :catchall_11
    move-exception p0

    .line 501
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public blacklist getMinimumVoltageClass()I
    .registers 1

    .line 482
    iget p0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mMinimumVoltageClass:I

    return p0
.end method

.method public blacklist getPhoneIdFromPortIndex(I)I
    .registers 4

    .line 328
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 329
    :try_start_3
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mPortIdxToPhoneId:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_1a
    move-exception p0

    .line 330
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method public blacklist getPortIndexFromIccId(Ljava/lang/String;)I
    .registers 5

    .line 316
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 317
    :try_start_3
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mIccIds:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 318
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2, p1}, Lcom/android/internal/telephony/uicc/IccUtils;->compareIgnoreTrailingFs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 319
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_31
    move-exception p0

    goto :goto_36

    :cond_33
    const/4 p0, -0x1

    .line 323
    monitor-exit v0

    return p0

    .line 324
    :goto_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_31

    throw p0
.end method

.method public blacklist getPortIndexFromPhoneId(I)I
    .registers 5

    .line 305
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 306
    :try_start_3
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mPortIdxToPhoneId:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 307
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_d

    .line 308
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_31
    move-exception p0

    goto :goto_36

    :cond_33
    const/4 p0, 0x0

    .line 311
    monitor-exit v0

    return p0

    .line 312
    :goto_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_31

    throw p0
.end method

.method public blacklist getPortList()[I
    .registers 3

    .line 294
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 295
    :try_start_3
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mPortIdxToPhoneId:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/android/internal/telephony/RadioConfig$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/internal/telephony/RadioConfig$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_1c
    move-exception p0

    .line 296
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw p0
.end method

.method public blacklist getSupportedMepMode()Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;
    .registers 2

    .line 637
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 638
    :try_start_3
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mSupportedMepMode:Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;

    monitor-exit v0

    return-object p0

    :catchall_7
    move-exception p0

    .line 639
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public blacklist getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;
    .registers 2

    .line 628
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 629
    :try_start_3
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    monitor-exit v0

    return-object p0

    :catchall_7
    move-exception p0

    .line 630
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 600
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xd

    if-eq v0, v1, :cond_26

    const/16 v1, 0xe

    if-eq v0, v1, :cond_21

    .line 608
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown Event "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccSlot;->loge(Ljava/lang/String;)V

    return-void

    :cond_21
    const/4 p1, 0x1

    .line 605
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccSlot;->onIccSwap(Z)V

    return-void

    :cond_26
    const/4 p1, 0x0

    .line 602
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccSlot;->onIccSwap(Z)V

    return-void
.end method

.method public blacklist isActive()Z
    .registers 1

    .line 486
    iget-boolean p0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mActive:Z

    return p0
.end method

.method public blacklist isEuicc()Z
    .registers 1

    .line 477
    iget-boolean p0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mIsEuicc:Z

    return p0
.end method

.method public blacklist isExtendedApduSupported()Z
    .registers 1

    .line 509
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mAtr:Lcom/android/internal/telephony/uicc/AnswerToReset;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/AnswerToReset;->isExtendedApduSupported()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isMultipleEnabledProfileSupported()Z
    .registers 2

    .line 342
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 343
    :try_start_3
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mSupportedMepMode:Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;->isMepMode()Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    .line 344
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public blacklist isPortActive(I)Z
    .registers 4

    .line 334
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 335
    :try_start_3
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mPortIdxToPhoneId:Ljava/util/HashMap;

    .line 336
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 335
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_1e
    move-exception p0

    .line 337
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw p0
.end method

.method public blacklist isRemovable()Z
    .registers 1

    .line 490
    iget-boolean p0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mIsRemovable:Z

    return p0
.end method

.method public blacklist isStateUnknown()Z
    .registers 4

    .line 404
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mCardState:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-eqz v0, :cond_1b

    .line 405
    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v0, v2, :cond_14

    goto :goto_1b

    .line 412
    :cond_14
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    if-nez p0, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    return v1

    .line 407
    :cond_1b
    :goto_1b
    iget-boolean p0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mStateIsUnknown:Z

    return p0
.end method

.method public blacklist isValidPortIndex(I)Z
    .registers 2

    .line 301
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mPortIdxToPhoneId:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public blacklist onRadioStateUnavailable(I)V
    .registers 6

    .line 645
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/UiccSlot;->getPortIndexFromPhoneId(I)I

    move-result v0

    const/4 v1, 0x1

    .line 646
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/uicc/UiccSlot;->disposeUiccCardIfNeeded(ZI)V

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq p1, v1, :cond_15

    .line 649
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v1

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v1, p1, v3, v2}, Lcom/android/internal/telephony/uicc/UiccController;->updateSimState(ILcom/android/internal/telephony/IccCardConstants$State;Ljava/lang/String;)V

    .line 652
    :cond_15
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mLastRadioState:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 654
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mCardState:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 703
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UiccSlot: mActive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIccId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccSlot;->getPrintableIccIds()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mIsEuicc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mIsEuicc:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", MEP="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 704
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccSlot;->isMultipleEnabledProfileSupported()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mPortIdxToPhoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mPortIdxToPhoneId:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mEid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_DEBUGGABLE:Z

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mEid:Ljava/lang/String;

    .line 705
    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->pii(ZLjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mCardState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mCardState:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mSupportedMepMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mSupportedMepMode:Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist update(Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;II)V
    .registers 15

    .line 120
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 121
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mPortIdxToPhoneId:Ljava/util/HashMap;

    iget-object v2, p2, Lcom/android/internal/telephony/uicc/IccCardStatus;->mSlotPortMapping:Lcom/android/internal/telephony/uicc/IccSlotPortMapping;

    iget v2, v2, Lcom/android/internal/telephony/uicc/IccSlotPortMapping;->mPortIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mCardState:Ljava/util/HashMap;

    iget-object v2, p2, Lcom/android/internal/telephony/uicc/IccCardStatus;->mSlotPortMapping:Lcom/android/internal/telephony/uicc/IccSlotPortMapping;

    iget v2, v2, Lcom/android/internal/telephony/uicc/IccSlotPortMapping;->mPortIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 123
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mCardState:Ljava/util/HashMap;

    iget-object v3, p2, Lcom/android/internal/telephony/uicc/IccCardStatus;->mSlotPortMapping:Lcom/android/internal/telephony/uicc/IccSlotPortMapping;

    iget v3, v3, Lcom/android/internal/telephony/uicc/IccSlotPortMapping;->mPortIndex:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v6, p2, Lcom/android/internal/telephony/uicc/IccCardStatus;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    invoke-virtual {v2, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mIccIds:Ljava/util/HashMap;

    iget-object v3, p2, Lcom/android/internal/telephony/uicc/IccCardStatus;->mSlotPortMapping:Lcom/android/internal/telephony/uicc/IccSlotPortMapping;

    iget v3, v3, Lcom/android/internal/telephony/uicc/IccSlotPortMapping;->mPortIndex:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v6, p2, Lcom/android/internal/telephony/uicc/IccCardStatus;->iccid:Ljava/lang/String;

    invoke-virtual {v2, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    iget-object v2, p2, Lcom/android/internal/telephony/uicc/IccCardStatus;->atr:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UiccSlot;->parseAtr(Ljava/lang/String;)V

    .line 126
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/uicc/UiccSlot;->isSlotRemovable(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mIsRemovable:Z

    .line 128
    iget-object v2, p2, Lcom/android/internal/telephony/uicc/IccCardStatus;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->isCardPresent()Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 129
    iget-object v2, p2, Lcom/android/internal/telephony/uicc/IccCardStatus;->mSupportedMepMode:Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UiccSlot;->updateSupportedMepMode(Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;)V

    goto :goto_5e

    :catchall_5b
    move-exception v0

    goto/16 :goto_16f

    .line 132
    :cond_5e
    :goto_5e
    invoke-interface {p1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()I

    move-result v9

    .line 134
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update: radioState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mLastRadioState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mLastRadioState:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UiccSlot;->log(Ljava/lang/String;)V

    .line 137
    iget-object v2, p2, Lcom/android/internal/telephony/uicc/IccCardStatus;->mSlotPortMapping:Lcom/android/internal/telephony/uicc/IccSlotPortMapping;

    iget v2, v2, Lcom/android/internal/telephony/uicc/IccSlotPortMapping;->mPortIndex:I

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccSlot;->absentStateUpdateNeeded(Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;I)Z

    move-result v2

    if-eqz v2, :cond_97

    .line 138
    invoke-interface {p1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()I

    move-result v1

    iget-object v2, p2, Lcom/android/internal/telephony/uicc/IccCardStatus;->mSlotPortMapping:Lcom/android/internal/telephony/uicc/IccSlotPortMapping;

    iget v2, v2, Lcom/android/internal/telephony/uicc/IccSlotPortMapping;->mPortIndex:I

    invoke-direct {p0, v1, p3, v2}, Lcom/android/internal/telephony/uicc/UiccSlot;->updateCardStateAbsent(III)V

    goto/16 :goto_15c

    :cond_97
    if-eqz v1, :cond_a1

    .line 144
    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-eq v1, v2, :cond_a1

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    if-nez v1, :cond_153

    :cond_a1
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mCardState:Ljava/util/HashMap;

    iget-object v2, p2, Lcom/android/internal/telephony/uicc/IccCardStatus;->mSlotPortMapping:Lcom/android/internal/telephony/uicc/IccSlotPortMapping;

    iget v2, v2, Lcom/android/internal/telephony/uicc/IccSlotPortMapping;->mPortIndex:I

    .line 145
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-eq v1, v2, :cond_153

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eq v9, v2, :cond_df

    .line 148
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mLastRadioState:Ljava/util/HashMap;

    iget-object v6, p2, Lcom/android/internal/telephony/uicc/IccCardStatus;->mSlotPortMapping:Lcom/android/internal/telephony/uicc/IccSlotPortMapping;

    iget v6, v6, Lcom/android/internal/telephony/uicc/IccSlotPortMapping;->mPortIndex:I

    .line 149
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 150
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 149
    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, v2, :cond_df

    .line 152
    const-string v2, "update: notify card added"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UiccSlot;->log(Ljava/lang/String;)V

    const/16 v2, 0xe

    .line 153
    invoke-virtual {p0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 157
    :cond_df
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    if-eqz v2, :cond_fd

    iget-boolean v3, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mIsEuicc:Z

    if-eqz v3, :cond_f1

    .line 158
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCard;->getUiccPortList()[Lcom/android/internal/telephony/uicc/UiccPort;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_fd

    .line 159
    :cond_f1
    const-string v2, "update: mUiccCard != null when card was present; disposing it now"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UiccSlot;->loge(Ljava/lang/String;)V

    .line 160
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCard;->dispose()V

    .line 161
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    .line 164
    :cond_fd
    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mIsEuicc:Z

    if-nez v1, :cond_112

    .line 166
    new-instance v1, Lcom/android/internal/telephony/uicc/UiccCard;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mLock:Ljava/lang/Object;

    sget-object v7, Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;->NONE:Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/telephony/uicc/UiccCard;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;ILjava/lang/Object;Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;)V

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    goto :goto_15c

    .line 171
    :cond_112
    iget-object v1, p2, Lcom/android/internal/telephony/uicc/IccCardStatus;->eid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_136

    .line 172
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update: eid is missing. ics.eid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_DEBUGGABLE:Z

    iget-object v3, p2, Lcom/android/internal/telephony/uicc/IccCardStatus;->eid:Ljava/lang/String;

    .line 173
    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->pii(ZLjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 172
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccSlot;->loge(Ljava/lang/String;)V

    .line 175
    :cond_136
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    if-nez v1, :cond_14d

    .line 176
    new-instance v1, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mLock:Ljava/lang/Object;

    .line 177
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccSlot;->getSupportedMepMode()Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;

    move-result-object v7

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;ILjava/lang/Object;Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;)V

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    goto :goto_15c

    .line 181
    :cond_14d
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccCard;->update(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;I)V

    goto :goto_15c

    .line 185
    :cond_153
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    if-eqz v1, :cond_15c

    .line 186
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccCard;->update(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;I)V

    .line 189
    :cond_15c
    :goto_15c
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mLastRadioState:Ljava/util/HashMap;

    iget-object v1, p2, Lcom/android/internal/telephony/uicc/IccCardStatus;->mSlotPortMapping:Lcom/android/internal/telephony/uicc/IccSlotPortMapping;

    iget v1, v1, Lcom/android/internal/telephony/uicc/IccSlotPortMapping;->mPortIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    monitor-exit v8

    return-void

    :goto_16f
    monitor-exit v8
    :try_end_170
    .catchall {:try_start_3 .. :try_end_170} :catchall_5b

    throw v0
.end method

.method public blacklist update([Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccSlotStatus;I)V
    .registers 13

    .line 197
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 198
    :try_start_3
    iget-object v1, p2, Lcom/android/internal/telephony/uicc/IccSlotStatus;->mSimPortInfos:[Lcom/android/internal/telephony/uicc/IccSimPortInfo;

    .line 199
    iget-object v2, p2, Lcom/android/internal/telephony/uicc/IccSlotStatus;->atr:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UiccSlot;->parseAtr(Ljava/lang/String;)V

    .line 200
    iget-object v2, p2, Lcom/android/internal/telephony/uicc/IccSlotStatus;->eid:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mEid:Ljava/lang/String;

    .line 201
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/uicc/UiccSlot;->isSlotRemovable(I)Z

    move-result p3

    iput-boolean p3, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mIsRemovable:Z

    const/4 p3, 0x0

    move v2, p3

    .line 203
    :goto_16
    array-length v3, v1

    const/4 v4, -0x1

    if-ge v2, v3, :cond_9e

    .line 204
    iget-object v3, p2, Lcom/android/internal/telephony/uicc/IccSlotStatus;->mSimPortInfos:[Lcom/android/internal/telephony/uicc/IccSimPortInfo;

    aget-object v3, v3, v2

    iget v3, v3, Lcom/android/internal/telephony/uicc/IccSimPortInfo;->mLogicalSlotIndex:I

    .line 205
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mCardState:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 206
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mCardState:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v8, p2, Lcom/android/internal/telephony/uicc/IccSlotStatus;->cardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mIccIds:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aget-object v8, v1, v2

    iget-object v8, v8, Lcom/android/internal/telephony/uicc/IccSimPortInfo;->mIccId:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    iget-object v6, p2, Lcom/android/internal/telephony/uicc/IccSlotStatus;->mSimPortInfos:[Lcom/android/internal/telephony/uicc/IccSimPortInfo;

    aget-object v6, v6, v2

    iget-boolean v6, v6, Lcom/android/internal/telephony/uicc/IccSimPortInfo;->mPortActive:Z

    const/4 v7, 0x2

    if-nez v6, :cond_85

    .line 211
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v3

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mPortIdxToPhoneId:Ljava/util/HashMap;

    .line 212
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, p2, Lcom/android/internal/telephony/uicc/IccSlotStatus;->mSimPortInfos:[Lcom/android/internal/telephony/uicc/IccSimPortInfo;

    aget-object v5, v5, v2

    iget-object v5, v5, Lcom/android/internal/telephony/uicc/IccSimPortInfo;->mIccId:Ljava/lang/String;

    .line 211
    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/uicc/UiccController;->updateSimStateForInactivePort(ILjava/lang/String;)V

    .line 214
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mLastRadioState:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    if-eqz v3, :cond_9a

    .line 217
    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/uicc/UiccCard;->disposePort(I)V

    goto :goto_9a

    :catchall_83
    move-exception p0

    goto :goto_e5

    .line 220
    :cond_85
    invoke-direct {p0, v5, v2}, Lcom/android/internal/telephony/uicc/UiccSlot;->absentStateUpdateNeeded(Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;I)Z

    move-result v4

    if-eqz v4, :cond_9a

    .line 221
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v4

    if-eqz v4, :cond_97

    .line 222
    aget-object v4, p1, v3

    invoke-interface {v4}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()I

    move-result v7

    .line 224
    :cond_97
    invoke-direct {p0, v7, v3, v2}, Lcom/android/internal/telephony/uicc/UiccSlot;->updateCardStateAbsent(III)V

    :cond_9a
    :goto_9a
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_16

    .line 233
    :cond_9e
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccSlot;->hasActivePort([Lcom/android/internal/telephony/uicc/IccSimPortInfo;)Z

    move-result p1

    const/4 v2, 0x1

    if-nez p1, :cond_af

    .line 234
    iget-boolean p1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mActive:Z

    if-eqz p1, :cond_b1

    .line 235
    iput-boolean p3, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mActive:Z

    .line 236
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UiccSlot;->nullifyUiccCard(Z)V

    goto :goto_b1

    .line 239
    :cond_af
    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mActive:Z

    .line 241
    :cond_b1
    :goto_b1
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mPortIdxToPhoneId:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 242
    :goto_b6
    array-length p1, v1

    if-ge p3, p1, :cond_d3

    .line 244
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mPortIdxToPhoneId:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aget-object v3, v1, p3

    iget-boolean v5, v3, Lcom/android/internal/telephony/uicc/IccSimPortInfo;->mPortActive:Z

    if-eqz v5, :cond_c8

    .line 245
    iget v3, v3, Lcom/android/internal/telephony/uicc/IccSimPortInfo;->mLogicalSlotIndex:I

    goto :goto_c9

    :cond_c8
    move v3, v4

    .line 244
    :goto_c9
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p3, p3, 0x1

    goto :goto_b6

    .line 247
    :cond_d3
    iget-object p1, p2, Lcom/android/internal/telephony/uicc/IccSlotStatus;->mSupportedMepMode:Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccSlot;->updateSupportedMepMode(Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;)V

    .line 250
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    if-eqz p1, :cond_e3

    .line 251
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccSlot;->getSupportedMepMode()Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/uicc/UiccCard;->updateSupportedMepMode(Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;)V

    .line 253
    :cond_e3
    monitor-exit v0

    return-void

    :goto_e5
    monitor-exit v0
    :try_end_e6
    .catchall {:try_start_3 .. :try_end_e6} :catchall_83

    throw p0
.end method
