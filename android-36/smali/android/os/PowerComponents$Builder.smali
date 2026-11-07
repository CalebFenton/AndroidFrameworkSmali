.class final Landroid/os/PowerComponents$Builder;
.super Ljava/lang/Object;
.source "PowerComponents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/PowerComponents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

.field private final blacklist mMinConsumedPowerThreshold:D


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmData(Landroid/os/PowerComponents$Builder;)Landroid/os/BatteryConsumer$BatteryConsumerData;
    .registers 1

    iget-object p0, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    return-object p0
.end method

.method constructor blacklist <init>(Landroid/os/BatteryConsumer$BatteryConsumerData;D)V
    .registers 4
    .param p1, "data"    # Landroid/os/BatteryConsumer$BatteryConsumerData;
    .param p2, "minConsumedPowerThreshold"    # D

    .line 441
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 442
    iput-object p1, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    .line 443
    iput-wide p2, p0, Landroid/os/PowerComponents$Builder;->mMinConsumedPowerThreshold:D

    .line 444
    return-void
.end method

.method private blacklist addPowerAndDuration(Landroid/os/BatteryConsumer$BatteryConsumerData;)V
    .registers 13
    .param p1, "otherData"    # Landroid/os/BatteryConsumer$BatteryConsumerData;

    .line 491
    iget-object v0, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v0, v0, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget v0, v0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->customPowerComponentCount:I

    iget-object v1, p1, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget v1, v1, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->customPowerComponentCount:I

    if-ne v0, v1, :cond_7d

    .line 499
    iget-object v0, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v0, v0, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget-object v0, v0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->keys:[Landroid/os/BatteryConsumer$Key;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_14
    if-ge v2, v1, :cond_7c

    aget-object v3, v0, v2

    .line 500
    .local v3, "key":Landroid/os/BatteryConsumer$Key;
    iget-object v4, p1, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget v5, v3, Landroid/os/BatteryConsumer$Key;->powerComponentId:I

    iget v6, v3, Landroid/os/BatteryConsumer$Key;->processState:I

    iget v7, v3, Landroid/os/BatteryConsumer$Key;->screenState:I

    iget v8, v3, Landroid/os/BatteryConsumer$Key;->powerState:I

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->getKey(IIII)Landroid/os/BatteryConsumer$Key;

    move-result-object v4

    .line 502
    .local v4, "otherKey":Landroid/os/BatteryConsumer$Key;
    if-nez v4, :cond_29

    .line 503
    goto :goto_79

    .line 505
    :cond_29
    iget-object v5, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget v6, v3, Landroid/os/BatteryConsumer$Key;->mPowerColumnIndex:I

    invoke-virtual {v5, v6}, Landroid/os/BatteryConsumer$BatteryConsumerData;->hasValue(I)Z

    move-result v5

    if-nez v5, :cond_3b

    iget v5, v4, Landroid/os/BatteryConsumer$Key;->mPowerColumnIndex:I

    .line 506
    invoke-virtual {p1, v5}, Landroid/os/BatteryConsumer$BatteryConsumerData;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_51

    .line 507
    :cond_3b
    iget-object v5, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget v6, v3, Landroid/os/BatteryConsumer$Key;->mPowerColumnIndex:I

    iget-object v7, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget v8, v3, Landroid/os/BatteryConsumer$Key;->mPowerColumnIndex:I

    .line 508
    invoke-virtual {v7, v8}, Landroid/os/BatteryConsumer$BatteryConsumerData;->getDouble(I)D

    move-result-wide v7

    iget v9, v4, Landroid/os/BatteryConsumer$Key;->mPowerColumnIndex:I

    .line 509
    invoke-virtual {p1, v9}, Landroid/os/BatteryConsumer$BatteryConsumerData;->getDouble(I)D

    move-result-wide v9

    add-double/2addr v7, v9

    .line 507
    invoke-virtual {v5, v6, v7, v8}, Landroid/os/BatteryConsumer$BatteryConsumerData;->putDouble(ID)V

    .line 511
    :cond_51
    iget-object v5, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget v6, v3, Landroid/os/BatteryConsumer$Key;->mDurationColumnIndex:I

    invoke-virtual {v5, v6}, Landroid/os/BatteryConsumer$BatteryConsumerData;->hasValue(I)Z

    move-result v5

    if-nez v5, :cond_63

    iget v5, v4, Landroid/os/BatteryConsumer$Key;->mDurationColumnIndex:I

    .line 512
    invoke-virtual {p1, v5}, Landroid/os/BatteryConsumer$BatteryConsumerData;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_79

    .line 513
    :cond_63
    iget-object v5, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget v6, v3, Landroid/os/BatteryConsumer$Key;->mDurationColumnIndex:I

    iget-object v7, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget v8, v3, Landroid/os/BatteryConsumer$Key;->mDurationColumnIndex:I

    .line 514
    invoke-virtual {v7, v8}, Landroid/os/BatteryConsumer$BatteryConsumerData;->getLong(I)J

    move-result-wide v7

    iget v9, v4, Landroid/os/BatteryConsumer$Key;->mDurationColumnIndex:I

    .line 515
    invoke-virtual {p1, v9}, Landroid/os/BatteryConsumer$BatteryConsumerData;->getLong(I)J

    move-result-wide v9

    add-long/2addr v7, v9

    .line 513
    invoke-virtual {v5, v6, v7, v8}, Landroid/os/BatteryConsumer$BatteryConsumerData;->putLong(IJ)V

    .line 499
    .end local v3    # "key":Landroid/os/BatteryConsumer$Key;
    .end local v4    # "otherKey":Landroid/os/BatteryConsumer$Key;
    :cond_79
    :goto_79
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 518
    :cond_7c
    return-void

    .line 493
    :cond_7d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Number of custom power components does not match: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget v2, v2, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->customPowerComponentCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", expected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v2, v2, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget v2, v2, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->customPowerComponentCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist addConsumedPower(Landroid/os/BatteryConsumer$Key;D)Landroid/os/PowerComponents$Builder;
    .registers 8
    .param p1, "key"    # Landroid/os/BatteryConsumer$Key;
    .param p2, "componentPower"    # D

    .line 458
    iget-object v0, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget v1, p1, Landroid/os/BatteryConsumer$Key;->mPowerColumnIndex:I

    iget-object v2, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget v3, p1, Landroid/os/BatteryConsumer$Key;->mPowerColumnIndex:I

    .line 459
    invoke-virtual {v2, v3}, Landroid/os/BatteryConsumer$BatteryConsumerData;->getDouble(I)D

    move-result-wide v2

    add-double/2addr v2, p2

    .line 458
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryConsumer$BatteryConsumerData;->putDouble(ID)V

    .line 460
    return-object p0
.end method

.method public blacklist addPowerAndDuration(Landroid/os/PowerComponents$Builder;)V
    .registers 3
    .param p1, "other"    # Landroid/os/PowerComponents$Builder;

    .line 483
    iget-object v0, p1, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    invoke-direct {p0, v0}, Landroid/os/PowerComponents$Builder;->addPowerAndDuration(Landroid/os/BatteryConsumer$BatteryConsumerData;)V

    .line 484
    return-void
.end method

.method public blacklist addPowerAndDuration(Landroid/os/PowerComponents;)V
    .registers 3
    .param p1, "other"    # Landroid/os/PowerComponents;

    .line 487
    invoke-static {p1}, Landroid/os/PowerComponents;->-$$Nest$fgetmData(Landroid/os/PowerComponents;)Landroid/os/BatteryConsumer$BatteryConsumerData;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/PowerComponents$Builder;->addPowerAndDuration(Landroid/os/BatteryConsumer$BatteryConsumerData;)V

    .line 488
    return-void
.end method

.method public blacklist addUsageDurationMillis(Landroid/os/BatteryConsumer$Key;J)Landroid/os/PowerComponents$Builder;
    .registers 8
    .param p1, "key"    # Landroid/os/BatteryConsumer$Key;
    .param p2, "componentUsageDurationMillis"    # J

    .line 477
    iget-object v0, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget v1, p1, Landroid/os/BatteryConsumer$Key;->mDurationColumnIndex:I

    iget-object v2, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget v3, p1, Landroid/os/BatteryConsumer$Key;->mDurationColumnIndex:I

    .line 478
    invoke-virtual {v2, v3}, Landroid/os/BatteryConsumer$BatteryConsumerData;->getLong(I)J

    move-result-wide v2

    add-long/2addr v2, p2

    .line 477
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryConsumer$BatteryConsumerData;->putLong(IJ)V

    .line 479
    return-object p0
.end method

.method public blacklist build()Landroid/os/PowerComponents;
    .registers 11

    .line 541
    iget-object v0, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v0, v0, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget-object v0, v0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->keys:[Landroid/os/BatteryConsumer$Key;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_2c

    aget-object v3, v0, v2

    .line 542
    .local v3, "key":Landroid/os/BatteryConsumer$Key;
    iget-wide v4, p0, Landroid/os/PowerComponents$Builder;->mMinConsumedPowerThreshold:D

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_29

    .line 543
    iget-object v4, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget v5, v3, Landroid/os/BatteryConsumer$Key;->mPowerColumnIndex:I

    invoke-virtual {v4, v5}, Landroid/os/BatteryConsumer$BatteryConsumerData;->getDouble(I)D

    move-result-wide v4

    iget-wide v8, p0, Landroid/os/PowerComponents$Builder;->mMinConsumedPowerThreshold:D

    cmpg-double v4, v4, v8

    if-gez v4, :cond_29

    .line 544
    iget-object v4, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget v5, v3, Landroid/os/BatteryConsumer$Key;->mPowerColumnIndex:I

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/BatteryConsumer$BatteryConsumerData;->putDouble(ID)V

    .line 541
    .end local v3    # "key":Landroid/os/BatteryConsumer$Key;
    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 549
    :cond_2c
    iget-object v0, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v1, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v1, v1, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget v1, v1, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->totalConsumedPowerColumnIndex:I

    invoke-virtual {p0}, Landroid/os/PowerComponents$Builder;->getTotalPower()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryConsumer$BatteryConsumerData;->putDouble(ID)V

    .line 550
    new-instance v0, Landroid/os/PowerComponents;

    invoke-direct {v0, p0}, Landroid/os/PowerComponents;-><init>(Landroid/os/PowerComponents$Builder;)V

    return-object v0
.end method

.method public blacklist getTotalPower()D
    .registers 9

    .line 525
    const-wide/16 v0, 0x0

    .line 526
    .local v0, "totalPowerMah":D
    iget-object v2, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v2, v2, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget-object v2, v2, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->keys:[Landroid/os/BatteryConsumer$Key;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_a
    if-ge v4, v3, :cond_26

    aget-object v5, v2, v4

    .line 527
    .local v5, "key":Landroid/os/BatteryConsumer$Key;
    iget v6, v5, Landroid/os/BatteryConsumer$Key;->processState:I

    if-nez v6, :cond_23

    iget v6, v5, Landroid/os/BatteryConsumer$Key;->screenState:I

    if-nez v6, :cond_23

    iget v6, v5, Landroid/os/BatteryConsumer$Key;->powerState:I

    if-nez v6, :cond_23

    .line 530
    iget-object v6, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget v7, v5, Landroid/os/BatteryConsumer$Key;->mPowerColumnIndex:I

    invoke-virtual {v6, v7}, Landroid/os/BatteryConsumer$BatteryConsumerData;->getDouble(I)D

    move-result-wide v6

    add-double/2addr v0, v6

    .line 526
    .end local v5    # "key":Landroid/os/BatteryConsumer$Key;
    :cond_23
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 533
    :cond_26
    return-wide v0
.end method

.method public blacklist setConsumedPower(Landroid/os/BatteryConsumer$Key;D)Landroid/os/PowerComponents$Builder;
    .registers 6
    .param p1, "key"    # Landroid/os/BatteryConsumer$Key;
    .param p2, "componentPower"    # D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 452
    iget-object v0, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget v1, p1, Landroid/os/BatteryConsumer$Key;->mPowerColumnIndex:I

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/BatteryConsumer$BatteryConsumerData;->putDouble(ID)V

    .line 453
    return-object p0
.end method

.method public blacklist setUsageDurationMillis(Landroid/os/BatteryConsumer$Key;J)Landroid/os/PowerComponents$Builder;
    .registers 6
    .param p1, "key"    # Landroid/os/BatteryConsumer$Key;
    .param p2, "componentUsageDurationMillis"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 470
    iget-object v0, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget v1, p1, Landroid/os/BatteryConsumer$Key;->mDurationColumnIndex:I

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/BatteryConsumer$BatteryConsumerData;->putLong(IJ)V

    .line 471
    return-object p0
.end method
