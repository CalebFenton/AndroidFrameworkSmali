.class Lcom/android/server/connectivity/Vpn$1;
.super Lcom/android/server/net/BaseNetworkObserver;
.source "Vpn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Vpn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/Vpn;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/Vpn;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/connectivity/Vpn;

    #@0
    .prologue
    .line 734
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn$1;->this$0:Lcom/android/server/connectivity/Vpn;

    #@2
    invoke-direct {p0}, Lcom/android/server/net/BaseNetworkObserver;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public interfaceRemoved(Ljava/lang/String;)V
    .locals 3
    .param p1, "interfaze"    # Ljava/lang/String;

    #@0
    .prologue
    .line 746
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$1;->this$0:Lcom/android/server/connectivity/Vpn;

    #@2
    monitor-enter v1

    #@3
    .line 747
    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$1;->this$0:Lcom/android/server/connectivity/Vpn;

    #@5
    invoke-static {v0}, Lcom/android/server/connectivity/Vpn;->-get4(Lcom/android/server/connectivity/Vpn;)Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_0

    #@f
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$1;->this$0:Lcom/android/server/connectivity/Vpn;

    #@11
    invoke-static {v0, p1}, Lcom/android/server/connectivity/Vpn;->-wrap0(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)I

    #@14
    move-result v0

    #@15
    if-nez v0, :cond_0

    #@17
    .line 748
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$1;->this$0:Lcom/android/server/connectivity/Vpn;

    #@19
    const/4 v2, 0x0

    #@1a
    invoke-static {v0, v2}, Lcom/android/server/connectivity/Vpn;->-set4(Lcom/android/server/connectivity/Vpn;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    #@1d
    .line 749
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$1;->this$0:Lcom/android/server/connectivity/Vpn;

    #@1f
    const/4 v2, 0x0

    #@20
    invoke-static {v0, v2}, Lcom/android/server/connectivity/Vpn;->-set5(Lcom/android/server/connectivity/Vpn;Ljava/util/List;)Ljava/util/List;

    #@23
    .line 750
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$1;->this$0:Lcom/android/server/connectivity/Vpn;

    #@25
    const/4 v2, 0x0

    #@26
    invoke-static {v0, v2}, Lcom/android/server/connectivity/Vpn;->-set0(Lcom/android/server/connectivity/Vpn;Lcom/android/internal/net/VpnConfig;)Lcom/android/internal/net/VpnConfig;

    #@29
    .line 751
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$1;->this$0:Lcom/android/server/connectivity/Vpn;

    #@2b
    const/4 v2, 0x0

    #@2c
    invoke-static {v0, v2}, Lcom/android/server/connectivity/Vpn;->-set2(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)Ljava/lang/String;

    #@2f
    .line 752
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$1;->this$0:Lcom/android/server/connectivity/Vpn;

    #@31
    invoke-static {v0}, Lcom/android/server/connectivity/Vpn;->-get1(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/connectivity/Vpn$Connection;

    #@34
    move-result-object v0

    #@35
    if-eqz v0, :cond_1

    #@37
    .line 753
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$1;->this$0:Lcom/android/server/connectivity/Vpn;

    #@39
    invoke-static {v0}, Lcom/android/server/connectivity/Vpn;->-get2(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;

    #@3c
    move-result-object v0

    #@3d
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$1;->this$0:Lcom/android/server/connectivity/Vpn;

    #@3f
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->-get1(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/connectivity/Vpn$Connection;

    #@42
    move-result-object v2

    #@43
    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    #@46
    .line 754
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$1;->this$0:Lcom/android/server/connectivity/Vpn;

    #@48
    const/4 v2, 0x0

    #@49
    invoke-static {v0, v2}, Lcom/android/server/connectivity/Vpn;->-set1(Lcom/android/server/connectivity/Vpn;Lcom/android/server/connectivity/Vpn$Connection;)Lcom/android/server/connectivity/Vpn$Connection;

    #@4c
    .line 755
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$1;->this$0:Lcom/android/server/connectivity/Vpn;

    #@4e
    invoke-static {v0}, Lcom/android/server/connectivity/Vpn;->-wrap2(Lcom/android/server/connectivity/Vpn;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@51
    :cond_0
    :goto_0
    monitor-exit v1

    #@52
    .line 745
    return-void

    #@53
    .line 756
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$1;->this$0:Lcom/android/server/connectivity/Vpn;

    #@55
    invoke-static {v0}, Lcom/android/server/connectivity/Vpn;->-get5(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    #@58
    move-result-object v0

    #@59
    if-eqz v0, :cond_0

    #@5b
    .line 757
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$1;->this$0:Lcom/android/server/connectivity/Vpn;

    #@5d
    invoke-static {v0}, Lcom/android/server/connectivity/Vpn;->-get5(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    #@60
    move-result-object v0

    #@61
    invoke-virtual {v0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->exit()V

    #@64
    .line 758
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$1;->this$0:Lcom/android/server/connectivity/Vpn;

    #@66
    const/4 v2, 0x0

    #@67
    invoke-static {v0, v2}, Lcom/android/server/connectivity/Vpn;->-set3(Lcom/android/server/connectivity/Vpn;Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;)Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@6a
    goto :goto_0

    #@6b
    .line 746
    :catchall_0
    move-exception v0

    #@6c
    monitor-exit v1

    #@6d
    throw v0
.end method

.method public interfaceStatusChanged(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "interfaze"    # Ljava/lang/String;
    .param p2, "up"    # Z

    #@0
    .prologue
    .line 737
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$1;->this$0:Lcom/android/server/connectivity/Vpn;

    #@2
    monitor-enter v1

    #@3
    .line 738
    if-nez p2, :cond_0

    #@5
    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$1;->this$0:Lcom/android/server/connectivity/Vpn;

    #@7
    invoke-static {v0}, Lcom/android/server/connectivity/Vpn;->-get5(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    #@a
    move-result-object v0

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 739
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$1;->this$0:Lcom/android/server/connectivity/Vpn;

    #@f
    invoke-static {v0}, Lcom/android/server/connectivity/Vpn;->-get5(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->check(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    :cond_0
    monitor-exit v1

    #@17
    .line 736
    return-void

    #@18
    .line 737
    :catchall_0
    move-exception v0

    #@19
    monitor-exit v1

    #@1a
    throw v0
.end method
