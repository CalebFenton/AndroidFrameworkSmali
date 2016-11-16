.class Lcom/android/server/wifi/WifiConnectivityManager$AllSingleScanListener;
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
    name = "AllSingleScanListener"
.end annotation


# instance fields
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
    .line 302
    iput-object p1, p0, Lcom/android/server/wifi/WifiConnectivityManager$AllSingleScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 303
    new-instance v0, Ljava/util/ArrayList;

    #@7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@a
    iput-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$AllSingleScanListener;->mScanDetails:Ljava/util/List;

    #@c
    .line 302
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wifi/WifiConnectivityManager;Lcom/android/server/wifi/WifiConnectivityManager$AllSingleScanListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiConnectivityManager;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConnectivityManager$AllSingleScanListener;-><init>(Lcom/android/server/wifi/WifiConnectivityManager;)V

    #@3
    return-void
.end method


# virtual methods
.method public clearScanDetails()V
    .locals 1

    #@0
    .prologue
    .line 306
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$AllSingleScanListener;->mScanDetails:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->clear()V

    #@5
    .line 305
    return-void
.end method

.method public onFailure(ILjava/lang/String;)V
    .locals 3
    .param p1, "reason"    # I
    .param p2, "description"    # Ljava/lang/String;

    #@0
    .prologue
    .line 316
    const-string/jumbo v0, "WifiConnectivityManager"

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "registerScanListener onFailure: reason: "

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    .line 318
    const-string/jumbo v2, " description: "

    #@16
    .line 316
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
    .line 315
    return-void
.end method

