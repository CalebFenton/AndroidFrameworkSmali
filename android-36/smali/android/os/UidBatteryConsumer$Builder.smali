.class public final Landroid/os/UidBatteryConsumer$Builder;
.super Landroid/os/BatteryConsumer$BaseBuilder;
.source "UidBatteryConsumer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/UidBatteryConsumer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/BatteryConsumer$BaseBuilder<",
        "Landroid/os/UidBatteryConsumer$Builder;",
        ">;"
    }
.end annotation


# static fields
.field private static final blacklist PACKAGE_NAME_UNINITIALIZED:Ljava/lang/String; = ""


# instance fields
.field private final blacklist mBatteryStatsUid:Landroid/os/BatteryStats$Uid;

.field private blacklist mExcludeFromBatteryUsageStats:Z

.field private final blacklist mIsVirtualUid:Z

.field private blacklist mPackageWithHighestDrain:Ljava/lang/String;

.field private final blacklist mUid:I


# direct methods
.method public constructor blacklist <init>(Landroid/os/BatteryConsumer$BatteryConsumerData;ID)V
    .registers 11
    .param p1, "data"    # Landroid/os/BatteryConsumer$BatteryConsumerData;
    .param p2, "uid"    # I
    .param p3, "minConsumedPowerThreshold"    # D

    .line 262
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-wide v4, p3

    .end local p1    # "data":Landroid/os/BatteryConsumer$BatteryConsumerData;
    .end local p2    # "uid":I
    .end local p3    # "minConsumedPowerThreshold":D
    .local v1, "data":Landroid/os/BatteryConsumer$BatteryConsumerData;
    .local v3, "uid":I
    .local v4, "minConsumedPowerThreshold":D
    invoke-direct/range {v0 .. v5}, Landroid/os/UidBatteryConsumer$Builder;-><init>(Landroid/os/BatteryConsumer$BatteryConsumerData;Landroid/os/BatteryStats$Uid;ID)V

    .line 263
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/BatteryConsumer$BatteryConsumerData;Landroid/os/BatteryStats$Uid;D)V
    .registers 11
    .param p1, "data"    # Landroid/os/BatteryConsumer$BatteryConsumerData;
    .param p2, "batteryStatsUid"    # Landroid/os/BatteryStats$Uid;
    .param p3, "minConsumedPowerThreshold"    # D

    .line 258
    invoke-virtual {p2}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p3

    .end local p1    # "data":Landroid/os/BatteryConsumer$BatteryConsumerData;
    .end local p2    # "batteryStatsUid":Landroid/os/BatteryStats$Uid;
    .end local p3    # "minConsumedPowerThreshold":D
    .local v1, "data":Landroid/os/BatteryConsumer$BatteryConsumerData;
    .local v2, "batteryStatsUid":Landroid/os/BatteryStats$Uid;
    .local v4, "minConsumedPowerThreshold":D
    invoke-direct/range {v0 .. v5}, Landroid/os/UidBatteryConsumer$Builder;-><init>(Landroid/os/BatteryConsumer$BatteryConsumerData;Landroid/os/BatteryStats$Uid;ID)V

    .line 259
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/BatteryConsumer$BatteryConsumerData;Landroid/os/BatteryStats$Uid;ID)V
    .registers 9
    .param p1, "data"    # Landroid/os/BatteryConsumer$BatteryConsumerData;
    .param p2, "batteryStatsUid"    # Landroid/os/BatteryStats$Uid;
    .param p3, "uid"    # I
    .param p4, "minConsumedPowerThreshold"    # D

    .line 267
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p4, p5}, Landroid/os/BatteryConsumer$BaseBuilder;-><init>(Landroid/os/BatteryConsumer$BatteryConsumerData;ID)V

    .line 253
    const-string v1, ""

    iput-object v1, p0, Landroid/os/UidBatteryConsumer$Builder;->mPackageWithHighestDrain:Ljava/lang/String;

    .line 268
    iput-object p2, p0, Landroid/os/UidBatteryConsumer$Builder;->mBatteryStatsUid:Landroid/os/BatteryStats$Uid;

    .line 269
    iput p3, p0, Landroid/os/UidBatteryConsumer$Builder;->mUid:I

    .line 270
    iget v1, p0, Landroid/os/UidBatteryConsumer$Builder;->mUid:I

    const/16 v2, 0x442

    if-ne v1, v2, :cond_14

    move v1, v0

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    iput-boolean v1, p0, Landroid/os/UidBatteryConsumer$Builder;->mIsVirtualUid:Z

    .line 271
    iget v1, p0, Landroid/os/UidBatteryConsumer$Builder;->mUid:I

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/BatteryConsumer$BatteryConsumerData;->putLong(IJ)V

    .line 272
    return-void
.end method


