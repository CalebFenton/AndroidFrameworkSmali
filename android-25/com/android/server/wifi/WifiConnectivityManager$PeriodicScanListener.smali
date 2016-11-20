.class Lcom/android/server/wifi/WifiConnectivityManager$PeriodicScanListener;
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
    name = "PeriodicScanListener"
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
    .line 242
    iput-object p1, p0, Lcom/android/server/wifi/WifiConnectivityManager$PeriodicScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 243
    new-instance v0, Ljava/util/ArrayList;

    #@7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@a
    iput-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$PeriodicScanListener;->mScanDetails:Ljava/util/List;

    #@c
    .line 242
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wifi/WifiConnectivityManager;Lcom/android/server/wifi/WifiConnectivityManager$PeriodicScanListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiConnectivityManager;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConnectivityManager$PeriodicScanListener;-><init>(Lcom/android/server/wifi/WifiConnectivityManager;)V

    #@3
    return-void
.end method


# virtual methods
.method public clearScanDetails()V
    .locals 1

    #@0
    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$PeriodicScanListener;->mScanDetails:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->clear()V

    #@5
    .line 245
    return-void
.end method

.method public onFailure(ILjava/lang/String;)V
    .locals 3
    .param p1, "reason"    # I
    .param p2, "description"    # Ljava/lang/String;

    #@0
    .prologue
    .line 256
    const-string/jumbo v0, "WifiConnectivityManager"

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "PeriodicScanListener onFailure: reason: "

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    .line 258
    const-string/jumbo v2, " description: "

    #@16
    .line 256
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
    .line 261
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$PeriodicScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    #@27
    invoke-static {v0}, Lcom/android/server/wifi/WifiConnectivityManager;->-get2(Lcom/android/server/wifi/WifiConnectivityManager;)I

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
    .line 262
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$PeriodicScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    #@35
    const/16 v1, 0x7d0

    #@37
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiConnectivityManager;->-wrap3(Lcom/android/server/wifi/WifiConnectivityManager;I)V

    #@3a
    .line 255
    :goto_0
    return-void

    #@3b
    .line 264
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$PeriodicScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    #@3d
    const/4 v1, 0x0

    #@3e
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiConnectivityManager;->-set0(Lcom/android/server/wifi/WifiConnectivityManager;I)I

    #@41
    .line 265
    const-string/jumbo v0, "WifiConnectivityManager"

    #@44
    const-string/jumbo v1, "Failed to successfully start periodic scan for 5 times"

    #@47
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@4a
    goto :goto_0
.end method

.method public onFullResult(Landroid/net/wifi/ScanResult;)V
    .locals 3
    .param p1, "fullScanResult"    # Landroid/net/wifi/ScanResult;

    #@0
    .prologue
    .line 285
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$PeriodicScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    #@2
    invoke-static {v0}, Lcom/android/server/wifi/WifiConnectivityManager;->-get0(Lcom/android/server/wifi/WifiConnectivityManager;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 286
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$PeriodicScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    #@a
    new-instance v1, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v2, "PeriodicScanListener onFullResult: "

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    .line 287
    iget-object v2, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    #@18
    .line 286
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    .line 287
    const-string/jumbo v2, " capabilities "

    #@1f
    .line 286
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    .line 288
    iget-object v2, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    #@25
    .line 286
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
    .line 291
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$PeriodicScanListener;->mScanDetails:Ljava/util/List;

    #@32
    invoke-static {p1}, Lcom/android/server/wifi/util/ScanDetailUtil;->toScanDetail(Landroid/net/wifi/ScanResult;)Lcom/android/server/wifi/ScanDetail;

    #@35
    move-result-object v1

    #@36
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@39
    .line 284
    return-void
.end method

.method public onPeriodChanged(I)V
    .locals 3
    .param p1, "periodInMs"    # I

    #@0
    .prologue
    .line 272
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$PeriodicScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v2, "PeriodicScanListener onPeriodChanged: actual scan period "

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    .line 273
    const-string/jumbo v2, "ms"

    #@15
    .line 272
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
    .line 271
    return-void
.end method

.method public onResults([Landroid/net/wifi/WifiScanner$ScanData;)V
    .locals 3
    .param p1, "results"    # [Landroid/net/wifi/WifiScanner$ScanData;

    #@0
    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$PeriodicScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    #@2
    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityManager$PeriodicScanListener;->mScanDetails:Ljava/util/List;

    #@4
    const-string/jumbo v2, "PeriodicScanListener"

    #@7
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiConnectivityManager;->-wrap0(Lcom/android/server/wifi/WifiConnectivityManager;Ljava/util/List;Ljava/lang/String;)Z

    #@a
    .line 279
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConnectivityManager$PeriodicScanListener;->clearScanDetails()V

    #@d
    .line 280
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$PeriodicScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    #@f
    const/4 v1, 0x0

    #@10
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiConnectivityManager;->-set0(Lcom/android/server/wifi/WifiConnectivityManager;I)I

    #@13
    .line 277
    return-void
.end method

.method public onSuccess()V
    .locals 2

    #@0
    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$PeriodicScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    #@2
    const-string/jumbo v1, "PeriodicScanListener onSuccess"

    #@5
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiConnectivityManager;->-wrap1(Lcom/android/server/wifi/WifiConnectivityManager;Ljava/lang/String;)V

    #@8
    .line 250
    return-void
.end method
