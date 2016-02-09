.class Lcom/android/server/display/WifiDisplayController$4;
.super Landroid/content/BroadcastReceiver;
.source "WifiDisplayController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/WifiDisplayController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/WifiDisplayController;


# direct methods
.method constructor <init>(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/display/WifiDisplayController;

    #@0
    .prologue
    .line 1053
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController$4;->this$0:Lcom/android/server/display/WifiDisplayController;

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
    .line 1056
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 1057
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v3, "android.net.wifi.p2p.STATE_CHANGED"

    #@7
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v3

    #@b
    if-eqz v3, :cond_2

    #@d
    .line 1060
    const-string/jumbo v3, "wifi_p2p_state"

    #@10
    .line 1061
    const/4 v4, 0x1

    #@11
    .line 1060
    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@14
    move-result v3

    #@15
    .line 1062
    const/4 v4, 0x2

    #@16
    .line 1060
    if-ne v3, v4, :cond_1

    #@18
    const/4 v1, 0x1

    #@19
    .line 1068
    .local v1, "enabled":Z
    :goto_0
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$4;->this$0:Lcom/android/server/display/WifiDisplayController;

    #@1b
    invoke-static {v3, v1}, Lcom/android/server/display/WifiDisplayController;->-wrap10(Lcom/android/server/display/WifiDisplayController;Z)V

    #@1e
    .line 1055
    .end local v1    # "enabled":Z
    :cond_0
    :goto_1
    return-void

    #@1f
    .line 1060
    :cond_1
    const/4 v1, 0x0

    #@20
    .restart local v1    # "enabled":Z
    goto :goto_0

    #@21
    .line 1069
    .end local v1    # "enabled":Z
    :cond_2
    const-string/jumbo v3, "android.net.wifi.p2p.PEERS_CHANGED"

    #@24
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@27
    move-result v3

    #@28
    if-eqz v3, :cond_3

    #@2a
    .line 1074
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$4;->this$0:Lcom/android/server/display/WifiDisplayController;

    #@2c
    invoke-static {v3}, Lcom/android/server/display/WifiDisplayController;->-wrap8(Lcom/android/server/display/WifiDisplayController;)V

    #@2f
    goto :goto_1

    #@30
    .line 1075
    :cond_3
    const-string/jumbo v3, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    #@33
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@36
    move-result v3

    #@37
    if-eqz v3, :cond_4

    #@39
    .line 1077
    const-string/jumbo v3, "networkInfo"

    #@3c
    .line 1076
    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    #@3f
    move-result-object v2

    #@40
    check-cast v2, Landroid/net/NetworkInfo;

    #@42
    .line 1083
    .local v2, "networkInfo":Landroid/net/NetworkInfo;
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$4;->this$0:Lcom/android/server/display/WifiDisplayController;

    #@44
    invoke-static {v3, v2}, Lcom/android/server/display/WifiDisplayController;->-wrap6(Lcom/android/server/display/WifiDisplayController;Landroid/net/NetworkInfo;)V

    #@47
    goto :goto_1

    #@48
    .line 1084
    .end local v2    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_4
    const-string/jumbo v3, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    #@4b
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4e
    move-result v3

    #@4f
    if-eqz v3, :cond_0

    #@51
    .line 1085
    iget-object v4, p0, Lcom/android/server/display/WifiDisplayController$4;->this$0:Lcom/android/server/display/WifiDisplayController;

    #@53
    .line 1086
    const-string/jumbo v3, "wifiP2pDevice"

    #@56
    .line 1085
    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    #@59
    move-result-object v3

    #@5a
    check-cast v3, Landroid/net/wifi/p2p/WifiP2pDevice;

    #@5c
    invoke-static {v4, v3}, Lcom/android/server/display/WifiDisplayController;->-set8(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;

    #@5f
    goto :goto_1
.end method
