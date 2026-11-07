.class public final Landroid/telephony/ModemActivityInfo;
.super Ljava/lang/Object;
.source "ModemActivityInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ModemActivityInfo$TxPowerLevel;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/ModemActivityInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o TX_POWER_LEVELS:I = 0x5

.field public static final whitelist TX_POWER_LEVEL_0:I = 0x0

.field public static final whitelist TX_POWER_LEVEL_1:I = 0x1

.field public static final whitelist TX_POWER_LEVEL_2:I = 0x2

.field public static final whitelist TX_POWER_LEVEL_3:I = 0x3

.field public static final whitelist TX_POWER_LEVEL_4:I = 0x4

.field private static final blacklist TX_POWER_RANGES:[Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

.field private greylist-max-o mIdleTimeMs:I

.field private blacklist mSizeOfSpecificInfo:I

.field private greylist-max-o mSleepTimeMs:I

.field private greylist-max-o mTimestamp:J

.field private blacklist mTotalRxTimeMs:I

.field private blacklist mTotalTxTimeMs:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 6

    .line 88
    const/4 v0, 0x5

    .line 90
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 88
    new-array v0, v0, [Landroid/util/Range;

    new-instance v2, Landroid/util/Range;

    .line 89
    const/high16 v3, -0x80000000

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v2, v3, v5}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    aput-object v2, v0, v4

    new-instance v2, Landroid/util/Range;

    .line 90
    invoke-direct {v2, v5, v1}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    const/4 v3, 0x1

    aput-object v2, v0, v3

    new-instance v2, Landroid/util/Range;

    .line 91
    const/16 v3, 0xf

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    const/4 v1, 0x2

    aput-object v2, v0, v1

    new-instance v1, Landroid/util/Range;

    .line 92
    const/16 v2, 0x14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    const/4 v3, 0x3

    aput-object v1, v0, v3

    new-instance v1, Landroid/util/Range;

    .line 93
    const v3, 0x7fffffff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Landroid/telephony/ModemActivityInfo;->TX_POWER_RANGES:[Landroid/util/Range;

    .line 190
    new-instance v0, Landroid/telephony/ModemActivityInfo$1;

    invoke-direct {v0}, Landroid/telephony/ModemActivityInfo$1;-><init>()V

    sput-object v0, Landroid/telephony/ModemActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(JII[II)V
    .registers 10
    .param p1, "timestamp"    # J
    .param p3, "sleepTimeMs"    # I
    .param p4, "idleTimeMs"    # I
    .param p5, "txTimeMs"    # [I
    .param p6, "rxTimeMs"    # I

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    array-length v0, p5

    const/4 v1, 0x5

    if-ne v0, v1, :cond_29

    .line 114
    iput-wide p1, p0, Landroid/telephony/ModemActivityInfo;->mTimestamp:J

    .line 115
    iput p3, p0, Landroid/telephony/ModemActivityInfo;->mSleepTimeMs:I

    .line 116
    iput p4, p0, Landroid/telephony/ModemActivityInfo;->mIdleTimeMs:I

    .line 117
    iput-object p5, p0, Landroid/telephony/ModemActivityInfo;->mTotalTxTimeMs:[I

    .line 118
    iput p6, p0, Landroid/telephony/ModemActivityInfo;->mTotalRxTimeMs:I

    .line 120
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/telephony/ActivityStatsTechSpecificInfo;

    iput-object v0, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    .line 121
    iget-object v0, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    array-length v0, v0

    iput v0, p0, Landroid/telephony/ModemActivityInfo;->mSizeOfSpecificInfo:I

    .line 122
    iget-object v0, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    new-instance v1, Landroid/telephony/ActivityStatsTechSpecificInfo;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, p5, p6}, Landroid/telephony/ActivityStatsTechSpecificInfo;-><init>(II[II)V

    aput-object v1, v0, v2

    .line 128
    return-void

    .line 112
    :cond_29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "txTimeMs must have length == TX_POWER_LEVELS"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor blacklist <init>(JII[Landroid/telephony/ActivityStatsTechSpecificInfo;)V
    .registers 12
    .param p1, "timestamp"    # J
    .param p3, "sleepTimeMs"    # I
    .param p4, "idleTimeMs"    # I
    .param p5, "activityStatsTechSpecificInfo"    # [Landroid/telephony/ActivityStatsTechSpecificInfo;

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    iput-wide p1, p0, Landroid/telephony/ModemActivityInfo;->mTimestamp:J

    .line 144
    iput p3, p0, Landroid/telephony/ModemActivityInfo;->mSleepTimeMs:I

    .line 145
    iput p4, p0, Landroid/telephony/ModemActivityInfo;->mIdleTimeMs:I

    .line 146
    iput-object p5, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    .line 147
    iget-object v0, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    array-length v0, v0

    iput v0, p0, Landroid/telephony/ModemActivityInfo;->mSizeOfSpecificInfo:I

    .line 148
    const/4 v0, 0x5

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/telephony/ModemActivityInfo;->mTotalTxTimeMs:[I

    .line 149
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_16
    invoke-static {}, Landroid/telephony/ModemActivityInfo;->getNumTxPowerLevels()I

    move-result v1

    if-ge v0, v1, :cond_3b

    .line 150
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1d
    invoke-virtual {p0}, Landroid/telephony/ModemActivityInfo;->getSpecificInfoLength()I

    move-result v2

    if-ge v1, v2, :cond_38

    .line 151
    iget-object v2, p0, Landroid/telephony/ModemActivityInfo;->mTotalTxTimeMs:[I

    iget-object v3, p0, Landroid/telephony/ModemActivityInfo;->mTotalTxTimeMs:[I

    aget v3, v3, v0

    iget-object v4, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v4, v4, v1

    .line 152
    invoke-virtual {v4, v0}, Landroid/telephony/ActivityStatsTechSpecificInfo;->getTransmitTimeMillis(I)J

    move-result-wide v4

    long-to-int v4, v4

    add-int/2addr v3, v4

    aput v3, v2, v0

    .line 150
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 149
    .end local v1    # "j":I
    :cond_38
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 155
    .end local v0    # "i":I
    :cond_3b
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/ModemActivityInfo;->mTotalRxTimeMs:I

    .line 156
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3f
    invoke-virtual {p0}, Landroid/telephony/ModemActivityInfo;->getSpecificInfoLength()I

    move-result v1

    if-ge v0, v1, :cond_56

    .line 157
    iget v1, p0, Landroid/telephony/ModemActivityInfo;->mTotalRxTimeMs:I

    iget-object v2, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v2, v2, v0

    .line 158
    invoke-virtual {v2}, Landroid/telephony/ActivityStatsTechSpecificInfo;->getReceiveTimeMillis()J

    move-result-wide v2

    long-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, p0, Landroid/telephony/ModemActivityInfo;->mTotalRxTimeMs:I

    .line 156
    add-int/lit8 v0, v0, 0x1

    goto :goto_3f

    .line 160
    .end local v0    # "i":I
    :cond_56
    return-void
.end method

.method public constructor blacklist <init>(JJJ[IJ)V
    .registers 23
    .param p1, "timestamp"    # J
    .param p3, "sleepTimeMs"    # J
    .param p5, "idleTimeMs"    # J
    .param p7, "txTimeMs"    # [I
    .param p8, "rxTimeMs"    # J

    .line 137
    move-wide/from16 v0, p3

    long-to-int v5, v0

    move-wide/from16 v9, p5

    long-to-int v6, v9

    move-wide/from16 v11, p8

    long-to-int v8, v11

    move-object v2, p0

    move-wide v3, p1

    move-object/from16 v7, p7

    invoke-direct/range {v2 .. v8}, Landroid/telephony/ModemActivityInfo;-><init>(JII[II)V

    .line 138
    return-void
.end method

.method public constructor blacklist <init>(JJJ[Landroid/telephony/ActivityStatsTechSpecificInfo;)V
    .registers 14
    .param p1, "timestamp"    # J
    .param p3, "sleepTimeMs"    # J
    .param p5, "idleTimeMs"    # J
    .param p7, "activityStatsTechSpecificInfo"    # [Landroid/telephony/ActivityStatsTechSpecificInfo;

    .line 169
    long-to-int v3, p3

    long-to-int v4, p5

    move-object v0, p0

    move-wide v1, p1

    move-object v5, p7

    .end local p1    # "timestamp":J
    .end local p7    # "activityStatsTechSpecificInfo":[Landroid/telephony/ActivityStatsTechSpecificInfo;
    .local v1, "timestamp":J
    .local v5, "activityStatsTechSpecificInfo":[Landroid/telephony/ActivityStatsTechSpecificInfo;
    invoke-direct/range {v0 .. v5}, Landroid/telephony/ModemActivityInfo;-><init>(JII[Landroid/telephony/ActivityStatsTechSpecificInfo;)V

    .line 170
    return-void
.end method

.method public static whitelist getNumTxPowerLevels()I
    .registers 1

    .line 74
    const/4 v0, 0x5

    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 187
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "o"    # Ljava/lang/Object;

    .line 587
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 588
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_3c

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_3c

    .line 589
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/telephony/ModemActivityInfo;

    .line 590
    .local v2, "that":Landroid/telephony/ModemActivityInfo;
    iget-wide v3, p0, Landroid/telephony/ModemActivityInfo;->mTimestamp:J

    iget-wide v5, v2, Landroid/telephony/ModemActivityInfo;->mTimestamp:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3a

    iget v3, p0, Landroid/telephony/ModemActivityInfo;->mSleepTimeMs:I

    iget v4, v2, Landroid/telephony/ModemActivityInfo;->mSleepTimeMs:I

    if-ne v3, v4, :cond_3a

    iget v3, p0, Landroid/telephony/ModemActivityInfo;->mIdleTimeMs:I

    iget v4, v2, Landroid/telephony/ModemActivityInfo;->mIdleTimeMs:I

    if-ne v3, v4, :cond_3a

    iget v3, p0, Landroid/telephony/ModemActivityInfo;->mSizeOfSpecificInfo:I

    iget v4, v2, Landroid/telephony/ModemActivityInfo;->mSizeOfSpecificInfo:I

    if-ne v3, v4, :cond_3a

    iget-object v3, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    iget-object v4, v2, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    .line 594
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    goto :goto_3b

    :cond_3a
    move v0, v1

    .line 590
    :goto_3b
    return v0

    .line 588
    .end local v2    # "that":Landroid/telephony/ModemActivityInfo;
    :cond_3c
    :goto_3c
    return v1
.end method

.method public whitelist getDelta(Landroid/telephony/ModemActivityInfo;)Landroid/telephony/ModemActivityInfo;
    .registers 15
    .param p1, "other"    # Landroid/telephony/ModemActivityInfo;

    .line 388
    invoke-virtual {p1}, Landroid/telephony/ModemActivityInfo;->getSpecificInfoLength()I

    move-result v0

    new-array v8, v0, [Landroid/telephony/ActivityStatsTechSpecificInfo;

    .line 391
    .local v8, "mDeltaSpecificInfo":[Landroid/telephony/ActivityStatsTechSpecificInfo;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    invoke-virtual {p1}, Landroid/telephony/ModemActivityInfo;->getSpecificInfoLength()I

    move-result v1

    if-ge v0, v1, :cond_af

    .line 392
    const/4 v1, 0x0

    .line 393
    .local v1, "matched":Z
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_f
    invoke-virtual {p0}, Landroid/telephony/ModemActivityInfo;->getSpecificInfoLength()I

    move-result v3

    if-ge v2, v3, :cond_a3

    .line 394
    iget-object v3, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroid/telephony/ActivityStatsTechSpecificInfo;->getRat()I

    move-result v3

    .line 395
    .local v3, "rat":I
    iget-object v4, p1, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Landroid/telephony/ActivityStatsTechSpecificInfo;->getRat()I

    move-result v4

    if-ne v3, v4, :cond_9f

    if-nez v1, :cond_9f

    .line 396
    iget-object v4, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Landroid/telephony/ActivityStatsTechSpecificInfo;->getRat()I

    move-result v4

    const/4 v5, 0x6

    const/4 v6, 0x5

    if-ne v4, v5, :cond_77

    .line 398
    iget-object v4, p1, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Landroid/telephony/ActivityStatsTechSpecificInfo;->getFrequencyRange()I

    move-result v4

    iget-object v5, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v5, v5, v2

    .line 399
    invoke-virtual {v5}, Landroid/telephony/ActivityStatsTechSpecificInfo;->getFrequencyRange()I

    move-result v5

    if-ne v4, v5, :cond_9f

    .line 400
    iget-object v4, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Landroid/telephony/ActivityStatsTechSpecificInfo;->getFrequencyRange()I

    move-result v4

    .line 401
    .local v4, "freq":I
    new-array v5, v6, [I

    .line 402
    .local v5, "txTimeMs":[I
    const/4 v7, 0x0

    .local v7, "lvl":I
    :goto_52
    if-ge v7, v6, :cond_64

    .line 403
    nop

    .line 404
    invoke-virtual {p1, v7, v3, v4}, Landroid/telephony/ModemActivityInfo;->getTransmitDurationMillisAtPowerLevel(III)J

    move-result-wide v9

    .line 406
    invoke-virtual {p0, v7, v3, v4}, Landroid/telephony/ModemActivityInfo;->getTransmitDurationMillisAtPowerLevel(III)J

    move-result-wide v11

    sub-long/2addr v9, v11

    long-to-int v9, v9

    aput v9, v5, v7

    .line 402
    add-int/lit8 v7, v7, 0x1

    goto :goto_52

    .line 409
    .end local v7    # "lvl":I
    :cond_64
    const/4 v1, 0x1

    .line 410
    new-instance v6, Landroid/telephony/ActivityStatsTechSpecificInfo;

    .line 415
    invoke-virtual {p1, v3, v4}, Landroid/telephony/ModemActivityInfo;->getReceiveTimeMillis(II)J

    move-result-wide v9

    .line 416
    invoke-virtual {p0, v3, v4}, Landroid/telephony/ModemActivityInfo;->getReceiveTimeMillis(II)J

    move-result-wide v11

    sub-long/2addr v9, v11

    long-to-int v7, v9

    invoke-direct {v6, v3, v4, v5, v7}, Landroid/telephony/ActivityStatsTechSpecificInfo;-><init>(II[II)V

    aput-object v6, v8, v0

    .line 417
    .end local v4    # "freq":I
    .end local v5    # "txTimeMs":[I
    goto :goto_9f

    .line 419
    :cond_77
    new-array v4, v6, [I

    .line 420
    .local v4, "txTimeMs":[I
    const/4 v5, 0x0

    .local v5, "lvl":I
    :goto_7a
    if-ge v5, v6, :cond_8c

    .line 421
    nop

    .line 422
    invoke-virtual {p1, v5, v3}, Landroid/telephony/ModemActivityInfo;->getTransmitDurationMillisAtPowerLevel(II)J

    move-result-wide v9

    .line 423
    invoke-virtual {p0, v5, v3}, Landroid/telephony/ModemActivityInfo;->getTransmitDurationMillisAtPowerLevel(II)J

    move-result-wide v11

    sub-long/2addr v9, v11

    long-to-int v7, v9

    aput v7, v4, v5

    .line 420
    add-int/lit8 v5, v5, 0x1

    goto :goto_7a

    .line 425
    .end local v5    # "lvl":I
    :cond_8c
    const/4 v1, 0x1

    .line 426
    new-instance v5, Landroid/telephony/ActivityStatsTechSpecificInfo;

    .line 431
    invoke-virtual {p1, v3}, Landroid/telephony/ModemActivityInfo;->getReceiveTimeMillis(I)J

    move-result-wide v6

    .line 432
    invoke-virtual {p0, v3}, Landroid/telephony/ModemActivityInfo;->getReceiveTimeMillis(I)J

    move-result-wide v9

    sub-long/2addr v6, v9

    long-to-int v6, v6

    const/4 v7, 0x0

    invoke-direct {v5, v3, v7, v4, v6}, Landroid/telephony/ActivityStatsTechSpecificInfo;-><init>(II[II)V

    aput-object v5, v8, v0

    .line 393
    .end local v3    # "rat":I
    .end local v4    # "txTimeMs":[I
    :cond_9f
    :goto_9f
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_f

    .line 436
    .end local v2    # "j":I
    :cond_a3
    if-nez v1, :cond_ab

    .line 437
    iget-object v2, p1, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v2, v2, v0

    aput-object v2, v8, v0

    .line 391
    :cond_ab
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_7

    .line 440
    .end local v0    # "i":I
    .end local v1    # "matched":Z
    :cond_af
    new-instance v1, Landroid/telephony/ModemActivityInfo;

    .line 441
    invoke-virtual {p1}, Landroid/telephony/ModemActivityInfo;->getTimestampMillis()J

    move-result-wide v2

    .line 442
    invoke-virtual {p1}, Landroid/telephony/ModemActivityInfo;->getSleepTimeMillis()J

    move-result-wide v4

    invoke-virtual {p0}, Landroid/telephony/ModemActivityInfo;->getSleepTimeMillis()J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 443
    invoke-virtual {p1}, Landroid/telephony/ModemActivityInfo;->getIdleTimeMillis()J

    move-result-wide v6

    invoke-virtual {p0}, Landroid/telephony/ModemActivityInfo;->getIdleTimeMillis()J

    move-result-wide v9

    sub-long/2addr v6, v9

    invoke-direct/range {v1 .. v8}, Landroid/telephony/ModemActivityInfo;-><init>(JJJ[Landroid/telephony/ActivityStatsTechSpecificInfo;)V

    .line 440
    return-object v1
.end method

.method public whitelist getIdleTimeMillis()J
    .registers 3

    .line 454
    iget v0, p0, Landroid/telephony/ModemActivityInfo;->mIdleTimeMs:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public whitelist getReceiveTimeMillis()J
    .registers 3

    .line 478
    iget v0, p0, Landroid/telephony/ModemActivityInfo;->mTotalRxTimeMs:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public blacklist getReceiveTimeMillis(I)J
    .registers 5
    .param p1, "rat"    # I

    .line 483
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    array-length v1, v1

    if-ge v0, v1, :cond_1c

    .line 484
    iget-object v1, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/telephony/ActivityStatsTechSpecificInfo;->getRat()I

    move-result v1

    if-ne v1, p1, :cond_19

    .line 485
    iget-object v1, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/telephony/ActivityStatsTechSpecificInfo;->getReceiveTimeMillis()J

    move-result-wide v1

    return-wide v1

    .line 483
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 488
    .end local v0    # "i":I
    :cond_1c
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist getReceiveTimeMillis(II)J
    .registers 6
    .param p1, "rat"    # I
    .param p2, "freq"    # I

    .line 492
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    array-length v1, v1

    if-ge v0, v1, :cond_26

    .line 493
    iget-object v1, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/telephony/ActivityStatsTechSpecificInfo;->getRat()I

    move-result v1

    if-ne v1, p1, :cond_23

    iget-object v1, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v1, v1, v0

    .line 494
    invoke-virtual {v1}, Landroid/telephony/ActivityStatsTechSpecificInfo;->getFrequencyRange()I

    move-result v1

    if-ne v1, p2, :cond_23

    .line 495
    iget-object v1, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/telephony/ActivityStatsTechSpecificInfo;->getReceiveTimeMillis()J

    move-result-wide v1

    return-wide v1

    .line 492
    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 498
    .end local v0    # "i":I
    :cond_26
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public whitelist getSleepTimeMillis()J
    .registers 3

    .line 357
    iget v0, p0, Landroid/telephony/ModemActivityInfo;->mSleepTimeMs:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public blacklist getSpecificInfoFrequencyRange(I)I
    .registers 3
    .param p1, "index"    # I

    .line 297
    iget-object v0, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/telephony/ActivityStatsTechSpecificInfo;->getFrequencyRange()I

    move-result v0

    return v0
.end method

.method public blacklist getSpecificInfoLength()I
    .registers 2

    .line 537
    iget v0, p0, Landroid/telephony/ModemActivityInfo;->mSizeOfSpecificInfo:I

    return v0
.end method

.method public blacklist getSpecificInfoRat(I)I
    .registers 3
    .param p1, "index"    # I

    .line 292
    iget-object v0, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/telephony/ActivityStatsTechSpecificInfo;->getRat()I

    move-result v0

    return v0
.end method

.method public whitelist getTimestampMillis()J
    .registers 3

    .line 232
    iget-wide v0, p0, Landroid/telephony/ModemActivityInfo;->mTimestamp:J

    return-wide v0
.end method

.method public whitelist getTransmitDurationMillisAtPowerLevel(I)J
    .registers 7
    .param p1, "powerLevel"    # I

    .line 249
    const-wide/16 v0, 0x0

    .line 250
    .local v0, "txTimeMsAtPowerLevel":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    invoke-virtual {p0}, Landroid/telephony/ModemActivityInfo;->getSpecificInfoLength()I

    move-result v3

    if-ge v2, v3, :cond_15

    .line 251
    iget-object v3, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v3, v3, v2

    .line 252
    invoke-virtual {v3, p1}, Landroid/telephony/ActivityStatsTechSpecificInfo;->getTransmitTimeMillis(I)J

    move-result-wide v3

    add-long/2addr v0, v3

    .line 250
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 254
    .end local v2    # "i":I
    :cond_15
    return-wide v0
.end method

.method public blacklist getTransmitDurationMillisAtPowerLevel(II)J
    .registers 6
    .param p1, "powerLevel"    # I
    .param p2, "rat"    # I

    .line 260
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Landroid/telephony/ModemActivityInfo;->getSpecificInfoLength()I

    move-result v1

    if-ge v0, v1, :cond_1d

    .line 261
    iget-object v1, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/telephony/ActivityStatsTechSpecificInfo;->getRat()I

    move-result v1

    if-ne v1, p2, :cond_1a

    .line 262
    iget-object v1, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/telephony/ActivityStatsTechSpecificInfo;->getTransmitTimeMillis(I)J

    move-result-wide v1

    return-wide v1

    .line 260
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 265
    .end local v0    # "i":I
    :cond_1d
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist getTransmitDurationMillisAtPowerLevel(III)J
    .registers 7
    .param p1, "powerLevel"    # I
    .param p2, "rat"    # I
    .param p3, "freq"    # I

    .line 271
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Landroid/telephony/ModemActivityInfo;->getSpecificInfoLength()I

    move-result v1

    if-ge v0, v1, :cond_27

    .line 272
    iget-object v1, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/telephony/ActivityStatsTechSpecificInfo;->getRat()I

    move-result v1

    if-ne v1, p2, :cond_24

    iget-object v1, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v1, v1, v0

    .line 273
    invoke-virtual {v1}, Landroid/telephony/ActivityStatsTechSpecificInfo;->getFrequencyRange()I

    move-result v1

    if-ne v1, p3, :cond_24

    .line 274
    iget-object v1, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/telephony/ActivityStatsTechSpecificInfo;->getTransmitTimeMillis(I)J

    move-result-wide v1

    return-wide v1

    .line 271
    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 277
    .end local v0    # "i":I
    :cond_27
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public whitelist getTransmitPowerRange(I)Landroid/util/Range;
    .registers 3
    .param p1, "powerLevel"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 287
    sget-object v0, Landroid/telephony/ModemActivityInfo;->TX_POWER_RANGES:[Landroid/util/Range;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public blacklist getTransmitTimeMillis()[I
    .registers 2

    .line 326
    iget-object v0, p0, Landroid/telephony/ModemActivityInfo;->mTotalTxTimeMs:[I

    return-object v0
.end method

.method public blacklist getTransmitTimeMillis(I)[I
    .registers 4
    .param p1, "rat"    # I

    .line 331
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    array-length v1, v1

    if-ge v0, v1, :cond_1c

    .line 332
    iget-object v1, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/telephony/ActivityStatsTechSpecificInfo;->getRat()I

    move-result v1

    if-ne v1, p1, :cond_19

    .line 333
    iget-object v1, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/telephony/ActivityStatsTechSpecificInfo;->getTransmitTimeMillis()[I

    move-result-object v1

    return-object v1

    .line 331
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 336
    .end local v0    # "i":I
    :cond_1c
    const/4 v0, 0x5

    new-array v0, v0, [I

    return-object v0
.end method

.method public blacklist getTransmitTimeMillis(II)[I
    .registers 5
    .param p1, "rat"    # I
    .param p2, "freq"    # I

    .line 342
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    array-length v1, v1

    if-ge v0, v1, :cond_26

    .line 343
    iget-object v1, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/telephony/ActivityStatsTechSpecificInfo;->getRat()I

    move-result v1

    if-ne v1, p1, :cond_23

    iget-object v1, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v1, v1, v0

    .line 344
    invoke-virtual {v1}, Landroid/telephony/ActivityStatsTechSpecificInfo;->getFrequencyRange()I

    move-result v1

    if-ne v1, p2, :cond_23

    .line 345
    iget-object v1, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/telephony/ActivityStatsTechSpecificInfo;->getTransmitTimeMillis()[I

    move-result-object v1

    return-object v1

    .line 342
    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 348
    .end local v0    # "i":I
    :cond_26
    const/4 v0, 0x5

    new-array v0, v0, [I

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 600
    iget-wide v0, p0, Landroid/telephony/ModemActivityInfo;->mTimestamp:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ModemActivityInfo;->mSleepTimeMs:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/telephony/ModemActivityInfo;->mIdleTimeMs:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Landroid/telephony/ModemActivityInfo;->mTotalRxTimeMs:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    .line 601
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/telephony/ModemActivityInfo;->mTotalTxTimeMs:[I

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([I)I

    move-result v2

    add-int/2addr v1, v2

    .line 602
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public greylist-max-o isEmpty()Z
    .registers 7

    .line 571
    const/4 v0, 0x1

    .line 572
    .local v0, "isTxPowerEmpty":Z
    const/4 v1, 0x1

    .line 573
    .local v1, "isRxPowerEmpty":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    invoke-virtual {p0}, Landroid/telephony/ModemActivityInfo;->getSpecificInfoLength()I

    move-result v3

    if-ge v2, v3, :cond_22

    .line 574
    iget-object v3, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroid/telephony/ActivityStatsTechSpecificInfo;->isTxPowerEmpty()Z

    move-result v3

    if-nez v3, :cond_14

    .line 575
    const/4 v0, 0x0

    .line 577
    :cond_14
    iget-object v3, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroid/telephony/ActivityStatsTechSpecificInfo;->isRxPowerEmpty()Z

    move-result v3

    if-nez v3, :cond_1f

    .line 578
    const/4 v1, 0x0

    .line 573
    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 581
    .end local v2    # "i":I
    :cond_22
    if-eqz v0, :cond_3a

    .line 582
    invoke-virtual {p0}, Landroid/telephony/ModemActivityInfo;->getIdleTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_3a

    invoke-virtual {p0}, Landroid/telephony/ModemActivityInfo;->getSleepTimeMillis()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-nez v2, :cond_3a

    if-eqz v1, :cond_3a

    const/4 v2, 0x1

    goto :goto_3b

    :cond_3a
    const/4 v2, 0x0

    .line 581
    :goto_3b
    return v2
.end method

.method public greylist-max-o isValid()Z
    .registers 8

    .line 549
    iget-object v0, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 550
    return v1

    .line 552
    :cond_6
    const/4 v0, 0x1

    .line 553
    .local v0, "isTxPowerValid":Z
    const/4 v2, 0x1

    .line 554
    .local v2, "isRxPowerValid":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_9
    invoke-virtual {p0}, Landroid/telephony/ModemActivityInfo;->getSpecificInfoLength()I

    move-result v4

    if-ge v3, v4, :cond_28

    .line 555
    iget-object v4, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Landroid/telephony/ActivityStatsTechSpecificInfo;->isTxPowerValid()Z

    move-result v4

    if-nez v4, :cond_1a

    .line 556
    const/4 v0, 0x0

    .line 558
    :cond_1a
    iget-object v4, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Landroid/telephony/ActivityStatsTechSpecificInfo;->isRxPowerValid()Z

    move-result v4

    if-nez v4, :cond_25

    .line 559
    const/4 v2, 0x0

    .line 554
    :cond_25
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 562
    .end local v3    # "i":I
    :cond_28
    if-eqz v0, :cond_46

    if-eqz v2, :cond_46

    .line 564
    invoke-virtual {p0}, Landroid/telephony/ModemActivityInfo;->getIdleTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-ltz v3, :cond_46

    invoke-virtual {p0}, Landroid/telephony/ModemActivityInfo;->getSleepTimeMillis()J

    move-result-wide v3

    cmp-long v3, v3, v5

    if-ltz v3, :cond_46

    invoke-virtual {p0}, Landroid/telephony/ModemActivityInfo;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_46

    const/4 v1, 0x1

    goto :goto_47

    :cond_46
    nop

    .line 562
    :goto_47
    return v1
.end method

.method public greylist-max-o setIdleTimeMillis(I)V
    .registers 2
    .param p1, "idleTimeMillis"    # I

    .line 459
    iput p1, p0, Landroid/telephony/ModemActivityInfo;->mIdleTimeMs:I

    .line 460
    return-void
.end method

.method public blacklist setIdleTimeMillis(J)V
    .registers 4
    .param p1, "idleTimeMillis"    # J

    .line 469
    long-to-int v0, p1

    iput v0, p0, Landroid/telephony/ModemActivityInfo;->mIdleTimeMs:I

    .line 470
    return-void
.end method

.method public blacklist setReceiveTimeMillis(I)V
    .registers 2
    .param p1, "rxTimeMillis"    # I

    .line 503
    iput p1, p0, Landroid/telephony/ModemActivityInfo;->mTotalRxTimeMs:I

    .line 504
    return-void
.end method

.method public blacklist setReceiveTimeMillis(IIJ)V
    .registers 7
    .param p1, "rat"    # I
    .param p2, "freq"    # I
    .param p3, "receiveTimeMillis"    # J

    .line 527
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    array-length v1, v1

    if-ge v0, v1, :cond_24

    .line 528
    iget-object v1, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/telephony/ActivityStatsTechSpecificInfo;->getRat()I

    move-result v1

    if-ne v1, p1, :cond_21

    iget-object v1, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v1, v1, v0

    .line 529
    invoke-virtual {v1}, Landroid/telephony/ActivityStatsTechSpecificInfo;->getFrequencyRange()I

    move-result v1

    if-ne v1, p2, :cond_21

    .line 530
    iget-object v1, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v1, v1, v0

    invoke-virtual {v1, p3, p4}, Landroid/telephony/ActivityStatsTechSpecificInfo;->setReceiveTimeMillis(J)V

    .line 527
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 533
    .end local v0    # "i":I
    :cond_24
    return-void
.end method

.method public blacklist setReceiveTimeMillis(IJ)V
    .registers 6
    .param p1, "rat"    # I
    .param p2, "receiveTimeMillis"    # J

    .line 518
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    array-length v1, v1

    if-ge v0, v1, :cond_1a

    .line 519
    iget-object v1, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/telephony/ActivityStatsTechSpecificInfo;->getRat()I

    move-result v1

    if-ne v1, p1, :cond_17

    .line 520
    iget-object v1, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v1, v1, v0

    invoke-virtual {v1, p2, p3}, Landroid/telephony/ActivityStatsTechSpecificInfo;->setReceiveTimeMillis(J)V

    .line 518
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 523
    .end local v0    # "i":I
    :cond_1a
    return-void
.end method

.method public blacklist setReceiveTimeMillis(J)V
    .registers 4
    .param p1, "receiveTimeMillis"    # J

    .line 513
    long-to-int v0, p1

    iput v0, p0, Landroid/telephony/ModemActivityInfo;->mTotalRxTimeMs:I

    .line 514
    return-void
.end method

.method public greylist-max-o setSleepTimeMillis(I)V
    .registers 2
    .param p1, "sleepTimeMillis"    # I

    .line 362
    iput p1, p0, Landroid/telephony/ModemActivityInfo;->mSleepTimeMs:I

    .line 363
    return-void
.end method

.method public blacklist setSleepTimeMillis(J)V
    .registers 4
    .param p1, "sleepTimeMillis"    # J

    .line 372
    long-to-int v0, p1

    iput v0, p0, Landroid/telephony/ModemActivityInfo;->mSleepTimeMs:I

    .line 373
    return-void
.end method

.method public greylist-max-o setTimestamp(J)V
    .registers 3
    .param p1, "timestamp"    # J

    .line 237
    iput-wide p1, p0, Landroid/telephony/ModemActivityInfo;->mTimestamp:J

    .line 238
    return-void
.end method

.method public blacklist setTransmitTimeMillis(II[I)V
    .registers 6
    .param p1, "rat"    # I
    .param p2, "freq"    # I
    .param p3, "txTimeMs"    # [I

    .line 313
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Landroid/telephony/ModemActivityInfo;->getSpecificInfoLength()I

    move-result v1

    if-ge v0, v1, :cond_25

    .line 314
    iget-object v1, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/telephony/ActivityStatsTechSpecificInfo;->getRat()I

    move-result v1

    if-ne v1, p1, :cond_22

    iget-object v1, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v1, v1, v0

    .line 315
    invoke-virtual {v1}, Landroid/telephony/ActivityStatsTechSpecificInfo;->getFrequencyRange()I

    move-result v1

    if-ne v1, p2, :cond_22

    .line 316
    iget-object v1, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v1, v1, v0

    invoke-virtual {v1, p3}, Landroid/telephony/ActivityStatsTechSpecificInfo;->setTransmitTimeMillis([I)V

    .line 313
    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 319
    .end local v0    # "i":I
    :cond_25
    return-void
.end method

.method public blacklist setTransmitTimeMillis(I[I)V
    .registers 5
    .param p1, "rat"    # I
    .param p2, "txTimeMs"    # [I

    .line 305
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Landroid/telephony/ModemActivityInfo;->getSpecificInfoLength()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 306
    iget-object v1, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/telephony/ActivityStatsTechSpecificInfo;->getRat()I

    move-result v1

    if-ne v1, p1, :cond_18

    .line 307
    iget-object v1, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v1, v1, v0

    invoke-virtual {v1, p2}, Landroid/telephony/ActivityStatsTechSpecificInfo;->setTransmitTimeMillis([I)V

    .line 305
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 310
    .end local v0    # "i":I
    :cond_1b
    return-void
.end method

.method public blacklist setTransmitTimeMillis([I)V
    .registers 3
    .param p1, "txTimeMs"    # [I

    .line 301
    const/4 v0, 0x5

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ModemActivityInfo;->mTotalTxTimeMs:[I

    .line 302
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ModemActivityInfo{ mTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/telephony/ModemActivityInfo;->mTimestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mSleepTimeMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ModemActivityInfo;->mSleepTimeMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mIdleTimeMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ModemActivityInfo;->mIdleTimeMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mActivityStatsTechSpecificInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    .line 182
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 174
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 219
    iget-wide v0, p0, Landroid/telephony/ModemActivityInfo;->mTimestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 220
    iget v0, p0, Landroid/telephony/ModemActivityInfo;->mSleepTimeMs:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 221
    iget v0, p0, Landroid/telephony/ModemActivityInfo;->mIdleTimeMs:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 222
    iget-object v0, p0, Landroid/telephony/ModemActivityInfo;->mActivityStatsTechSpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 223
    return-void
.end method
