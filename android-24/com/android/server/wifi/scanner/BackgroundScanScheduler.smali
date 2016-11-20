.class public Lcom/android/server/wifi/scanner/BackgroundScanScheduler;
.super Ljava/lang/Object;
.source "BackgroundScanScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;,
        Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field public static final DEFAULT_MAX_AP_PER_SCAN:I = 0x20

.field public static final DEFAULT_MAX_BUCKETS:I = 0x8

.field public static final DEFAULT_MAX_CHANNELS_PER_BUCKET:I = 0x10

.field public static final DEFAULT_MAX_SCANS_TO_BATCH:I = 0xa

.field private static final DEFAULT_PERIOD_MS:I = 0x7530

.field private static final DEFAULT_REPORT_THRESHOLD_PERCENTAGE:I = 0x64

.field private static final EXPONENTIAL_BACK_OFF_BUCKET_IDX:I

.field private static final NUM_OF_REGULAR_BUCKETS:I

.field private static final PERIOD_MIN_GCD_MS:I = 0x2710

.field private static final PREDEFINED_BUCKET_PERIODS:[I

.field private static final TAG:Ljava/lang/String; = "BackgroundScanScheduler"


# instance fields
.field private final mBuckets:Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;

.field private final mChannelHelper:Lcom/android/server/wifi/scanner/ChannelHelper;

.field private mMaxApPerScan:I

.field private mMaxBatch:I

.field private mMaxBuckets:I

.field private mMaxChannelsPerBucket:I

.field private mSchedule:Lcom/android/server/wifi/WifiNative$ScanSettings;

.field private final mSettingsToScheduledBucket:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/net/wifi/WifiScanner$ScanSettings;",
            "Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()I
    .locals 1

    #@0
    sget v0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->EXPONENTIAL_BACK_OFF_BUCKET_IDX:I

    #@2
    return v0
.end method

.method static synthetic -get1()I
    .locals 1

    #@0
    sget v0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->NUM_OF_REGULAR_BUCKETS:I

    #@2
    return v0
.end method

.method static synthetic -get2()[I
    .locals 1

    #@0
    sget-object v0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->PREDEFINED_BUCKET_PERIODS:[I

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/wifi/scanner/BackgroundScanScheduler;)Lcom/android/server/wifi/scanner/ChannelHelper;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->mChannelHelper:Lcom/android/server/wifi/scanner/ChannelHelper;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(II)I
    .locals 1
    .param p0, "requestedPeriod"    # I
    .param p1, "maxNumBuckets"    # I

    #@0
    .prologue
    invoke-static {p0, p1}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->findBestRegularBucketIndex(II)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 109
    const/16 v0, 0xa

    #@2
    new-array v0, v0, [I

    #@4
    fill-array-data v0, :array_0

    #@7
    sput-object v0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->PREDEFINED_BUCKET_PERIODS:[I

    #@9
    .line 123
    sget-object v0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->PREDEFINED_BUCKET_PERIODS:[I

    #@b
    array-length v0, v0

    #@c
    add-int/lit8 v0, v0, -0x1

    #@e
    .line 122
    sput v0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->EXPONENTIAL_BACK_OFF_BUCKET_IDX:I

    #@10
    .line 125
    sget-object v0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->PREDEFINED_BUCKET_PERIODS:[I

    #@12
    array-length v0, v0

    #@13
    add-int/lit8 v0, v0, -0x1

    #@15
    .line 124
    sput v0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->NUM_OF_REGULAR_BUCKETS:I

    #@17
    .line 61
    return-void

    #@18
    .line 109
    :array_0
    .array-data 4
        0x7530
        0x1d4c0
        0x75300
        0x2710
        0xea60
        0x1d4c00
        0x3a980
        0xea600
        0x3a9800
        -0x1
    .end array-data
.end method

.method public constructor <init>(Lcom/android/server/wifi/scanner/ChannelHelper;)V
    .locals 2
    .param p1, "channelHelper"    # Lcom/android/server/wifi/scanner/ChannelHelper;

    #@0
    .prologue
    .line 369
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 324
    const/16 v0, 0x8

    #@5
    iput v0, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->mMaxBuckets:I

    #@7
    .line 325
    const/16 v0, 0x10

    #@9
    iput v0, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->mMaxChannelsPerBucket:I

    #@b
    .line 326
    const/16 v0, 0xa

    #@d
    iput v0, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->mMaxBatch:I

    #@f
    .line 327
    const/16 v0, 0x20

    #@11
    iput v0, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->mMaxApPerScan:I

    #@13
    .line 363
    new-instance v0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;

    #@15
    invoke-direct {v0, p0}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;-><init>(Lcom/android/server/wifi/scanner/BackgroundScanScheduler;)V

    #@18
    iput-object v0, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->mBuckets:Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;

    #@1a
    .line 367
    new-instance v0, Ljava/util/HashMap;

    #@1c
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@1f
    iput-object v0, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->mSettingsToScheduledBucket:Ljava/util/Map;

    #@21
    .line 370
    iput-object p1, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->mChannelHelper:Lcom/android/server/wifi/scanner/ChannelHelper;

    #@23
    .line 371
    new-instance v0, Ljava/util/ArrayList;

    #@25
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@28
    invoke-virtual {p0}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->getMaxChannelsPerBucket()I

    #@2b
    move-result v1

    #@2c
    invoke-direct {p0, v0, v1}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->createSchedule(Ljava/util/List;I)V

    #@2f
    .line 369
    return-void
.end method

.method private addScanToBuckets(Landroid/net/wifi/WifiScanner$ScanSettings;)V
    .locals 3
    .param p1, "settings"    # Landroid/net/wifi/WifiScanner$ScanSettings;

    #@0
    .prologue
    .line 510
    iget v1, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->maxPeriodInMs:I

    #@2
    if-eqz v1, :cond_0

    #@4
    iget v1, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->maxPeriodInMs:I

    #@6
    iget v2, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    #@8
    if-eq v1, v2, :cond_0

    #@a
    .line 512
    sget v0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->EXPONENTIAL_BACK_OFF_BUCKET_IDX:I

    #@c
    .line 517
    .local v0, "bucketIndex":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->mBuckets:Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;

    #@e
    invoke-virtual {v1, v0}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;->getOrCreate(I)Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1, p1}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->addSettings(Landroid/net/wifi/WifiScanner$ScanSettings;)Z

    #@15
    .line 507
    return-void

    #@16
    .line 514
    .end local v0    # "bucketIndex":I
    :cond_0
    iget v1, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    #@18
    sget v2, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->NUM_OF_REGULAR_BUCKETS:I

    #@1a
    invoke-static {v1, v2}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->findBestRegularBucketIndex(II)I

    #@1d
    move-result v0

    #@1e
    .restart local v0    # "bucketIndex":I
    goto :goto_0
.end method

.method private cloneScanSettings(Landroid/net/wifi/WifiScanner$ScanSettings;)Landroid/net/wifi/WifiScanner$ScanSettings;
    .locals 2
    .param p1, "originalSettings"    # Landroid/net/wifi/WifiScanner$ScanSettings;

    #@0
    .prologue
    .line 569
    new-instance v0, Landroid/net/wifi/WifiScanner$ScanSettings;

    #@2
    invoke-direct {v0}, Landroid/net/wifi/WifiScanner$ScanSettings;-><init>()V

    #@5
    .line 570
    .local v0, "settings":Landroid/net/wifi/WifiScanner$ScanSettings;
    iget v1, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    #@7
    iput v1, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    #@9
    .line 571
    iget-object v1, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@b
    iput-object v1, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@d
    .line 572
    iget-object v1, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->hiddenNetworkIds:[I

    #@f
    iput-object v1, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->hiddenNetworkIds:[I

    #@11
    .line 573
    iget v1, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    #@13
    iput v1, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    #@15
    .line 574
    iget v1, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->reportEvents:I

    #@17
    iput v1, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->reportEvents:I

    #@19
    .line 575
    iget v1, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->numBssidsPerScan:I

    #@1b
    iput v1, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->numBssidsPerScan:I

    #@1d
    .line 576
    iget v1, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->maxScansToCache:I

    #@1f
    iput v1, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->maxScansToCache:I

    #@21
    .line 577
    iget v1, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->maxPeriodInMs:I

    #@23
    iput v1, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->maxPeriodInMs:I

    #@25
    .line 578
    iget v1, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->stepCount:I

    #@27
    iput v1, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->stepCount:I

    #@29
    .line 579
    iget-boolean v1, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->isPnoScan:Z

    #@2b
    iput-boolean v1, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->isPnoScan:Z

    #@2d
    .line 580
    return-object v0
.end method

.method private compactBuckets(I)V
    .locals 7
    .param p1, "maxBuckets"    # I

    #@0
    .prologue
    .line 546
    move v1, p1

    #@1
    .line 550
    .local v1, "maxRegularBuckets":I
    iget-object v5, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->mBuckets:Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;

    #@3
    sget v6, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->EXPONENTIAL_BACK_OFF_BUCKET_IDX:I

    #@5
    invoke-virtual {v5, v6}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;->isActive(I)Z

    #@8
    move-result v5

    #@9
    if-eqz v5, :cond_0

    #@b
    .line 551
    add-int/lit8 v1, p1, -0x1

    #@d
    .line 553
    :cond_0
    sget v5, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->NUM_OF_REGULAR_BUCKETS:I

    #@f
    add-int/lit8 v0, v5, -0x1

    #@11
    .line 554
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_3

    #@13
    iget-object v5, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->mBuckets:Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;

    #@15
    invoke-virtual {v5}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;->getActiveRegularBucketCount()I

    #@18
    move-result v5

    #@19
    if-le v5, v1, :cond_3

    #@1b
    .line 555
    iget-object v5, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->mBuckets:Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;

    #@1d
    invoke-virtual {v5, v0}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;->isActive(I)Z

    #@20
    move-result v5

    #@21
    if-eqz v5, :cond_2

    #@23
    .line 556
    iget-object v5, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->mBuckets:Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;

    #@25
    invoke-virtual {v5, v0}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;->get(I)Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;

    #@28
    move-result-object v5

    #@29
    invoke-virtual {v5}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->getSettingsList()Ljava/util/List;

    #@2c
    move-result-object v5

    #@2d
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@30
    move-result-object v4

    #@31
    .local v4, "scanRequest$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@34
    move-result v5

    #@35
    if-eqz v5, :cond_1

    #@37
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3a
    move-result-object v3

    #@3b
    check-cast v3, Landroid/net/wifi/WifiScanner$ScanSettings;

    #@3d
    .line 557
    .local v3, "scanRequest":Landroid/net/wifi/WifiScanner$ScanSettings;
    iget v5, v3, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    #@3f
    invoke-static {v5, v0}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->findBestRegularBucketIndex(II)I

    #@42
    move-result v2

    #@43
    .line 558
    .local v2, "newBucketIndex":I
    iget-object v5, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->mBuckets:Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;

    #@45
    invoke-virtual {v5, v2}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;->getOrCreate(I)Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;

    #@48
    move-result-object v5

    #@49
    invoke-virtual {v5, v3}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->addSettings(Landroid/net/wifi/WifiScanner$ScanSettings;)Z

    #@4c
    goto :goto_1

    #@4d
    .line 560
    .end local v2    # "newBucketIndex":I
    .end local v3    # "scanRequest":Landroid/net/wifi/WifiScanner$ScanSettings;
    :cond_1
    iget-object v5, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->mBuckets:Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;

    #@4f
    invoke-virtual {v5, v0}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;->clear(I)V

    #@52
    .line 554
    .end local v4    # "scanRequest$iterator":Ljava/util/Iterator;
    :cond_2
    add-int/lit8 v0, v0, -0x1

    #@54
    goto :goto_0

    #@55
    .line 545
    :cond_3
    return-void
.end method

.method private createCurrentBucketSplitSettings(Landroid/net/wifi/WifiScanner$ScanSettings;Ljava/util/Set;)Landroid/net/wifi/WifiScanner$ScanSettings;
    .locals 8
    .param p1, "originalSettings"    # Landroid/net/wifi/WifiScanner$ScanSettings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/WifiScanner$ScanSettings;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/net/wifi/WifiScanner$ScanSettings;"
        }
    .end annotation

    #@0
    .prologue
    .line 588
    .local p2, "currentBucketChannels":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-direct {p0, p1}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->cloneScanSettings(Landroid/net/wifi/WifiScanner$ScanSettings;)Landroid/net/wifi/WifiScanner$ScanSettings;

    #@3
    move-result-object v4

    #@4
    .line 591
    .local v4, "currentBucketSettings":Landroid/net/wifi/WifiScanner$ScanSettings;
    const/4 v5, 0x0

    #@5
    iput v5, v4, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    #@7
    .line 592
    invoke-interface {p2}, Ljava/util/Set;->size()I

    #@a
    move-result v5

    #@b
    new-array v5, v5, [Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@d
    iput-object v5, v4, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@f
    .line 593
    const/4 v0, 0x0

    #@10
    .line 594
    .local v0, "chanIdx":I
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@13
    move-result-object v3

    #@14
    .local v3, "channel$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@17
    move-result v5

    #@18
    if-eqz v5, :cond_0

    #@1a
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1d
    move-result-object v2

    #@1e
    check-cast v2, Ljava/lang/Integer;

    #@20
    .line 595
    .local v2, "channel":Ljava/lang/Integer;
    iget-object v5, v4, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@22
    add-int/lit8 v1, v0, 0x1

    #@24
    .end local v0    # "chanIdx":I
    .local v1, "chanIdx":I
    new-instance v6, Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@26
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@29
    move-result v7

    #@2a
    invoke-direct {v6, v7}, Landroid/net/wifi/WifiScanner$ChannelSpec;-><init>(I)V

    #@2d
    aput-object v6, v5, v0

    #@2f
    move v0, v1

    #@30
    .end local v1    # "chanIdx":I
    .restart local v0    # "chanIdx":I
    goto :goto_0

    #@31
    .line 597
    .end local v2    # "channel":Ljava/lang/Integer;
    :cond_0
    return-object v4
.end method

.method private createSchedule(Ljava/util/List;I)V
    .locals 17
    .param p2, "maxChannelsPerBucket"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;",
            ">;I)V"
        }
    .end annotation

    #@0
    .prologue
    .line 438
    .local p1, "bucketList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;>;"
    new-instance v12, Lcom/android/server/wifi/WifiNative$ScanSettings;

    #@2
    invoke-direct {v12}, Lcom/android/server/wifi/WifiNative$ScanSettings;-><init>()V

    #@5
    .line 439
    .local v12, "schedule":Lcom/android/server/wifi/WifiNative$ScanSettings;
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    #@8
    move-result v15

    #@9
    iput v15, v12, Lcom/android/server/wifi/WifiNative$ScanSettings;->num_buckets:I

    #@b
    .line 440
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    #@e
    move-result v15

    #@f
    new-array v15, v15, [Lcom/android/server/wifi/WifiNative$BucketSettings;

    #@11
    iput-object v15, v12, Lcom/android/server/wifi/WifiNative$ScanSettings;->buckets:[Lcom/android/server/wifi/WifiNative$BucketSettings;

    #@13
    .line 442
    const/4 v15, 0x0

    #@14
    iput v15, v12, Lcom/android/server/wifi/WifiNative$ScanSettings;->max_ap_per_scan:I

    #@16
    .line 443
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->getMaxBatch()I

    #@19
    move-result v15

    #@1a
    iput v15, v12, Lcom/android/server/wifi/WifiNative$ScanSettings;->report_threshold_num_scans:I

    #@1c
    .line 444
    new-instance v8, Ljava/util/HashSet;

    #@1e
    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    #@21
    .line 447
    .local v8, "hiddenNetworkIdSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    const/4 v4, 0x0

    #@22
    .line 448
    .local v4, "bucketId":I
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@25
    move-result-object v3

    #@26
    .local v3, "bucket$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@29
    move-result v15

    #@2a
    if-eqz v15, :cond_4

    #@2c
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2f
    move-result-object v2

    #@30
    check-cast v2, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;

    #@32
    .line 449
    .local v2, "bucket":Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;
    iget-object v15, v12, Lcom/android/server/wifi/WifiNative$ScanSettings;->buckets:[Lcom/android/server/wifi/WifiNative$BucketSettings;

    #@34
    .line 450
    move/from16 v0, p2

    #@36
    invoke-virtual {v2, v4, v0}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->createBucketSettings(II)Lcom/android/server/wifi/WifiNative$BucketSettings;

    #@39
    move-result-object v16

    #@3a
    .line 449
    aput-object v16, v15, v4

    #@3c
    .line 451
    invoke-virtual {v2}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->getSettingsList()Ljava/util/List;

    #@3f
    move-result-object v15

    #@40
    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@43
    move-result-object v14

    #@44
    .local v14, "settings$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    #@47
    move-result v15

    #@48
    if-eqz v15, :cond_3

    #@4a
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@4d
    move-result-object v13

    #@4e
    check-cast v13, Landroid/net/wifi/WifiScanner$ScanSettings;

    #@50
    .line 453
    .local v13, "settings":Landroid/net/wifi/WifiScanner$ScanSettings;
    iget v15, v13, Landroid/net/wifi/WifiScanner$ScanSettings;->numBssidsPerScan:I

    #@52
    iget v0, v12, Lcom/android/server/wifi/WifiNative$ScanSettings;->max_ap_per_scan:I

    #@54
    move/from16 v16, v0

    #@56
    move/from16 v0, v16

    #@58
    if-le v15, v0, :cond_1

    #@5a
    .line 454
    iget v15, v13, Landroid/net/wifi/WifiScanner$ScanSettings;->numBssidsPerScan:I

    #@5c
    iput v15, v12, Lcom/android/server/wifi/WifiNative$ScanSettings;->max_ap_per_scan:I

    #@5e
    .line 457
    :cond_1
    iget v15, v13, Landroid/net/wifi/WifiScanner$ScanSettings;->maxScansToCache:I

    #@60
    if-eqz v15, :cond_2

    #@62
    .line 458
    iget v15, v13, Landroid/net/wifi/WifiScanner$ScanSettings;->maxScansToCache:I

    #@64
    iget v0, v12, Lcom/android/server/wifi/WifiNative$ScanSettings;->report_threshold_num_scans:I

    #@66
    move/from16 v16, v0

    #@68
    move/from16 v0, v16

    #@6a
    if-ge v15, v0, :cond_2

    #@6c
    .line 459
    iget v15, v13, Landroid/net/wifi/WifiScanner$ScanSettings;->maxScansToCache:I

    #@6e
    iput v15, v12, Lcom/android/server/wifi/WifiNative$ScanSettings;->report_threshold_num_scans:I

    #@70
    .line 462
    :cond_2
    iget-object v15, v13, Landroid/net/wifi/WifiScanner$ScanSettings;->hiddenNetworkIds:[I

    #@72
    if-eqz v15, :cond_0

    #@74
    .line 463
    const/4 v9, 0x0

    #@75
    .local v9, "j":I
    :goto_1
    iget-object v15, v13, Landroid/net/wifi/WifiScanner$ScanSettings;->hiddenNetworkIds:[I

    #@77
    array-length v15, v15

    #@78
    if-ge v9, v15, :cond_0

    #@7a
    .line 464
    iget-object v15, v13, Landroid/net/wifi/WifiScanner$ScanSettings;->hiddenNetworkIds:[I

    #@7c
    aget v15, v15, v9

    #@7e
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@81
    move-result-object v15

    #@82
    invoke-virtual {v8, v15}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@85
    .line 463
    add-int/lit8 v9, v9, 0x1

    #@87
    goto :goto_1

    #@88
    .line 468
    .end local v9    # "j":I
    .end local v13    # "settings":Landroid/net/wifi/WifiScanner$ScanSettings;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    #@8a
    goto :goto_0

    #@8b
    .line 471
    .end local v2    # "bucket":Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;
    .end local v14    # "settings$iterator":Ljava/util/Iterator;
    :cond_4
    const/16 v15, 0x64

    #@8d
    iput v15, v12, Lcom/android/server/wifi/WifiNative$ScanSettings;->report_threshold_percent:I

    #@8f
    .line 473
    iget v15, v12, Lcom/android/server/wifi/WifiNative$ScanSettings;->max_ap_per_scan:I

    #@91
    if-eqz v15, :cond_5

    #@93
    iget v15, v12, Lcom/android/server/wifi/WifiNative$ScanSettings;->max_ap_per_scan:I

    #@95
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->getMaxApPerScan()I

    #@98
    move-result v16

    #@99
    move/from16 v0, v16

    #@9b
    if-le v15, v0, :cond_6

    #@9d
    .line 474
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->getMaxApPerScan()I

    #@a0
    move-result v15

    #@a1
    iput v15, v12, Lcom/android/server/wifi/WifiNative$ScanSettings;->max_ap_per_scan:I

    #@a3
    .line 476
    :cond_6
    invoke-virtual {v8}, Ljava/util/HashSet;->size()I

    #@a6
    move-result v15

    #@a7
    if-lez v15, :cond_7

    #@a9
    .line 477
    invoke-virtual {v8}, Ljava/util/HashSet;->size()I

    #@ac
    move-result v15

    #@ad
    new-array v15, v15, [I

    #@af
    iput-object v15, v12, Lcom/android/server/wifi/WifiNative$ScanSettings;->hiddenNetworkIds:[I

    #@b1
    .line 478
    const/4 v10, 0x0

    #@b2
    .line 479
    .local v10, "numHiddenNetworks":I
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@b5
    move-result-object v7

    #@b6
    .local v7, "hiddenNetworkId$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@b9
    move-result v15

    #@ba
    if-eqz v15, :cond_7

    #@bc
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@bf
    move-result-object v6

    #@c0
    check-cast v6, Ljava/lang/Integer;

    #@c2
    .line 480
    .local v6, "hiddenNetworkId":Ljava/lang/Integer;
    iget-object v15, v12, Lcom/android/server/wifi/WifiNative$ScanSettings;->hiddenNetworkIds:[I

    #@c4
    add-int/lit8 v11, v10, 0x1

    #@c6
    .end local v10    # "numHiddenNetworks":I
    .local v11, "numHiddenNetworks":I
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    #@c9
    move-result v16

    #@ca
    aput v16, v15, v10

    #@cc
    move v10, v11

    #@cd
    .end local v11    # "numHiddenNetworks":I
    .restart local v10    # "numHiddenNetworks":I
    goto :goto_2

    #@ce
    .line 485
    .end local v6    # "hiddenNetworkId":Ljava/lang/Integer;
    .end local v7    # "hiddenNetworkId$iterator":Ljava/util/Iterator;
    .end local v10    # "numHiddenNetworks":I
    :cond_7
    iget v15, v12, Lcom/android/server/wifi/WifiNative$ScanSettings;->num_buckets:I

    #@d0
    if-lez v15, :cond_a

    #@d2
    .line 486
    iget-object v15, v12, Lcom/android/server/wifi/WifiNative$ScanSettings;->buckets:[Lcom/android/server/wifi/WifiNative$BucketSettings;

    #@d4
    const/16 v16, 0x0

    #@d6
    aget-object v15, v15, v16

    #@d8
    iget v5, v15, Lcom/android/server/wifi/WifiNative$BucketSettings;->period_ms:I

    #@da
    .line 487
    .local v5, "gcd":I
    const/4 v1, 0x1

    #@db
    .local v1, "b":I
    :goto_3
    iget v15, v12, Lcom/android/server/wifi/WifiNative$ScanSettings;->num_buckets:I

    #@dd
    if-ge v1, v15, :cond_8

    #@df
    .line 488
    iget-object v15, v12, Lcom/android/server/wifi/WifiNative$ScanSettings;->buckets:[Lcom/android/server/wifi/WifiNative$BucketSettings;

    #@e1
    aget-object v15, v15, v1

    #@e3
    iget v15, v15, Lcom/android/server/wifi/WifiNative$BucketSettings;->period_ms:I

    #@e5
    invoke-static {v15, v5}, Landroid/util/Rational;->gcd(II)I

    #@e8
    move-result v5

    #@e9
    .line 487
    add-int/lit8 v1, v1, 0x1

    #@eb
    goto :goto_3

    #@ec
    .line 491
    :cond_8
    const/16 v15, 0x2710

    #@ee
    if-ge v5, v15, :cond_9

    #@f0
    .line 492
    const-string/jumbo v15, "BackgroundScanScheduler"

    #@f3
    const-string/jumbo v16, "found gcd less than min gcd"

    #@f6
    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@f9
    .line 493
    const/16 v5, 0x2710

    #@fb
    .line 496
    :cond_9
    iput v5, v12, Lcom/android/server/wifi/WifiNative$ScanSettings;->base_period_ms:I

    #@fd
    .line 501
    .end local v1    # "b":I
    .end local v5    # "gcd":I
    :goto_4
    move-object/from16 v0, p0

    #@ff
    iput-object v12, v0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->mSchedule:Lcom/android/server/wifi/WifiNative$ScanSettings;

    #@101
    .line 437
    return-void

    #@102
    .line 498
    :cond_a
    const/16 v15, 0x7530

    #@104
    iput v15, v12, Lcom/android/server/wifi/WifiNative$ScanSettings;->base_period_ms:I

    #@106
    goto :goto_4
.end method

.method private createSplitBuckets(Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;Ljava/util/List;)Ljava/util/List;
    .locals 9
    .param p1, "originalBucket"    # Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;",
            "Ljava/util/List",
            "<",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;>;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 799
    .local p2, "channelSets":Ljava/util/List;, "Ljava/util/List<Ljava/util/Set<Ljava/lang/Integer;>;>;"
    new-instance v7, Ljava/util/ArrayList;

    #@2
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 800
    .local v7, "splitBucketList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;>;"
    const/4 v4, 0x0

    #@6
    .line 802
    .local v4, "channelSetIdx":I
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v3

    #@a
    .local v3, "channelSet$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v8

    #@e
    if-eqz v8, :cond_2

    #@10
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v2

    #@14
    check-cast v2, Ljava/util/Set;

    #@16
    .line 804
    .local v2, "channelSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    if-nez v4, :cond_0

    #@18
    .line 807
    move-object v5, p1

    #@19
    .line 811
    .local v5, "splitBucket":Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;
    :goto_1
    invoke-virtual {v5}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->getChannelCollection()Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;

    #@1c
    move-result-object v6

    #@1d
    .line 812
    .local v6, "splitBucketChannelCollection":Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;
    invoke-virtual {v6}, Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;->clear()V

    #@20
    .line 813
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@23
    move-result-object v1

    #@24
    .local v1, "channel$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@27
    move-result v8

    #@28
    if-eqz v8, :cond_1

    #@2a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2d
    move-result-object v0

    #@2e
    check-cast v0, Ljava/lang/Integer;

    #@30
    .line 814
    .local v0, "channel":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@33
    move-result v8

    #@34
    invoke-virtual {v6, v8}, Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;->addChannel(I)V

    #@37
    goto :goto_2

    #@38
    .line 809
    .end local v0    # "channel":Ljava/lang/Integer;
    .end local v1    # "channel$iterator":Ljava/util/Iterator;
    .end local v5    # "splitBucket":Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;
    .end local v6    # "splitBucketChannelCollection":Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;
    :cond_0
    new-instance v5, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;

    #@3a
    invoke-direct {v5, p0, p1}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;-><init>(Lcom/android/server/wifi/scanner/BackgroundScanScheduler;Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;)V

    #@3d
    .restart local v5    # "splitBucket":Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;
    goto :goto_1

    #@3e
    .line 816
    .restart local v1    # "channel$iterator":Ljava/util/Iterator;
    .restart local v6    # "splitBucketChannelCollection":Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    #@40
    .line 817
    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@43
    goto :goto_0

    #@44
    .line 819
    .end local v1    # "channel$iterator":Ljava/util/Iterator;
    .end local v2    # "channelSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v5    # "splitBucket":Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;
    .end local v6    # "splitBucketChannelCollection":Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;
    :cond_2
    return-object v7
.end method

.method private createSplitSettings(Landroid/net/wifi/WifiScanner$ScanSettings;Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;)Landroid/util/Pair;
    .locals 5
    .param p1, "originalSettings"    # Landroid/net/wifi/WifiScanner$ScanSettings;
    .param p2, "targetBucketChannelCol"    # Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/WifiScanner$ScanSettings;",
            "Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Landroid/net/wifi/WifiScanner$ScanSettings;",
            "Landroid/net/wifi/WifiScanner$ScanSettings;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 631
    invoke-virtual {p2, p1}, Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;->getMissingChannelsFromSettings(Landroid/net/wifi/WifiScanner$ScanSettings;)Ljava/util/Set;

    #@3
    move-result-object v0

    #@4
    .line 633
    .local v0, "currentBucketChannels":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-virtual {p2, p1}, Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;->getContainingChannelsFromSettings(Landroid/net/wifi/WifiScanner$ScanSettings;)Ljava/util/Set;

    #@7
    move-result-object v2

    #@8
    .line 636
    .local v2, "targetBucketChannels":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-direct {p0, p1, v0}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->createCurrentBucketSplitSettings(Landroid/net/wifi/WifiScanner$ScanSettings;Ljava/util/Set;)Landroid/net/wifi/WifiScanner$ScanSettings;

    #@b
    move-result-object v1

    #@c
    .line 638
    .local v1, "currentBucketSettings":Landroid/net/wifi/WifiScanner$ScanSettings;
    invoke-direct {p0, p1, v2}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->createTargetBucketSplitSettings(Landroid/net/wifi/WifiScanner$ScanSettings;Ljava/util/Set;)Landroid/net/wifi/WifiScanner$ScanSettings;

    #@f
    move-result-object v3

    #@10
    .line 639
    .local v3, "targetBucketSettings":Landroid/net/wifi/WifiScanner$ScanSettings;
    invoke-static {v1, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    #@13
    move-result-object v4

    #@14
    return-object v4
.end method

.method private createTargetBucketSplitSettings(Landroid/net/wifi/WifiScanner$ScanSettings;Ljava/util/Set;)Landroid/net/wifi/WifiScanner$ScanSettings;
    .locals 8
    .param p1, "originalSettings"    # Landroid/net/wifi/WifiScanner$ScanSettings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/WifiScanner$ScanSettings;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/net/wifi/WifiScanner$ScanSettings;"
        }
    .end annotation

    #@0
    .prologue
    .line 607
    .local p2, "targetBucketChannels":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-direct {p0, p1}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->cloneScanSettings(Landroid/net/wifi/WifiScanner$ScanSettings;)Landroid/net/wifi/WifiScanner$ScanSettings;

    #@3
    move-result-object v4

    #@4
    .line 610
    .local v4, "targetBucketSettings":Landroid/net/wifi/WifiScanner$ScanSettings;
    const/4 v5, 0x0

    #@5
    iput v5, v4, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    #@7
    .line 611
    invoke-interface {p2}, Ljava/util/Set;->size()I

    #@a
    move-result v5

    #@b
    new-array v5, v5, [Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@d
    iput-object v5, v4, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@f
    .line 612
    const/4 v0, 0x0

    #@10
    .line 613
    .local v0, "chanIdx":I
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@13
    move-result-object v3

    #@14
    .local v3, "channel$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@17
    move-result v5

    #@18
    if-eqz v5, :cond_0

    #@1a
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1d
    move-result-object v2

    #@1e
    check-cast v2, Ljava/lang/Integer;

    #@20
    .line 614
    .local v2, "channel":Ljava/lang/Integer;
    iget-object v5, v4, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@22
    add-int/lit8 v1, v0, 0x1

    #@24
    .end local v0    # "chanIdx":I
    .local v1, "chanIdx":I
    new-instance v6, Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@26
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@29
    move-result v7

    #@2a
    invoke-direct {v6, v7}, Landroid/net/wifi/WifiScanner$ChannelSpec;-><init>(I)V

    #@2d
    aput-object v6, v5, v0

    #@2f
    move v0, v1

    #@30
    .end local v1    # "chanIdx":I
    .restart local v0    # "chanIdx":I
    goto :goto_0

    #@31
    .line 617
    .end local v2    # "channel":Ljava/lang/Integer;
    :cond_0
    iget v5, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->reportEvents:I

    #@33
    and-int/lit8 v5, v5, 0x6

    #@35
    .line 616
    iput v5, v4, Landroid/net/wifi/WifiScanner$ScanSettings;->reportEvents:I

    #@37
    .line 620
    return-object v4
.end method

.method private static findBestRegularBucketIndex(II)I
    .locals 7
    .param p0, "requestedPeriod"    # I
    .param p1, "maxNumBuckets"    # I

    #@0
    .prologue
    .line 524
    sget v4, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->NUM_OF_REGULAR_BUCKETS:I

    #@2
    invoke-static {p1, v4}, Ljava/lang/Math;->min(II)I

    #@5
    move-result p1

    #@6
    .line 525
    const/4 v2, -0x1

    #@7
    .line 526
    .local v2, "index":I
    const v3, 0x7fffffff

    #@a
    .line 527
    .local v3, "minDiff":I
    const/4 v1, 0x0

    #@b
    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_1

    #@d
    .line 528
    sget-object v4, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->PREDEFINED_BUCKET_PERIODS:[I

    #@f
    aget v4, v4, v1

    #@11
    sub-int/2addr v4, p0

    #@12
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    #@15
    move-result v0

    #@16
    .line 529
    .local v0, "diff":I
    if-ge v0, v3, :cond_0

    #@18
    .line 530
    move v3, v0

    #@19
    .line 531
    move v2, v1

    #@1a
    .line 527
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 534
    .end local v0    # "diff":I
    :cond_1
    const/4 v4, -0x1

    #@1e
    if-ne v2, v4, :cond_2

    #@20
    .line 535
    const-string/jumbo v4, "BackgroundScanScheduler"

    #@23
    new-instance v5, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    const-string/jumbo v6, "Could not find best bucket for period "

    #@2b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v5

    #@2f
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@32
    move-result-object v5

    #@33
    const-string/jumbo v6, " in "

    #@36
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v5

    #@3a
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v5

    #@3e
    .line 536
    const-string/jumbo v6, " buckets"

    #@41
    .line 535
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v5

    #@45
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v5

    #@49
    invoke-static {v4, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@4c
    .line 538
    :cond_2
    return v2
.end method

.method private fixBuckets(Ljava/util/List;II)Ljava/util/List;
    .locals 12
    .param p2, "maxBuckets"    # I
    .param p3, "maxChannelsPerBucket"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;",
            ">;II)",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 830
    .local p1, "originalBucketList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;>;"
    new-instance v5, Ljava/util/ArrayList;

    #@2
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 831
    .local v5, "fixedBucketList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@8
    move-result v10

    #@9
    .line 833
    .local v10, "totalNumBuckets":I
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@c
    move-result-object v8

    #@d
    .local v8, "originalBucket$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    #@10
    move-result v11

    #@11
    if-eqz v11, :cond_3

    #@13
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16
    move-result-object v7

    #@17
    check-cast v7, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;

    #@19
    .line 834
    .local v7, "originalBucket":Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;
    invoke-virtual {v7}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->getChannelCollection()Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;

    #@1c
    move-result-object v2

    #@1d
    .line 835
    .local v2, "channelCollection":Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;
    invoke-virtual {v2}, Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;->getChannelSet()Ljava/util/Set;

    #@20
    move-result-object v3

    #@21
    .line 836
    .local v3, "channelSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v3}, Ljava/util/Set;->size()I

    #@24
    move-result v11

    #@25
    if-le v11, p3, :cond_2

    #@27
    .line 838
    invoke-direct {p0, v3, p3}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->partitionChannelSet(Ljava/util/Set;I)Ljava/util/List;

    #@2a
    move-result-object v4

    #@2b
    .line 839
    .local v4, "channelSetList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Set<Ljava/lang/Integer;>;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    #@2e
    move-result v11

    #@2f
    add-int/2addr v11, v10

    #@30
    add-int/lit8 v6, v11, -0x1

    #@32
    .line 840
    .local v6, "newTotalNumBuckets":I
    if-gt v6, p2, :cond_1

    #@34
    .line 841
    invoke-direct {p0, v7, v4}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->createSplitBuckets(Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;Ljava/util/List;)Ljava/util/List;

    #@37
    move-result-object v9

    #@38
    .line 842
    .local v9, "splitBuckets":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;>;"
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@3b
    move-result-object v1

    #@3c
    .local v1, "bucket$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@3f
    move-result v11

    #@40
    if-eqz v11, :cond_0

    #@42
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@45
    move-result-object v0

    #@46
    check-cast v0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;

    #@48
    .line 843
    .local v0, "bucket":Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@4b
    goto :goto_1

    #@4c
    .line 845
    .end local v0    # "bucket":Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;
    :cond_0
    move v10, v6

    #@4d
    goto :goto_0

    #@4e
    .line 847
    .end local v1    # "bucket$iterator":Ljava/util/Iterator;
    .end local v9    # "splitBuckets":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;>;"
    :cond_1
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@51
    goto :goto_0

    #@52
    .line 850
    .end local v4    # "channelSetList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Set<Ljava/lang/Integer;>;>;"
    .end local v6    # "newTotalNumBuckets":I
    :cond_2
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@55
    goto :goto_0

    #@56
    .line 853
    .end local v2    # "channelCollection":Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;
    .end local v3    # "channelSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v7    # "originalBucket":Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;
    :cond_3
    return-object v5
.end method

.method private mergeSettingsToLowerBuckets(Landroid/net/wifi/WifiScanner$ScanSettings;Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;Ljava/util/ListIterator;)Landroid/util/Pair;
    .locals 7
    .param p1, "originalSettings"    # Landroid/net/wifi/WifiScanner$ScanSettings;
    .param p2, "currentBucket"    # Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/WifiScanner$ScanSettings;",
            "Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;",
            "Ljava/util/ListIterator",
            "<",
            "Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;",
            ">;)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Boolean;",
            "Landroid/net/wifi/WifiScanner$ScanSettings;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 656
    .local p3, "iterTargetBuckets":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;>;"
    const/4 v1, 0x0

    #@1
    .line 657
    .local v1, "remainingSplitSettings":Landroid/net/wifi/WifiScanner$ScanSettings;
    const/4 v5, 0x0

    #@2
    .line 658
    .local v5, "wasMerged":Z
    move-object v0, p2

    #@3
    .line 660
    .end local v1    # "remainingSplitSettings":Landroid/net/wifi/WifiScanner$ScanSettings;
    .local v0, "maxScheduledBucket":Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;
    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/ListIterator;->hasPrevious()Z

    #@6
    move-result v6

    #@7
    if-eqz v6, :cond_3

    #@9
    .line 661
    invoke-interface {p3}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    #@c
    move-result-object v3

    #@d
    check-cast v3, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;

    #@f
    .line 662
    .local v3, "targetBucket":Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;
    invoke-virtual {v3}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->getChannelCollection()Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;

    #@12
    move-result-object v4

    #@13
    .line 663
    .local v4, "targetBucketChannelCol":Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;
    invoke-virtual {v4, p1}, Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;->containsSettings(Landroid/net/wifi/WifiScanner$ScanSettings;)Z

    #@16
    move-result v6

    #@17
    if-eqz v6, :cond_1

    #@19
    .line 664
    invoke-virtual {v3, p1}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->addSettings(Landroid/net/wifi/WifiScanner$ScanSettings;)Z

    #@1c
    .line 666
    move-object v0, v3

    #@1d
    .line 667
    const/4 v5, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 668
    :cond_1
    invoke-virtual {v4, p1}, Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;->partiallyContainsSettings(Landroid/net/wifi/WifiScanner$ScanSettings;)Z

    #@22
    move-result v6

    #@23
    if-eqz v6, :cond_0

    #@25
    .line 670
    if-nez v1, :cond_2

    #@27
    .line 671
    invoke-direct {p0, p1, v4}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->createSplitSettings(Landroid/net/wifi/WifiScanner$ScanSettings;Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;)Landroid/util/Pair;

    #@2a
    move-result-object v2

    #@2b
    .line 676
    .local v2, "splitSettings":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$ScanSettings;>;"
    :goto_1
    iget-object v6, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@2d
    check-cast v6, Landroid/net/wifi/WifiScanner$ScanSettings;

    #@2f
    invoke-virtual {v3, v6}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->addSettings(Landroid/net/wifi/WifiScanner$ScanSettings;)Z

    #@32
    .line 679
    iget-object v1, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@34
    check-cast v1, Landroid/net/wifi/WifiScanner$ScanSettings;

    #@36
    .line 680
    .local v1, "remainingSplitSettings":Landroid/net/wifi/WifiScanner$ScanSettings;
    const/4 v5, 0x1

    #@37
    goto :goto_0

    #@38
    .line 674
    .end local v1    # "remainingSplitSettings":Landroid/net/wifi/WifiScanner$ScanSettings;
    .end local v2    # "splitSettings":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$ScanSettings;>;"
    :cond_2
    invoke-direct {p0, v1, v4}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->createSplitSettings(Landroid/net/wifi/WifiScanner$ScanSettings;Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;)Landroid/util/Pair;

    #@3b
    move-result-object v2

    #@3c
    .restart local v2    # "splitSettings":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$ScanSettings;>;"
    goto :goto_1

    #@3d
    .line 685
    .end local v2    # "splitSettings":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$ScanSettings;>;"
    .end local v3    # "targetBucket":Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;
    .end local v4    # "targetBucketChannelCol":Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;
    :cond_3
    iget-object v6, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->mSettingsToScheduledBucket:Ljava/util/Map;

    #@3f
    invoke-interface {v6, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@42
    .line 687
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@45
    move-result-object v6

    #@46
    invoke-static {v6, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    #@49
    move-result-object v6

    #@4a
    return-object v6
.end method

.method private optimizeBuckets()Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 702
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->mSettingsToScheduledBucket:Ljava/util/Map;

    #@4
    move-object/from16 v16, v0

    #@6
    invoke-interface/range {v16 .. v16}, Ljava/util/Map;->clear()V

    #@9
    .line 703
    move-object/from16 v0, p0

    #@b
    iget-object v0, v0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->mBuckets:Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;

    #@d
    move-object/from16 v16, v0

    #@f
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;->getSortedActiveRegularBucketList()Ljava/util/List;

    #@12
    move-result-object v12

    #@13
    .line 704
    .local v12, "sortedBuckets":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;>;"
    invoke-interface {v12}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    #@16
    move-result-object v5

    #@17
    .line 708
    .local v5, "iterBuckets":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;>;"
    new-instance v2, Ljava/util/ArrayList;

    #@19
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@1c
    .line 716
    .local v2, "currentBucketSplitSettingsList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiScanner$ScanSettings;>;"
    :goto_0
    invoke-interface {v5}, Ljava/util/ListIterator;->hasNext()Z

    #@1f
    move-result v16

    #@20
    if-eqz v16, :cond_4

    #@22
    .line 717
    invoke-interface {v5}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    #@25
    move-result-object v1

    #@26
    check-cast v1, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;

    #@28
    .line 718
    .local v1, "currentBucket":Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;
    invoke-virtual {v1}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->getSettingsList()Ljava/util/List;

    #@2b
    move-result-object v16

    #@2c
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@2f
    move-result-object v6

    #@30
    .line 720
    .local v6, "iterSettings":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/net/wifi/WifiScanner$ScanSettings;>;"
    invoke-interface {v2}, Ljava/util/List;->clear()V

    #@33
    .line 722
    :cond_0
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@36
    move-result v16

    #@37
    if-eqz v16, :cond_1

    #@39
    .line 723
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3c
    move-result-object v3

    #@3d
    check-cast v3, Landroid/net/wifi/WifiScanner$ScanSettings;

    #@3f
    .line 725
    .local v3, "currentSettings":Landroid/net/wifi/WifiScanner$ScanSettings;
    invoke-interface {v5}, Ljava/util/ListIterator;->previousIndex()I

    #@42
    move-result v16

    #@43
    move/from16 v0, v16

    #@45
    invoke-interface {v12, v0}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    #@48
    move-result-object v7

    #@49
    .line 728
    .local v7, "iterTargetBuckets":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;>;"
    move-object/from16 v0, p0

    #@4b
    invoke-direct {v0, v3, v1, v7}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->mergeSettingsToLowerBuckets(Landroid/net/wifi/WifiScanner$ScanSettings;Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;Ljava/util/ListIterator;)Landroid/util/Pair;

    #@4e
    move-result-object v8

    #@4f
    .line 731
    .local v8, "mergeResult":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Landroid/net/wifi/WifiScanner$ScanSettings;>;"
    iget-object v0, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@51
    move-object/from16 v16, v0

    #@53
    check-cast v16, Ljava/lang/Boolean;

    #@55
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    #@58
    move-result v15

    #@59
    .line 732
    .local v15, "wasMerged":Z
    if-eqz v15, :cond_0

    #@5b
    .line 734
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    #@5e
    .line 735
    iget-object v9, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@60
    check-cast v9, Landroid/net/wifi/WifiScanner$ScanSettings;

    #@62
    .line 736
    .local v9, "remainingSplitSettings":Landroid/net/wifi/WifiScanner$ScanSettings;
    if-eqz v9, :cond_0

    #@64
    .line 738
    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@67
    goto :goto_1

    #@68
    .line 743
    .end local v3    # "currentSettings":Landroid/net/wifi/WifiScanner$ScanSettings;
    .end local v7    # "iterTargetBuckets":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;>;"
    .end local v8    # "mergeResult":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Landroid/net/wifi/WifiScanner$ScanSettings;>;"
    .end local v9    # "remainingSplitSettings":Landroid/net/wifi/WifiScanner$ScanSettings;
    .end local v15    # "wasMerged":Z
    :cond_1
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@6b
    move-result-object v14

    #@6c
    .local v14, "splitSettings$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    #@6f
    move-result v16

    #@70
    if-eqz v16, :cond_2

    #@72
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@75
    move-result-object v13

    #@76
    check-cast v13, Landroid/net/wifi/WifiScanner$ScanSettings;

    #@78
    .line 744
    .local v13, "splitSettings":Landroid/net/wifi/WifiScanner$ScanSettings;
    invoke-virtual {v1, v13}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->addSettings(Landroid/net/wifi/WifiScanner$ScanSettings;)Z

    #@7b
    goto :goto_2

    #@7c
    .line 746
    .end local v13    # "splitSettings":Landroid/net/wifi/WifiScanner$ScanSettings;
    :cond_2
    invoke-virtual {v1}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->getSettingsList()Ljava/util/List;

    #@7f
    move-result-object v16

    #@80
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->isEmpty()Z

    #@83
    move-result v16

    #@84
    if-eqz v16, :cond_3

    #@86
    .line 747
    invoke-interface {v5}, Ljava/util/ListIterator;->remove()V

    #@89
    goto :goto_0

    #@8a
    .line 750
    :cond_3
    invoke-virtual {v1}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->updateChannelCollection()V

    #@8d
    goto :goto_0

    #@8e
    .line 755
    .end local v1    # "currentBucket":Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;
    .end local v6    # "iterSettings":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/net/wifi/WifiScanner$ScanSettings;>;"
    .end local v14    # "splitSettings$iterator":Ljava/util/Iterator;
    :cond_4
    move-object/from16 v0, p0

    #@90
    iget-object v0, v0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->mBuckets:Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;

    #@92
    move-object/from16 v16, v0

    #@94
    sget v17, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->EXPONENTIAL_BACK_OFF_BUCKET_IDX:I

    #@96
    invoke-virtual/range {v16 .. v17}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;->isActive(I)Z

    #@99
    move-result v16

    #@9a
    if-eqz v16, :cond_6

    #@9c
    .line 756
    move-object/from16 v0, p0

    #@9e
    iget-object v0, v0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->mBuckets:Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;

    #@a0
    move-object/from16 v16, v0

    #@a2
    sget v17, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->EXPONENTIAL_BACK_OFF_BUCKET_IDX:I

    #@a4
    invoke-virtual/range {v16 .. v17}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;->get(I)Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;

    #@a7
    move-result-object v4

    #@a8
    .line 757
    .local v4, "exponentialBucket":Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;
    invoke-virtual {v4}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->getSettingsList()Ljava/util/List;

    #@ab
    move-result-object v16

    #@ac
    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@af
    move-result-object v11

    #@b0
    .local v11, "settings$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    #@b3
    move-result v16

    #@b4
    if-eqz v16, :cond_5

    #@b6
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@b9
    move-result-object v10

    #@ba
    check-cast v10, Landroid/net/wifi/WifiScanner$ScanSettings;

    #@bc
    .line 758
    .local v10, "settings":Landroid/net/wifi/WifiScanner$ScanSettings;
    move-object/from16 v0, p0

    #@be
    iget-object v0, v0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->mSettingsToScheduledBucket:Ljava/util/Map;

    #@c0
    move-object/from16 v16, v0

    #@c2
    move-object/from16 v0, v16

    #@c4
    invoke-interface {v0, v10, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@c7
    goto :goto_3

    #@c8
    .line 760
    .end local v10    # "settings":Landroid/net/wifi/WifiScanner$ScanSettings;
    :cond_5
    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@cb
    .line 763
    .end local v4    # "exponentialBucket":Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;
    .end local v11    # "settings$iterator":Ljava/util/Iterator;
    :cond_6
    return-object v12
.end method

.method private partitionChannelSet(Ljava/util/Set;I)Ljava/util/List;
    .locals 4
    .param p2, "maxChannelsPerBucket"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;I)",
            "Ljava/util/List",
            "<",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 772
    .local p1, "originalChannelSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    new-instance v1, Ljava/util/ArrayList;

    #@2
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 773
    .local v1, "channelSetList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Set<Ljava/lang/Integer;>;>;"
    new-instance v0, Landroid/util/ArraySet;

    #@7
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    #@a
    .line 774
    .local v0, "channelSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@d
    move-result-object v2

    #@e
    .line 776
    .local v2, "iterChannels":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@11
    move-result v3

    #@12
    if-eqz v3, :cond_1

    #@14
    .line 777
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@17
    move-result-object v3

    #@18
    check-cast v3, Ljava/lang/Integer;

    #@1a
    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@1d
    .line 778
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    #@20
    move-result v3

    #@21
    if-ne v3, p2, :cond_0

    #@23
    .line 779
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@26
    .line 780
    new-instance v0, Landroid/util/ArraySet;

    #@28
    .end local v0    # "channelSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    #@2b
    .restart local v0    # "channelSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    goto :goto_0

    #@2c
    .line 784
    :cond_1
    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    #@2f
    move-result v3

    #@30
    if-nez v3, :cond_2

    #@32
    .line 785
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@35
    .line 787
    :cond_2
    return-object v1
.end method


# virtual methods
.method public filterResultsForSettings([Landroid/net/wifi/WifiScanner$ScanData;Landroid/net/wifi/WifiScanner$ScanSettings;)[Landroid/net/wifi/WifiScanner$ScanData;
    .locals 2
    .param p1, "scanDatas"    # [Landroid/net/wifi/WifiScanner$ScanData;
    .param p2, "settings"    # Landroid/net/wifi/WifiScanner$ScanSettings;

    #@0
    .prologue
    .line 417
    iget-object v0, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->mChannelHelper:Lcom/android/server/wifi/scanner/ChannelHelper;

    #@2
    .line 418
    invoke-virtual {p0, p2}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->getScheduledBucket(Landroid/net/wifi/WifiScanner$ScanSettings;)I

    #@5
    move-result v1

    #@6
    .line 417
    invoke-static {v0, p1, p2, v1}, Lcom/android/server/wifi/scanner/ScanScheduleUtil;->filterResultsForSettings(Lcom/android/server/wifi/scanner/ChannelHelper;[Landroid/net/wifi/WifiScanner$ScanData;Landroid/net/wifi/WifiScanner$ScanSettings;I)[Landroid/net/wifi/WifiScanner$ScanData;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public getMaxApPerScan()I
    .locals 1

    #@0
    .prologue
    .line 356
    iget v0, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->mMaxApPerScan:I

    #@2
    return v0
.end method

.method public getMaxBatch()I
    .locals 1

    #@0
    .prologue
    .line 347
    iget v0, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->mMaxBatch:I

    #@2
    return v0
.end method

.method public getMaxBuckets()I
    .locals 1

    #@0
    .prologue
    .line 330
    iget v0, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->mMaxBuckets:I

    #@2
    return v0
.end method

.method public getMaxChannelsPerBucket()I
    .locals 1

    #@0
    .prologue
    .line 338
    iget v0, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->mMaxChannelsPerBucket:I

    #@2
    return v0
.end method

.method public getSchedule()Lcom/android/server/wifi/WifiNative$ScanSettings;
    .locals 1

    #@0
    .prologue
    .line 398
    iget-object v0, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->mSchedule:Lcom/android/server/wifi/WifiNative$ScanSettings;

    #@2
    return-object v0
.end method

.method public getScheduledBucket(Landroid/net/wifi/WifiScanner$ScanSettings;)I
    .locals 3
    .param p1, "settings"    # Landroid/net/wifi/WifiScanner$ScanSettings;

    #@0
    .prologue
    .line 425
    iget-object v1, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->mSettingsToScheduledBucket:Ljava/util/Map;

    #@2
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;

    #@8
    .line 426
    .local v0, "maxScheduledBucket":Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;
    if-eqz v0, :cond_0

    #@a
    .line 427
    iget v1, v0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->bucketId:I

    #@c
    return v1

    #@d
    .line 429
    :cond_0
    const-string/jumbo v1, "BackgroundScanScheduler"

    #@10
    const-string/jumbo v2, "No bucket found for settings"

    #@13
    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@16
    .line 430
    const/4 v1, -0x1

    #@17
    return v1
.end method

.method public setMaxApPerScan(I)V
    .locals 0
    .param p1, "maxApPerScan"    # I

    #@0
    .prologue
    .line 360
    iput p1, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->mMaxApPerScan:I

    #@2
    .line 359
    return-void
.end method

.method public setMaxBatch(I)V
    .locals 0
    .param p1, "maxBatch"    # I

    #@0
    .prologue
    .line 352
    iput p1, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->mMaxBatch:I

    #@2
    .line 351
    return-void
.end method

.method public setMaxBuckets(I)V
    .locals 0
    .param p1, "maxBuckets"    # I

    #@0
    .prologue
    .line 334
    iput p1, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->mMaxBuckets:I

    #@2
    .line 333
    return-void
.end method

.method public setMaxChannelsPerBucket(I)V
    .locals 0
    .param p1, "maxChannels"    # I

    #@0
    .prologue
    .line 343
    iput p1, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->mMaxChannelsPerBucket:I

    #@2
    .line 342
    return-void
.end method

.method public shouldReportFullScanResultForSettings(Landroid/net/wifi/ScanResult;ILandroid/net/wifi/WifiScanner$ScanSettings;)Z
    .locals 2
    .param p1, "result"    # Landroid/net/wifi/ScanResult;
    .param p2, "bucketsScanned"    # I
    .param p3, "settings"    # Landroid/net/wifi/WifiScanner$ScanSettings;

    #@0
    .prologue
    .line 407
    iget-object v0, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->mChannelHelper:Lcom/android/server/wifi/scanner/ChannelHelper;

    #@2
    .line 408
    invoke-virtual {p0, p3}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->getScheduledBucket(Landroid/net/wifi/WifiScanner$ScanSettings;)I

    #@5
    move-result v1

    #@6
    .line 407
    invoke-static {v0, p1, p2, p3, v1}, Lcom/android/server/wifi/scanner/ScanScheduleUtil;->shouldReportFullScanResultForSettings(Lcom/android/server/wifi/scanner/ChannelHelper;Landroid/net/wifi/ScanResult;ILandroid/net/wifi/WifiScanner$ScanSettings;I)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public updateSchedule(Ljava/util/Collection;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroid/net/wifi/WifiScanner$ScanSettings;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 379
    .local p1, "requests":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/wifi/WifiScanner$ScanSettings;>;"
    iget-object v4, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->mBuckets:Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;

    #@2
    invoke-virtual {v4}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;->clearAll()V

    #@5
    .line 380
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v3

    #@9
    .local v3, "request$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result v4

    #@d
    if-eqz v4, :cond_0

    #@f
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v2

    #@13
    check-cast v2, Landroid/net/wifi/WifiScanner$ScanSettings;

    #@15
    .line 381
    .local v2, "request":Landroid/net/wifi/WifiScanner$ScanSettings;
    invoke-direct {p0, v2}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->addScanToBuckets(Landroid/net/wifi/WifiScanner$ScanSettings;)V

    #@18
    goto :goto_0

    #@19
    .line 384
    .end local v2    # "request":Landroid/net/wifi/WifiScanner$ScanSettings;
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->getMaxBuckets()I

    #@1c
    move-result v4

    #@1d
    invoke-direct {p0, v4}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->compactBuckets(I)V

    #@20
    .line 386
    invoke-direct {p0}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->optimizeBuckets()Ljava/util/List;

    #@23
    move-result-object v0

    #@24
    .line 389
    .local v0, "bucketList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;>;"
    invoke-virtual {p0}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->getMaxBuckets()I

    #@27
    move-result v4

    #@28
    invoke-virtual {p0}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->getMaxChannelsPerBucket()I

    #@2b
    move-result v5

    #@2c
    invoke-direct {p0, v0, v4, v5}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->fixBuckets(Ljava/util/List;II)Ljava/util/List;

    #@2f
    move-result-object v1

    #@30
    .line 391
    .local v1, "fixedBucketList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;>;"
    invoke-virtual {p0}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->getMaxChannelsPerBucket()I

    #@33
    move-result v4

    #@34
    invoke-direct {p0, v1, v4}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->createSchedule(Ljava/util/List;I)V

    #@37
    .line 377
    return-void
.end method
