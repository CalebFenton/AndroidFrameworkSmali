.class public final Landroid/adservices/ondevicepersonalization/UserData$Builder;
.super Ljava/lang/Object;
.source "UserData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/ondevicepersonalization/UserData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAppInfos:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/adservices/ondevicepersonalization/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mAvailableStorageBytes:J

.field private blacklist mBatteryPercentage:I

.field private blacklist mBuilderFieldsSet:J

.field private blacklist mCarrier:Ljava/lang/String;

.field private blacklist mDataNetworkType:I

.field private blacklist mNetworkCapabilities:Landroid/net/NetworkCapabilities;

.field private blacklist mOrientation:I

.field private blacklist mTimezoneUtcOffsetMins:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 411
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 409
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/UserData$Builder;->mBuilderFieldsSet:J

    .line 412
    return-void
.end method

.method private blacklist checkNotUsed()V
    .registers 5

    .line 564
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/UserData$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x100

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    .line 568
    return-void

    .line 565
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This Builder should not be reused. Use a new Builder instance instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist addAppInfo(Ljava/lang/String;Landroid/adservices/ondevicepersonalization/AppInfo;)Landroid/adservices/ondevicepersonalization/UserData$Builder;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/adservices/ondevicepersonalization/AppInfo;

    .line 517
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/UserData$Builder;->mAppInfos:Ljava/util/Map;

    if-nez v0, :cond_c

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {p0, v0}, Landroid/adservices/ondevicepersonalization/UserData$Builder;->setAppInfos(Ljava/util/Map;)Landroid/adservices/ondevicepersonalization/UserData$Builder;

    .line 518
    :cond_c
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/UserData$Builder;->mAppInfos:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    return-object p0
.end method

