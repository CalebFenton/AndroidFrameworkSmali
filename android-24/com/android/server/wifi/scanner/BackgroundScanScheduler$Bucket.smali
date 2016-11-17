.class Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;
.super Ljava/lang/Object;
.source "BackgroundScanScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/scanner/BackgroundScanScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Bucket"
.end annotation


# instance fields
.field public bucketId:I

.field private final mChannelCollection:Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;

.field private final mScanSettingsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiScanner$ScanSettings;",
            ">;"
        }
    .end annotation
.end field

.field public period:I

.field final synthetic this$0:Lcom/android/server/wifi/scanner/BackgroundScanScheduler;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/scanner/BackgroundScanScheduler;I)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/wifi/scanner/BackgroundScanScheduler;
    .param p2, "period"    # I

    #@0
    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->this$0:Lcom/android/server/wifi/scanner/BackgroundScanScheduler;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 134
    new-instance v0, Ljava/util/ArrayList;

    #@7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@a
    iput-object v0, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->mScanSettingsList:Ljava/util/List;

    #@c
    .line 138
    iput p2, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->period:I

    #@e
    .line 139
    const/4 v0, 0x0

    #@f
    iput v0, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->bucketId:I

    #@11
    .line 140
    iget-object v0, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->mScanSettingsList:Ljava/util/List;

    #@13
    invoke-interface {v0}, Ljava/util/List;->clear()V

    #@16
    .line 141
    invoke-static {p1}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->-get3(Lcom/android/server/wifi/scanner/BackgroundScanScheduler;)Lcom/android/server/wifi/scanner/ChannelHelper;

    #@19
    move-result-object v0

    #@1a
    invoke-virtual {v0}, Lcom/android/server/wifi/scanner/ChannelHelper;->createChannelCollection()Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;

    #@1d
    move-result-object v0

    #@1e
    iput-object v0, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->mChannelCollection:Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;

    #@20
    .line 137
    return-void
.end method

