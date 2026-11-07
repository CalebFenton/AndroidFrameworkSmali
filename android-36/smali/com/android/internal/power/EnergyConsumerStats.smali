.class public Lcom/android/internal/power/EnergyConsumerStats;
.super Ljava/lang/Object;
.source "EnergyConsumerStats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/power/EnergyConsumerStats$Config;,
        Lcom/android/internal/power/EnergyConsumerStats$StandardPowerBucket;
    }
.end annotation


# static fields
.field private static final blacklist INVALID_STATE:I = -0x1

.field public static final blacklist NUMBER_STANDARD_POWER_BUCKETS:I = 0xa

.field public static final blacklist POWER_BUCKET_BLUETOOTH:I = 0x5

.field public static final blacklist POWER_BUCKET_CAMERA:I = 0x8

.field public static final blacklist POWER_BUCKET_CPU:I = 0x3

.field public static final blacklist POWER_BUCKET_GNSS:I = 0x6

.field public static final blacklist POWER_BUCKET_MOBILE_RADIO:I = 0x7

.field public static final blacklist POWER_BUCKET_PHONE:I = 0x9

.field public static final blacklist POWER_BUCKET_SCREEN_DOZE:I = 0x1

.field public static final blacklist POWER_BUCKET_SCREEN_ON:I = 0x0

.field public static final blacklist POWER_BUCKET_SCREEN_OTHER:I = 0x2

.field public static final blacklist POWER_BUCKET_UNKNOWN:I = -0x1

.field public static final blacklist POWER_BUCKET_WIFI:I = 0x4

.field private static final blacklist TAG:Ljava/lang/String; = "MeasuredEnergyStats"


