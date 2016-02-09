.class Lcom/android/server/wifi/WifiScanningServiceImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiScanningServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiScanningServiceImpl;->startService(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiScanningServiceImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiScanningServiceImpl;

    #@0
    .prologue
    .line 246
    iput-object p1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$1;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    #@2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 250
    const-string/jumbo v1, "scan_enabled"

    #@4
    .line 249
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@7
    move-result v0

    #@8
    .line 252
    .local v0, "state":I
    const/4 v1, 0x3

    #@9
    if-ne v0, v1, :cond_1

    #@b
    .line 253
    iget-object v1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$1;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    #@d
    invoke-static {v1}, Lcom/android/server/wifi/WifiScanningServiceImpl;->-get6(Lcom/android/server/wifi/WifiScanningServiceImpl;)Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    #@10
    move-result-object v1

    #@11
    const v2, 0x27106

    #@14
    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->sendMessage(I)V

    #@17
    .line 248
    :cond_0
    :goto_0
    return-void

    #@18
    .line 254
    :cond_1
    if-ne v0, v2, :cond_0

    #@1a
    .line 255
    iget-object v1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$1;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    #@1c
    invoke-static {v1}, Lcom/android/server/wifi/WifiScanningServiceImpl;->-get6(Lcom/android/server/wifi/WifiScanningServiceImpl;)Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    #@1f
    move-result-object v1

    #@20
    const v2, 0x27107

    #@23
    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->sendMessage(I)V

    #@26
    goto :goto_0
.end method
