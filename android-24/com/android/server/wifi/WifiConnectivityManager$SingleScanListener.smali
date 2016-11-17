.class Lcom/android/server/wifi/WifiConnectivityManager$SingleScanListener;
.super Ljava/lang/Object;
.source "WifiConnectivityManager.java"

# interfaces
.implements Landroid/net/wifi/WifiScanner$ScanListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiConnectivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SingleScanListener"
.end annotation


# instance fields
.field private final mIsFullBandScan:Z

.field private final mIsWatchdogTriggered:Z

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
.method constructor <init>(Lcom/android/server/wifi/WifiConnectivityManager;ZZ)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiConnectivityManager;
    .param p2, "isWatchdogTriggered"    # Z
    .param p3, "isFullBandScan"    # Z

    #@0
    .prologue
    .line 304
    iput-object p1, p0, Lcom/android/server/wifi/WifiConnectivityManager$SingleScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 300
    new-instance v0, Ljava/util/ArrayList;

    #@7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@a
    iput-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$SingleScanListener;->mScanDetails:Ljava/util/List;

    #@c
    .line 305
    iput-boolean p2, p0, Lcom/android/server/wifi/WifiConnectivityManager$SingleScanListener;->mIsWatchdogTriggered:Z

    #@e
    .line 306
    iput-boolean p3, p0, Lcom/android/server/wifi/WifiConnectivityManager$SingleScanListener;->mIsFullBandScan:Z

    #@10
    .line 304
    return-void
.end method


# virtual methods
.method public clearScanDetails()V
    .locals 1

    #@0
    .prologue
    .line 310
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$SingleScanListener;->mScanDetails:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->clear()V

    #@5
    .line 309
    return-void
.end method

.method public onFailure(ILjava/lang/String;)V
    .locals 3
    .param p1, "reason"    # I
    .param p2, "description"    # Ljava/lang/String;

    #@0
    .prologue
    .line 323
    const-string/jumbo v0, "WifiConnectivityManager"

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "SingleScanListener onFailure: reason: "

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    .line 325
    const-string/jumbo v2, " description: "

    #@16
    .line 323
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
    .line 328
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$SingleScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    #@27
    invoke-static {v0}, Lcom/android/server/wifi/WifiConnectivityManager;->-get3(Lcom/android/server/wifi/WifiConnectivityManager;)I

    #@2a
    move-result v1

    #@2b
    add-int/lit8 v2, v1, 0x1

    #@2d
    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiConnectivityManager;->-set1(Lcom/android/server/wifi/WifiConnectivityManager;I)I

    #@30
    const/4 v0, 0x5

    #@31
    if-ge v1, v0, :cond_0

    #@33
    .line 329
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$SingleScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    #@35
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiConnectivityManager$SingleScanListener;->mIsWatchdogTriggered:Z

    #@37
    iget-boolean v2, p0, Lcom/android/server/wifi/WifiConnectivityManager$SingleScanListener;->mIsFullBandScan:Z

    #@39
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiConnectivityManager;->-wrap4(Lcom/android/server/wifi/WifiConnectivityManager;ZZ)V

    #@3c
    .line 322
    :goto_0
    return-void

    #@3d
    .line 331
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$SingleScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    #@3f
    const/4 v1, 0x0

    #@40
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiConnectivityManager;->-set1(Lcom/android/server/wifi/WifiConnectivityManager;I)I

    #@43
    .line 332
    const-string/jumbo v0, "WifiConnectivityManager"

    #@46
    const-string/jumbo v1, "Failed to successfully start single scan for 5 times"

    #@49
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@4c
    goto :goto_0
.end method