# instance fields
.field private final blacklist mAccumulatedChargeMicroCoulomb:[J

.field private blacklist mAccumulatedMultiStateChargeMicroCoulomb:[Lcom/android/internal/os/LongMultiStateCounter;

.field private final blacklist mConfig:Lcom/android/internal/power/EnergyConsumerStats$Config;

.field private blacklist mState:I

.field private blacklist mStateChangeTimestampMs:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$smindexToCustomBucket(I)I
    .registers 1

    invoke-static {p0}, Lcom/android/internal/power/EnergyConsumerStats;->indexToCustomBucket(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smisValidStandardBucket(I)Z
    .registers 1

    invoke-static {p0}, Lcom/android/internal/power/EnergyConsumerStats;->isValidStandardBucket(I)Z

    move-result p0

    return p0
.end method

.method public constructor blacklist <init>(Lcom/android/internal/power/EnergyConsumerStats$Config;)V
    .registers 7
    .param p1, "config"    # Lcom/android/internal/power/EnergyConsumerStats$Config;

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 241
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/power/EnergyConsumerStats;->mState:I

    .line 250
    iput-object p1, p0, Lcom/android/internal/power/EnergyConsumerStats;->mConfig:Lcom/android/internal/power/EnergyConsumerStats$Config;

    .line 251
    invoke-static {p1}, Lcom/android/internal/power/EnergyConsumerStats$Config;->-$$Nest$mgetNumberOfBuckets(Lcom/android/internal/power/EnergyConsumerStats$Config;)I

    move-result v0

    .line 252
    .local v0, "numTotalBuckets":I
    new-array v1, v0, [J

    iput-object v1, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedChargeMicroCoulomb:[J

    .line 255
    const/4 v1, 0x0

    .local v1, "stdBucket":I
    :goto_11
    const/16 v2, 0xa

    if-ge v1, v2, :cond_28

    .line 256
    iget-object v2, p0, Lcom/android/internal/power/EnergyConsumerStats;->mConfig:Lcom/android/internal/power/EnergyConsumerStats$Config;

    invoke-static {v2}, Lcom/android/internal/power/EnergyConsumerStats$Config;->-$$Nest$fgetmSupportedStandardBuckets(Lcom/android/internal/power/EnergyConsumerStats$Config;)[Z

    move-result-object v2

    aget-boolean v2, v2, v1

    if-nez v2, :cond_25

    .line 257
    iget-object v2, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedChargeMicroCoulomb:[J

    const-wide/16 v3, -0x1

    aput-wide v3, v2, v1

    .line 255
    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 260
    .end local v1    # "stdBucket":I
    :cond_28
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/power/EnergyConsumerStats$Config;Landroid/os/Parcel;)V
    .registers 7
    .param p1, "config"    # Lcom/android/internal/power/EnergyConsumerStats$Config;
    .param p2, "in"    # Landroid/os/Parcel;

    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 241
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/power/EnergyConsumerStats;->mState:I

    .line 275
    iput-object p1, p0, Lcom/android/internal/power/EnergyConsumerStats;->mConfig:Lcom/android/internal/power/EnergyConsumerStats$Config;

    .line 277
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 278
    .local v0, "size":I
    new-array v1, v0, [J

    iput-object v1, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedChargeMicroCoulomb:[J

    .line 279
    iget-object v1, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedChargeMicroCoulomb:[J

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readLongArray([J)V

    .line 280
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 281
    new-array v1, v0, [Lcom/android/internal/os/LongMultiStateCounter;

    iput-object v1, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedMultiStateChargeMicroCoulomb:[Lcom/android/internal/os/LongMultiStateCounter;

    .line 282
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_20
    if-ge v1, v0, :cond_37

    .line 283
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    if-eqz v2, :cond_34

    .line 284
    iget-object v2, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedMultiStateChargeMicroCoulomb:[Lcom/android/internal/os/LongMultiStateCounter;

    sget-object v3, Lcom/android/internal/os/LongMultiStateCounter;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 285
    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/LongMultiStateCounter;

    aput-object v3, v2, v1

    .line 282
    :cond_34
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .end local v1    # "i":I
    :cond_37
    goto :goto_3b

    .line 289
    :cond_38
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedMultiStateChargeMicroCoulomb:[Lcom/android/internal/os/LongMultiStateCounter;

    .line 291
    :goto_3b
    return-void
.end method

.method private static blacklist checkValidStandardBucket(I)V
    .registers 4
    .param p0, "bucket"    # I

    .line 686
    invoke-static {p0}, Lcom/android/internal/power/EnergyConsumerStats;->isValidStandardBucket(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 689
    return-void

    .line 687
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal StandardPowerBucket "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist containsInterestingData()Z
    .registers 6

    .line 582
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_1
    iget-object v1, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedChargeMicroCoulomb:[J

    array-length v1, v1

    if-ge v0, v1, :cond_15

    .line 583
    iget-object v1, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedChargeMicroCoulomb:[J

    aget-wide v1, v1, v0

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_12

    const/4 v1, 0x1

    return v1

    .line 582
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 585
    .end local v0    # "index":I
    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist createAndReadSummaryFromParcel(Lcom/android/internal/power/EnergyConsumerStats$Config;Landroid/os/Parcel;)Lcom/android/internal/power/EnergyConsumerStats;
    .registers 9
    .param p0, "config"    # Lcom/android/internal/power/EnergyConsumerStats$Config;
    .param p1, "in"    # Landroid/os/Parcel;

    .line 549
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 551
    .local v0, "arraySize":I
    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 553
    :cond_8
    if-nez p0, :cond_23

    .line 555
    new-instance v2, Lcom/android/internal/power/EnergyConsumerStats;

    new-instance v3, Lcom/android/internal/power/EnergyConsumerStats$Config;

    new-array v4, v0, [Z

    const/4 v5, 0x0

    new-array v5, v5, [I

    const-string v6, ""

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v1, v5, v6}, Lcom/android/internal/power/EnergyConsumerStats$Config;-><init>([Z[Ljava/lang/String;[I[Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lcom/android/internal/power/EnergyConsumerStats;-><init>(Lcom/android/internal/power/EnergyConsumerStats$Config;)V

    .line 557
    .local v2, "mes":Lcom/android/internal/power/EnergyConsumerStats;
    invoke-direct {v2, p1}, Lcom/android/internal/power/EnergyConsumerStats;->readSummaryFromParcel(Landroid/os/Parcel;)V

    .line 558
    return-object v1

    .line 561
    .end local v2    # "mes":Lcom/android/internal/power/EnergyConsumerStats;
    :cond_23
    invoke-static {p0}, Lcom/android/internal/power/EnergyConsumerStats$Config;->-$$Nest$mgetNumberOfBuckets(Lcom/android/internal/power/EnergyConsumerStats$Config;)I

    move-result v2

    if-eq v0, v2, :cond_5e

    .line 562
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Size of MeasuredEnergyStats parcel ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") does not match config ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 563
    invoke-static {p0}, Lcom/android/internal/power/EnergyConsumerStats$Config;->-$$Nest$mgetNumberOfBuckets(Lcom/android/internal/power/EnergyConsumerStats$Config;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 562
    const-string v3, "MeasuredEnergyStats"

    invoke-static {v3, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    new-instance v2, Lcom/android/internal/power/EnergyConsumerStats;

    invoke-direct {v2, p0}, Lcom/android/internal/power/EnergyConsumerStats;-><init>(Lcom/android/internal/power/EnergyConsumerStats$Config;)V

    .line 566
    .restart local v2    # "mes":Lcom/android/internal/power/EnergyConsumerStats;
    invoke-direct {v2, p1}, Lcom/android/internal/power/EnergyConsumerStats;->readSummaryFromParcel(Landroid/os/Parcel;)V

    .line 567
    return-object v1

    .line 570
    .end local v2    # "mes":Lcom/android/internal/power/EnergyConsumerStats;
    :cond_5e
    new-instance v2, Lcom/android/internal/power/EnergyConsumerStats;

    invoke-direct {v2, p0}, Lcom/android/internal/power/EnergyConsumerStats;-><init>(Lcom/android/internal/power/EnergyConsumerStats$Config;)V

    .line 571
    .local v2, "stats":Lcom/android/internal/power/EnergyConsumerStats;
    invoke-direct {v2, p1}, Lcom/android/internal/power/EnergyConsumerStats;->readSummaryFromParcel(Landroid/os/Parcel;)V

    .line 572
    invoke-direct {v2}, Lcom/android/internal/power/EnergyConsumerStats;->containsInterestingData()Z

    move-result v3

    if-eqz v3, :cond_6d

    .line 573
    return-object v2

    .line 576
    :cond_6d
    return-object v1
.end method

.method public static blacklist createFromParcel(Lcom/android/internal/power/EnergyConsumerStats$Config;Landroid/os/Parcel;)Lcom/android/internal/power/EnergyConsumerStats;
    .registers 3
    .param p0, "config"    # Lcom/android/internal/power/EnergyConsumerStats$Config;
    .param p1, "in"    # Landroid/os/Parcel;

    .line 267
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    if-nez v0, :cond_8

    .line 268
    const/4 v0, 0x0

    return-object v0

    .line 270
    :cond_8
    new-instance v0, Lcom/android/internal/power/EnergyConsumerStats;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/power/EnergyConsumerStats;-><init>(Lcom/android/internal/power/EnergyConsumerStats$Config;Landroid/os/Parcel;)V

    return-object v0
.end method

.method private static blacklist customBucketToIndex(I)I
    .registers 2
    .param p0, "customBucket"    # I

    .line 678
    add-int/lit8 v0, p0, 0xa

    return v0
.end method

.method public static blacklist getDisplayPowerBucket(I)I
    .registers 2
    .param p0, "screenState"    # I

    .line 523
    invoke-static {p0}, Landroid/view/Display;->isOnState(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 524
    const/4 v0, 0x0

    return v0

    .line 526
    :cond_8
    invoke-static {p0}, Landroid/view/Display;->isDozeState(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 527
    const/4 v0, 0x1

    return v0

    .line 529
    :cond_10
    const/4 v0, 0x2

    return v0
.end method

.method private static blacklist indexToCustomBucket(I)I
    .registers 2
    .param p0, "index"    # I

    .line 682
    add-int/lit8 v0, p0, -0xa

    return v0
.end method

.method private blacklist isIndexSupported(I)Z
    .registers 6
    .param p1, "index"    # I

    .line 636
    iget-object v0, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedChargeMicroCoulomb:[J

    aget-wide v0, v0, p1

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private static blacklist isValidStandardBucket(I)Z
    .registers 2
    .param p0, "bucket"    # I

    .line 692
    if-ltz p0, :cond_8

    const/16 v0, 0xa

    if-ge p0, v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private blacklist readSummaryFromParcel(Landroid/os/Parcel;)V
    .registers 10
    .param p1, "in"    # Landroid/os/Parcel;

    .line 321
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 322
    .local v0, "numWrittenEntries":I
    const/4 v1, 0x0

    .local v1, "entry":I
    :goto_5
    if-ge v1, v0, :cond_4d

    .line 323
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 324
    .local v2, "index":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 325
    .local v3, "chargeUC":J
    const/4 v5, 0x0

    .line 326
    .local v5, "multiStateCounter":Lcom/android/internal/os/LongMultiStateCounter;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    if-eqz v6, :cond_31

    .line 327
    sget-object v6, Lcom/android/internal/os/LongMultiStateCounter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    move-object v5, v6

    check-cast v5, Lcom/android/internal/os/LongMultiStateCounter;

    .line 328
    iget-object v6, p0, Lcom/android/internal/power/EnergyConsumerStats;->mConfig:Lcom/android/internal/power/EnergyConsumerStats$Config;

    if-eqz v6, :cond_30

    .line 329
    invoke-virtual {v5}, Lcom/android/internal/os/LongMultiStateCounter;->getStateCount()I

    move-result v6

    iget-object v7, p0, Lcom/android/internal/power/EnergyConsumerStats;->mConfig:Lcom/android/internal/power/EnergyConsumerStats$Config;

    invoke-virtual {v7}, Lcom/android/internal/power/EnergyConsumerStats$Config;->getStateNames()[Ljava/lang/String;

    move-result-object v7

    array-length v7, v7

    if-eq v6, v7, :cond_31

    .line 330
    :cond_30
    const/4 v5, 0x0

    .line 334
    :cond_31
    iget-object v6, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedChargeMicroCoulomb:[J

    array-length v6, v6

    if-ge v2, v6, :cond_4a

    .line 335
    invoke-direct {p0, v2, v3, v4}, Lcom/android/internal/power/EnergyConsumerStats;->setValueIfSupported(IJ)V

    .line 336
    if-eqz v5, :cond_4a

    .line 337
    iget-object v6, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedMultiStateChargeMicroCoulomb:[Lcom/android/internal/os/LongMultiStateCounter;

    if-nez v6, :cond_46

    .line 338
    iget-object v6, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedChargeMicroCoulomb:[J

    array-length v6, v6

    new-array v6, v6, [Lcom/android/internal/os/LongMultiStateCounter;

    iput-object v6, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedMultiStateChargeMicroCoulomb:[Lcom/android/internal/os/LongMultiStateCounter;

    .line 341
    :cond_46
    iget-object v6, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedMultiStateChargeMicroCoulomb:[Lcom/android/internal/os/LongMultiStateCounter;

    aput-object v5, v6, v2

    .line 322
    .end local v2    # "index":I
    .end local v3    # "chargeUC":J
    .end local v5    # "multiStateCounter":Lcom/android/internal/os/LongMultiStateCounter;
    :cond_4a
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 345
    .end local v1    # "entry":I
    :cond_4d
    return-void
.end method

.method private blacklist reset()V
    .registers 5

    .line 604
    iget-object v0, p0, Lcom/android/internal/power/EnergyConsumerStats;->mConfig:Lcom/android/internal/power/EnergyConsumerStats$Config;

    invoke-static {v0}, Lcom/android/internal/power/EnergyConsumerStats$Config;->-$$Nest$mgetNumberOfBuckets(Lcom/android/internal/power/EnergyConsumerStats$Config;)I

    move-result v0

    .line 605
    .local v0, "numIndices":I
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_7
    if-ge v1, v0, :cond_22

    .line 606
    const-wide/16 v2, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/power/EnergyConsumerStats;->setValueIfSupported(IJ)V

    .line 607
    iget-object v2, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedMultiStateChargeMicroCoulomb:[Lcom/android/internal/os/LongMultiStateCounter;

    if-eqz v2, :cond_1f

    iget-object v2, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedMultiStateChargeMicroCoulomb:[Lcom/android/internal/os/LongMultiStateCounter;

    aget-object v2, v2, v1

    if-eqz v2, :cond_1f

    .line 609
    iget-object v2, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedMultiStateChargeMicroCoulomb:[Lcom/android/internal/os/LongMultiStateCounter;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/internal/os/LongMultiStateCounter;->reset()V

    .line 605
    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 612
    .end local v1    # "index":I
    :cond_22
    return-void
.end method

.method public static blacklist resetIfNotNull(Lcom/android/internal/power/EnergyConsumerStats;)V
    .registers 1
    .param p0, "stats"    # Lcom/android/internal/power/EnergyConsumerStats;

    .line 616
    if-eqz p0, :cond_5

    invoke-direct {p0}, Lcom/android/internal/power/EnergyConsumerStats;->reset()V

    .line 617
    :cond_5
    return-void
.end method

.method private blacklist setValueIfSupported(IJ)V
    .registers 8
    .param p1, "index"    # I
    .param p2, "value"    # J

    .line 621
    iget-object v0, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedChargeMicroCoulomb:[J

    aget-wide v0, v0, p1

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_e

    .line 622
    iget-object v0, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedChargeMicroCoulomb:[J

    aput-wide p2, v0, p1

    .line 624
    :cond_e
    return-void
.end method

.method private blacklist updateEntry(IJJ)V
    .registers 12
    .param p1, "index"    # I
    .param p2, "chargeDeltaUC"    # J
    .param p4, "timestampMs"    # J

    .line 414
    iget-object v0, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedChargeMicroCoulomb:[J

    aget-wide v0, v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_54

    .line 415
    iget-object v0, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedChargeMicroCoulomb:[J

    aget-wide v4, v0, p1

    add-long/2addr v4, p2

    aput-wide v4, v0, p1

    .line 416
    iget v0, p0, Lcom/android/internal/power/EnergyConsumerStats;->mState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8a

    iget-object v0, p0, Lcom/android/internal/power/EnergyConsumerStats;->mConfig:Lcom/android/internal/power/EnergyConsumerStats$Config;

    invoke-virtual {v0, p1}, Lcom/android/internal/power/EnergyConsumerStats$Config;->isSupportedMultiStateBucket(I)Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 417
    iget-object v0, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedMultiStateChargeMicroCoulomb:[Lcom/android/internal/os/LongMultiStateCounter;

    if-nez v0, :cond_29

    .line 418
    iget-object v0, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedChargeMicroCoulomb:[J

    array-length v0, v0

    new-array v0, v0, [Lcom/android/internal/os/LongMultiStateCounter;

    iput-object v0, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedMultiStateChargeMicroCoulomb:[Lcom/android/internal/os/LongMultiStateCounter;

    .line 421
    :cond_29
    iget-object v0, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedMultiStateChargeMicroCoulomb:[Lcom/android/internal/os/LongMultiStateCounter;

    aget-object v0, v0, p1

    .line 423
    .local v0, "counter":Lcom/android/internal/os/LongMultiStateCounter;
    if-nez v0, :cond_4c

    .line 424
    new-instance v1, Lcom/android/internal/os/LongMultiStateCounter;

    iget-object v4, p0, Lcom/android/internal/power/EnergyConsumerStats;->mConfig:Lcom/android/internal/power/EnergyConsumerStats$Config;

    invoke-static {v4}, Lcom/android/internal/power/EnergyConsumerStats$Config;->-$$Nest$fgetmStateNames(Lcom/android/internal/power/EnergyConsumerStats$Config;)[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    invoke-direct {v1, v4}, Lcom/android/internal/os/LongMultiStateCounter;-><init>(I)V

    move-object v0, v1

    .line 425
    iget-object v1, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedMultiStateChargeMicroCoulomb:[Lcom/android/internal/os/LongMultiStateCounter;

    aput-object v0, v1, p1

    .line 426
    iget v1, p0, Lcom/android/internal/power/EnergyConsumerStats;->mState:I

    iget-wide v4, p0, Lcom/android/internal/power/EnergyConsumerStats;->mStateChangeTimestampMs:J

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/internal/os/LongMultiStateCounter;->setState(IJ)V

    .line 427
    iget-wide v4, p0, Lcom/android/internal/power/EnergyConsumerStats;->mStateChangeTimestampMs:J

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/internal/os/LongMultiStateCounter;->updateValue(JJ)J

    .line 429
    :cond_4c
    iget-object v1, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedChargeMicroCoulomb:[J

    aget-wide v1, v1, p1

    invoke-virtual {v0, v1, v2, p4, p5}, Lcom/android/internal/os/LongMultiStateCounter;->updateValue(JJ)J

    .line 430
    .end local v0    # "counter":Lcom/android/internal/os/LongMultiStateCounter;
    goto :goto_8a

    .line 432
    :cond_54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempting to add "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to unavailable bucket "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/power/EnergyConsumerStats;->mConfig:Lcom/android/internal/power/EnergyConsumerStats$Config;

    .line 433
    invoke-static {v1, p1}, Lcom/android/internal/power/EnergyConsumerStats$Config;->-$$Nest$mgetBucketName(Lcom/android/internal/power/EnergyConsumerStats$Config;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " whose value was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedChargeMicroCoulomb:[J

    aget-wide v1, v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 432
    const-string v1, "MeasuredEnergyStats"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    :cond_8a
    :goto_8a
    return-void
.end method

.method private blacklist writeSummaryToParcel(Landroid/os/Parcel;)V
    .registers 10
    .param p1, "out"    # Landroid/os/Parcel;

    .line 354
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 355
    .local v0, "posOfNumWrittenEntries":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 356
    const/4 v2, 0x0

    .line 358
    .local v2, "numWrittenEntries":I
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_a
    iget-object v4, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedChargeMicroCoulomb:[J

    array-length v4, v4

    if-ge v3, v4, :cond_3e

    .line 359
    iget-object v4, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedChargeMicroCoulomb:[J

    aget-wide v4, v4, v3

    .line 360
    .local v4, "charge":J
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-gtz v6, :cond_1a

    goto :goto_3b

    .line 362
    :cond_1a
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 363
    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 364
    iget-object v6, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedMultiStateChargeMicroCoulomb:[Lcom/android/internal/os/LongMultiStateCounter;

    if-eqz v6, :cond_36

    iget-object v6, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedMultiStateChargeMicroCoulomb:[Lcom/android/internal/os/LongMultiStateCounter;

    aget-object v6, v6, v3

    if-eqz v6, :cond_36

    .line 366
    const/4 v6, 0x1

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 367
    iget-object v6, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedMultiStateChargeMicroCoulomb:[Lcom/android/internal/os/LongMultiStateCounter;

    aget-object v6, v6, v3

    invoke-virtual {v6, p1, v1}, Lcom/android/internal/os/LongMultiStateCounter;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_39

    .line 369
    :cond_36
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 371
    :goto_39
    add-int/lit8 v2, v2, 0x1

    .line 358
    .end local v4    # "charge":J
    :goto_3b
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 373
    .end local v3    # "index":I
    :cond_3e
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 374
    .local v1, "currPos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 375
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 376
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 377
    return-void
.end method

.method public static blacklist writeSummaryToParcel(Lcom/android/internal/power/EnergyConsumerStats;Landroid/os/Parcel;)V
    .registers 3
    .param p0, "stats"    # Lcom/android/internal/power/EnergyConsumerStats;
    .param p1, "dest"    # Landroid/os/Parcel;

    .line 594
    if-nez p0, :cond_7

    .line 595
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 596
    return-void

    .line 598
    :cond_7
    iget-object v0, p0, Lcom/android/internal/power/EnergyConsumerStats;->mConfig:Lcom/android/internal/power/EnergyConsumerStats$Config;

    invoke-static {v0}, Lcom/android/internal/power/EnergyConsumerStats$Config;->-$$Nest$mgetNumberOfBuckets(Lcom/android/internal/power/EnergyConsumerStats$Config;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 599
    invoke-direct {p0, p1}, Lcom/android/internal/power/EnergyConsumerStats;->writeSummaryToParcel(Landroid/os/Parcel;)V

    .line 600
    return-void
.end method


# virtual methods
.method public blacklist dump(Ljava/io/PrintWriter;)V
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 641
    const-string v0, "   "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 642
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_6
    iget-object v1, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedChargeMicroCoulomb:[J

    array-length v1, v1

    if-ge v0, v1, :cond_79

    .line 643
    iget-object v1, p0, Lcom/android/internal/power/EnergyConsumerStats;->mConfig:Lcom/android/internal/power/EnergyConsumerStats$Config;

    invoke-static {v1, v0}, Lcom/android/internal/power/EnergyConsumerStats$Config;->-$$Nest$mgetBucketName(Lcom/android/internal/power/EnergyConsumerStats$Config;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 644
    const-string v1, " : "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 645
    iget-object v1, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedChargeMicroCoulomb:[J

    aget-wide v1, v1, v0

    invoke-virtual {p1, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 646
    invoke-direct {p0, v0}, Lcom/android/internal/power/EnergyConsumerStats;->isIndexSupported(I)Z

    move-result v1

    if-nez v1, :cond_2b

    .line 647
    const-string v1, " (unsupported)"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 649
    :cond_2b
    iget-object v1, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedMultiStateChargeMicroCoulomb:[Lcom/android/internal/os/LongMultiStateCounter;

    if-eqz v1, :cond_6a

    .line 650
    iget-object v1, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedMultiStateChargeMicroCoulomb:[Lcom/android/internal/os/LongMultiStateCounter;

    aget-object v1, v1, v0

    .line 652
    .local v1, "counter":Lcom/android/internal/os/LongMultiStateCounter;
    if-eqz v1, :cond_6a

    .line 653
    const-string v2, " ["

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 654
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3b
    iget-object v3, p0, Lcom/android/internal/power/EnergyConsumerStats;->mConfig:Lcom/android/internal/power/EnergyConsumerStats$Config;

    invoke-static {v3}, Lcom/android/internal/power/EnergyConsumerStats$Config;->-$$Nest$fgetmStateNames(Lcom/android/internal/power/EnergyConsumerStats$Config;)[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-ge v2, v3, :cond_65

    .line 655
    if-eqz v2, :cond_4b

    .line 656
    const-string v3, " "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 658
    :cond_4b
    iget-object v3, p0, Lcom/android/internal/power/EnergyConsumerStats;->mConfig:Lcom/android/internal/power/EnergyConsumerStats$Config;

    invoke-static {v3}, Lcom/android/internal/power/EnergyConsumerStats$Config;->-$$Nest$fgetmStateNames(Lcom/android/internal/power/EnergyConsumerStats$Config;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v2

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 659
    const-string v3, ": "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 660
    invoke-virtual {v1, v2}, Lcom/android/internal/os/LongMultiStateCounter;->getCount(I)J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Ljava/io/PrintWriter;->print(J)V

    .line 654
    add-int/lit8 v2, v2, 0x1

    goto :goto_3b

    .line 662
    .end local v2    # "i":I
    :cond_65
    const-string v2, "]"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 665
    .end local v1    # "counter":Lcom/android/internal/os/LongMultiStateCounter;
    :cond_6a
    iget-object v1, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedChargeMicroCoulomb:[J

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_76

    .line 666
    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 642
    :cond_76
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 669
    .end local v0    # "index":I
    :cond_79
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 670
    return-void
.end method

.method public blacklist getAccumulatedCustomBucketCharge(I)J
    .registers 4
    .param p1, "customBucket"    # I

    .line 502
    invoke-virtual {p0, p1}, Lcom/android/internal/power/EnergyConsumerStats;->isValidCustomBucket(I)Z

    move-result v0

    if-nez v0, :cond_9

    .line 503
    const-wide/16 v0, -0x1

    return-wide v0

    .line 505
    :cond_9
    iget-object v0, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedChargeMicroCoulomb:[J

    invoke-static {p1}, Lcom/android/internal/power/EnergyConsumerStats;->customBucketToIndex(I)I

    move-result v1

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public blacklist getAccumulatedCustomBucketCharges()[J
    .registers 5

    .line 512
    invoke-virtual {p0}, Lcom/android/internal/power/EnergyConsumerStats;->getNumberCustomPowerBuckets()I

    move-result v0

    new-array v0, v0, [J

    .line 513
    .local v0, "charges":[J
    const/4 v1, 0x0

    .local v1, "bucket":I
    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_17

    .line 514
    iget-object v2, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedChargeMicroCoulomb:[J

    invoke-static {v1}, Lcom/android/internal/power/EnergyConsumerStats;->customBucketToIndex(I)I

    move-result v3

    aget-wide v2, v2, v3

    aput-wide v2, v0, v1

    .line 513
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 516
    .end local v1    # "bucket":I
    :cond_17
    return-object v0
.end method

.method public blacklist getAccumulatedStandardBucketCharge(I)J
    .registers 4
    .param p1, "bucket"    # I

    .line 471
    invoke-static {p1}, Lcom/android/internal/power/EnergyConsumerStats;->checkValidStandardBucket(I)V

    .line 472
    iget-object v0, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedChargeMicroCoulomb:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public blacklist getAccumulatedStandardBucketCharge(II)J
    .registers 6
    .param p1, "bucket"    # I
    .param p2, "state"    # I

    .line 482
    iget-object v0, p0, Lcom/android/internal/power/EnergyConsumerStats;->mConfig:Lcom/android/internal/power/EnergyConsumerStats$Config;

    invoke-virtual {v0, p1}, Lcom/android/internal/power/EnergyConsumerStats$Config;->isSupportedMultiStateBucket(I)Z

    move-result v0

    if-nez v0, :cond_b

    .line 483
    const-wide/16 v0, -0x1

    return-wide v0

    .line 485
    :cond_b
    iget-object v0, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedMultiStateChargeMicroCoulomb:[Lcom/android/internal/os/LongMultiStateCounter;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_12

    .line 486
    return-wide v1

    .line 488
    :cond_12
    iget-object v0, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedMultiStateChargeMicroCoulomb:[Lcom/android/internal/os/LongMultiStateCounter;

    aget-object v0, v0, p1

    .line 489
    .local v0, "counter":Lcom/android/internal/os/LongMultiStateCounter;
    if-nez v0, :cond_19

    .line 490
    return-wide v1

    .line 492
    :cond_19
    invoke-virtual {v0, p2}, Lcom/android/internal/os/LongMultiStateCounter;->getCount(I)J

    move-result-wide v1

    return-wide v1
.end method

.method public blacklist getNumberCustomPowerBuckets()I
    .registers 2

    .line 674
    iget-object v0, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedChargeMicroCoulomb:[J

    array-length v0, v0

    add-int/lit8 v0, v0, -0xa

    return v0
.end method

.method public blacklist isStandardBucketSupported(I)Z
    .registers 3
    .param p1, "bucket"    # I

    .line 631
    invoke-static {p1}, Lcom/android/internal/power/EnergyConsumerStats;->checkValidStandardBucket(I)V

    .line 632
    invoke-direct {p0, p1}, Lcom/android/internal/power/EnergyConsumerStats;->isIndexSupported(I)Z

    move-result v0

    return v0
.end method

.method public blacklist isValidCustomBucket(I)Z
    .registers 4
    .param p1, "customBucket"    # I

    .line 698
    if-ltz p1, :cond_d

    .line 699
    invoke-static {p1}, Lcom/android/internal/power/EnergyConsumerStats;->customBucketToIndex(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedChargeMicroCoulomb:[J

    array-length v1, v1

    if-ge v0, v1, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    .line 698
    :goto_e
    return v0
.end method

.method public blacklist setState(IJ)V
    .registers 8
    .param p1, "state"    # I
    .param p2, "timestampMs"    # J

    .line 446
    iput p1, p0, Lcom/android/internal/power/EnergyConsumerStats;->mState:I

    .line 447
    iput-wide p2, p0, Lcom/android/internal/power/EnergyConsumerStats;->mStateChangeTimestampMs:J

    .line 448
    iget-object v0, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedMultiStateChargeMicroCoulomb:[Lcom/android/internal/os/LongMultiStateCounter;

    if-nez v0, :cond_f

    .line 449
    iget-object v0, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedChargeMicroCoulomb:[J

    array-length v0, v0

    new-array v0, v0, [Lcom/android/internal/os/LongMultiStateCounter;

    iput-object v0, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedMultiStateChargeMicroCoulomb:[Lcom/android/internal/os/LongMultiStateCounter;

    .line 452
    :cond_f
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_10
    iget-object v1, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedMultiStateChargeMicroCoulomb:[Lcom/android/internal/os/LongMultiStateCounter;

    array-length v1, v1

    if-ge v0, v1, :cond_41

    .line 453
    iget-object v1, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedMultiStateChargeMicroCoulomb:[Lcom/android/internal/os/LongMultiStateCounter;

    aget-object v1, v1, v0

    .line 454
    .local v1, "counter":Lcom/android/internal/os/LongMultiStateCounter;
    if-nez v1, :cond_39

    iget-object v2, p0, Lcom/android/internal/power/EnergyConsumerStats;->mConfig:Lcom/android/internal/power/EnergyConsumerStats$Config;

    invoke-virtual {v2, v0}, Lcom/android/internal/power/EnergyConsumerStats$Config;->isSupportedMultiStateBucket(I)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 455
    new-instance v2, Lcom/android/internal/os/LongMultiStateCounter;

    iget-object v3, p0, Lcom/android/internal/power/EnergyConsumerStats;->mConfig:Lcom/android/internal/power/EnergyConsumerStats$Config;

    invoke-static {v3}, Lcom/android/internal/power/EnergyConsumerStats$Config;->-$$Nest$fgetmStateNames(Lcom/android/internal/power/EnergyConsumerStats$Config;)[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    invoke-direct {v2, v3}, Lcom/android/internal/os/LongMultiStateCounter;-><init>(I)V

    move-object v1, v2

    .line 456
    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3, p2, p3}, Lcom/android/internal/os/LongMultiStateCounter;->updateValue(JJ)J

    .line 457
    iget-object v2, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedMultiStateChargeMicroCoulomb:[Lcom/android/internal/os/LongMultiStateCounter;

    aput-object v1, v2, v0

    .line 459
    :cond_39
    if-eqz v1, :cond_3e

    .line 460
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/os/LongMultiStateCounter;->setState(IJ)V

    .line 452
    .end local v1    # "counter":Lcom/android/internal/os/LongMultiStateCounter;
    :cond_3e
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 463
    .end local v0    # "i":I
    :cond_41
    return-void
.end method

.method public blacklist updateCustomBucket(IJ)V
    .registers 10
    .param p1, "customBucket"    # I
    .param p2, "chargeDeltaUC"    # J

    .line 396
    const-wide/16 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    .end local p1    # "customBucket":I
    .end local p2    # "chargeDeltaUC":J
    .local v1, "customBucket":I
    .local v2, "chargeDeltaUC":J
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/power/EnergyConsumerStats;->updateCustomBucket(IJJ)V

    .line 397
    return-void
.end method

.method public blacklist updateCustomBucket(IJJ)V
    .registers 14
    .param p1, "customBucket"    # I
    .param p2, "chargeDeltaUC"    # J
    .param p4, "timestampMs"    # J

    .line 404
    invoke-virtual {p0, p1}, Lcom/android/internal/power/EnergyConsumerStats;->isValidCustomBucket(I)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 405
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempted to update invalid custom bucket "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MeasuredEnergyStats"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    return-void

    .line 408
    :cond_1f
    invoke-static {p1}, Lcom/android/internal/power/EnergyConsumerStats;->customBucketToIndex(I)I

    move-result v3

    .line 409
    .local v3, "index":I
    move-object v2, p0

    move-wide v4, p2

    move-wide v6, p4

    .end local p2    # "chargeDeltaUC":J
    .end local p4    # "timestampMs":J
    .local v4, "chargeDeltaUC":J
    .local v6, "timestampMs":J
    invoke-direct/range {v2 .. v7}, Lcom/android/internal/power/EnergyConsumerStats;->updateEntry(IJJ)V

    .line 410
    return-void
.end method

.method public blacklist updateStandardBucket(IJ)V
    .registers 10
    .param p1, "bucket"    # I
    .param p2, "chargeDeltaUC"    # J

    .line 381
    const-wide/16 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    .end local p1    # "bucket":I
    .end local p2    # "chargeDeltaUC":J
    .local v1, "bucket":I
    .local v2, "chargeDeltaUC":J
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/power/EnergyConsumerStats;->updateStandardBucket(IJJ)V

    .line 382
    return-void
.end method

.method public blacklist updateStandardBucket(IJJ)V
    .registers 6
    .param p1, "bucket"    # I
    .param p2, "chargeDeltaUC"    # J
    .param p4, "timestampMs"    # J

    .line 390
    invoke-static {p1}, Lcom/android/internal/power/EnergyConsumerStats;->checkValidStandardBucket(I)V

    .line 391
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/power/EnergyConsumerStats;->updateEntry(IJJ)V

    .line 392
    return-void
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "out"    # Landroid/os/Parcel;

    .line 295
    iget-object v0, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedChargeMicroCoulomb:[J

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 296
    iget-object v0, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedChargeMicroCoulomb:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 297
    iget-object v0, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedMultiStateChargeMicroCoulomb:[Lcom/android/internal/os/LongMultiStateCounter;

    const/4 v1, 0x0

    if-eqz v0, :cond_2b

    .line 298
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 299
    iget-object v2, p0, Lcom/android/internal/power/EnergyConsumerStats;->mAccumulatedMultiStateChargeMicroCoulomb:[Lcom/android/internal/os/LongMultiStateCounter;

    array-length v3, v2

    move v4, v1

    :goto_18
    if-ge v4, v3, :cond_2e

    aget-object v5, v2, v4

    .line 300
    .local v5, "counter":Lcom/android/internal/os/LongMultiStateCounter;
    if-eqz v5, :cond_25

    .line 301
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 302
    invoke-virtual {v5, p1, v1}, Lcom/android/internal/os/LongMultiStateCounter;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_28

    .line 304
    :cond_25
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 299
    .end local v5    # "counter":Lcom/android/internal/os/LongMultiStateCounter;
    :goto_28
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    .line 308
    :cond_2b
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 310
    :cond_2e
    return-void
.end method
