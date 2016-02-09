.class Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$1;
.super Landroid/content/BroadcastReceiver;
.source "Vpn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    #@0
    .prologue
    .line 1098
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$1;->this$1:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

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
    .line 1101
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$1;->this$1:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    #@2
    iget-object v2, v2, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    #@4
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->-get3(Lcom/android/server/connectivity/Vpn;)Z

    #@7
    move-result v2

    #@8
    if-nez v2, :cond_0

    #@a
    return-void

    #@b
    .line 1103
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    const-string/jumbo v3, "android.net.conn.CONNECTIVITY_CHANGE"

    #@12
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@15
    move-result v2

    #@16
    if-eqz v2, :cond_1

    #@18
    .line 1104
    const-string/jumbo v2, "networkType"

    #@1b
    .line 1105
    const/4 v3, -0x1

    #@1c
    .line 1104
    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@1f
    move-result v2

    #@20
    .line 1105
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$1;->this$1:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    #@22
    invoke-static {v3}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->-get0(Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;)Ljava/util/concurrent/atomic/AtomicInteger;

    #@25
    move-result-object v3

    #@26
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@29
    move-result v3

    #@2a
    .line 1104
    if-ne v2, v3, :cond_1

    #@2c
    .line 1107
    const-string/jumbo v2, "networkInfo"

    #@2f
    .line 1106
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    #@32
    move-result-object v1

    #@33
    check-cast v1, Landroid/net/NetworkInfo;

    #@35
    .line 1108
    .local v1, "info":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_1

    #@37
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    #@3a
    move-result v2

    #@3b
    if-eqz v2, :cond_2

    #@3d
    .line 1100
    .end local v1    # "info":Landroid/net/NetworkInfo;
    :cond_1
    :goto_0
    return-void

    #@3e
    .line 1110
    .restart local v1    # "info":Landroid/net/NetworkInfo;
    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$1;->this$1:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    #@40
    iget-object v2, v2, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    #@42
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->-get7(Lcom/android/server/connectivity/Vpn;)Landroid/net/INetworkManagementEventObserver;

    #@45
    move-result-object v2

    #@46
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$1;->this$1:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    #@48
    invoke-static {v3}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->-get1(Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;)Ljava/lang/String;

    #@4b
    move-result-object v3

    #@4c
    const/4 v4, 0x0

    #@4d
    invoke-interface {v2, v3, v4}, Landroid/net/INetworkManagementEventObserver;->interfaceStatusChanged(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@50
    goto :goto_0

    #@51
    .line 1111
    :catch_0
    move-exception v0

    #@52
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method
