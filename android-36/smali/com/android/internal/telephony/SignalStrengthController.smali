.class public Lcom/android/internal/telephony/SignalStrengthController;
.super Landroid/os/Handler;
.source "SignalStrengthController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SignalStrengthController$SignalRequestRecord;,
        Lcom/android/internal/telephony/SignalStrengthController$AccessNetworkThresholds;
    }
.end annotation


# static fields
.field public static final blacklist EVENT_POLL_SIGNAL_STRENGTH_DONE:I = 0x9

.field private static final blacklist POLL_PERIOD_MILLIS:J

.field private static final blacklist SIGNAL_STRENGTH_REFRESH_THRESHOLD_IN_MS:J


# instance fields
.field private blacklist mCarrierConfig:Landroid/os/PersistableBundle;

.field private final blacklist mCi:Lcom/android/internal/telephony/CommandsInterface;

.field private blacklist mEarfcnPairListForRsrpBoost:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mLastSignalStrength:Landroid/telephony/SignalStrength;

.field private final blacklist mLocalLog:Lcom/android/internal/telephony/LocalLog;

.field private blacklist mLteRsrpBoost:I

.field private final blacklist mNTNConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private blacklist mNrRsrpBoost:[I

.field private blacklist mNrarfcnRangeListForRsrpBoost:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist mPhone:Lcom/android/internal/telephony/Phone;

.field private final blacklist mRsrpBoostLock:Ljava/lang/Object;

.field private final blacklist mSignalRequestRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/SignalStrengthController$SignalRequestRecord;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSignalStrength:Landroid/telephony/SignalStrength;

.field private final blacklist mSignalStrengthChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field private blacklist mSignalStrengthUpdatedTime:J


# direct methods
.method public static synthetic blacklist $r8$lambda$3ab7jdXS7yyfbCNCA9jhrT6c0Z4(ILcom/android/internal/telephony/SignalStrengthController$SignalRequestRecord;)Z
    .registers 3

    .line 1032
    iget v0, p1, Lcom/android/internal/telephony/SignalStrengthController$SignalRequestRecord;->mSubId:I

    if-ne v0, p0, :cond_e

    iget-object p0, p1, Lcom/android/internal/telephony/SignalStrengthController$SignalRequestRecord;->mRequest:Landroid/telephony/SignalStrengthUpdateRequest;

    invoke-static {p0}, Lcom/android/internal/telephony/SignalStrengthController;->isSignalReportRequestedWhileIdle(Landroid/telephony/SignalStrengthUpdateRequest;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$BHo4qyiF2lMWm-WtdRmeLKgOJLk(Lcom/android/internal/telephony/SignalStrengthController$SignalRequestRecord;Lcom/android/internal/telephony/SignalStrengthController$SignalRequestRecord;)Z
    .registers 4

    .line 195
    iget v0, p1, Lcom/android/internal/telephony/SignalStrengthController$SignalRequestRecord;->mCallingUid:I

    iget v1, p0, Lcom/android/internal/telephony/SignalStrengthController$SignalRequestRecord;->mCallingUid:I

    if-ne v0, v1, :cond_e

    iget p1, p1, Lcom/android/internal/telephony/SignalStrengthController$SignalRequestRecord;->mSubId:I

    iget p0, p0, Lcom/android/internal/telephony/SignalStrengthController$SignalRequestRecord;->mSubId:I

    if-ne p1, p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$Pz2aXYJs5pfiFRl_aqMzGKEFgJ0(ILcom/android/internal/telephony/SignalStrengthController$SignalRequestRecord;)Z
    .registers 3

    .line 929
    iget v0, p1, Lcom/android/internal/telephony/SignalStrengthController$SignalRequestRecord;->mSubId:I

    if-ne p0, v0, :cond_e

    iget-object p0, p1, Lcom/android/internal/telephony/SignalStrengthController$SignalRequestRecord;->mRequest:Landroid/telephony/SignalStrengthUpdateRequest;

    .line 930
    invoke-virtual {p0}, Landroid/telephony/SignalStrengthUpdateRequest;->isSystemThresholdReportingRequestedWhileIdle()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$mHsdxhdo_O3rsbeExrHsUbGvWbY(ILjava/lang/Integer;Ljava/lang/Integer;)I
    .registers 5

    .line 879
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr v1, p0

    if-lt v0, v1, :cond_18

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v1, p0

    if-gt v0, v1, :cond_18

    const/4 p0, 0x0

    return p0

    .line 882
    :cond_18
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$xpn0JUCwYcdRZnbUJw4F5I0XulM(Lcom/android/internal/telephony/SignalStrengthController;IIII)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/SignalStrengthController;->lambda$new$0(IIII)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mlocalLog(Lcom/android/internal/telephony/SignalStrengthController;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SignalStrengthController;->localLog(Ljava/lang/String;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 79
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    .line 80
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    sput-wide v1, Lcom/android/internal/telephony/SignalStrengthController;->SIGNAL_STRENGTH_REFRESH_THRESHOLD_IN_MS:J

    const-wide/16 v1, 0x14

    .line 82
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/internal/telephony/SignalStrengthController;->POLL_PERIOD_MILLIS:J

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;)V
    .registers 6

    .line 155
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 113
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SignalStrengthController;->mSignalStrengthChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    const/4 v0, 0x0

    .line 118
    iput-object v0, p0, Lcom/android/internal/telephony/SignalStrengthController;->mLastSignalStrength:Landroid/telephony/SignalStrength;

    .line 126
    iput-object v0, p0, Lcom/android/internal/telephony/SignalStrengthController;->mEarfcnPairListForRsrpBoost:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 131
    iput v1, p0, Lcom/android/internal/telephony/SignalStrengthController;->mLteRsrpBoost:I

    .line 137
    iput-object v0, p0, Lcom/android/internal/telephony/SignalStrengthController;->mNrarfcnRangeListForRsrpBoost:Ljava/util/ArrayList;

    .line 139
    iput-object v0, p0, Lcom/android/internal/telephony/SignalStrengthController;->mNrRsrpBoost:[I

    .line 141
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/SignalStrengthController;->mRsrpBoostLock:Ljava/lang/Object;

    .line 144
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/SignalStrengthController;->mSignalRequestRecords:Ljava/util/List;

    .line 150
    new-instance v2, Lcom/android/internal/telephony/LocalLog;

    const/16 v3, 0x40

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object v2, p0, Lcom/android/internal/telephony/SignalStrengthController;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    .line 153
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/android/internal/telephony/SignalStrengthController;->mNTNConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 156
    iput-object p1, p0, Lcom/android/internal/telephony/SignalStrengthController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 157
    iget-object v1, p1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v1, p0, Lcom/android/internal/telephony/SignalStrengthController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x4

    .line 159
    invoke-interface {v1, p0, v2, v0}, Lcom/android/internal/telephony/CommandsInterface;->registerForRilConnected(Landroid/os/Handler;ILjava/lang/Object;)V

    const/4 v2, 0x5

    .line 160
    invoke-interface {v1, p0, v2, v0}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    const/16 v2, 0x8

    .line 161
    invoke-interface {v1, p0, v2, v0}, Lcom/android/internal/telephony/CommandsInterface;->setOnSignalStrengthUpdate(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 162
    invoke-virtual {p0}, Lcom/android/internal/telephony/SignalStrengthController;->setSignalStrengthDefaultValues()V

    .line 164
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CarrierConfigManager;

    .line 165
    invoke-direct {p0}, Lcom/android/internal/telephony/SignalStrengthController;->getCarrierConfig()Landroid/os/PersistableBundle;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/SignalStrengthController;->mCarrierConfig:Landroid/os/PersistableBundle;

    if-eqz v1, :cond_6b

    .line 168
    new-instance v2, Lcom/android/internal/telephony/SignalStrengthController$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/SignalStrengthController$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telephony/SignalStrengthController;)V

    new-instance v3, Lcom/android/internal/telephony/SignalStrengthController$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/SignalStrengthController$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/telephony/SignalStrengthController;)V

    invoke-virtual {v1, v2, v3}, Landroid/telephony/CarrierConfigManager;->registerCarrierConfigChangeListener(Ljava/util/concurrent/Executor;Landroid/telephony/CarrierConfigManager$CarrierConfigChangeListener;)V

    :cond_6b
    const/16 v1, 0xa

    .line 173
    invoke-virtual {p1, p0, v1, v0}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method private blacklist computeHysteresisDbOnSmallestThresholdDelta(I[I)I
    .registers 7

    .line 755
    array-length p0, p2

    const/4 v0, 0x1

    if-le p0, v0, :cond_17

    const/4 p0, 0x0

    .line 756
    :goto_5
    array-length v1, p2

    sub-int/2addr v1, v0

    if-eq p0, v1, :cond_17

    add-int/lit8 v1, p0, 0x1

    .line 757
    aget v2, p2, v1

    aget p0, p2, p0

    sub-int v3, v2, p0

    if-ge v3, p1, :cond_15

    sub-int/2addr v2, p0

    move p1, v2

    :cond_15
    move p0, v1

    goto :goto_5

    :cond_17
    return p1
.end method

.method private blacklist consolidatedAndSetReportingCriteria(Ljava/util/List;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/SignalThresholdInfo;",
            ">;)V"
        }
    .end annotation

    .line 609
    new-instance v0, Ljava/util/ArrayList;

    .line 610
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 611
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SignalThresholdInfo;

    .line 612
    invoke-virtual {v1}, Landroid/telephony/SignalThresholdInfo;->getRadioAccessNetworkType()I

    move-result v2

    .line 613
    invoke-virtual {v1}, Landroid/telephony/SignalThresholdInfo;->getSignalMeasurementType()I

    move-result v3

    .line 615
    invoke-virtual {v1}, Landroid/telephony/SignalThresholdInfo;->isEnabled()Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_31

    invoke-virtual {p0}, Lcom/android/internal/telephony/SignalStrengthController;->shouldHonorSystemThresholds()Z

    move-result v4

    if-eqz v4, :cond_31

    move v4, v6

    goto :goto_32

    :cond_31
    move v4, v5

    :goto_32
    if-eqz v4, :cond_39

    .line 621
    invoke-virtual {v1}, Landroid/telephony/SignalThresholdInfo;->getThresholds()[I

    move-result-object v1

    goto :goto_3b

    .line 622
    :cond_39
    new-array v1, v5, [I

    .line 617
    :goto_3b
    invoke-virtual {p0, v2, v3, v1, v6}, Lcom/android/internal/telephony/SignalStrengthController;->getConsolidatedSignalThresholds(II[II)[I

    move-result-object v1

    .line 624
    iget-object v7, p0, Lcom/android/internal/telephony/SignalStrengthController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 628
    invoke-virtual {v7}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v7

    iget-object v8, p0, Lcom/android/internal/telephony/SignalStrengthController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 629
    invoke-virtual {v8}, Lcom/android/internal/telephony/Phone;->isDeviceIdle()Z

    move-result v8

    .line 625
    invoke-virtual {p0, v2, v3, v7, v8}, Lcom/android/internal/telephony/SignalStrengthController;->shouldEnableSignalThresholdForAppRequest(IIIZ)Z

    move-result v7

    .line 630
    invoke-virtual {p0, v7, v2, v3, v1}, Lcom/android/internal/telephony/SignalStrengthController;->getMinimumHysteresisDb(ZII[I)I

    move-result v8

    .line 632
    new-instance v9, Landroid/telephony/SignalThresholdInfo$Builder;

    invoke-direct {v9}, Landroid/telephony/SignalThresholdInfo$Builder;-><init>()V

    .line 634
    invoke-virtual {v9, v2}, Landroid/telephony/SignalThresholdInfo$Builder;->setRadioAccessNetworkType(I)Landroid/telephony/SignalThresholdInfo$Builder;

    move-result-object v2

    .line 635
    invoke-virtual {v2, v3}, Landroid/telephony/SignalThresholdInfo$Builder;->setSignalMeasurementType(I)Landroid/telephony/SignalThresholdInfo$Builder;

    move-result-object v2

    const/16 v3, 0xbb8

    .line 636
    invoke-virtual {v2, v3}, Landroid/telephony/SignalThresholdInfo$Builder;->setHysteresisMs(I)Landroid/telephony/SignalThresholdInfo$Builder;

    move-result-object v2

    .line 637
    invoke-virtual {v2, v8}, Landroid/telephony/SignalThresholdInfo$Builder;->setHysteresisDb(I)Landroid/telephony/SignalThresholdInfo$Builder;

    move-result-object v2

    .line 638
    invoke-virtual {v2, v1, v6}, Landroid/telephony/SignalThresholdInfo$Builder;->setThresholds([IZ)Landroid/telephony/SignalThresholdInfo$Builder;

    move-result-object v1

    if-nez v4, :cond_72

    if-eqz v7, :cond_73

    :cond_72
    move v5, v6

    .line 639
    :cond_73
    invoke-virtual {v1, v5}, Landroid/telephony/SignalThresholdInfo$Builder;->setIsEnabled(Z)Landroid/telephony/SignalThresholdInfo$Builder;

    move-result-object v1

    .line 640
    invoke-virtual {v1}, Landroid/telephony/SignalThresholdInfo$Builder;->build()Landroid/telephony/SignalThresholdInfo;

    move-result-object v1

    .line 632
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 642
    :cond_7f
    iget-object p1, p0, Lcom/android/internal/telephony/SignalStrengthController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->setSignalStrengthReportingCriteria(Ljava/util/List;Landroid/os/Message;)V

    .line 644
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSignalStrengthReportingCriteria consolidatedSignalThresholdInfos="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SignalStrengthController;->localLog(Ljava/lang/String;)V

    return-void
.end method

.method private static blacklist containsEarfcnInEarfcnRange(Ljava/util/ArrayList;I)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;I)I"
        }
    .end annotation

    if-eqz p0, :cond_2a

    .line 1111
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_2a

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Landroid/util/Pair;

    .line 1112
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lt p1, v4, :cond_27

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-gt p1, v3, :cond_27

    return v1

    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_2a
    const/4 p0, -0x1

    return p0
.end method

.method private static blacklist convertEarfcnStringArrayToPairList([Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 1131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_3e

    const/4 v1, 0x0

    move v2, v1

    .line 1136
    :goto_9
    array-length v3, p0

    if-ge v2, v3, :cond_3e

    const/4 v3, 0x0

    .line 1138
    :try_start_d
    aget-object v4, p0, v2

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1139
    array-length v5, v4

    const/4 v6, 0x2

    if-eq v5, v6, :cond_1a

    return-object v3

    .line 1146
    :cond_1a
    aget-object v5, v4, v1

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x1

    .line 1147
    aget-object v4, v4, v6

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-le v5, v4, :cond_2a

    return-object v3

    .line 1156
    :cond_2a
    new-instance v6, Landroid/util/Pair;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v6, v5, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3a
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_d .. :try_end_3a} :catch_3d
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_3a} :catch_3d

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :catch_3d
    return-object v3

    :cond_3e
    return-object v0
.end method

.method private static blacklist createSignalThresholdsInfo(I[IIZ)Landroid/telephony/SignalThresholdInfo;
    .registers 5

    .line 1187
    new-instance v0, Landroid/telephony/SignalThresholdInfo$Builder;

    invoke-direct {v0}, Landroid/telephony/SignalThresholdInfo$Builder;-><init>()V

    .line 1188
    invoke-virtual {v0, p0}, Landroid/telephony/SignalThresholdInfo$Builder;->setSignalMeasurementType(I)Landroid/telephony/SignalThresholdInfo$Builder;

    move-result-object p0

    .line 1189
    invoke-virtual {p0, p1}, Landroid/telephony/SignalThresholdInfo$Builder;->setThresholds([I)Landroid/telephony/SignalThresholdInfo$Builder;

    move-result-object p0

    .line 1190
    invoke-virtual {p0, p2}, Landroid/telephony/SignalThresholdInfo$Builder;->setRadioAccessNetworkType(I)Landroid/telephony/SignalThresholdInfo$Builder;

    move-result-object p0

    .line 1191
    invoke-virtual {p0, p3}, Landroid/telephony/SignalThresholdInfo$Builder;->setIsEnabled(Z)Landroid/telephony/SignalThresholdInfo$Builder;

    move-result-object p0

    .line 1192
    invoke-virtual {p0}, Landroid/telephony/SignalThresholdInfo$Builder;->build()Landroid/telephony/SignalThresholdInfo;

    move-result-object p0

    return-object p0
.end method

.method private blacklist getCarrierConfig()Landroid/os/PersistableBundle;
    .registers 3

    .line 988
    iget-object v0, p0, Lcom/android/internal/telephony/SignalStrengthController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "carrier_config"

    .line 989
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    if-eqz v0, :cond_1d

    .line 992
    iget-object p0, p0, Lcom/android/internal/telephony/SignalStrengthController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p0

    if-eqz p0, :cond_1d

    return-object p0

    .line 998
    :cond_1d
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object p0

    return-object p0
.end method

.method private blacklist getHysteresisDbFromCarrierConfig(II)I
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p1, v0, :cond_41

    if-eq p1, v1, :cond_35

    const/4 v0, 0x3

    if-eq p1, v0, :cond_24

    const/4 v0, 0x6

    if-eq p1, v0, :cond_12

    .line 734
    const-string p1, "No matching configuration"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SignalStrengthController;->localLog(Ljava/lang/String;)V

    goto :goto_46

    :cond_12
    if-ne p2, v0, :cond_17

    .line 726
    const-string p1, "ngran_ssrsrp_hysteresis_db_int"

    goto :goto_47

    :cond_17
    const/4 p1, 0x7

    if-ne p2, p1, :cond_1d

    .line 728
    const-string p1, "ngran_ssrsrq_hysteresis_db_int"

    goto :goto_47

    :cond_1d
    const/16 p1, 0x8

    if-ne p2, p1, :cond_46

    .line 730
    const-string p1, "ngran_sssinr_hysteresis_db_int"

    goto :goto_47

    :cond_24
    if-ne p2, v0, :cond_29

    .line 717
    const-string p1, "eutran_rsrp_hysteresis_db_int"

    goto :goto_47

    :cond_29
    const/4 p1, 0x4

    if-ne p2, p1, :cond_2f

    .line 719
    const-string p1, "eutran_rsrq_hysteresis_db_int"

    goto :goto_47

    :cond_2f
    const/4 p1, 0x5

    if-ne p2, p1, :cond_46

    .line 721
    const-string p1, "eutran_rssnr_hysteresis_db_int"

    goto :goto_47

    :cond_35
    if-ne p2, v1, :cond_3a

    .line 710
    const-string p1, "utran_rscp_hysteresis_db_int"

    goto :goto_47

    :cond_3a
    const/16 p1, 0x9

    if-ne p2, p1, :cond_46

    .line 712
    const-string p1, "utran_ecno_hysteresis_db_int"

    goto :goto_47

    :cond_41
    if-ne p2, v0, :cond_46

    .line 705
    const-string p1, "geran_rssi_hysteresis_db_int"

    goto :goto_47

    :cond_46
    :goto_46
    const/4 p1, 0x0

    :goto_47
    if-eqz p1, :cond_50

    .line 737
    iget-object p0, p0, Lcom/android/internal/telephony/SignalStrengthController;->mCarrierConfig:Landroid/os/PersistableBundle;

    invoke-virtual {p0, p1, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    goto :goto_51

    :cond_50
    move p0, v1

    :goto_51
    if-ltz p0, :cond_54

    return p0

    :cond_54
    return v1
.end method

.method private blacklist getHysteresisDbFromSignalThresholdInfoRequests(II)I
    .registers 7

    .line 686
    iget-object p0, p0, Lcom/android/internal/telephony/SignalStrengthController;->mSignalRequestRecords:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x2

    :cond_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/SignalStrengthController$SignalRequestRecord;

    .line 687
    iget-object v1, v1, Lcom/android/internal/telephony/SignalStrengthController$SignalRequestRecord;->mRequest:Landroid/telephony/SignalStrengthUpdateRequest;

    invoke-virtual {v1}, Landroid/telephony/SignalStrengthUpdateRequest;->getSignalThresholdInfos()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1d
    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SignalThresholdInfo;

    .line 688
    invoke-static {p1, p2, v2}, Lcom/android/internal/telephony/SignalStrengthController;->isRanAndSignalMeasurementTypeMatch(IILandroid/telephony/SignalThresholdInfo;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 689
    invoke-virtual {v2}, Landroid/telephony/SignalThresholdInfo;->getHysteresisDb()I

    move-result v3

    if-ltz v3, :cond_1d

    .line 690
    invoke-virtual {v2}, Landroid/telephony/SignalThresholdInfo;->getHysteresisDb()I

    move-result v0

    goto :goto_1d

    :cond_3a
    return v0
.end method

.method private static blacklist isRanAndSignalMeasurementTypeMatch(IILandroid/telephony/SignalThresholdInfo;)Z
    .registers 4

    .line 970
    invoke-virtual {p2}, Landroid/telephony/SignalThresholdInfo;->getRadioAccessNetworkType()I

    move-result v0

    if-ne p0, v0, :cond_e

    .line 971
    invoke-virtual {p2}, Landroid/telephony/SignalThresholdInfo;->getSignalMeasurementType()I

    move-result p0

    if-ne p1, p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method private static blacklist isSignalReportRequestedWhileIdle(Landroid/telephony/SignalStrengthUpdateRequest;)Z
    .registers 2

    .line 976
    invoke-virtual {p0}, Landroid/telephony/SignalStrengthUpdateRequest;->isSystemThresholdReportingRequestedWhileIdle()Z

    move-result v0

    if-nez v0, :cond_f

    .line 977
    invoke-virtual {p0}, Landroid/telephony/SignalStrengthUpdateRequest;->isReportingRequestedWhileIdle()Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    return p0

    :cond_f
    :goto_f
    const/4 p0, 0x1

    return p0
.end method

.method private blacklist isUsingNonTerrestrialNetwork()Z
    .registers 2

    .line 1370
    iget-object v0, p0, Lcom/android/internal/telephony/SignalStrengthController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return p0

    .line 1373
    :cond_a
    iget-object p0, p0, Lcom/android/internal/telephony/SignalStrengthController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {p0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->isUsingNonTerrestrialNetwork()Z

    move-result p0

    return p0
.end method

.method private synthetic blacklist lambda$new$0(IIII)V
    .registers 5

    .line 170
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SignalStrengthController;->onCarrierConfigurationChanged(I)V

    return-void
.end method

.method private blacklist localLog(Ljava/lang/String;)V
    .registers 4

    .line 1386
    const-string v0, "SSCtr"

    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1387
    iget-object p0, p0, Lcom/android/internal/telephony/SignalStrengthController;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SSCtr: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method private static blacklist log(Ljava/lang/String;)V
    .registers 1

    .line 0
    return-void
.end method

.method private static blacklist loge(Ljava/lang/String;)V
    .registers 2

    .line 1381
    const-string v0, "SSCtr"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist maybeOverrideSignalStrengthForTest(Landroid/telephony/SignalStrength;)Landroid/telephony/SignalStrength;
    .registers 3

    .line 355
    sget-boolean v0, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/internal/telephony/SignalStrengthController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getTelephonyTester()Lcom/android/internal/telephony/TelephonyTester;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 356
    iget-object p0, p0, Lcom/android/internal/telephony/SignalStrengthController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getTelephonyTester()Lcom/android/internal/telephony/TelephonyTester;

    move-result-object p0

    .line 357
    invoke-virtual {p0}, Lcom/android/internal/telephony/TelephonyTester;->getOverriddenSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object p0

    .line 356
    invoke-static {p0, p1}, Ljava/util/Objects;->requireNonNullElse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/SignalStrength;

    return-object p0

    :cond_1d
    return-object p1
.end method

.method private blacklist onCarrierConfigurationChanged(I)V
    .registers 3

    .line 1175
    iget-object v0, p0, Lcom/android/internal/telephony/SignalStrengthController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    if-eq p1, v0, :cond_9

    return-void

    .line 1177
    :cond_9
    invoke-direct {p0}, Lcom/android/internal/telephony/SignalStrengthController;->getCarrierConfig()Landroid/os/PersistableBundle;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/SignalStrengthController;->mCarrierConfig:Landroid/os/PersistableBundle;

    .line 1178
    const-string p1, "Carrier Config changed."

    invoke-static {p1}, Lcom/android/internal/telephony/SignalStrengthController;->log(Ljava/lang/String;)V

    .line 1180
    invoke-virtual {p0}, Lcom/android/internal/telephony/SignalStrengthController;->updateArfcnLists()V

    .line 1181
    invoke-virtual {p0}, Lcom/android/internal/telephony/SignalStrengthController;->updateReportingCriteria()V

    .line 1182
    new-instance p1, Landroid/telephony/SignalStrength;

    iget-object v0, p0, Lcom/android/internal/telephony/SignalStrengthController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-direct {p1, v0}, Landroid/telephony/SignalStrength;-><init>(Landroid/telephony/SignalStrength;)V

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SignalStrengthController;->updateSignalStrength(Landroid/telephony/SignalStrength;)V

    return-void
.end method

.method private blacklist onReset()V
    .registers 1

    .line 306
    invoke-direct {p0}, Lcom/android/internal/telephony/SignalStrengthController;->setDefaultSignalStrengthReportingCriteria()V

    return-void
.end method

.method private blacklist onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .registers 4

    .line 1358
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_37

    .line 1362
    :cond_7
    iget-object v0, p0, Lcom/android/internal/telephony/SignalStrengthController;->mNTNConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->isUsingNonTerrestrialNetwork()Z

    move-result v1

    if-eq v0, v1, :cond_37

    .line 1363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceStateChanged: update it to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->isUsingNonTerrestrialNetwork()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/SignalStrengthController;->log(Ljava/lang/String;)V

    .line 1364
    invoke-virtual {p0}, Lcom/android/internal/telephony/SignalStrengthController;->updateReportingCriteria()V

    .line 1365
    iget-object p0, p0, Lcom/android/internal/telephony/SignalStrengthController;->mNTNConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->isUsingNonTerrestrialNetwork()Z

    move-result p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_37
    :goto_37
    return-void
.end method

.method private blacklist onSignalStrengthResult(Landroid/os/AsyncResult;)V
    .registers 4

    .line 321
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_b

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_b

    .line 322
    check-cast v0, Landroid/telephony/SignalStrength;

    goto :goto_26

    .line 324
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSignalStrengthResult() Exception from RIL : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/SignalStrengthController;->loge(Ljava/lang/String;)V

    .line 325
    new-instance v0, Landroid/telephony/SignalStrength;

    invoke-direct {v0}, Landroid/telephony/SignalStrength;-><init>()V

    .line 327
    :goto_26
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SignalStrengthController;->updateSignalStrength(Landroid/telephony/SignalStrength;)V

    return-void
.end method

.method private blacklist setDefaultSignalStrengthReportingCriteria()V
    .registers 8

    .line 536
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 538
    sget-object v1, Lcom/android/internal/telephony/SignalStrengthController$AccessNetworkThresholds;->GERAN:[I

    const/4 v2, 0x1

    .line 539
    invoke-static {v2, v1, v2, v2}, Lcom/android/internal/telephony/SignalStrengthController;->createSignalThresholdsInfo(I[IIZ)Landroid/telephony/SignalThresholdInfo;

    move-result-object v1

    .line 538
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 544
    sget-object v1, Lcom/android/internal/telephony/SignalStrengthController$AccessNetworkThresholds;->UTRAN:[I

    const/4 v3, 0x2

    .line 545
    invoke-static {v3, v1, v3, v2}, Lcom/android/internal/telephony/SignalStrengthController;->createSignalThresholdsInfo(I[IIZ)Landroid/telephony/SignalThresholdInfo;

    move-result-object v1

    .line 544
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 550
    sget-object v1, Lcom/android/internal/telephony/SignalStrengthController$AccessNetworkThresholds;->EUTRAN_RSRP:[I

    const/4 v4, 0x3

    .line 551
    invoke-static {v4, v1, v4, v2}, Lcom/android/internal/telephony/SignalStrengthController;->createSignalThresholdsInfo(I[IIZ)Landroid/telephony/SignalThresholdInfo;

    move-result-object v1

    .line 550
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 556
    sget-object v1, Lcom/android/internal/telephony/SignalStrengthController$AccessNetworkThresholds;->CDMA2000:[I

    const/4 v5, 0x4

    .line 557
    invoke-static {v2, v1, v5, v2}, Lcom/android/internal/telephony/SignalStrengthController;->createSignalThresholdsInfo(I[IIZ)Landroid/telephony/SignalThresholdInfo;

    move-result-object v1

    .line 556
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 563
    iget-object v1, p0, Lcom/android/internal/telephony/SignalStrengthController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1, v5}, Lcom/android/internal/telephony/Phone;->getHalVersion(I)Lcom/android/internal/telephony/HalVersion;

    move-result-object v1

    sget-object v6, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_5:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v1, v6}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-eqz v1, :cond_79

    .line 564
    sget-object v1, Lcom/android/internal/telephony/SignalStrengthController$AccessNetworkThresholds;->EUTRAN_RSRQ:[I

    const/4 v6, 0x0

    .line 565
    invoke-static {v5, v1, v4, v6}, Lcom/android/internal/telephony/SignalStrengthController;->createSignalThresholdsInfo(I[IIZ)Landroid/telephony/SignalThresholdInfo;

    move-result-object v1

    .line 564
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x5

    .line 570
    sget-object v5, Lcom/android/internal/telephony/SignalStrengthController$AccessNetworkThresholds;->EUTRAN_RSSNR:[I

    .line 571
    invoke-static {v1, v5, v4, v2}, Lcom/android/internal/telephony/SignalStrengthController;->createSignalThresholdsInfo(I[IIZ)Landroid/telephony/SignalThresholdInfo;

    move-result-object v1

    .line 570
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 578
    sget-object v1, Lcom/android/internal/telephony/SignalStrengthController$AccessNetworkThresholds;->NGRAN_SSRSRP:[I

    const/4 v4, 0x6

    .line 579
    invoke-static {v4, v1, v4, v2}, Lcom/android/internal/telephony/SignalStrengthController;->createSignalThresholdsInfo(I[IIZ)Landroid/telephony/SignalThresholdInfo;

    move-result-object v1

    .line 578
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x7

    .line 584
    sget-object v2, Lcom/android/internal/telephony/SignalStrengthController$AccessNetworkThresholds;->NGRAN_SSRSRQ:[I

    .line 585
    invoke-static {v1, v2, v4, v6}, Lcom/android/internal/telephony/SignalStrengthController;->createSignalThresholdsInfo(I[IIZ)Landroid/telephony/SignalThresholdInfo;

    move-result-object v1

    .line 584
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x8

    .line 590
    sget-object v2, Lcom/android/internal/telephony/SignalStrengthController$AccessNetworkThresholds;->NGRAN_SSSINR:[I

    .line 591
    invoke-static {v1, v2, v4, v6}, Lcom/android/internal/telephony/SignalStrengthController;->createSignalThresholdsInfo(I[IIZ)Landroid/telephony/SignalThresholdInfo;

    move-result-object v1

    .line 590
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x9

    .line 596
    sget-object v2, Lcom/android/internal/telephony/SignalStrengthController$AccessNetworkThresholds;->UTRAN_ECNO:[I

    .line 597
    invoke-static {v1, v2, v3, v6}, Lcom/android/internal/telephony/SignalStrengthController;->createSignalThresholdsInfo(I[IIZ)Landroid/telephony/SignalThresholdInfo;

    move-result-object v1

    .line 596
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 604
    :cond_79
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SignalStrengthController;->consolidatedAndSetReportingCriteria(Ljava/util/List;)V

    return-void
.end method

.method private blacklist shouldRefreshSignalStrength()Z
    .registers 7

    .line 373
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 377
    iget-wide v2, p0, Lcom/android/internal/telephony/SignalStrengthController;->mSignalStrengthUpdatedTime:J

    cmp-long v4, v2, v0

    const/4 v5, 0x0

    if-gtz v4, :cond_14

    sub-long/2addr v0, v2

    sget-wide v2, Lcom/android/internal/telephony/SignalStrengthController;->SIGNAL_STRENGTH_REFRESH_THRESHOLD_IN_MS:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_13

    goto :goto_14

    :cond_13
    return v5

    .line 381
    :cond_14
    :goto_14
    invoke-static {}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getInstance()Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/SignalStrengthController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 382
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/SignalStrengthController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 383
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 382
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getActiveSubscriptionInfoList(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    .line 385
    invoke-static {v0}, Lcom/android/internal/telephony/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_6c

    .line 386
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    .line 390
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->isOpportunistic()Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 391
    iget-object v2, p0, Lcom/android/internal/telephony/SignalStrengthController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    .line 392
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 393
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    if-eqz v1, :cond_3b

    .line 395
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataRegistrationState()I

    move-result v1

    if-nez v1, :cond_3b

    return v3

    :cond_6c
    return v5
.end method

.method private blacklist updateAlwaysReportSignalStrength()V
    .registers 4

    .line 1030
    iget-object v0, p0, Lcom/android/internal/telephony/SignalStrengthController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    .line 1031
    iget-object v1, p0, Lcom/android/internal/telephony/SignalStrengthController;->mSignalRequestRecords:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/internal/telephony/SignalStrengthController$$ExternalSyntheticLambda5;

    invoke-direct {v2, v0}, Lcom/android/internal/telephony/SignalStrengthController$$ExternalSyntheticLambda5;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    .line 1036
    iget-object p0, p0, Lcom/android/internal/telephony/SignalStrengthController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/Phone;->setAlwaysReportSignalStrength(Z)V

    return-void
.end method

.method private blacklist updateSignalStrength(Landroid/telephony/SignalStrength;)V
    .registers 4

    .line 337
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SignalStrengthController;->maybeOverrideSignalStrengthForTest(Landroid/telephony/SignalStrength;)Landroid/telephony/SignalStrength;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/SignalStrengthController;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 338
    iget-object p1, p0, Lcom/android/internal/telephony/SignalStrengthController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object p1

    if-eqz p1, :cond_18

    .line 340
    iget-object v0, p0, Lcom/android/internal/telephony/SignalStrengthController;->mSignalStrength:Landroid/telephony/SignalStrength;

    iget-object v1, p0, Lcom/android/internal/telephony/SignalStrengthController;->mCarrierConfig:Landroid/os/PersistableBundle;

    iget-object p1, p1, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v1, p1}, Landroid/telephony/SignalStrength;->updateLevel(Landroid/os/PersistableBundle;Landroid/telephony/ServiceState;)V

    goto :goto_1d

    .line 342
    :cond_18
    const-string p1, "updateSignalStrength: serviceStateTracker is null"

    invoke-static {p1}, Lcom/android/internal/telephony/SignalStrengthController;->loge(Ljava/lang/String;)V

    .line 344
    :goto_1d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/SignalStrengthController;->mSignalStrengthUpdatedTime:J

    .line 345
    invoke-virtual {p0}, Lcom/android/internal/telephony/SignalStrengthController;->notifySignalStrength()V

    return-void
.end method

.method private static blacklist validateAndCreateSignalThresholdInfo(I[I[IIZ)Landroid/telephony/SignalThresholdInfo;
    .registers 9

    .line 1204
    :try_start_0
    new-instance v0, Landroid/telephony/SignalThresholdInfo$Builder;

    invoke-direct {v0}, Landroid/telephony/SignalThresholdInfo$Builder;-><init>()V

    .line 1205
    invoke-virtual {v0, p0}, Landroid/telephony/SignalThresholdInfo$Builder;->setSignalMeasurementType(I)Landroid/telephony/SignalThresholdInfo$Builder;

    move-result-object v0

    .line 1206
    invoke-virtual {v0, p1}, Landroid/telephony/SignalThresholdInfo$Builder;->setThresholds([I)Landroid/telephony/SignalThresholdInfo$Builder;

    move-result-object v0

    .line 1207
    invoke-virtual {v0, p3}, Landroid/telephony/SignalThresholdInfo$Builder;->setRadioAccessNetworkType(I)Landroid/telephony/SignalThresholdInfo$Builder;

    move-result-object v0

    .line 1208
    invoke-virtual {v0, p4}, Landroid/telephony/SignalThresholdInfo$Builder;->setIsEnabled(Z)Landroid/telephony/SignalThresholdInfo$Builder;

    move-result-object v0

    .line 1209
    invoke-virtual {v0}, Landroid/telephony/SignalThresholdInfo$Builder;->build()Landroid/telephony/SignalThresholdInfo;

    move-result-object p0
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_1a

    return-object p0

    .line 1214
    :catch_1a
    new-instance v0, Landroid/telephony/SignalThresholdInfo$Builder;

    invoke-direct {v0}, Landroid/telephony/SignalThresholdInfo$Builder;-><init>()V

    .line 1215
    invoke-virtual {v0, p0}, Landroid/telephony/SignalThresholdInfo$Builder;->setSignalMeasurementType(I)Landroid/telephony/SignalThresholdInfo$Builder;

    move-result-object v0

    .line 1216
    invoke-virtual {v0, p2}, Landroid/telephony/SignalThresholdInfo$Builder;->setThresholds([I)Landroid/telephony/SignalThresholdInfo$Builder;

    move-result-object v0

    .line 1217
    invoke-virtual {v0, p3}, Landroid/telephony/SignalThresholdInfo$Builder;->setRadioAccessNetworkType(I)Landroid/telephony/SignalThresholdInfo$Builder;

    move-result-object v0

    .line 1218
    invoke-virtual {v0, p4}, Landroid/telephony/SignalThresholdInfo$Builder;->setIsEnabled(Z)Landroid/telephony/SignalThresholdInfo$Builder;

    move-result-object v0

    .line 1219
    invoke-virtual {v0}, Landroid/telephony/SignalThresholdInfo$Builder;->build()Landroid/telephony/SignalThresholdInfo;

    move-result-object v0

    .line 1221
    const-string v1, "28232bc4-78ff-447e-b597-7c054c802407"

    .line 1222
    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid parameter to generate SignalThresholdInfo: measurementType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", thresholds="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1225
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", RAN="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", isEnabled="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ". Replaced with default thresholds: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1228
    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1221
    invoke-static {v1, p0}, Landroid/telephony/AnomalyReporter;->reportAnomaly(Ljava/util/UUID;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public blacklist clearSignalStrengthUpdateRequest(IILandroid/telephony/SignalStrengthUpdateRequest;Landroid/os/Message;)V
    .registers 7

    .line 851
    new-instance v0, Lcom/android/internal/telephony/SignalStrengthController$SignalRequestRecord;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/internal/telephony/SignalStrengthController$SignalRequestRecord;-><init>(Lcom/android/internal/telephony/SignalStrengthController;IILandroid/telephony/SignalStrengthUpdateRequest;)V

    .line 852
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v0, p4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p4, 0x2

    invoke-virtual {p0, p4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    invoke-virtual {p0, p4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 855
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "clearSignalStrengthUpdateRequest subId="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " callingUid="

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " request="

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SignalStrengthController;->localLog(Ljava/lang/String;)V

    return-void
.end method

.method blacklist dispose()V
    .registers 2

    .line 298
    iget-object v0, p0, Lcom/android/internal/telephony/SignalStrengthController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnSignalStrengthUpdate(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    .line 813
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SignalStrengthController - phoneId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/SignalStrengthController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 814
    const-string v0, "SignalStrengthController - Log Begin ----"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 815
    iget-object v0, p0, Lcom/android/internal/telephony/SignalStrengthController;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 816
    const-string p1, "SignalStrengthController - Log End ----"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 818
    new-instance p1, Lcom/android/internal/telephony/IndentingPrintWriter;

    const-string p3, "  "

    invoke-direct {p1, p2, p3}, Lcom/android/internal/telephony/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 819
    invoke-virtual {p1}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 820
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mSignalRequestRecords="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/SignalStrengthController;->mSignalRequestRecords:Ljava/util/List;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 821
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " mLastSignalStrength="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/SignalStrengthController;->mLastSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 822
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " mSignalStrength="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/SignalStrengthController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 823
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " mLteRsrpBoost="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/internal/telephony/SignalStrengthController;->mLteRsrpBoost:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 824
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " mNrRsrpBoost="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/SignalStrengthController;->mNrRsrpBoost:[I

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 825
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " mEarfcnPairListForRsrpBoost="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/SignalStrengthController;->mEarfcnPairListForRsrpBoost:Ljava/util/ArrayList;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 826
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " mNrarfcnRangeListForRsrpBoost="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/SignalStrengthController;->mNrarfcnRangeListForRsrpBoost:Ljava/util/ArrayList;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 827
    invoke-virtual {p1}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 828
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method public blacklist getConsolidatedSignalThresholds(II[II)[I
    .registers 12

    .line 878
    new-instance v0, Ljava/util/TreeSet;

    new-instance v1, Lcom/android/internal/telephony/SignalStrengthController$$ExternalSyntheticLambda4;

    invoke-direct {v1, p4}, Lcom/android/internal/telephony/SignalStrengthController$$ExternalSyntheticLambda4;-><init>(I)V

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    const/4 p4, 0x0

    if-eqz p3, :cond_1d

    .line 886
    array-length v1, p3

    move v2, p4

    :goto_f
    if-ge v2, v1, :cond_1d

    aget v3, p3, v2

    .line 887
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 891
    :cond_1d
    iget-object p3, p0, Lcom/android/internal/telephony/SignalStrengthController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p3}, Lcom/android/internal/telephony/Phone;->isDeviceIdle()Z

    move-result p3

    .line 892
    iget-object v1, p0, Lcom/android/internal/telephony/SignalStrengthController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    .line 896
    iget-object p0, p0, Lcom/android/internal/telephony/SignalStrengthController;->mSignalRequestRecords:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2f
    :goto_2f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/SignalStrengthController$SignalRequestRecord;

    .line 897
    iget v3, v2, Lcom/android/internal/telephony/SignalStrengthController$SignalRequestRecord;->mSubId:I

    if-ne v1, v3, :cond_2f

    if-eqz p3, :cond_4a

    iget-object v3, v2, Lcom/android/internal/telephony/SignalStrengthController$SignalRequestRecord;->mRequest:Landroid/telephony/SignalStrengthUpdateRequest;

    .line 898
    invoke-virtual {v3}, Landroid/telephony/SignalStrengthUpdateRequest;->isReportingRequestedWhileIdle()Z

    move-result v3

    if-nez v3, :cond_4a

    goto :goto_2f

    .line 901
    :cond_4a
    iget-object v2, v2, Lcom/android/internal/telephony/SignalStrengthController$SignalRequestRecord;->mRequest:Landroid/telephony/SignalStrengthUpdateRequest;

    invoke-virtual {v2}, Landroid/telephony/SignalStrengthUpdateRequest;->getSignalThresholdInfos()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_54
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SignalThresholdInfo;

    .line 902
    invoke-static {p1, p2, v3}, Lcom/android/internal/telephony/SignalStrengthController;->isRanAndSignalMeasurementTypeMatch(IILandroid/telephony/SignalThresholdInfo;)Z

    move-result v4

    if-eqz v4, :cond_54

    .line 903
    invoke-virtual {v3}, Landroid/telephony/SignalThresholdInfo;->getThresholds()[I

    move-result-object v3

    array-length v4, v3

    move v5, p4

    :goto_6c
    if-ge v5, v4, :cond_54

    aget v6, v3, v5

    .line 904
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_6c

    .line 910
    :cond_7a
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result p0

    new-array p0, p0, [I

    .line 912
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_84
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_9a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    add-int/lit8 p3, p4, 0x1

    .line 913
    aput p2, p0, p4

    move p4, p3

    goto :goto_84

    :cond_9a
    return-object p0
.end method

.method public blacklist getMinimumHysteresisDb(ZII[I)I
    .registers 6

    .line 658
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/SignalStrengthController;->getHysteresisDbFromCarrierConfig(II)I

    move-result v0

    if-eqz p1, :cond_13

    .line 663
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/SignalStrengthController;->getHysteresisDbFromSignalThresholdInfoRequests(II)I

    move-result p1

    .line 666
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 669
    invoke-direct {p0, p1, p4}, Lcom/android/internal/telephony/SignalStrengthController;->computeHysteresisDbOnSmallestThresholdDelta(I[I)I

    move-result p0

    return p0

    :cond_13
    return v0
.end method

.method public blacklist getSignalStrength()Landroid/telephony/SignalStrength;
    .registers 2

    .line 365
    invoke-direct {p0}, Lcom/android/internal/telephony/SignalStrengthController;->shouldRefreshSignalStrength()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 366
    const-string v0, "getSignalStrength() refreshing signal strength."

    invoke-static {v0}, Lcom/android/internal/telephony/SignalStrengthController;->log(Ljava/lang/String;)V

    const/4 v0, 0x7

    .line 367
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 369
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/SignalStrengthController;->mSignalStrength:Landroid/telephony/SignalStrength;

    return-object p0
.end method

.method blacklist getSignalStrengthFromCi()V
    .registers 3

    .line 310
    iget-object v0, p0, Lcom/android/internal/telephony/SignalStrengthController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->getSignalStrength(Landroid/os/Message;)V

    return-void
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 8

    .line 181
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_f8

    .line 292
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unhandled message with number: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/SignalStrengthController;->log(Ljava/lang/String;)V

    return-void

    .line 287
    :pswitch_1d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Landroid/telephony/ServiceState;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SignalStrengthController;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    return-void

    .line 281
    :pswitch_29
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 282
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SignalStrengthController;->onSignalStrengthResult(Landroid/os/AsyncResult;)V

    return-void

    .line 274
    :pswitch_31
    iget-object p1, p0, Lcom/android/internal/telephony/SignalStrengthController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/internal/telephony/CommandsInterface;->getSignalStrength(Landroid/os/Message;)V

    return-void

    .line 262
    :pswitch_3d
    iget-object v0, p0, Lcom/android/internal/telephony/SignalStrengthController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_48

    goto/16 :goto_f6

    .line 266
    :cond_48
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 267
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SignalStrengthController;->onSignalStrengthResult(Landroid/os/AsyncResult;)V

    return-void

    .line 184
    :pswitch_50
    invoke-direct {p0}, Lcom/android/internal/telephony/SignalStrengthController;->onReset()V

    return-void

    .line 253
    :pswitch_54
    invoke-virtual {p0}, Lcom/android/internal/telephony/SignalStrengthController;->updateReportingCriteria()V

    return-void

    .line 223
    :pswitch_58
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/util/Pair;

    .line 225
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/SignalStrengthController$SignalRequestRecord;

    .line 226
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Landroid/os/Message;

    .line 229
    iget-object v2, p0, Lcom/android/internal/telephony/SignalStrengthController;->mSignalRequestRecords:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 230
    :cond_6a
    :goto_6a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_95

    .line 231
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/SignalStrengthController$SignalRequestRecord;

    .line 232
    iget-object v4, v3, Lcom/android/internal/telephony/SignalStrengthController$SignalRequestRecord;->mRequest:Landroid/telephony/SignalStrengthUpdateRequest;

    invoke-virtual {v4}, Landroid/telephony/SignalStrengthUpdateRequest;->getLiveToken()Landroid/os/IBinder;

    move-result-object v4

    iget-object v5, v0, Lcom/android/internal/telephony/SignalStrengthController$SignalRequestRecord;->mRequest:Landroid/telephony/SignalStrengthUpdateRequest;

    invoke-virtual {v5}, Landroid/telephony/SignalStrengthUpdateRequest;->getLiveToken()Landroid/os/IBinder;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6a

    .line 234
    :try_start_88
    iget-object v4, v3, Lcom/android/internal/telephony/SignalStrengthController$SignalRequestRecord;->mRequest:Landroid/telephony/SignalStrengthUpdateRequest;

    invoke-virtual {v4}, Landroid/telephony/SignalStrengthUpdateRequest;->getLiveToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {v4, v3, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_91
    .catch Ljava/util/NoSuchElementException; {:try_start_88 .. :try_end_91} :catch_91

    .line 238
    :catch_91
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_6a

    .line 242
    :cond_95
    invoke-direct {p0}, Lcom/android/internal/telephony/SignalStrengthController;->updateAlwaysReportSignalStrength()V

    .line 243
    invoke-virtual {p0}, Lcom/android/internal/telephony/SignalStrengthController;->updateReportingCriteria()V

    if-eqz p1, :cond_f6

    .line 246
    invoke-static {p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    .line 247
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_f6

    .line 187
    :pswitch_a4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/util/Pair;

    .line 189
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/SignalStrengthController$SignalRequestRecord;

    .line 190
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Landroid/os/Message;

    .line 191
    invoke-static {p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    .line 194
    iget-object v3, p0, Lcom/android/internal/telephony/SignalStrengthController;->mSignalRequestRecords:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/android/internal/telephony/SignalStrengthController$$ExternalSyntheticLambda3;

    invoke-direct {v4, v0}, Lcom/android/internal/telephony/SignalStrengthController$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/telephony/SignalStrengthController$SignalRequestRecord;)V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v3

    if-eqz v3, :cond_d2

    .line 198
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "setSignalStrengthUpdateRequest called again with same subId"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    iput-object p0, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 200
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 205
    :cond_d2
    :try_start_d2
    iget-object v3, v0, Lcom/android/internal/telephony/SignalStrengthController$SignalRequestRecord;->mRequest:Landroid/telephony/SignalStrengthUpdateRequest;

    invoke-virtual {v3}, Landroid/telephony/SignalStrengthUpdateRequest;->getLiveToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v3, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_db
    .catch Landroid/os/RemoteException; {:try_start_d2 .. :try_end_db} :catch_ea
    .catch Ljava/lang/NullPointerException; {:try_start_d2 .. :try_end_db} :catch_ea

    .line 213
    iget-object v1, p0, Lcom/android/internal/telephony/SignalStrengthController;->mSignalRequestRecords:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    invoke-direct {p0}, Lcom/android/internal/telephony/SignalStrengthController;->updateAlwaysReportSignalStrength()V

    .line 216
    invoke-virtual {p0}, Lcom/android/internal/telephony/SignalStrengthController;->updateReportingCriteria()V

    .line 218
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 207
    :catch_ea
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Signal request client is already dead."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    iput-object p0, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 209
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_f6
    :goto_f6
    return-void

    nop

    :pswitch_data_f8
    .packed-switch 0x1
        :pswitch_a4
        :pswitch_58
        :pswitch_54
        :pswitch_50
        :pswitch_50
        :pswitch_3d
        :pswitch_31
        :pswitch_29
        :pswitch_3d
        :pswitch_1d
    .end packed-switch
.end method

.method blacklist notifySignalStrength()V
    .registers 3

    .line 774
    iget-object v0, p0, Lcom/android/internal/telephony/SignalStrengthController;->mSignalStrength:Landroid/telephony/SignalStrength;

    iget-object v1, p0, Lcom/android/internal/telephony/SignalStrengthController;->mLastSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v0, v1}, Landroid/telephony/SignalStrength;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 776
    :try_start_a
    iget-object v0, p0, Lcom/android/internal/telephony/SignalStrengthController;->mSignalStrengthChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    .line 777
    iget-object v0, p0, Lcom/android/internal/telephony/SignalStrengthController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->notifySignalStrength()V

    .line 778
    iget-object v0, p0, Lcom/android/internal/telephony/SignalStrengthController;->mSignalStrength:Landroid/telephony/SignalStrength;

    iput-object v0, p0, Lcom/android/internal/telephony/SignalStrengthController;->mLastSignalStrength:Landroid/telephony/SignalStrength;
    :try_end_18
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_18} :catch_19

    return-void

    :catch_19
    move-exception p0

    .line 780
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateSignalStrength() Phone already destroyed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "SignalStrength not notified"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/SignalStrengthController;->loge(Ljava/lang/String;)V

    :cond_33
    return-void
.end method

.method public blacklist onDeviceIdleStateChanged(Z)V
    .registers 4

    .line 938
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 940
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDeviceIdleStateChanged isDeviceIdle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SignalStrengthController;->localLog(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist registerForSignalStrengthChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5

    .line 793
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 794
    iget-object p0, p0, Lcom/android/internal/telephony/SignalStrengthController;->mSignalStrengthChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    return-void
.end method

.method blacklist setSignalStrengthDefaultValues()V
    .registers 3

    .line 769
    new-instance v0, Landroid/telephony/SignalStrength;

    invoke-direct {v0}, Landroid/telephony/SignalStrength;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SignalStrengthController;->maybeOverrideSignalStrengthForTest(Landroid/telephony/SignalStrength;)Landroid/telephony/SignalStrength;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SignalStrengthController;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 770
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/SignalStrengthController;->mSignalStrengthUpdatedTime:J

    return-void
.end method

.method public blacklist setSignalStrengthUpdateRequest(IILandroid/telephony/SignalStrengthUpdateRequest;Landroid/os/Message;)V
    .registers 7

    .line 836
    new-instance v0, Lcom/android/internal/telephony/SignalStrengthController$SignalRequestRecord;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/internal/telephony/SignalStrengthController$SignalRequestRecord;-><init>(Lcom/android/internal/telephony/SignalStrengthController;IILandroid/telephony/SignalStrengthUpdateRequest;)V

    .line 837
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v0, p4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p4, 0x1

    invoke-virtual {p0, p4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    invoke-virtual {p0, p4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 840
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setSignalStrengthUpdateRequest subId="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " callingUid="

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " request="

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SignalStrengthController;->localLog(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist shouldEnableSignalThresholdForAppRequest(IIIZ)Z
    .registers 8

    .line 952
    iget-object p0, p0, Lcom/android/internal/telephony/SignalStrengthController;->mSignalRequestRecords:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SignalStrengthController$SignalRequestRecord;

    .line 953
    iget v1, v0, Lcom/android/internal/telephony/SignalStrengthController$SignalRequestRecord;->mSubId:I

    if-eq p3, v1, :cond_17

    goto :goto_6

    .line 956
    :cond_17
    iget-object v1, v0, Lcom/android/internal/telephony/SignalStrengthController$SignalRequestRecord;->mRequest:Landroid/telephony/SignalStrengthUpdateRequest;

    invoke-virtual {v1}, Landroid/telephony/SignalStrengthUpdateRequest;->getSignalThresholdInfos()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SignalThresholdInfo;

    .line 957
    invoke-static {p1, p2, v2}, Lcom/android/internal/telephony/SignalStrengthController;->isRanAndSignalMeasurementTypeMatch(IILandroid/telephony/SignalThresholdInfo;)Z

    move-result v2

    if-eqz v2, :cond_21

    if-eqz p4, :cond_3d

    iget-object v2, v0, Lcom/android/internal/telephony/SignalStrengthController$SignalRequestRecord;->mRequest:Landroid/telephony/SignalStrengthUpdateRequest;

    .line 958
    invoke-static {v2}, Lcom/android/internal/telephony/SignalStrengthController;->isSignalReportRequestedWhileIdle(Landroid/telephony/SignalStrengthUpdateRequest;)Z

    move-result v2

    if-eqz v2, :cond_21

    :cond_3d
    const/4 p0, 0x1

    return p0

    :cond_3f
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist shouldHonorSystemThresholds()Z
    .registers 3

    .line 923
    iget-object v0, p0, Lcom/android/internal/telephony/SignalStrengthController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isDeviceIdle()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 p0, 0x1

    return p0

    .line 927
    :cond_a
    iget-object v0, p0, Lcom/android/internal/telephony/SignalStrengthController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    .line 928
    iget-object p0, p0, Lcom/android/internal/telephony/SignalStrengthController;->mSignalRequestRecords:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/android/internal/telephony/SignalStrengthController$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/SignalStrengthController$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public blacklist unregisterForSignalStrengthChanged(Landroid/os/Handler;)V
    .registers 2

    .line 802
    iget-object p0, p0, Lcom/android/internal/telephony/SignalStrengthController;->mSignalStrengthChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method blacklist updateArfcnLists()V
    .registers 5

    .line 1040
    iget-object v0, p0, Lcom/android/internal/telephony/SignalStrengthController;->mRsrpBoostLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1041
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/telephony/SignalStrengthController;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v2, "lte_earfcns_rsrp_boost_int"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/SignalStrengthController;->mLteRsrpBoost:I

    .line 1043
    iget-object v1, p0, Lcom/android/internal/telephony/SignalStrengthController;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v2, "boosted_lte_earfcns_string_array"

    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1045
    invoke-static {v1}, Lcom/android/internal/telephony/SignalStrengthController;->convertEarfcnStringArrayToPairList([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/SignalStrengthController;->mEarfcnPairListForRsrpBoost:Ljava/util/ArrayList;

    .line 1048
    iget-object v1, p0, Lcom/android/internal/telephony/SignalStrengthController;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v2, "nrarfcns_rsrp_boost_int_array"

    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/SignalStrengthController;->mNrRsrpBoost:[I

    .line 1050
    iget-object v1, p0, Lcom/android/internal/telephony/SignalStrengthController;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v2, "boosted_nrarfcns_string_array"

    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1052
    invoke-static {v1}, Lcom/android/internal/telephony/SignalStrengthController;->convertEarfcnStringArrayToPairList([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/SignalStrengthController;->mNrarfcnRangeListForRsrpBoost:Ljava/util/ArrayList;

    .line 1055
    iget-object v2, p0, Lcom/android/internal/telephony/SignalStrengthController;->mNrRsrpBoost:[I

    if-nez v2, :cond_3a

    if-nez v1, :cond_49

    :cond_3a
    if-eqz v2, :cond_3e

    if-eqz v1, :cond_49

    :cond_3e
    if-eqz v2, :cond_56

    if-eqz v1, :cond_56

    array-length v2, v2

    .line 1058
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v2, v1, :cond_56

    .line 1059
    :cond_49
    const-string v1, "Invalid parameters for NR RSRP boost"

    invoke-static {v1}, Lcom/android/internal/telephony/SignalStrengthController;->loge(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 1060
    iput-object v1, p0, Lcom/android/internal/telephony/SignalStrengthController;->mNrRsrpBoost:[I

    .line 1061
    iput-object v1, p0, Lcom/android/internal/telephony/SignalStrengthController;->mNrarfcnRangeListForRsrpBoost:Ljava/util/ArrayList;

    goto :goto_56

    :catchall_54
    move-exception p0

    goto :goto_58

    .line 1063
    :cond_56
    :goto_56
    monitor-exit v0

    return-void

    :goto_58
    monitor-exit v0
    :try_end_59
    .catchall {:try_start_3 .. :try_end_59} :catchall_54

    throw p0
.end method

.method public blacklist updateReportingCriteria()V
    .registers 12

    .line 410
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 412
    iget-object v1, p0, Lcom/android/internal/telephony/SignalStrengthController;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v2, "gsm_rssi_thresholds_int_array"

    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_19

    .line 415
    sget-object v3, Lcom/android/internal/telephony/SignalStrengthController$AccessNetworkThresholds;->GERAN:[I

    .line 416
    invoke-static {v2, v1, v3, v2, v2}, Lcom/android/internal/telephony/SignalStrengthController;->validateAndCreateSignalThresholdInfo(I[I[IIZ)Landroid/telephony/SignalThresholdInfo;

    move-result-object v1

    .line 415
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 424
    :cond_19
    iget-object v1, p0, Lcom/android/internal/telephony/SignalStrengthController;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v3, "wcdma_rscp_thresholds_int_array"

    invoke-virtual {v1, v3}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    const/4 v3, 0x2

    if-eqz v1, :cond_2d

    .line 427
    sget-object v4, Lcom/android/internal/telephony/SignalStrengthController$AccessNetworkThresholds;->UTRAN:[I

    .line 428
    invoke-static {v3, v1, v4, v3, v2}, Lcom/android/internal/telephony/SignalStrengthController;->validateAndCreateSignalThresholdInfo(I[I[IIZ)Landroid/telephony/SignalThresholdInfo;

    move-result-object v1

    .line 427
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 436
    :cond_2d
    iget-object v1, p0, Lcom/android/internal/telephony/SignalStrengthController;->mCarrierConfig:Landroid/os/PersistableBundle;

    invoke-direct {p0}, Lcom/android/internal/telephony/SignalStrengthController;->isUsingNonTerrestrialNetwork()Z

    move-result v4

    if-eqz v4, :cond_38

    .line 437
    const-string v4, "parameters_used_for_ntn_lte_signal_bar_int"

    goto :goto_3a

    .line 438
    :cond_38
    const-string v4, "parameters_used_for_lte_signal_bar_int"

    .line 436
    :goto_3a
    invoke-virtual {v1, v4, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 440
    iget-object v4, p0, Lcom/android/internal/telephony/SignalStrengthController;->mCarrierConfig:Landroid/os/PersistableBundle;

    invoke-direct {p0}, Lcom/android/internal/telephony/SignalStrengthController;->isUsingNonTerrestrialNetwork()Z

    move-result v5

    if-eqz v5, :cond_49

    .line 441
    const-string v5, "ntn_lte_rsrp_thresholds_int_array"

    goto :goto_4b

    .line 442
    :cond_49
    const-string v5, "lte_rsrp_thresholds_int_array"

    .line 440
    :goto_4b
    invoke-virtual {v4, v5}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v4

    const/4 v5, 0x3

    const/4 v6, 0x0

    if-eqz v4, :cond_63

    .line 444
    sget-object v7, Lcom/android/internal/telephony/SignalStrengthController$AccessNetworkThresholds;->EUTRAN_RSRP:[I

    and-int/lit8 v8, v1, 0x1

    if-eqz v8, :cond_5b

    move v8, v2

    goto :goto_5c

    :cond_5b
    move v8, v6

    .line 445
    :goto_5c
    invoke-static {v5, v4, v7, v5, v8}, Lcom/android/internal/telephony/SignalStrengthController;->validateAndCreateSignalThresholdInfo(I[I[IIZ)Landroid/telephony/SignalThresholdInfo;

    move-result-object v4

    .line 444
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 453
    :cond_63
    iget-object v4, p0, Lcom/android/internal/telephony/SignalStrengthController;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v7, 0x4

    invoke-virtual {v4, v7}, Lcom/android/internal/telephony/Phone;->getHalVersion(I)Lcom/android/internal/telephony/HalVersion;

    move-result-object v4

    sget-object v8, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_5:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v4, v8}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v4

    if-eqz v4, :cond_125

    .line 454
    iget-object v4, p0, Lcom/android/internal/telephony/SignalStrengthController;->mCarrierConfig:Landroid/os/PersistableBundle;

    invoke-direct {p0}, Lcom/android/internal/telephony/SignalStrengthController;->isUsingNonTerrestrialNetwork()Z

    move-result v8

    if-eqz v8, :cond_7d

    .line 455
    const-string v8, "ntn_lte_rsrq_thresholds_int_array"

    goto :goto_7f

    .line 456
    :cond_7d
    const-string v8, "lte_rsrq_thresholds_int_array"

    .line 454
    :goto_7f
    invoke-virtual {v4, v8}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v4

    if-eqz v4, :cond_95

    .line 458
    sget-object v8, Lcom/android/internal/telephony/SignalStrengthController$AccessNetworkThresholds;->EUTRAN_RSRQ:[I

    and-int/lit8 v9, v1, 0x2

    if-eqz v9, :cond_8d

    move v9, v2

    goto :goto_8e

    :cond_8d
    move v9, v6

    .line 459
    :goto_8e
    invoke-static {v7, v4, v8, v5, v9}, Lcom/android/internal/telephony/SignalStrengthController;->validateAndCreateSignalThresholdInfo(I[I[IIZ)Landroid/telephony/SignalThresholdInfo;

    move-result-object v4

    .line 458
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 467
    :cond_95
    iget-object v4, p0, Lcom/android/internal/telephony/SignalStrengthController;->mCarrierConfig:Landroid/os/PersistableBundle;

    invoke-direct {p0}, Lcom/android/internal/telephony/SignalStrengthController;->isUsingNonTerrestrialNetwork()Z

    move-result v8

    if-eqz v8, :cond_a0

    .line 468
    const-string v8, "ntn_lte_rssnr_thresholds_int_array"

    goto :goto_a2

    .line 469
    :cond_a0
    const-string v8, "lte_rssnr_thresholds_int_array"

    .line 467
    :goto_a2
    invoke-virtual {v4, v8}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v4

    if-eqz v4, :cond_b8

    .line 471
    sget-object v8, Lcom/android/internal/telephony/SignalStrengthController$AccessNetworkThresholds;->EUTRAN_RSSNR:[I

    and-int/2addr v1, v7

    if-eqz v1, :cond_af

    move v1, v2

    goto :goto_b0

    :cond_af
    move v1, v6

    :goto_b0
    const/4 v9, 0x5

    .line 472
    invoke-static {v9, v4, v8, v5, v1}, Lcom/android/internal/telephony/SignalStrengthController;->validateAndCreateSignalThresholdInfo(I[I[IIZ)Landroid/telephony/SignalThresholdInfo;

    move-result-object v1

    .line 471
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 480
    :cond_b8
    iget-object v1, p0, Lcom/android/internal/telephony/SignalStrengthController;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v4, "parameters_use_for_5g_nr_signal_bar_int"

    invoke-virtual {v1, v4, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 482
    iget-object v4, p0, Lcom/android/internal/telephony/SignalStrengthController;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v5, "5g_nr_ssrsrp_thresholds_int_array"

    invoke-virtual {v4, v5}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v4

    const/4 v5, 0x6

    if-eqz v4, :cond_db

    .line 485
    sget-object v8, Lcom/android/internal/telephony/SignalStrengthController$AccessNetworkThresholds;->NGRAN_SSRSRP:[I

    and-int/lit8 v9, v1, 0x1

    if-eqz v9, :cond_d3

    move v9, v2

    goto :goto_d4

    :cond_d3
    move v9, v6

    .line 486
    :goto_d4
    invoke-static {v5, v4, v8, v5, v9}, Lcom/android/internal/telephony/SignalStrengthController;->validateAndCreateSignalThresholdInfo(I[I[IIZ)Landroid/telephony/SignalThresholdInfo;

    move-result-object v4

    .line 485
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 494
    :cond_db
    iget-object v4, p0, Lcom/android/internal/telephony/SignalStrengthController;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v8, "5g_nr_ssrsrq_thresholds_int_array"

    invoke-virtual {v4, v8}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v4

    if-eqz v4, :cond_f6

    .line 497
    sget-object v8, Lcom/android/internal/telephony/SignalStrengthController$AccessNetworkThresholds;->NGRAN_SSRSRQ:[I

    and-int/lit8 v9, v1, 0x2

    if-eqz v9, :cond_ed

    move v9, v2

    goto :goto_ee

    :cond_ed
    move v9, v6

    :goto_ee
    const/4 v10, 0x7

    .line 498
    invoke-static {v10, v4, v8, v5, v9}, Lcom/android/internal/telephony/SignalStrengthController;->validateAndCreateSignalThresholdInfo(I[I[IIZ)Landroid/telephony/SignalThresholdInfo;

    move-result-object v4

    .line 497
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 506
    :cond_f6
    iget-object v4, p0, Lcom/android/internal/telephony/SignalStrengthController;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v8, "5g_nr_sssinr_thresholds_int_array"

    invoke-virtual {v4, v8}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v4

    if-eqz v4, :cond_110

    .line 509
    sget-object v8, Lcom/android/internal/telephony/SignalStrengthController$AccessNetworkThresholds;->NGRAN_SSSINR:[I

    and-int/2addr v1, v7

    if-eqz v1, :cond_106

    goto :goto_107

    :cond_106
    move v2, v6

    :goto_107
    const/16 v1, 0x8

    .line 510
    invoke-static {v1, v4, v8, v5, v2}, Lcom/android/internal/telephony/SignalStrengthController;->validateAndCreateSignalThresholdInfo(I[I[IIZ)Landroid/telephony/SignalThresholdInfo;

    move-result-object v1

    .line 509
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 518
    :cond_110
    iget-object v1, p0, Lcom/android/internal/telephony/SignalStrengthController;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v2, "wcdma_ecno_thresholds_int_array"

    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    if-eqz v1, :cond_125

    const/16 v2, 0x9

    .line 521
    sget-object v4, Lcom/android/internal/telephony/SignalStrengthController$AccessNetworkThresholds;->UTRAN_ECNO:[I

    .line 522
    invoke-static {v2, v1, v4, v3, v6}, Lcom/android/internal/telephony/SignalStrengthController;->validateAndCreateSignalThresholdInfo(I[I[IIZ)Landroid/telephony/SignalThresholdInfo;

    move-result-object v1

    .line 521
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 532
    :cond_125
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SignalStrengthController;->consolidatedAndSetReportingCriteria(Ljava/util/List;)V

    return-void
.end method

.method blacklist updateServiceStateArfcnRsrpBoost(Landroid/telephony/ServiceState;Landroid/telephony/CellIdentity;)V
    .registers 8

    if-nez p2, :cond_3

    return-void

    .line 1075
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/SignalStrengthController;->mRsrpBoostLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1076
    :try_start_6
    invoke-virtual {p2}, Landroid/telephony/CellIdentity;->getType()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eq v1, v2, :cond_2c

    const/4 v2, 0x6

    if-eq v1, v2, :cond_13

    goto :goto_3e

    .line 1086
    :cond_13
    check-cast p2, Landroid/telephony/CellIdentityNr;

    invoke-virtual {p2}, Landroid/telephony/CellIdentityNr;->getNrarfcn()I

    move-result p2

    if-eq p2, v3, :cond_3e

    .line 1088
    iget-object v1, p0, Lcom/android/internal/telephony/SignalStrengthController;->mNrarfcnRangeListForRsrpBoost:Ljava/util/ArrayList;

    invoke-static {v1, p2}, Lcom/android/internal/telephony/SignalStrengthController;->containsEarfcnInEarfcnRange(Ljava/util/ArrayList;I)I

    move-result p2

    if-eq p2, v3, :cond_3e

    .line 1090
    iget-object p0, p0, Lcom/android/internal/telephony/SignalStrengthController;->mNrRsrpBoost:[I

    if-eqz p0, :cond_3e

    .line 1091
    aget v4, p0, p2

    goto :goto_3e

    :catchall_2a
    move-exception p0

    goto :goto_43

    .line 1078
    :cond_2c
    check-cast p2, Landroid/telephony/CellIdentityLte;

    invoke-virtual {p2}, Landroid/telephony/CellIdentityLte;->getEarfcn()I

    move-result p2

    if-eq p2, v3, :cond_3e

    .line 1079
    iget-object v1, p0, Lcom/android/internal/telephony/SignalStrengthController;->mEarfcnPairListForRsrpBoost:Ljava/util/ArrayList;

    .line 1080
    invoke-static {v1, p2}, Lcom/android/internal/telephony/SignalStrengthController;->containsEarfcnInEarfcnRange(Ljava/util/ArrayList;I)I

    move-result p2

    if-eq p2, v3, :cond_3e

    .line 1082
    iget v4, p0, Lcom/android/internal/telephony/SignalStrengthController;->mLteRsrpBoost:I

    .line 1098
    :cond_3e
    :goto_3e
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_6 .. :try_end_3f} :catchall_2a

    .line 1099
    invoke-virtual {p1, v4}, Landroid/telephony/ServiceState;->setArfcnRsrpBoost(I)V

    return-void

    .line 1098
    :goto_43
    :try_start_43
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_2a

    throw p0
.end method