.method public onFullResult(Landroid/net/wifi/ScanResult;)V
    .locals 3
    .param p1, "fullScanResult"    # Landroid/net/wifi/ScanResult;

    #@0
    .prologue
    .line 367
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$SingleScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    #@2
    invoke-static {v0}, Lcom/android/server/wifi/WifiConnectivityManager;->-get0(Lcom/android/server/wifi/WifiConnectivityManager;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 368
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$SingleScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    #@a
    new-instance v1, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v2, "SingleScanListener onFullResult: "

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    .line 369
    iget-object v2, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    #@18
    .line 368
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    .line 369
    const-string/jumbo v2, " capabilities "

    #@1f
    .line 368
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    .line 370
    iget-object v2, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    #@25
    .line 368
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v1

    #@2d
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiConnectivityManager;->-wrap1(Lcom/android/server/wifi/WifiConnectivityManager;Ljava/lang/String;)V

    #@30
    .line 373
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$SingleScanListener;->mScanDetails:Ljava/util/List;

    #@32
    invoke-static {p1}, Lcom/android/server/wifi/util/ScanDetailUtil;->toScanDetail(Landroid/net/wifi/ScanResult;)Lcom/android/server/wifi/ScanDetail;

    #@35
    move-result-object v1

    #@36
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@39
    .line 366
    return-void
.end method

.method public onPeriodChanged(I)V
    .locals 3
    .param p1, "periodInMs"    # I

    #@0
    .prologue
    .line 339
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$SingleScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v2, "SingleScanListener onPeriodChanged: actual scan period "

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    .line 340
    const-string/jumbo v2, "ms"

    #@15
    .line 339
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
    .line 338
    return-void
.end method

.method public onResults([Landroid/net/wifi/WifiScanner$ScanData;)V
    .locals 4
    .param p1, "results"    # [Landroid/net/wifi/WifiScanner$ScanData;

    #@0
    .prologue
    .line 345
    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityManager$SingleScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    #@2
    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityManager$SingleScanListener;->mScanDetails:Ljava/util/List;

    #@4
    const-string/jumbo v3, "SingleScanListener"

    #@7
    invoke-static {v1, v2, v3}, Lcom/android/server/wifi/WifiConnectivityManager;->-wrap0(Lcom/android/server/wifi/WifiConnectivityManager;Ljava/util/List;Ljava/lang/String;)Z

    #@a
    move-result v0

    #@b
    .line 346
    .local v0, "wasConnectAttempted":Z
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConnectivityManager$SingleScanListener;->clearScanDetails()V

    #@e
    .line 348
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiConnectivityManager$SingleScanListener;->mIsWatchdogTriggered:Z

    #@10
    if-eqz v1, :cond_0

    #@12
    .line 349
    if-eqz v0, :cond_2

    #@14
    .line 350
    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityManager$SingleScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    #@16
    invoke-static {v1}, Lcom/android/server/wifi/WifiConnectivityManager;->-get2(Lcom/android/server/wifi/WifiConnectivityManager;)Z

    #@19
    move-result v1

    #@1a
    if-eqz v1, :cond_1

    #@1c
    .line 351
    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityManager$SingleScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    #@1e
    invoke-static {v1}, Lcom/android/server/wifi/WifiConnectivityManager;->-get4(Lcom/android/server/wifi/WifiConnectivityManager;)Lcom/android/server/wifi/WifiMetrics;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1}, Lcom/android/server/wifi/WifiMetrics;->incrementNumConnectivityWatchdogBackgroundBad()V

    #@25
    .line 344
    :cond_0
    :goto_0
    return-void

    #@26
    .line 353
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityManager$SingleScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    #@28
    invoke-static {v1}, Lcom/android/server/wifi/WifiConnectivityManager;->-get4(Lcom/android/server/wifi/WifiConnectivityManager;)Lcom/android/server/wifi/WifiMetrics;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {v1}, Lcom/android/server/wifi/WifiMetrics;->incrementNumConnectivityWatchdogPnoBad()V

    #@2f
    goto :goto_0

    #@30
    .line 356
    :cond_2
    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityManager$SingleScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    #@32
    invoke-static {v1}, Lcom/android/server/wifi/WifiConnectivityManager;->-get2(Lcom/android/server/wifi/WifiConnectivityManager;)Z

    #@35
    move-result v1

    #@36
    if-eqz v1, :cond_3

    #@38
    .line 357
    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityManager$SingleScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    #@3a
    invoke-static {v1}, Lcom/android/server/wifi/WifiConnectivityManager;->-get4(Lcom/android/server/wifi/WifiConnectivityManager;)Lcom/android/server/wifi/WifiMetrics;

    #@3d
    move-result-object v1

    #@3e
    invoke-virtual {v1}, Lcom/android/server/wifi/WifiMetrics;->incrementNumConnectivityWatchdogBackgroundGood()V

    #@41
    goto :goto_0

    #@42
    .line 359
    :cond_3
    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityManager$SingleScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    #@44
    invoke-static {v1}, Lcom/android/server/wifi/WifiConnectivityManager;->-get4(Lcom/android/server/wifi/WifiConnectivityManager;)Lcom/android/server/wifi/WifiMetrics;

    #@47
    move-result-object v1

    #@48
    invoke-virtual {v1}, Lcom/android/server/wifi/WifiMetrics;->incrementNumConnectivityWatchdogPnoGood()V

    #@4b
    goto :goto_0
.end method

.method public onSuccess()V
    .locals 2

    #@0
    .prologue
    .line 315
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$SingleScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    #@2
    const-string/jumbo v1, "SingleScanListener onSuccess"

    #@5
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiConnectivityManager;->-wrap1(Lcom/android/server/wifi/WifiConnectivityManager;Ljava/lang/String;)V

    #@8
    .line 318
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$SingleScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    #@a
    const/4 v1, 0x0

    #@b
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiConnectivityManager;->-set1(Lcom/android/server/wifi/WifiConnectivityManager;I)I

    #@e
    .line 314
    return-void
.end method