.method constructor <init>(Lcom/android/server/wifi/scanner/BackgroundScanScheduler;Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/server/wifi/scanner/BackgroundScanScheduler;
    .param p2, "originalBucket"    # Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;

    #@0
    .prologue
    .line 148
    iget v2, p2, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->period:I

    #@2
    invoke-direct {p0, p1, v2}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;-><init>(Lcom/android/server/wifi/scanner/BackgroundScanScheduler;I)V

    #@5
    .line 149
    invoke-virtual {p2}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->getSettingsList()Ljava/util/List;

    #@8
    move-result-object v2

    #@9
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@c
    move-result-object v1

    #@d
    .local v1, "settings$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@10
    move-result v2

    #@11
    if-eqz v2, :cond_0

    #@13
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Landroid/net/wifi/WifiScanner$ScanSettings;

    #@19
    .line 150
    .local v0, "settings":Landroid/net/wifi/WifiScanner$ScanSettings;
    iget-object v2, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->mScanSettingsList:Ljava/util/List;

    #@1b
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@1e
    goto :goto_0

    #@1f
    .line 147
    .end local v0    # "settings":Landroid/net/wifi/WifiScanner$ScanSettings;
    :cond_0
    return-void
.end method

.method private createChannelSettings(I)Lcom/android/server/wifi/WifiNative$ChannelSettings;
    .locals 1
    .param p1, "frequency"    # I

    #@0
    .prologue
    .line 158
    new-instance v0, Lcom/android/server/wifi/WifiNative$ChannelSettings;

    #@2
    invoke-direct {v0}, Lcom/android/server/wifi/WifiNative$ChannelSettings;-><init>()V

    #@5
    .line 159
    .local v0, "channelSettings":Lcom/android/server/wifi/WifiNative$ChannelSettings;
    iput p1, v0, Lcom/android/server/wifi/WifiNative$ChannelSettings;->frequency:I

    #@7
    .line 160
    return-object v0
.end method


# virtual methods
.method public addSettings(Landroid/net/wifi/WifiScanner$ScanSettings;)Z
    .locals 1
    .param p1, "scanSettings"    # Landroid/net/wifi/WifiScanner$ScanSettings;

    #@0
    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->mChannelCollection:Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;->addChannels(Landroid/net/wifi/WifiScanner$ScanSettings;)V

    #@5
    .line 165
    iget-object v0, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->mScanSettingsList:Ljava/util/List;

    #@7
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@a
    move-result v0

    #@b
    return v0
.end method

.method public createBucketSettings(II)Lcom/android/server/wifi/WifiNative$BucketSettings;
    .locals 10
    .param p1, "bucketId"    # I
    .param p2, "maxChannels"    # I

    #@0
    .prologue
    .line 198
    iput p1, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->bucketId:I

    #@2
    .line 199
    const/4 v4, 0x4

    #@3
    .line 200
    .local v4, "reportEvents":I
    const/4 v3, 0x0

    #@4
    .line 201
    .local v3, "maxPeriodInMs":I
    const/4 v7, 0x0

    #@5
    .line 202
    .local v7, "stepCount":I
    const/4 v0, 0x0

    #@6
    .line 204
    .local v0, "bucketIndex":I
    const/4 v2, 0x0

    #@7
    .local v2, "i":I
    :goto_0
    iget-object v8, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->mScanSettingsList:Ljava/util/List;

    #@9
    invoke-interface {v8}, Ljava/util/List;->size()I

    #@c
    move-result v8

    #@d
    if-ge v2, v8, :cond_5

    #@f
    .line 205
    iget-object v8, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->mScanSettingsList:Ljava/util/List;

    #@11
    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@14
    move-result-object v6

    #@15
    check-cast v6, Landroid/net/wifi/WifiScanner$ScanSettings;

    #@17
    .line 206
    .local v6, "setting":Landroid/net/wifi/WifiScanner$ScanSettings;
    iget v5, v6, Landroid/net/wifi/WifiScanner$ScanSettings;->reportEvents:I

    #@19
    .line 207
    .local v5, "requestedReportEvents":I
    and-int/lit8 v8, v5, 0x4

    #@1b
    if-nez v8, :cond_0

    #@1d
    .line 208
    and-int/lit8 v4, v4, -0x5

    #@1f
    .line 210
    :cond_0
    and-int/lit8 v8, v5, 0x1

    #@21
    if-eqz v8, :cond_1

    #@23
    .line 211
    or-int/lit8 v4, v4, 0x1

    #@25
    .line 213
    :cond_1
    and-int/lit8 v8, v5, 0x2

    #@27
    if-eqz v8, :cond_2

    #@29
    .line 214
    or-int/lit8 v4, v4, 0x2

    #@2b
    .line 220
    :cond_2
    if-nez v2, :cond_3

    #@2d
    iget v8, v6, Landroid/net/wifi/WifiScanner$ScanSettings;->maxPeriodInMs:I

    #@2f
    if-eqz v8, :cond_3

    #@31
    .line 221
    iget v8, v6, Landroid/net/wifi/WifiScanner$ScanSettings;->maxPeriodInMs:I

    #@33
    iget v9, v6, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    #@35
    if-eq v8, v9, :cond_3

    #@37
    .line 225
    iget v8, v6, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    #@39
    .line 226
    invoke-static {}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->-get1()I

    #@3c
    move-result v9

    #@3d
    .line 225
    invoke-static {v8, v9}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->-wrap0(II)I

    #@40
    move-result v0

    #@41
    .line 227
    invoke-static {}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->-get2()[I

    #@44
    move-result-object v8

    #@45
    aget v8, v8, v0

    #@47
    iput v8, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->period:I

    #@49
    .line 228
    iget v8, v6, Landroid/net/wifi/WifiScanner$ScanSettings;->maxPeriodInMs:I

    #@4b
    iget v9, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->period:I

    #@4d
    if-ge v8, v9, :cond_4

    #@4f
    .line 229
    iget v3, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->period:I

    #@51
    .line 231
    :goto_1
    iget v7, v6, Landroid/net/wifi/WifiScanner$ScanSettings;->stepCount:I

    #@53
    .line 204
    :cond_3
    add-int/lit8 v2, v2, 0x1

    #@55
    goto :goto_0

    #@56
    .line 230
    :cond_4
    iget v3, v6, Landroid/net/wifi/WifiScanner$ScanSettings;->maxPeriodInMs:I

    #@58
    goto :goto_1

    #@59
    .line 235
    .end local v5    # "requestedReportEvents":I
    .end local v6    # "setting":Landroid/net/wifi/WifiScanner$ScanSettings;
    :cond_5
    new-instance v1, Lcom/android/server/wifi/WifiNative$BucketSettings;

    #@5b
    invoke-direct {v1}, Lcom/android/server/wifi/WifiNative$BucketSettings;-><init>()V

    #@5e
    .line 236
    .local v1, "bucketSettings":Lcom/android/server/wifi/WifiNative$BucketSettings;
    iput p1, v1, Lcom/android/server/wifi/WifiNative$BucketSettings;->bucket:I

    #@60
    .line 237
    iput v4, v1, Lcom/android/server/wifi/WifiNative$BucketSettings;->report_events:I

    #@62
    .line 238
    iget v8, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->period:I

    #@64
    iput v8, v1, Lcom/android/server/wifi/WifiNative$BucketSettings;->period_ms:I

    #@66
    .line 239
    iput v3, v1, Lcom/android/server/wifi/WifiNative$BucketSettings;->max_period_ms:I

    #@68
    .line 240
    iput v7, v1, Lcom/android/server/wifi/WifiNative$BucketSettings;->step_count:I

    #@6a
    .line 241
    iget-object v8, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->mChannelCollection:Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;

    #@6c
    invoke-virtual {v8, v1, p2}, Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;->fillBucketSettings(Lcom/android/server/wifi/WifiNative$BucketSettings;I)V

    #@6f
    .line 242
    return-object v1
.end method

.method public getChannelCollection()Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;
    .locals 1

    #@0
    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->mChannelCollection:Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;

    #@2
    return-object v0
.end method

.method public getSettingsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiScanner$ScanSettings;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->mScanSettingsList:Ljava/util/List;

    #@2
    return-object v0
.end method

.method public removeSettings(Landroid/net/wifi/WifiScanner$ScanSettings;)Z
    .locals 1
    .param p1, "scanSettings"    # Landroid/net/wifi/WifiScanner$ScanSettings;

    #@0
    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->mScanSettingsList:Ljava/util/List;

    #@2
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 173
    invoke-virtual {p0}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->updateChannelCollection()V

    #@b
    .line 174
    const/4 v0, 0x1

    #@c
    return v0

    #@d
    .line 176
    :cond_0
    const/4 v0, 0x0

    #@e
    return v0
.end method

.method public updateChannelCollection()V
    .locals 3

    #@0
    .prologue
    .line 184
    iget-object v2, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->mChannelCollection:Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;

    #@2
    invoke-virtual {v2}, Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;->clear()V

    #@5
    .line 185
    iget-object v2, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->mScanSettingsList:Ljava/util/List;

    #@7
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v1

    #@b
    .local v1, "settings$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v2

    #@f
    if-eqz v2, :cond_0

    #@11
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Landroid/net/wifi/WifiScanner$ScanSettings;

    #@17
    .line 186
    .local v0, "settings":Landroid/net/wifi/WifiScanner$ScanSettings;
    iget-object v2, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->mChannelCollection:Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;

    #@19
    invoke-virtual {v2, v0}, Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;->addChannels(Landroid/net/wifi/WifiScanner$ScanSettings;)V

    #@1c
    goto :goto_0

    #@1d
    .line 183
    .end local v0    # "settings":Landroid/net/wifi/WifiScanner$ScanSettings;
    :cond_0
    return-void
.end method