.method public blacklist build()Landroid/adservices/ondevicepersonalization/UserData;
    .registers 12

    .line 524
    invoke-direct {p0}, Landroid/adservices/ondevicepersonalization/UserData$Builder;->checkNotUsed()V

    .line 525
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/UserData$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x100

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/UserData$Builder;->mBuilderFieldsSet:J

    .line 527
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/UserData$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_18

    .line 528
    iput v1, p0, Landroid/adservices/ondevicepersonalization/UserData$Builder;->mTimezoneUtcOffsetMins:I

    .line 530
    :cond_18
    iget-wide v4, p0, Landroid/adservices/ondevicepersonalization/UserData$Builder;->mBuilderFieldsSet:J

    const-wide/16 v6, 0x2

    and-long/2addr v4, v6

    cmp-long v0, v4, v2

    if-nez v0, :cond_23

    .line 531
    iput v1, p0, Landroid/adservices/ondevicepersonalization/UserData$Builder;->mOrientation:I

    .line 533
    :cond_23
    iget-wide v4, p0, Landroid/adservices/ondevicepersonalization/UserData$Builder;->mBuilderFieldsSet:J

    const-wide/16 v6, 0x4

    and-long/2addr v4, v6

    cmp-long v0, v4, v2

    if-nez v0, :cond_2e

    .line 534
    iput-wide v2, p0, Landroid/adservices/ondevicepersonalization/UserData$Builder;->mAvailableStorageBytes:J

    .line 536
    :cond_2e
    iget-wide v4, p0, Landroid/adservices/ondevicepersonalization/UserData$Builder;->mBuilderFieldsSet:J

    const-wide/16 v6, 0x8

    and-long/2addr v4, v6

    cmp-long v0, v4, v2

    if-nez v0, :cond_39

    .line 537
    iput v1, p0, Landroid/adservices/ondevicepersonalization/UserData$Builder;->mBatteryPercentage:I

    .line 539
    :cond_39
    iget-wide v4, p0, Landroid/adservices/ondevicepersonalization/UserData$Builder;->mBuilderFieldsSet:J

    const-wide/16 v6, 0x10

    and-long/2addr v4, v6

    cmp-long v0, v4, v2

    if-nez v0, :cond_46

    .line 540
    const-string v0, ""

    iput-object v0, p0, Landroid/adservices/ondevicepersonalization/UserData$Builder;->mCarrier:Ljava/lang/String;

    .line 542
    :cond_46
    iget-wide v4, p0, Landroid/adservices/ondevicepersonalization/UserData$Builder;->mBuilderFieldsSet:J

    const-wide/16 v6, 0x20

    and-long/2addr v4, v6

    cmp-long v0, v4, v2

    if-nez v0, :cond_52

    .line 543
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/adservices/ondevicepersonalization/UserData$Builder;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 545
    :cond_52
    iget-wide v4, p0, Landroid/adservices/ondevicepersonalization/UserData$Builder;->mBuilderFieldsSet:J

    const-wide/16 v6, 0x40

    and-long/2addr v4, v6

    cmp-long v0, v4, v2

    if-nez v0, :cond_5d

    .line 546
    iput v1, p0, Landroid/adservices/ondevicepersonalization/UserData$Builder;->mDataNetworkType:I

    .line 548
    :cond_5d
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/UserData$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x80

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_6c

    .line 549
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/ondevicepersonalization/UserData$Builder;->mAppInfos:Ljava/util/Map;

    .line 551
    :cond_6c
    new-instance v1, Landroid/adservices/ondevicepersonalization/UserData;

    iget v2, p0, Landroid/adservices/ondevicepersonalization/UserData$Builder;->mTimezoneUtcOffsetMins:I

    iget v3, p0, Landroid/adservices/ondevicepersonalization/UserData$Builder;->mOrientation:I

    iget-wide v4, p0, Landroid/adservices/ondevicepersonalization/UserData$Builder;->mAvailableStorageBytes:J

    iget v6, p0, Landroid/adservices/ondevicepersonalization/UserData$Builder;->mBatteryPercentage:I

    iget-object v7, p0, Landroid/adservices/ondevicepersonalization/UserData$Builder;->mCarrier:Ljava/lang/String;

    iget-object v8, p0, Landroid/adservices/ondevicepersonalization/UserData$Builder;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    iget v9, p0, Landroid/adservices/ondevicepersonalization/UserData$Builder;->mDataNetworkType:I

    iget-object v10, p0, Landroid/adservices/ondevicepersonalization/UserData$Builder;->mAppInfos:Ljava/util/Map;

    invoke-direct/range {v1 .. v10}, Landroid/adservices/ondevicepersonalization/UserData;-><init>(IIJILjava/lang/String;Landroid/net/NetworkCapabilities;ILjava/util/Map;)V

    .line 560
    .local v1, "o":Landroid/adservices/ondevicepersonalization/UserData;
    return-object v1
.end method

.method public blacklist setAppInfos(Ljava/util/Map;)Landroid/adservices/ondevicepersonalization/UserData$Builder;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/adservices/ondevicepersonalization/AppInfo;",
            ">;)",
            "Landroid/adservices/ondevicepersonalization/UserData$Builder;"
        }
    .end annotation

    .line 508
    .local p1, "value":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/adservices/ondevicepersonalization/AppInfo;>;"
    invoke-direct {p0}, Landroid/adservices/ondevicepersonalization/UserData$Builder;->checkNotUsed()V

    .line 509
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/UserData$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x80

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/UserData$Builder;->mBuilderFieldsSet:J

    .line 510
    iput-object p1, p0, Landroid/adservices/ondevicepersonalization/UserData$Builder;->mAppInfos:Ljava/util/Map;

    .line 511
    return-object p0
.end method

.method public blacklist setAvailableStorageBytes(J)Landroid/adservices/ondevicepersonalization/UserData$Builder;
    .registers 7
    .param p1, "value"    # J

    .line 445
    invoke-direct {p0}, Landroid/adservices/ondevicepersonalization/UserData$Builder;->checkNotUsed()V

    .line 446
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/UserData$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/UserData$Builder;->mBuilderFieldsSet:J

    .line 447
    iput-wide p1, p0, Landroid/adservices/ondevicepersonalization/UserData$Builder;->mAvailableStorageBytes:J

    .line 448
    return-object p0
