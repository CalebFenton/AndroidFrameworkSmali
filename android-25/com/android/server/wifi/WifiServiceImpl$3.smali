.class Lcom/android/server/wifi/WifiServiceImpl$3;
.super Landroid/content/BroadcastReceiver;
.source "WifiServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiServiceImpl;->checkAndStartWifi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiServiceImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiServiceImpl;

    #@0
    .prologue
    .line 383
    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl$3;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

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
    .line 386
    const-string/jumbo v1, "ss"

    #@3
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    .line 387
    .local v0, "state":Ljava/lang/String;
    const-string/jumbo v1, "ABSENT"

    #@a
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_1

    #@10
    .line 388
    const-string/jumbo v1, "WifiService"

    #@13
    const-string/jumbo v2, "resetting networks because SIM was removed"

    #@16
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@19
    .line 389
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl$3;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    #@1b
    iget-object v1, v1, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@1d
    const/4 v2, 0x0

    #@1e
    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->resetSimAuthNetworks(Z)V

    #@21
    .line 390
    const-string/jumbo v1, "WifiService"

    #@24
    const-string/jumbo v2, "resetting country code because SIM is removed"

    #@27
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@2a
    .line 391
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl$3;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    #@2c
    invoke-static {v1}, Lcom/android/server/wifi/WifiServiceImpl;->-get1(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/android/server/wifi/WifiCountryCode;

    #@2f
    move-result-object v1

    #@30
    invoke-virtual {v1}, Lcom/android/server/wifi/WifiCountryCode;->simCardRemoved()V

    #@33
    .line 385
    :cond_0
    :goto_0
    return-void

    #@34
    .line 392
    :cond_1
    const-string/jumbo v1, "LOADED"

    #@37
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3a
    move-result v1

    #@3b
    if-eqz v1, :cond_0

    #@3d
    .line 393
    const-string/jumbo v1, "WifiService"

    #@40
    const-string/jumbo v2, "resetting networks because SIM was loaded"

    #@43
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@46
    .line 394
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl$3;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    #@48
    iget-object v1, v1, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@4a
    const/4 v2, 0x1

    #@4b
    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->resetSimAuthNetworks(Z)V

    #@4e
    goto :goto_0
.end method