# virtual methods
.method public blacklist add(Landroid/os/UidBatteryConsumer;)Landroid/os/UidBatteryConsumer$Builder;
    .registers 4
    .param p1, "consumer"    # Landroid/os/UidBatteryConsumer;

    .line 351
    iget-object v0, p0, Landroid/os/UidBatteryConsumer$Builder;->mPowerComponentsBuilder:Landroid/os/PowerComponents$Builder;

    iget-object v1, p1, Landroid/os/UidBatteryConsumer;->mPowerComponents:Landroid/os/PowerComponents;

    invoke-virtual {v0, v1}, Landroid/os/PowerComponents$Builder;->addPowerAndDuration(Landroid/os/PowerComponents;)V

    .line 352
    iget-object v0, p0, Landroid/os/UidBatteryConsumer$Builder;->mPackageWithHighestDrain:Ljava/lang/String;

    const-string v1, ""

    if-ne v0, v1, :cond_14

    .line 353
    invoke-virtual {p1}, Landroid/os/UidBatteryConsumer;->getPackageWithHighestDrain()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/UidBatteryConsumer$Builder;->mPackageWithHighestDrain:Ljava/lang/String;

    goto :goto_23

    .line 354
    :cond_14
    iget-object v0, p0, Landroid/os/UidBatteryConsumer$Builder;->mPackageWithHighestDrain:Ljava/lang/String;

    .line 355
    invoke-virtual {p1}, Landroid/os/UidBatteryConsumer;->getPackageWithHighestDrain()Ljava/lang/String;

    move-result-object v1

    .line 354
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 363
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/UidBatteryConsumer$Builder;->mPackageWithHighestDrain:Ljava/lang/String;

    .line 365
    :cond_23
    :goto_23
    return-object p0
.end method

.method public bridge synthetic blacklist addConsumedPower(ID)Landroid/os/BatteryConsumer$BaseBuilder;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 247
    invoke-super {p0, p1, p2, p3}, Landroid/os/BatteryConsumer$BaseBuilder;->addConsumedPower(ID)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist addConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 247
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/BatteryConsumer$BaseBuilder;->addConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist addConsumedPower(Landroid/os/BatteryConsumer$Key;D)Landroid/os/BatteryConsumer$BaseBuilder;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 247
    invoke-super {p0, p1, p2, p3}, Landroid/os/BatteryConsumer$BaseBuilder;->addConsumedPower(Landroid/os/BatteryConsumer$Key;D)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist addUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 247
    invoke-super {p0, p1, p2, p3}, Landroid/os/BatteryConsumer$BaseBuilder;->addUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist addUsageDurationMillis(Landroid/os/BatteryConsumer$Key;J)Landroid/os/BatteryConsumer$BaseBuilder;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 247
    invoke-super {p0, p1, p2, p3}, Landroid/os/BatteryConsumer$BaseBuilder;->addUsageDurationMillis(Landroid/os/BatteryConsumer$Key;J)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object p1

    return-object p1
.end method

.method public blacklist build()Landroid/os/UidBatteryConsumer;
    .registers 5

    .line 381
    iget-object v0, p0, Landroid/os/UidBatteryConsumer$Builder;->mPackageWithHighestDrain:Ljava/lang/String;

    const-string v1, ""

    const/4 v2, 0x0

    if-ne v0, v1, :cond_9

    .line 382
    iput-object v2, p0, Landroid/os/UidBatteryConsumer$Builder;->mPackageWithHighestDrain:Ljava/lang/String;

    .line 384
    :cond_9
    iget-object v0, p0, Landroid/os/UidBatteryConsumer$Builder;->mPackageWithHighestDrain:Ljava/lang/String;

    if-eqz v0, :cond_15

    .line 385
    iget-object v0, p0, Landroid/os/UidBatteryConsumer$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    const/4 v1, 0x2

    iget-object v3, p0, Landroid/os/UidBatteryConsumer$Builder;->mPackageWithHighestDrain:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/os/BatteryConsumer$BatteryConsumerData;->putString(ILjava/lang/String;)V

    .line 387
    :cond_15
    new-instance v0, Landroid/os/UidBatteryConsumer;

    invoke-direct {v0, p0, v2}, Landroid/os/UidBatteryConsumer;-><init>(Landroid/os/UidBatteryConsumer$Builder;Landroid/os/UidBatteryConsumer-IA;)V

    return-object v0
.end method

.method public blacklist excludeFromBatteryUsageStats()Landroid/os/UidBatteryConsumer$Builder;
    .registers 2

    .line 343
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/UidBatteryConsumer$Builder;->mExcludeFromBatteryUsageStats:Z

    .line 344
    return-object p0
.end method