.end method

.method public blacklist setBatteryPercentage(I)Landroid/adservices/ondevicepersonalization/UserData$Builder;
    .registers 6
    .param p1, "value"    # I

    .line 456
    invoke-direct {p0}, Landroid/adservices/ondevicepersonalization/UserData$Builder;->checkNotUsed()V

    .line 457
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/UserData$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/UserData$Builder;->mBuilderFieldsSet:J

    .line 458
    iput p1, p0, Landroid/adservices/ondevicepersonalization/UserData$Builder;->mBatteryPercentage:I

    .line 459
    return-object p0
.end method

.method public blacklist setCarrier(Ljava/lang/String;)Landroid/adservices/ondevicepersonalization/UserData$Builder;
    .registers 6
    .param p1, "value"    # Ljava/lang/String;

    .line 467
    invoke-direct {p0}, Landroid/adservices/ondevicepersonalization/UserData$Builder;->checkNotUsed()V

    .line 468
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/UserData$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/UserData$Builder;->mBuilderFieldsSet:J

    .line 469
    iput-object p1, p0, Landroid/adservices/ondevicepersonalization/UserData$Builder;->mCarrier:Ljava/lang/String;

    .line 470
    return-object p0
.end method

.method public blacklist setDataNetworkType(I)Landroid/adservices/ondevicepersonalization/UserData$Builder;
    .registers 6
    .param p1, "value"    # I

    .line 497
    invoke-direct {p0}, Landroid/adservices/ondevicepersonalization/UserData$Builder;->checkNotUsed()V

    .line 498
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/UserData$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x40

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/UserData$Builder;->mBuilderFieldsSet:J

    .line 499
    iput p1, p0, Landroid/adservices/ondevicepersonalization/UserData$Builder;->mDataNetworkType:I

    .line 500
    return-object p0
.end method

.method public blacklist setNetworkCapabilities(Landroid/net/NetworkCapabilities;)Landroid/adservices/ondevicepersonalization/UserData$Builder;
    .registers 6
    .param p1, "value"    # Landroid/net/NetworkCapabilities;

    .line 485
    invoke-direct {p0}, Landroid/adservices/ondevicepersonalization/UserData$Builder;->checkNotUsed()V

    .line 486
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/UserData$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x20

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/UserData$Builder;->mBuilderFieldsSet:J

    .line 487
    iput-object p1, p0, Landroid/adservices/ondevicepersonalization/UserData$Builder;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 488
    return-object p0
.end method

.method public blacklist setOrientation(I)Landroid/adservices/ondevicepersonalization/UserData$Builder;
    .registers 6
    .param p1, "value"    # I

    .line 434
    invoke-direct {p0}, Landroid/adservices/ondevicepersonalization/UserData$Builder;->checkNotUsed()V

    .line 435
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/UserData$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/UserData$Builder;->mBuilderFieldsSet:J

    .line 436
    iput p1, p0, Landroid/adservices/ondevicepersonalization/UserData$Builder;->mOrientation:I

    .line 437
    return-object p0
.end method

.method public blacklist setTimezoneUtcOffsetMins(I)Landroid/adservices/ondevicepersonalization/UserData$Builder;
    .registers 6
    .param p1, "value"    # I

    .line 421
    invoke-direct {p0}, Landroid/adservices/ondevicepersonalization/UserData$Builder;->checkNotUsed()V

    .line 422
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/UserData$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/UserData$Builder;->mBuilderFieldsSet:J

    .line 423
    iput p1, p0, Landroid/adservices/ondevicepersonalization/UserData$Builder;->mTimezoneUtcOffsetMins:I

    .line 424
    return-object p0
.end method
