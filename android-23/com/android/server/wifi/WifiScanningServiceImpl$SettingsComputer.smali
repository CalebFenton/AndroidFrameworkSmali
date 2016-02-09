.class Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;
.super Ljava/lang/Object;
.source "WifiScanningServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiScanningServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsComputer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer$TimeBucket;
    }
.end annotation


# static fields
.field private static final DEFAULT_BASE_PERIOD_MS:I = 0x1388

.field private static final DEFAULT_REPORT_THRESHOLD_NUM_SCANS:I = 0xa

.field private static final DEFAULT_REPORT_THRESHOLD_PERCENT:I = 0x64

.field private static final MAX_CHANNELS:I = 0x20


# instance fields
.field mChannelToBucketMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

.field private final mTimeBuckets:[Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer$TimeBucket;

.field final synthetic this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;


# direct methods
.method private constructor <init>(Lcom/android/server/wifi/WifiScanningServiceImpl;)V
    .locals 10
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiScanningServiceImpl;

    #@0
    .prologue
    const/16 v6, 0x19

    #@2
    const/4 v4, 0x1

    #@3
    const/16 v9, 0xa

    #@5
    const/4 v8, 0x5

    #@6
    const/4 v7, 0x0

    #@7
    .line 945
    iput-object p1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    #@9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@c
    .line 959
    const/16 v2, 0x8

    #@e
    new-array v2, v2, [Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer$TimeBucket;

    #@10
    .line 960
    new-instance v3, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer$TimeBucket;

    #@12
    invoke-direct {v3, p0, v4, v7, v8}, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer$TimeBucket;-><init>(Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;III)V

    #@15
    aput-object v3, v2, v7

    #@17
    .line 961
    new-instance v3, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer$TimeBucket;

    #@19
    invoke-direct {v3, p0, v8, v8, v9}, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer$TimeBucket;-><init>(Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;III)V

    #@1c
    aput-object v3, v2, v4

    #@1e
    .line 962
    new-instance v3, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer$TimeBucket;

    #@20
    invoke-direct {v3, p0, v9, v9, v6}, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer$TimeBucket;-><init>(Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;III)V

    #@23
    const/4 v4, 0x2

    #@24
    aput-object v3, v2, v4

    #@26
    .line 963
    new-instance v3, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer$TimeBucket;

    #@28
    const/16 v4, 0x1e

    #@2a
    const/16 v5, 0x37

    #@2c
    invoke-direct {v3, p0, v4, v6, v5}, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer$TimeBucket;-><init>(Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;III)V

    #@2f
    const/4 v4, 0x3

    #@30
    aput-object v3, v2, v4

    #@32
    .line 964
    new-instance v3, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer$TimeBucket;

    #@34
    const/16 v4, 0x3c

    #@36
    const/16 v5, 0x37

    #@38
    const/16 v6, 0xf0

    #@3a
    invoke-direct {v3, p0, v4, v5, v6}, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer$TimeBucket;-><init>(Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;III)V

    #@3d
    const/4 v4, 0x4

    #@3e
    aput-object v3, v2, v4

    #@40
    .line 965
    new-instance v3, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer$TimeBucket;

    #@42
    const/16 v4, 0x12c

    #@44
    const/16 v5, 0xf0

    #@46
    const/16 v6, 0x1f4

    #@48
    invoke-direct {v3, p0, v4, v5, v6}, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer$TimeBucket;-><init>(Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;III)V

    #@4b
    aput-object v3, v2, v8

    #@4d
    .line 966
    new-instance v3, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer$TimeBucket;

    #@4f
    const/16 v4, 0x258

    #@51
    const/16 v5, 0x1f4

    #@53
    const/16 v6, 0x5dc

    #@55
    invoke-direct {v3, p0, v4, v5, v6}, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer$TimeBucket;-><init>(Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;III)V

    #@58
    const/4 v4, 0x6

    #@59
    aput-object v3, v2, v4

    #@5b
    .line 967
    new-instance v3, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer$TimeBucket;

    #@5d
    const/16 v4, 0x708

    #@5f
    const/16 v5, 0x5dc

    #@61
    const v6, 0xfa000

    #@64
    invoke-direct {v3, p0, v4, v5, v6}, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer$TimeBucket;-><init>(Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;III)V

    #@67
    const/4 v4, 0x7

    #@68
    aput-object v3, v2, v4

    #@6a
    .line 959
    iput-object v2, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->mTimeBuckets:[Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer$TimeBucket;

    #@6c
    .line 976
    new-instance v2, Lcom/android/server/wifi/WifiNative$ScanSettings;

    #@6e
    invoke-direct {v2}, Lcom/android/server/wifi/WifiNative$ScanSettings;-><init>()V

    #@71
    iput-object v2, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->mSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    #@73
    .line 977
    iget-object v2, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->mSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    #@75
    iget-object v3, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    #@77
    invoke-static {v3}, Lcom/android/server/wifi/WifiScanningServiceImpl;->-get5(Lcom/android/server/wifi/WifiScanningServiceImpl;)Lcom/android/server/wifi/WifiNative$ScanCapabilities;

    #@7a
    move-result-object v3

    #@7b
    iget v3, v3, Lcom/android/server/wifi/WifiNative$ScanCapabilities;->max_ap_cache_per_scan:I

    #@7d
    iput v3, v2, Lcom/android/server/wifi/WifiNative$ScanSettings;->max_ap_per_scan:I

    #@7f
    .line 978
    iget-object v2, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->mSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    #@81
    const/16 v3, 0x1388

    #@83
    iput v3, v2, Lcom/android/server/wifi/WifiNative$ScanSettings;->base_period_ms:I

    #@85
    .line 979
    iget-object v2, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->mSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    #@87
    const/16 v3, 0x64

    #@89
    iput v3, v2, Lcom/android/server/wifi/WifiNative$ScanSettings;->report_threshold_percent:I

    #@8b
    .line 980
    iget-object v2, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->mSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    #@8d
    iput v9, v2, Lcom/android/server/wifi/WifiNative$ScanSettings;->report_threshold_num_scans:I

    #@8f
    .line 982
    iget-object v2, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->mSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    #@91
    iget-object v3, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    #@93
    invoke-static {v3}, Lcom/android/server/wifi/WifiScanningServiceImpl;->-get5(Lcom/android/server/wifi/WifiScanningServiceImpl;)Lcom/android/server/wifi/WifiNative$ScanCapabilities;

    #@96
    move-result-object v3

    #@97
    iget v3, v3, Lcom/android/server/wifi/WifiNative$ScanCapabilities;->max_scan_buckets:I

    #@99
    new-array v3, v3, [Lcom/android/server/wifi/WifiNative$BucketSettings;

    #@9b
    iput-object v3, v2, Lcom/android/server/wifi/WifiNative$ScanSettings;->buckets:[Lcom/android/server/wifi/WifiNative$BucketSettings;

    #@9d
    .line 983
    const/4 v1, 0x0

    #@9e
    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->mSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    #@a0
    iget-object v2, v2, Lcom/android/server/wifi/WifiNative$ScanSettings;->buckets:[Lcom/android/server/wifi/WifiNative$BucketSettings;

    #@a2
    array-length v2, v2

    #@a3
    if-ge v1, v2, :cond_0

    #@a5
    .line 984
    new-instance v0, Lcom/android/server/wifi/WifiNative$BucketSettings;

    #@a7
    invoke-direct {v0}, Lcom/android/server/wifi/WifiNative$BucketSettings;-><init>()V

    #@aa
    .line 985
    .local v0, "bucketSettings":Lcom/android/server/wifi/WifiNative$BucketSettings;
    iput v1, v0, Lcom/android/server/wifi/WifiNative$BucketSettings;->bucket:I

    #@ac
    .line 986
    iput v7, v0, Lcom/android/server/wifi/WifiNative$BucketSettings;->report_events:I

    #@ae
    .line 987
    const/16 v2, 0x20

    #@b0
    new-array v2, v2, [Lcom/android/server/wifi/WifiNative$ChannelSettings;

    #@b2
    iput-object v2, v0, Lcom/android/server/wifi/WifiNative$BucketSettings;->channels:[Lcom/android/server/wifi/WifiNative$ChannelSettings;

    #@b4
    .line 988
    iput v7, v0, Lcom/android/server/wifi/WifiNative$BucketSettings;->num_channels:I

    #@b6
    .line 989
    iget-object v2, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->mSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    #@b8
    iget-object v2, v2, Lcom/android/server/wifi/WifiNative$ScanSettings;->buckets:[Lcom/android/server/wifi/WifiNative$BucketSettings;

    #@ba
    aput-object v0, v2, v1

    #@bc
    .line 983
    add-int/lit8 v1, v1, 0x1

    #@be
    goto :goto_0

    #@bf
    .line 993
    .end local v0    # "bucketSettings":Lcom/android/server/wifi/WifiNative$BucketSettings;
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    #@c1
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    #@c4
    iput-object v2, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->mChannelToBucketMap:Ljava/util/HashMap;

    #@c6
    .line 945
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wifi/WifiScanningServiceImpl;Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiScanningServiceImpl;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;-><init>(Lcom/android/server/wifi/WifiScanningServiceImpl;)V

    #@3
    return-void
.end method

.method private getBestBucket(Landroid/net/wifi/WifiScanner$ScanSettings;)I
    .locals 13
    .param p1, "settings"    # Landroid/net/wifi/WifiScanner$ScanSettings;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    const/4 v12, -0x1

    #@2
    .line 1001
    iget-object v3, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@4
    .line 1002
    .local v3, "channels":[Landroid/net/wifi/WifiScanner$ChannelSpec;
    if-nez v3, :cond_0

    #@6
    .line 1004
    iget v7, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    #@8
    invoke-static {v7}, Lcom/android/server/wifi/WifiScanningServiceImpl;->-wrap0(I)[Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@b
    move-result-object v3

    #@c
    .line 1007
    :cond_0
    if-nez v3, :cond_1

    #@e
    .line 1009
    const-string/jumbo v7, "No channels to scan!!"

    #@11
    invoke-static {v7}, Lcom/android/server/wifi/WifiScanningServiceImpl;->-wrap5(Ljava/lang/String;)V

    #@14
    .line 1010
    return v12

    #@15
    .line 1013
    :cond_1
    iget-object v7, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->mTimeBuckets:[Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer$TimeBucket;

    #@17
    array-length v6, v7

    #@18
    .line 1015
    .local v6, "mostFrequentBucketIndex":I
    array-length v10, v3

    #@19
    move v9, v8

    #@1a
    :goto_0
    if-ge v9, v10, :cond_3

    #@1c
    aget-object v4, v3, v9

    #@1e
    .line 1016
    .local v4, "desiredChannelSpec":Landroid/net/wifi/WifiScanner$ChannelSpec;
    iget-object v7, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->mChannelToBucketMap:Ljava/util/HashMap;

    #@20
    iget v11, v4, Landroid/net/wifi/WifiScanner$ChannelSpec;->frequency:I

    #@22
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@25
    move-result-object v11

    #@26
    invoke-virtual {v7, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@29
    move-result v7

    #@2a
    if-eqz v7, :cond_2

    #@2c
    .line 1017
    iget-object v7, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->mChannelToBucketMap:Ljava/util/HashMap;

    #@2e
    iget v11, v4, Landroid/net/wifi/WifiScanner$ChannelSpec;->frequency:I

    #@30
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@33
    move-result-object v11

    #@34
    invoke-virtual {v7, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@37
    move-result-object v7

    #@38
    check-cast v7, Ljava/lang/Integer;

    #@3a
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    #@3d
    move-result v1

    #@3e
    .line 1018
    .local v1, "bucket":I
    if-ge v1, v6, :cond_2

    #@40
    .line 1019
    move v6, v1

    #@41
    .line 1015
    .end local v1    # "bucket":I
    :cond_2
    add-int/lit8 v7, v9, 0x1

    #@43
    move v9, v7

    #@44
    goto :goto_0

    #@45
    .line 1024
    .end local v4    # "desiredChannelSpec":Landroid/net/wifi/WifiScanner$ChannelSpec;
    :cond_3
    const/4 v0, -0x1

    #@46
    .line 1025
    .local v0, "bestBucketIndex":I
    const/4 v5, 0x0

    #@47
    .local v5, "i":I
    :goto_1
    iget-object v7, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->mTimeBuckets:[Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer$TimeBucket;

    #@49
    array-length v7, v7

    #@4a
    if-ge v5, v7, :cond_4

    #@4c
    .line 1026
    iget-object v7, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->mTimeBuckets:[Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer$TimeBucket;

    #@4e
    aget-object v2, v7, v5

    #@50
    .line 1027
    .local v2, "bucket":Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer$TimeBucket;
    iget v7, v2, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer$TimeBucket;->periodMinInSecond:I

    #@52
    mul-int/lit16 v7, v7, 0x3e8

    #@54
    iget v9, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    #@56
    if-gt v7, v9, :cond_5

    #@58
    .line 1028
    iget v7, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    #@5a
    iget v9, v2, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer$TimeBucket;->periodMaxInSecond:I

    #@5c
    mul-int/lit16 v9, v9, 0x3e8

    #@5e
    if-ge v7, v9, :cond_5

    #@60
    .line 1030
    move v0, v5

    #@61
    .line 1035
    .end local v2    # "bucket":Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer$TimeBucket;
    :cond_4
    if-ge v6, v0, :cond_7

    #@63
    .line 1036
    array-length v7, v3

    #@64
    :goto_2
    if-ge v8, v7, :cond_6

    #@66
    aget-object v4, v3, v8

    #@68
    .line 1037
    .restart local v4    # "desiredChannelSpec":Landroid/net/wifi/WifiScanner$ChannelSpec;
    iget-object v9, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->mChannelToBucketMap:Ljava/util/HashMap;

    #@6a
    iget v10, v4, Landroid/net/wifi/WifiScanner$ChannelSpec;->frequency:I

    #@6c
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6f
    move-result-object v10

    #@70
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@73
    move-result-object v11

    #@74
    invoke-virtual {v9, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@77
    .line 1036
    add-int/lit8 v8, v8, 0x1

    #@79
    goto :goto_2

    #@7a
    .line 1025
    .end local v4    # "desiredChannelSpec":Landroid/net/wifi/WifiScanner$ChannelSpec;
    .restart local v2    # "bucket":Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer$TimeBucket;
    :cond_5
    add-int/lit8 v5, v5, 0x1

    #@7c
    goto :goto_1

    #@7d
    .line 1039
    .end local v2    # "bucket":Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer$TimeBucket;
    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    #@7f
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@82
    const-string/jumbo v8, "returning mf bucket number "

    #@85
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v7

    #@89
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v7

    #@8d
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@90
    move-result-object v7

    #@91
    invoke-static {v7}, Lcom/android/server/wifi/WifiScanningServiceImpl;->-wrap4(Ljava/lang/String;)V

    #@94
    .line 1040
    return v6

    #@95
    .line 1041
    :cond_7
    if-eq v0, v12, :cond_9

    #@97
    .line 1042
    array-length v9, v3

    #@98
    move v7, v8

    #@99
    :goto_3
    if-ge v7, v9, :cond_8

    #@9b
    aget-object v4, v3, v7

    #@9d
    .line 1043
    .restart local v4    # "desiredChannelSpec":Landroid/net/wifi/WifiScanner$ChannelSpec;
    iget-object v8, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->mChannelToBucketMap:Ljava/util/HashMap;

    #@9f
    iget v10, v4, Landroid/net/wifi/WifiScanner$ChannelSpec;->frequency:I

    #@a1
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@a4
    move-result-object v10

    #@a5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@a8
    move-result-object v11

    #@a9
    invoke-virtual {v8, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@ac
    .line 1042
    add-int/lit8 v7, v7, 0x1

    #@ae
    goto :goto_3

    #@af
    .line 1045
    .end local v4    # "desiredChannelSpec":Landroid/net/wifi/WifiScanner$ChannelSpec;
    :cond_8
    new-instance v7, Ljava/lang/StringBuilder;

    #@b1
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@b4
    const-string/jumbo v8, "returning best bucket number "

    #@b7
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ba
    move-result-object v7

    #@bb
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@be
    move-result-object v7

    #@bf
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c2
    move-result-object v7

    #@c3
    invoke-static {v7}, Lcom/android/server/wifi/WifiScanningServiceImpl;->-wrap4(Ljava/lang/String;)V

    #@c6
    .line 1046
    return v0

    #@c7
    .line 1049
    :cond_9
    new-instance v7, Ljava/lang/StringBuilder;

    #@c9
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@cc
    const-string/jumbo v8, "Could not find suitable bucket for period "

    #@cf
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d2
    move-result-object v7

    #@d3
    iget v8, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    #@d5
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@d8
    move-result-object v7

    #@d9
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@dc
    move-result-object v7

    #@dd
    invoke-static {v7}, Lcom/android/server/wifi/WifiScanningServiceImpl;->-wrap5(Ljava/lang/String;)V

    #@e0
    .line 1050
    return v12
.end method


# virtual methods
.method addScanRequestToBucket(Landroid/net/wifi/WifiScanner$ScanSettings;)I
    .locals 14
    .param p1, "settings"    # Landroid/net/wifi/WifiScanner$ScanSettings;

    #@0
    .prologue
    .line 1059
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->getBestBucket(Landroid/net/wifi/WifiScanner$ScanSettings;)I

    #@3
    move-result v2

    #@4
    .line 1060
    .local v2, "bucketIndex":I
    const/4 v10, -0x1

    #@5
    if-ne v2, v10, :cond_0

    #@7
    .line 1061
    const-string/jumbo v10, "Ignoring invalid settings"

    #@a
    invoke-static {v10}, Lcom/android/server/wifi/WifiScanningServiceImpl;->-wrap5(Ljava/lang/String;)V

    #@d
    .line 1062
    const/4 v10, -0x1

    #@e
    return v10

    #@f
    .line 1065
    :cond_0
    iget-object v6, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@11
    .line 1066
    .local v6, "desiredChannels":[Landroid/net/wifi/WifiScanner$ChannelSpec;
    iget v10, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    #@13
    if-nez v10, :cond_1

    #@15
    .line 1067
    if-nez v6, :cond_2

    #@17
    .line 1070
    :cond_1
    iget v10, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    #@19
    invoke-static {v10}, Lcom/android/server/wifi/WifiScanningServiceImpl;->-wrap0(I)[Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@1c
    move-result-object v6

    #@1d
    .line 1071
    if-nez v6, :cond_3

    #@1f
    .line 1073
    const-string/jumbo v10, "No channels to scan!!"

    #@22
    invoke-static {v10}, Lcom/android/server/wifi/WifiScanningServiceImpl;->-wrap5(Ljava/lang/String;)V

    #@25
    .line 1074
    const/4 v10, -0x1

    #@26
    return v10

    #@27
    .line 1068
    :cond_2
    array-length v10, v6

    #@28
    if-eqz v10, :cond_1

    #@2a
    .line 1079
    :cond_3
    new-instance v10, Ljava/lang/StringBuilder;

    #@2c
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@2f
    const-string/jumbo v11, "merging "

    #@32
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v10

    #@36
    array-length v11, v6

    #@37
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v10

    #@3b
    const-string/jumbo v11, " channels "

    #@3e
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v10

    #@42
    .line 1080
    const-string/jumbo v11, " for period "

    #@45
    .line 1079
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v10

    #@49
    .line 1080
    iget v11, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    #@4b
    .line 1079
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v10

    #@4f
    .line 1081
    const-string/jumbo v11, " maxScans "

    #@52
    .line 1079
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v10

    #@56
    .line 1081
    iget v11, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->maxScansToCache:I

    #@58
    .line 1079
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v10

    #@5c
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5f
    move-result-object v10

    #@60
    invoke-static {v10}, Lcom/android/server/wifi/WifiScanningServiceImpl;->-wrap4(Ljava/lang/String;)V

    #@63
    .line 1083
    iget-object v10, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->mSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    #@65
    iget-object v10, v10, Lcom/android/server/wifi/WifiNative$ScanSettings;->buckets:[Lcom/android/server/wifi/WifiNative$BucketSettings;

    #@67
    aget-object v1, v10, v2

    #@69
    .line 1084
    .local v1, "bucket":Lcom/android/server/wifi/WifiNative$BucketSettings;
    iget v10, v1, Lcom/android/server/wifi/WifiNative$BucketSettings;->num_channels:I

    #@6b
    if-nez v10, :cond_7

    #@6d
    .line 1085
    iget v10, v1, Lcom/android/server/wifi/WifiNative$BucketSettings;->band:I

    #@6f
    if-nez v10, :cond_6

    #@71
    const/4 v0, 0x1

    #@72
    .line 1086
    .local v0, "added":Z
    :goto_0
    new-instance v10, Ljava/lang/StringBuilder;

    #@74
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@77
    const-string/jumbo v11, "existing "

    #@7a
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v10

    #@7e
    iget v11, v1, Lcom/android/server/wifi/WifiNative$BucketSettings;->num_channels:I

    #@80
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@83
    move-result-object v10

    #@84
    const-string/jumbo v11, " channels "

    #@87
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v10

    #@8b
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8e
    move-result-object v10

    #@8f
    invoke-static {v10}, Lcom/android/server/wifi/WifiScanningServiceImpl;->-wrap4(Ljava/lang/String;)V

    #@92
    .line 1088
    new-instance v9, Ljava/util/HashSet;

    #@94
    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    #@97
    .line 1089
    .local v9, "newChannels":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/net/wifi/WifiScanner$ChannelSpec;>;"
    const/4 v10, 0x0

    #@98
    array-length v11, v6

    #@99
    :goto_1
    if-ge v10, v11, :cond_9

    #@9b
    aget-object v4, v6, v10

    #@9d
    .line 1093
    .local v4, "desiredChannelSpec":Landroid/net/wifi/WifiScanner$ChannelSpec;
    const/4 v7, 0x0

    #@9e
    .line 1094
    .local v7, "found":Z
    const/4 v8, 0x0

    #@9f
    .local v8, "i":I
    :goto_2
    iget v12, v1, Lcom/android/server/wifi/WifiNative$BucketSettings;->num_channels:I

    #@a1
    if-ge v8, v12, :cond_4

    #@a3
    .line 1095
    iget v12, v4, Landroid/net/wifi/WifiScanner$ChannelSpec;->frequency:I

    #@a5
    iget-object v13, v1, Lcom/android/server/wifi/WifiNative$BucketSettings;->channels:[Lcom/android/server/wifi/WifiNative$ChannelSettings;

    #@a7
    aget-object v13, v13, v8

    #@a9
    iget v13, v13, Lcom/android/server/wifi/WifiNative$ChannelSettings;->frequency:I

    #@ab
    if-ne v12, v13, :cond_8

    #@ad
    .line 1096
    const/4 v7, 0x1

    #@ae
    .line 1101
    :cond_4
    if-nez v7, :cond_5

    #@b0
    .line 1102
    invoke-virtual {v9, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@b3
    .line 1089
    :cond_5
    add-int/lit8 v10, v10, 0x1

    #@b5
    goto :goto_1

    #@b6
    .line 1085
    .end local v0    # "added":Z
    .end local v4    # "desiredChannelSpec":Landroid/net/wifi/WifiScanner$ChannelSpec;
    .end local v7    # "found":Z
    .end local v8    # "i":I
    .end local v9    # "newChannels":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/net/wifi/WifiScanner$ChannelSpec;>;"
    :cond_6
    const/4 v0, 0x0

    #@b7
    .restart local v0    # "added":Z
    goto :goto_0

    #@b8
    .line 1084
    .end local v0    # "added":Z
    :cond_7
    const/4 v0, 0x0

    #@b9
    .restart local v0    # "added":Z
    goto :goto_0

    #@ba
    .line 1094
    .restart local v4    # "desiredChannelSpec":Landroid/net/wifi/WifiScanner$ChannelSpec;
    .restart local v7    # "found":Z
    .restart local v8    # "i":I
    .restart local v9    # "newChannels":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/net/wifi/WifiScanner$ChannelSpec;>;"
    :cond_8
    add-int/lit8 v8, v8, 0x1

    #@bc
    goto :goto_2

    #@bd
    .line 1108
    .end local v4    # "desiredChannelSpec":Landroid/net/wifi/WifiScanner$ChannelSpec;
    .end local v7    # "found":Z
    .end local v8    # "i":I
    :cond_9
    iget v10, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    #@bf
    if-nez v10, :cond_a

    #@c1
    .line 1109
    iget v10, v1, Lcom/android/server/wifi/WifiNative$BucketSettings;->num_channels:I

    #@c3
    invoke-virtual {v9}, Ljava/util/HashSet;->size()I

    #@c6
    move-result v11

    #@c7
    add-int/2addr v10, v11

    #@c8
    iget-object v11, v1, Lcom/android/server/wifi/WifiNative$BucketSettings;->channels:[Lcom/android/server/wifi/WifiNative$ChannelSettings;

    #@ca
    array-length v11, v11

    #@cb
    if-le v10, v11, :cond_10

    #@cd
    .line 1111
    :cond_a
    const/4 v10, 0x0

    #@ce
    iput v10, v1, Lcom/android/server/wifi/WifiNative$BucketSettings;->num_channels:I

    #@d0
    .line 1112
    iget-object v10, v1, Lcom/android/server/wifi/WifiNative$BucketSettings;->channels:[Lcom/android/server/wifi/WifiNative$ChannelSettings;

    #@d2
    invoke-static {v10}, Lcom/android/server/wifi/WifiScanningServiceImpl;->-wrap2([Lcom/android/server/wifi/WifiNative$ChannelSettings;)I

    #@d5
    move-result v10

    #@d6
    .line 1113
    invoke-static {v6}, Lcom/android/server/wifi/WifiScanningServiceImpl;->-wrap1([Landroid/net/wifi/WifiScanner$ChannelSpec;)I

    #@d9
    move-result v11

    #@da
    .line 1112
    or-int/2addr v10, v11

    #@db
    iput v10, v1, Lcom/android/server/wifi/WifiNative$BucketSettings;->band:I

    #@dd
    .line 1114
    const/4 v10, 0x0

    #@de
    new-array v10, v10, [Lcom/android/server/wifi/WifiNative$ChannelSettings;

    #@e0
    iput-object v10, v1, Lcom/android/server/wifi/WifiNative$BucketSettings;->channels:[Lcom/android/server/wifi/WifiNative$ChannelSettings;

    #@e2
    .line 1115
    new-instance v10, Ljava/lang/StringBuilder;

    #@e4
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@e7
    const-string/jumbo v11, "switching to using band "

    #@ea
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ed
    move-result-object v10

    #@ee
    iget v11, v1, Lcom/android/server/wifi/WifiNative$BucketSettings;->band:I

    #@f0
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f3
    move-result-object v10

    #@f4
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f7
    move-result-object v10

    #@f8
    invoke-static {v10}, Lcom/android/server/wifi/WifiScanningServiceImpl;->-wrap4(Ljava/lang/String;)V

    #@fb
    .line 1129
    :cond_b
    iget v10, v1, Lcom/android/server/wifi/WifiNative$BucketSettings;->report_events:I

    #@fd
    iget v11, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->reportEvents:I

    #@ff
    if-ge v10, v11, :cond_c

    #@101
    .line 1131
    iget v10, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->reportEvents:I

    #@103
    iput v10, v1, Lcom/android/server/wifi/WifiNative$BucketSettings;->report_events:I

    #@105
    .line 1136
    :cond_c
    if-eqz v0, :cond_d

    #@107
    .line 1137
    iget-object v10, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->mTimeBuckets:[Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer$TimeBucket;

    #@109
    aget-object v10, v10, v2

    #@10b
    iget v10, v10, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer$TimeBucket;->periodInSecond:I

    #@10d
    mul-int/lit16 v10, v10, 0x3e8

    #@10f
    iput v10, v1, Lcom/android/server/wifi/WifiNative$BucketSettings;->period_ms:I

    #@111
    .line 1138
    iget-object v10, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->mSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    #@113
    iget v11, v10, Lcom/android/server/wifi/WifiNative$ScanSettings;->num_buckets:I

    #@115
    add-int/lit8 v11, v11, 0x1

    #@117
    iput v11, v10, Lcom/android/server/wifi/WifiNative$ScanSettings;->num_buckets:I

    #@119
    .line 1141
    :cond_d
    iget v10, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->numBssidsPerScan:I

    #@11b
    if-eqz v10, :cond_e

    #@11d
    .line 1142
    iget-object v10, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->mSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    #@11f
    iget v10, v10, Lcom/android/server/wifi/WifiNative$ScanSettings;->max_ap_per_scan:I

    #@121
    iget v11, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->numBssidsPerScan:I

    #@123
    if-le v10, v11, :cond_e

    #@125
    .line 1143
    iget-object v10, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->mSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    #@127
    iget v11, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->numBssidsPerScan:I

    #@129
    iput v11, v10, Lcom/android/server/wifi/WifiNative$ScanSettings;->max_ap_per_scan:I

    #@12b
    .line 1147
    :cond_e
    iget v10, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->maxScansToCache:I

    #@12d
    if-eqz v10, :cond_f

    #@12f
    .line 1148
    iget-object v10, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->mSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    #@131
    iget v10, v10, Lcom/android/server/wifi/WifiNative$ScanSettings;->report_threshold_num_scans:I

    #@133
    iget v11, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->maxScansToCache:I

    #@135
    if-le v10, v11, :cond_f

    #@137
    .line 1149
    iget-object v10, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->mSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    #@139
    iget v11, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->maxScansToCache:I

    #@13b
    iput v11, v10, Lcom/android/server/wifi/WifiNative$ScanSettings;->report_threshold_num_scans:I

    #@13d
    .line 1153
    :cond_f
    iget v10, v1, Lcom/android/server/wifi/WifiNative$BucketSettings;->period_ms:I

    #@13f
    return v10

    #@140
    .line 1117
    :cond_10
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@143
    move-result-object v5

    #@144
    .local v5, "desiredChannelSpec$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@147
    move-result v10

    #@148
    if-eqz v10, :cond_b

    #@14a
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14d
    move-result-object v4

    #@14e
    check-cast v4, Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@150
    .line 1119
    .restart local v4    # "desiredChannelSpec":Landroid/net/wifi/WifiScanner$ChannelSpec;
    new-instance v10, Ljava/lang/StringBuilder;

    #@152
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@155
    const-string/jumbo v11, "adding new channel spec "

    #@158
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15b
    move-result-object v10

    #@15c
    iget v11, v4, Landroid/net/wifi/WifiScanner$ChannelSpec;->frequency:I

    #@15e
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@161
    move-result-object v10

    #@162
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@165
    move-result-object v10

    #@166
    invoke-static {v10}, Lcom/android/server/wifi/WifiScanningServiceImpl;->-wrap4(Ljava/lang/String;)V

    #@169
    .line 1121
    new-instance v3, Lcom/android/server/wifi/WifiNative$ChannelSettings;

    #@16b
    invoke-direct {v3}, Lcom/android/server/wifi/WifiNative$ChannelSettings;-><init>()V

    #@16e
    .line 1122
    .local v3, "channelSettings":Lcom/android/server/wifi/WifiNative$ChannelSettings;
    iget v10, v4, Landroid/net/wifi/WifiScanner$ChannelSpec;->frequency:I

    #@170
    iput v10, v3, Lcom/android/server/wifi/WifiNative$ChannelSettings;->frequency:I

    #@172
    .line 1123
    iget-object v10, v1, Lcom/android/server/wifi/WifiNative$BucketSettings;->channels:[Lcom/android/server/wifi/WifiNative$ChannelSettings;

    #@174
    iget v11, v1, Lcom/android/server/wifi/WifiNative$BucketSettings;->num_channels:I

    #@176
    aput-object v3, v10, v11

    #@178
    .line 1124
    iget v10, v1, Lcom/android/server/wifi/WifiNative$BucketSettings;->num_channels:I

    #@17a
    add-int/lit8 v10, v10, 0x1

    #@17c
    iput v10, v1, Lcom/android/server/wifi/WifiNative$BucketSettings;->num_channels:I

    #@17e
    .line 1125
    iget-object v10, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->mChannelToBucketMap:Ljava/util/HashMap;

    #@180
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@183
    move-result-object v11

    #@184
    iget v12, v3, Lcom/android/server/wifi/WifiNative$ChannelSettings;->frequency:I

    #@186
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@189
    move-result-object v12

    #@18a
    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@18d
    goto :goto_3
.end method

.method public compressBuckets()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1161
    const/4 v1, 0x0

    #@2
    .line 1162
    .local v1, "num_buckets":I
    const/4 v0, 0x0

    #@3
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->mSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    #@5
    iget-object v2, v2, Lcom/android/server/wifi/WifiNative$ScanSettings;->buckets:[Lcom/android/server/wifi/WifiNative$BucketSettings;

    #@7
    array-length v2, v2

    #@8
    if-ge v0, v2, :cond_2

    #@a
    .line 1163
    iget-object v2, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->mSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    #@c
    iget-object v2, v2, Lcom/android/server/wifi/WifiNative$ScanSettings;->buckets:[Lcom/android/server/wifi/WifiNative$BucketSettings;

    #@e
    aget-object v2, v2, v0

    #@10
    iget v2, v2, Lcom/android/server/wifi/WifiNative$BucketSettings;->num_channels:I

    #@12
    if-nez v2, :cond_0

    #@14
    .line 1164
    iget-object v2, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->mSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    #@16
    iget-object v2, v2, Lcom/android/server/wifi/WifiNative$ScanSettings;->buckets:[Lcom/android/server/wifi/WifiNative$BucketSettings;

    #@18
    aget-object v2, v2, v0

    #@1a
    iget v2, v2, Lcom/android/server/wifi/WifiNative$BucketSettings;->band:I

    #@1c
    if-eqz v2, :cond_1

    #@1e
    .line 1165
    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->mSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    #@20
    iget-object v2, v2, Lcom/android/server/wifi/WifiNative$ScanSettings;->buckets:[Lcom/android/server/wifi/WifiNative$BucketSettings;

    #@22
    iget-object v3, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->mSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    #@24
    iget-object v3, v3, Lcom/android/server/wifi/WifiNative$ScanSettings;->buckets:[Lcom/android/server/wifi/WifiNative$BucketSettings;

    #@26
    aget-object v3, v3, v0

    #@28
    aput-object v3, v2, v1

    #@2a
    .line 1166
    add-int/lit8 v1, v1, 0x1

    #@2c
    .line 1162
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@2e
    goto :goto_0

    #@2f
    .line 1170
    :cond_2
    move v0, v1

    #@30
    :goto_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->mSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    #@32
    iget-object v2, v2, Lcom/android/server/wifi/WifiNative$ScanSettings;->buckets:[Lcom/android/server/wifi/WifiNative$BucketSettings;

    #@34
    array-length v2, v2

    #@35
    if-ge v0, v2, :cond_3

    #@37
    .line 1171
    iget-object v2, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->mSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    #@39
    iget-object v2, v2, Lcom/android/server/wifi/WifiNative$ScanSettings;->buckets:[Lcom/android/server/wifi/WifiNative$BucketSettings;

    #@3b
    const/4 v3, 0x0

    #@3c
    aput-object v3, v2, v0

    #@3e
    .line 1170
    add-int/lit8 v0, v0, 0x1

    #@40
    goto :goto_1

    #@41
    .line 1174
    :cond_3
    iget-object v2, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->mSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    #@43
    iput v1, v2, Lcom/android/server/wifi/WifiNative$ScanSettings;->num_buckets:I

    #@45
    .line 1175
    if-eqz v1, :cond_4

    #@47
    .line 1176
    iget-object v2, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->mSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    #@49
    iget-object v3, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->mSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    #@4b
    iget-object v3, v3, Lcom/android/server/wifi/WifiNative$ScanSettings;->buckets:[Lcom/android/server/wifi/WifiNative$BucketSettings;

    #@4d
    aget-object v3, v3, v4

    #@4f
    iget v3, v3, Lcom/android/server/wifi/WifiNative$BucketSettings;->period_ms:I

    #@51
    iput v3, v2, Lcom/android/server/wifi/WifiNative$ScanSettings;->base_period_ms:I

    #@53
    .line 1160
    :cond_4
    return-void
.end method

.method public getComputedSettings()Lcom/android/server/wifi/WifiNative$ScanSettings;
    .locals 1

    #@0
    .prologue
    .line 1157
    iget-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->mSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    #@2
    return-object v0
.end method

.method prepChannelMap(Landroid/net/wifi/WifiScanner$ScanSettings;)V
    .locals 0
    .param p1, "settings"    # Landroid/net/wifi/WifiScanner$ScanSettings;

    #@0
    .prologue
    .line 1054
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->getBestBucket(Landroid/net/wifi/WifiScanner$ScanSettings;)I

    #@3
    .line 1053
    return-void
.end method
