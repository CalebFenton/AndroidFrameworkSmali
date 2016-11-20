.class Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;
.super Ljava/lang/Object;
.source "WifiConnectivityManager.java"

# interfaces
.implements Landroid/net/wifi/WifiScanner$PnoScanListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiConnectivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PnoScanListener"
.end annotation


# instance fields
.field private mLowRssiNetworkRetryDelay:I

.field private mScanDetails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/ScanDetail;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/wifi/WifiConnectivityManager;


# direct methods
.method private constructor <init>(Lcom/android/server/wifi/WifiConnectivityManager;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiConnectivityManager;

    #@0
    .prologue
    .line 382
    iput-object p1, p0, Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 383
    new-instance v0, Ljava/util/ArrayList;

    #@7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@a
    iput-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;->mScanDetails:Ljava/util/List;

    #@c
    .line 385
    const/16 v0, 0x4e20

    #@e
    .line 384
    iput v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;->mLowRssiNetworkRetryDelay:I

    #@10
    .line 382
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wifi/WifiConnectivityManager;Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiConnectivityManager;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;-><init>(Lcom/android/server/wifi/WifiConnectivityManager;)V

    #@3
    return-void
.end method


# virtual methods
.method public clearScanDetails()V
    .locals 1

    #@0
    .prologue
    .line 388
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;->mScanDetails:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->clear()V

    #@5
    .line 387
    return-void
.end method

.method public getLowRssiNetworkRetryDelay()I
    .locals 1

    #@0
    .prologue
    .line 399
    iget v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;->mLowRssiNetworkRetryDelay:I

    #@2
    return v0
.end method

.method public onFailure(ILjava/lang/String;)V
    .locals 3
    .param p1, "reason"    # I
    .param p2, "description"    # Ljava/lang/String;

    #@0
    .prologue
    .line 412
    const-string/jumbo v0, "WifiConnectivityManager"

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "PnoScanListener onFailure: reason: "

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    .line 414
    const-string/jumbo v2, " description: "

    #@16
    .line 412
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v1

    #@22
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@25
    .line 417
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    #@27
    invoke-static {v0}, Lcom/android/server/wifi/WifiConnectivityManager;->-get1(Lcom/android/server/wifi/WifiConnectivityManager;)I

    #@2a
    move-result v1

    #@2b
    add-int/lit8 v2, v1, 0x1

    #@2d
    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiConnectivityManager;->-set0(Lcom/android/server/wifi/WifiConnectivityManager;I)I

    #@30
    const/4 v0, 0x5

    #@31
    if-ge v1, v0, :cond_0

    #@33
    .line 418
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    #@35
    const/16 v1, 0x7d0

    #@37
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiConnectivityManager;->-wrap3(Lcom/android/server/wifi/WifiConnectivityManager;I)V

    #@3a
    .line 411
    :goto_0
    return-void

    #@3b
    .line 420
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    #@3d
    const/4 v1, 0x0

    #@3e
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiConnectivityManager;->-set0(Lcom/android/server/wifi/WifiConnectivityManager;I)I

    #@41
    .line 421
    const-string/jumbo v0, "WifiConnectivityManager"

    #@44
    const-string/jumbo v1, "Failed to successfully start PNO scan for 5 times"

    #@47
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@4a
    goto :goto_0
.end method

.method public onFullResult(Landroid/net/wifi/ScanResult;)V
    .locals 0
    .param p1, "fullScanResult"    # Landroid/net/wifi/ScanResult;

    #@0
    .prologue
    .line 440
    return-void
.end method

.method public onPeriodChanged(I)V
    .locals 3
    .param p1, "periodInMs"    # I

    #@0
    .prologue
    .line 428
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v2, "PnoScanListener onPeriodChanged: actual scan period "

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    .line 429
    const-string/jumbo v2, "ms"

    #@15
    .line 428
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiConnectivityManager;->-wrap1(Lcom/android/server/wifi/WifiConnectivityManager;Ljava/lang/String;)V

    #@20
    .line 427
    return-void
.end method

.method public onPnoNetworkFound([Landroid/net/wifi/ScanResult;)V
    .locals 7
    .param p1, "results"    # [Landroid/net/wifi/ScanResult;

    #@0
    .prologue
    const v6, 0x13880

    #@3
    .line 445
    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    #@5
    new-instance v3, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v4, "PnoScanListener: onPnoNetworkFound: results len = "

    #@d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v3

    #@11
    array-length v4, p1

    #@12
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@15
    move-result-object v3

    #@16
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v3

    #@1a
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiConnectivityManager;->-wrap1(Lcom/android/server/wifi/WifiConnectivityManager;Ljava/lang/String;)V

    #@1d
    .line 447
    const/4 v2, 0x0

    #@1e
    array-length v3, p1

    #@1f
    :goto_0
    if-ge v2, v3, :cond_0

    #@21
    aget-object v0, p1, v2

    #@23
    .line 448
    .local v0, "result":Landroid/net/wifi/ScanResult;
    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;->mScanDetails:Ljava/util/List;

    #@25
    invoke-static {v0}, Lcom/android/server/wifi/util/ScanDetailUtil;->toScanDetail(Landroid/net/wifi/ScanResult;)Lcom/android/server/wifi/ScanDetail;

    #@28
    move-result-object v5

    #@29
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@2c
    .line 447
    add-int/lit8 v2, v2, 0x1

    #@2e
    goto :goto_0

    #@2f
    .line 452
    .end local v0    # "result":Landroid/net/wifi/ScanResult;
    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    #@31
    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;->mScanDetails:Ljava/util/List;

    #@33
    const-string/jumbo v4, "PnoScanListener"

    #@36
    invoke-static {v2, v3, v4}, Lcom/android/server/wifi/WifiConnectivityManager;->-wrap0(Lcom/android/server/wifi/WifiConnectivityManager;Ljava/util/List;Ljava/lang/String;)Z

    #@39
    move-result v1

    #@3a
    .line 453
    .local v1, "wasConnectAttempted":Z
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;->clearScanDetails()V

    #@3d
    .line 455
    if-nez v1, :cond_2

    #@3f
    .line 457
    iget v2, p0, Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;->mLowRssiNetworkRetryDelay:I

    #@41
    if-le v2, v6, :cond_1

    #@43
    .line 458
    iput v6, p0, Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;->mLowRssiNetworkRetryDelay:I

    #@45
    .line 460
    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    #@47
    iget v3, p0, Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;->mLowRssiNetworkRetryDelay:I

    #@49
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiConnectivityManager;->-wrap3(Lcom/android/server/wifi/WifiConnectivityManager;I)V

    #@4c
    .line 463
    iget v2, p0, Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;->mLowRssiNetworkRetryDelay:I

    #@4e
    mul-int/lit8 v2, v2, 0x2

    #@50
    iput v2, p0, Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;->mLowRssiNetworkRetryDelay:I

    #@52
    .line 444
    :goto_1
    return-void

    #@53
    .line 465
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;->resetLowRssiNetworkRetryDelay()V

    #@56
    goto :goto_1
.end method

.method public onResults([Landroid/net/wifi/WifiScanner$ScanData;)V
    .locals 0
    .param p1, "results"    # [Landroid/net/wifi/WifiScanner$ScanData;

    #@0
    .prologue
    .line 436
    return-void
.end method

.method public onSuccess()V
    .locals 2

    #@0
    .prologue
    .line 404
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    #@2
    const-string/jumbo v1, "PnoScanListener onSuccess"

    #@5
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiConnectivityManager;->-wrap1(Lcom/android/server/wifi/WifiConnectivityManager;Ljava/lang/String;)V

    #@8
    .line 407
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    #@a
    const/4 v1, 0x0

    #@b
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiConnectivityManager;->-set0(Lcom/android/server/wifi/WifiConnectivityManager;I)I

    #@e
    .line 403
    return-void
.end method

.method public resetLowRssiNetworkRetryDelay()V
    .locals 1

    #@0
    .prologue
    .line 394
    const/16 v0, 0x4e20

    #@2
    iput v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;->mLowRssiNetworkRetryDelay:I

    #@4
    .line 393
    return-void
.end method