.method public blacklist getBatteryStatsUid()Landroid/os/BatteryStats$Uid;
    .registers 3

    .line 276
    iget-object v0, p0, Landroid/os/UidBatteryConsumer$Builder;->mBatteryStatsUid:Landroid/os/BatteryStats$Uid;

    if-eqz v0, :cond_7

    .line 280
    iget-object v0, p0, Landroid/os/UidBatteryConsumer$Builder;->mBatteryStatsUid:Landroid/os/BatteryStats$Uid;

    return-object v0

    .line 277
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "UidBatteryConsumer.Builder was initialized without a BatteryStats.Uid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic blacklist getKey(II)Landroid/os/BatteryConsumer$Key;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 247
    invoke-super {p0, p1, p2}, Landroid/os/BatteryConsumer$BaseBuilder;->getKey(II)Landroid/os/BatteryConsumer$Key;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist getKey(IIII)Landroid/os/BatteryConsumer$Key;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 247
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/BatteryConsumer$BaseBuilder;->getKey(IIII)Landroid/os/BatteryConsumer$Key;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist getKeys(I)[Landroid/os/BatteryConsumer$Key;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 247
    invoke-super {p0, p1}, Landroid/os/BatteryConsumer$BaseBuilder;->getKeys(I)[Landroid/os/BatteryConsumer$Key;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist getTotalPower()D
    .registers 3

    .line 247
    invoke-super {p0}, Landroid/os/BatteryConsumer$BaseBuilder;->getTotalPower()D

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getUid()I
    .registers 2

    .line 284
    iget v0, p0, Landroid/os/UidBatteryConsumer$Builder;->mUid:I

    return v0
.end method

.method public blacklist isExcludedFromBatteryUsageStats()Z
    .registers 2

    .line 373
    iget-boolean v0, p0, Landroid/os/UidBatteryConsumer$Builder;->mExcludeFromBatteryUsageStats:Z

    return v0
.end method

.method public blacklist isVirtualUid()Z
    .registers 2

    .line 288
    iget-boolean v0, p0, Landroid/os/UidBatteryConsumer$Builder;->mIsVirtualUid:Z

    return v0
.end method

.method public bridge synthetic blacklist setConsumedPower(ID)Landroid/os/BatteryConsumer$BaseBuilder;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 247
    invoke-super {p0, p1, p2, p3}, Landroid/os/BatteryConsumer$BaseBuilder;->setConsumedPower(ID)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 247
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/BatteryConsumer$BaseBuilder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist setConsumedPower(Landroid/os/BatteryConsumer$Key;DI)Landroid/os/BatteryConsumer$BaseBuilder;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 247
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/BatteryConsumer$BaseBuilder;->setConsumedPower(Landroid/os/BatteryConsumer$Key;DI)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setPackageWithHighestDrain(Ljava/lang/String;)Landroid/os/UidBatteryConsumer$Builder;
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 297
    invoke-static {p1}, Landroid/text/TextUtils;->nullIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/UidBatteryConsumer$Builder;->mPackageWithHighestDrain:Ljava/lang/String;

    .line 298
    return-object p0
.end method

.method public blacklist setTimeInProcessStateMs(IJ)Landroid/os/UidBatteryConsumer$Builder;
    .registers 7
    .param p1, "state"    # I
    .param p2, "timeInProcessStateMs"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 332
    const/16 v0, 0x12

    invoke-virtual {p0, v0, p1}, Landroid/os/UidBatteryConsumer$Builder;->getKey(II)Landroid/os/BatteryConsumer$Key;

    move-result-object v0

    .line 333
    .local v0, "key":Landroid/os/BatteryConsumer$Key;
    if-eqz v0, :cond_f

    .line 334
    iget-object v1, p0, Landroid/os/UidBatteryConsumer$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget v2, v0, Landroid/os/BatteryConsumer$Key;->mDurationColumnIndex:I

    invoke-virtual {v1, v2, p2, p3}, Landroid/os/BatteryConsumer$BatteryConsumerData;->putLong(IJ)V

    .line 336
    :cond_f
    return-object p0
.end method

.method public blacklist setTimeInStateMs(IJ)Landroid/os/UidBatteryConsumer$Builder;
    .registers 7
    .param p1, "state"    # I
    .param p2, "timeInStateMs"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 309
    packed-switch p1, :pswitch_data_28

    .line 317
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 314
    :pswitch_1c
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p2, p3}, Landroid/os/UidBatteryConsumer$Builder;->setTimeInProcessStateMs(IJ)Landroid/os/UidBatteryConsumer$Builder;

    .line 315
    goto :goto_26

    .line 311
    :pswitch_21
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p2, p3}, Landroid/os/UidBatteryConsumer$Builder;->setTimeInProcessStateMs(IJ)Landroid/os/UidBatteryConsumer$Builder;

    .line 312
    nop

    .line 319
    :goto_26
    return-object p0

    nop

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_21
        :pswitch_1c
    .end packed-switch
.end method

.method public bridge synthetic blacklist setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 247
    invoke-super {p0, p1, p2, p3}, Landroid/os/BatteryConsumer$BaseBuilder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist setUsageDurationMillis(Landroid/os/BatteryConsumer$Key;J)Landroid/os/BatteryConsumer$BaseBuilder;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 247
    invoke-super {p0, p1, p2, p3}, Landroid/os/BatteryConsumer$BaseBuilder;->setUsageDurationMillis(Landroid/os/BatteryConsumer$Key;J)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object p1

    return-object p1
.end method
