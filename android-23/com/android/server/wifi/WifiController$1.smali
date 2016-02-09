.class Lcom/android/server/wifi/WifiController$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiController;-><init>(Landroid/content/Context;Lcom/android/server/wifi/WifiServiceImpl;Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiController;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiController;

    #@0
    .prologue
    .line 178
    iput-object p1, p0, Lcom/android/server/wifi/WifiController$1;->this$0:Lcom/android/server/wifi/WifiController;

    #@2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    const/16 v3, 0xe

    #@2
    .line 181
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    .line 182
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v2, "com.android.server.WifiManager.action.DEVICE_IDLE"

    #@9
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v2

    #@d
    if-eqz v2, :cond_1

    #@f
    .line 183
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$1;->this$0:Lcom/android/server/wifi/WifiController;

    #@11
    const v3, 0x26005

    #@14
    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiController;->sendMessage(I)V

    #@17
    .line 180
    :cond_0
    :goto_0
    return-void

    #@18
    .line 184
    :cond_1
    const-string/jumbo v2, "android.net.wifi.STATE_CHANGE"

    #@1b
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1e
    move-result v2

    #@1f
    if-eqz v2, :cond_2

    #@21
    .line 185
    iget-object v3, p0, Lcom/android/server/wifi/WifiController$1;->this$0:Lcom/android/server/wifi/WifiController;

    #@23
    .line 186
    const-string/jumbo v2, "networkInfo"

    #@26
    .line 185
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    #@29
    move-result-object v2

    #@2a
    check-cast v2, Landroid/net/NetworkInfo;

    #@2c
    iput-object v2, v3, Lcom/android/server/wifi/WifiController;->mNetworkInfo:Landroid/net/NetworkInfo;

    #@2e
    goto :goto_0

    #@2f
    .line 187
    :cond_2
    const-string/jumbo v2, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    #@32
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@35
    move-result v2

    #@36
    if-eqz v2, :cond_0

    #@38
    .line 189
    const-string/jumbo v2, "wifi_state"

    #@3b
    .line 188
    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@3e
    move-result v1

    #@3f
    .line 191
    .local v1, "state":I
    if-ne v1, v3, :cond_0

    #@41
    .line 192
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$1;->this$0:Lcom/android/server/wifi/WifiController;

    #@43
    const-string/jumbo v3, "WifiControllerSoftAP start failed"

    #@46
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiController;->-wrap5(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    #@49
    .line 193
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$1;->this$0:Lcom/android/server/wifi/WifiController;

    #@4b
    const v3, 0x2600d

    #@4e
    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiController;->sendMessage(I)V

    #@51
    goto :goto_0
.end method