.method public onFullResult(Landroid/net/wifi/ScanResult;)V
    .locals 3
    .param p1, "fullScanResult"    # Landroid/net/wifi/ScanResult;

    #@0
    .prologue
    .line 362
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$AllSingleScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    #@2
    invoke-static {v0}, Lcom/android/server/wifi/WifiConnectivityManager;->-get6(Lcom/android/server/wifi/WifiConnectivityManager;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_1

    #@8
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$AllSingleScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    #@a
    invoke-static {v0}, Lcom/android/server/wifi/WifiConnectivityManager;->-get5(Lcom/android/server/wifi/WifiConnectivityManager;)Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_1

    #@10
    .line 366
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$AllSingleScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    #@12
    invoke-static {v0}, Lcom/android/server/wifi/WifiConnectivityManager;->-get0(Lcom/android/server/wifi/WifiConnectivityManager;)Z

    #@15
    move-result v0

    #@16
    if-eqz v0, :cond_0

    #@18
    .line 367
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$AllSingleScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    #@1a
    new-instance v1, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string/jumbo v2, "AllSingleScanListener onFullResult: "

    #@22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    .line 368
    iget-object v2, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    #@28
    .line 367
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    .line 368
    const-string/jumbo v2, " capabilities "

    #@2f
    .line 367
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v1

    #@33
    .line 369
    iget-object v2, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    #@35
    .line 367
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v1

    #@39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v1

    #@3d
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiConnectivityManager;->-wrap1(Lcom/android/server/wifi/WifiConnectivityManager;Ljava/lang/String;)V

    #@40
    .line 372
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$AllSingleScanListener;->mScanDetails:Ljava/util/List;

    #@42
    invoke-static {p1}, Lcom/android/server/wifi/util/ScanDetailUtil;->toScanDetail(Landroid/net/wifi/ScanResult;)Lcom/android/server/wifi/ScanDetail;

    #@45
    move-result-object v1

    #@46
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@49
    .line 361
    return-void

    #@4a
    .line 363
    :cond_1
    return-void
.end method

.method public onPeriodChanged(I)V
    .locals 0
    .param p1, "periodInMs"    # I

    #@0
    .prologue
    .line 322
    return-void
.end method

.method public onResults([Landroid/net/wifi/WifiScanner$ScanData;)V
    .locals 4
    .param p1, "results"    # [Landroid/net/wifi/WifiScanner$ScanData;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 327
    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityManager$AllSingleScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    #@3
    invoke-static {v1}, Lcom/android/server/wifi/WifiConnectivityManager;->-get6(Lcom/android/server/wifi/WifiConnectivityManager;)Z

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_0

    #@9
    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityManager$AllSingleScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    #@b
    invoke-static {v1}, Lcom/android/server/wifi/WifiConnectivityManager;->-get5(Lcom/android/server/wifi/WifiConnectivityManager;)Z

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_0

    #@11
    .line 334
    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityManager$AllSingleScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    #@13
    invoke-static {v1}, Lcom/android/server/wifi/WifiConnectivityManager;->-get4(Lcom/android/server/wifi/WifiConnectivityManager;)Z

    #@16
    move-result v1

    #@17
    if-eqz v1, :cond_2

    #@19
    .line 335
    aget-object v1, p1, v2

    #@1b
    invoke-virtual {v1}, Landroid/net/wifi/WifiScanner$ScanData;->isAllChannelsScanned()Z

    #@1e
    move-result v1

    #@1f
    if-nez v1, :cond_1

    #@21
    .line 336
    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityManager$AllSingleScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    #@23
    const-string/jumbo v2, "AllSingleScanListener waiting for full band scan results."

    #@26
    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiConnectivityManager;->-wrap1(Lcom/android/server/wifi/WifiConnectivityManager;Ljava/lang/String;)V

    #@29
    .line 337
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConnectivityManager$AllSingleScanListener;->clearScanDetails()V

    #@2c
    .line 338
    return-void

    #@2d
    .line 328
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConnectivityManager$AllSingleScanListener;->clearScanDetails()V

    #@30
    .line 329
    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityManager$AllSingleScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    #@32
    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiConnectivityManager;->-set2(Lcom/android/server/wifi/WifiConnectivityManager;Z)Z

    #@35
    .line 330
    return-void

    #@36
    .line 340
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityManager$AllSingleScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    #@38
    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiConnectivityManager;->-set2(Lcom/android/server/wifi/WifiConnectivityManager;Z)Z

    #@3b
    .line 344
    :cond_2
    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityManager$AllSingleScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    #@3d
    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityManager$AllSingleScanListener;->mScanDetails:Ljava/util/List;

    #@3f
    const-string/jumbo v3, "AllSingleScanListener"

    #@42
    invoke-static {v1, v2, v3}, Lcom/android/server/wifi/WifiConnectivityManager;->-wrap0(Lcom/android/server/wifi/WifiConnectivityManager;Ljava/util/List;Ljava/lang/String;)Z

    #@45
    move-result v0

    #@46
    .line 345
    .local v0, "wasConnectAttempted":Z
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConnectivityManager$AllSingleScanListener;->clearScanDetails()V

    #@49
    .line 351
    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityManager$AllSingleScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    #@4b
    invoke-static {v1}, Lcom/android/server/wifi/WifiConnectivityManager;->-get1(Lcom/android/server/wifi/WifiConnectivityManager;)Z

    #@4e
    move-result v1

    #@4f
    if-eqz v1, :cond_3

    #@51
    .line 352
    if-eqz v0, :cond_4

    #@53
    .line 353
    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityManager$AllSingleScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    #@55
    invoke-static {v1}, Lcom/android/server/wifi/WifiConnectivityManager;->-get7(Lcom/android/server/wifi/WifiConnectivityManager;)Lcom/android/server/wifi/WifiMetrics;

    #@58
    move-result-object v1

    #@59
    invoke-virtual {v1}, Lcom/android/server/wifi/WifiMetrics;->incrementNumConnectivityWatchdogPnoBad()V

    #@5c
    .line 326
    :cond_3
    :goto_0
    return-void

    #@5d
    .line 355
    :cond_4
    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityManager$AllSingleScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    #@5f
    invoke-static {v1}, Lcom/android/server/wifi/WifiConnectivityManager;->-get7(Lcom/android/server/wifi/WifiConnectivityManager;)Lcom/android/server/wifi/WifiMetrics;

    #@62
    move-result-object v1

    #@63
    invoke-virtual {v1}, Lcom/android/server/wifi/WifiMetrics;->incrementNumConnectivityWatchdogPnoGood()V

    #@66
    goto :goto_0
.end method

.method public onSuccess()V
    .locals 2

    #@0
    .prologue
    .line 311
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$AllSingleScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    #@2
    const-string/jumbo v1, "registerScanListener onSuccess"

    #@5
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiConnectivityManager;->-wrap1(Lcom/android/server/wifi/WifiConnectivityManager;Ljava/lang/String;)V

    #@8
    .line 310
    return-void
.end method
