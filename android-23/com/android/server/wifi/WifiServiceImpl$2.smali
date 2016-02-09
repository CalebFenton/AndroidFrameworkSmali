.class Lcom/android/server/wifi/WifiServiceImpl$2;
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
    .line 355
    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl$2;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    #@2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 358
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$2;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    #@2
    iget-object v0, v0, Lcom/android/server/wifi/WifiServiceImpl;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    #@4
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiSettingsStore;->handleAirplaneModeToggled()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 359
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$2;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    #@c
    invoke-static {v0}, Lcom/android/server/wifi/WifiServiceImpl;->-get7(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/android/server/wifi/WifiController;

    #@f
    move-result-object v0

    #@10
    const v1, 0x26009

    #@13
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiController;->sendMessage(I)V

    #@16
    .line 357
    :cond_0
    return-void
.end method
