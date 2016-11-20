.class Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiScanningServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->startService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@0
    .prologue
    .line 283
    iput-object p1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$1;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const v3, 0x27107

    #@4
    const v2, 0x27106

    #@7
    .line 287
    const-string/jumbo v1, "scan_enabled"

    #@a
    .line 286
    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@d
    move-result v0

    #@e
    .line 289
    .local v0, "state":I
    const/4 v1, 0x3

    #@f
    if-ne v0, v1, :cond_1

    #@11
    .line 290
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$1;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@13
    invoke-static {v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get1(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1, v2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->sendMessage(I)V

    #@1a
    .line 291
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$1;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@1c
    invoke-static {v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get14(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1, v2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->sendMessage(I)V

    #@23
    .line 292
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$1;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@25
    invoke-static {v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get10(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {v1, v2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->sendMessage(I)V

    #@2c
    .line 285
    :cond_0
    :goto_0
    return-void

    #@2d
    .line 293
    :cond_1
    if-ne v0, v4, :cond_0

    #@2f
    .line 294
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$1;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@31
    invoke-static {v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get1(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;

    #@34
    move-result-object v1

    #@35
    invoke-virtual {v1, v3}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->sendMessage(I)V

    #@38
    .line 295
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$1;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@3a
    invoke-static {v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get14(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;

    #@3d
    move-result-object v1

    #@3e
    invoke-virtual {v1, v3}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->sendMessage(I)V

    #@41
    .line 296
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$1;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@43
    invoke-static {v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get10(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;

    #@46
    move-result-object v1

    #@47
    invoke-virtual {v1, v3}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->sendMessage(I)V

    #@4a
    goto :goto_0
.end method
