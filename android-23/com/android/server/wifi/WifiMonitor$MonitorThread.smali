.class Lcom/android/server/wifi/WifiMonitor$MonitorThread;
.super Ljava/lang/Thread;
.source "WifiMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MonitorThread"
.end annotation


# instance fields
.field private final mLocalLog:Landroid/util/LocalLog;

.field private final mWifiMonitorSingleton:Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;

.field private final mWifiNative:Lcom/android/server/wifi/WifiNative;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/WifiNative;Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;)V
    .locals 1
    .param p1, "wifiNative"    # Lcom/android/server/wifi/WifiNative;
    .param p2, "wifiMonitorSingleton"    # Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;

    #@0
    .prologue
    .line 741
    const-string/jumbo v0, "WifiMonitor"

    #@3
    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    #@6
    .line 738
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->getLocalLog()Landroid/util/LocalLog;

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Lcom/android/server/wifi/WifiMonitor$MonitorThread;->mLocalLog:Landroid/util/LocalLog;

    #@c
    .line 742
    iput-object p1, p0, Lcom/android/server/wifi/WifiMonitor$MonitorThread;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@e
    .line 743
    iput-object p2, p0, Lcom/android/server/wifi/WifiMonitor$MonitorThread;->mWifiMonitorSingleton:Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;

    #@10
    .line 740
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    #@0
    .prologue
    const/4 v4, -0x1

    #@1
    .line 747
    invoke-static {}, Lcom/android/server/wifi/WifiMonitor;->-get0()Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 748
    const-string/jumbo v1, "WifiMonitor"

    #@a
    new-instance v2, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v3, "MonitorThread start with mConnected="

    #@12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    .line 749
    iget-object v3, p0, Lcom/android/server/wifi/WifiMonitor$MonitorThread;->mWifiMonitorSingleton:Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;

    #@18
    invoke-static {v3}, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->-get0(Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;)Z

    #@1b
    move-result v3

    #@1c
    .line 748
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v2

    #@24
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@27
    .line 753
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiMonitor$MonitorThread;->mWifiMonitorSingleton:Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;

    #@29
    invoke-static {v1}, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->-get0(Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;)Z

    #@2c
    move-result v1

    #@2d
    if-nez v1, :cond_2

    #@2f
    .line 754
    invoke-static {}, Lcom/android/server/wifi/WifiMonitor;->-get0()Z

    #@32
    move-result v1

    #@33
    if-eqz v1, :cond_1

    #@35
    const-string/jumbo v1, "WifiMonitor"

    #@38
    const-string/jumbo v2, "MonitorThread exit because mConnected is false"

    #@3b
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@3e
    .line 746
    :cond_1
    :goto_0
    return-void

    #@3f
    .line 757
    :cond_2
    iget-object v1, p0, Lcom/android/server/wifi/WifiMonitor$MonitorThread;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@41
    invoke-virtual {v1}, Lcom/android/server/wifi/WifiNative;->waitForEvent()Ljava/lang/String;

    #@44
    move-result-object v0

    #@45
    .line 760
    .local v0, "eventStr":Ljava/lang/String;
    const-string/jumbo v1, "BSS-ADDED"

    #@48
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@4b
    move-result v1

    #@4c
    if-ne v1, v4, :cond_4

    #@4e
    .line 761
    const-string/jumbo v1, "BSS-REMOVED"

    #@51
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@54
    move-result v1

    #@55
    if-ne v1, v4, :cond_4

    #@57
    .line 762
    invoke-static {}, Lcom/android/server/wifi/WifiMonitor;->-get0()Z

    #@5a
    move-result v1

    #@5b
    if-eqz v1, :cond_3

    #@5d
    const-string/jumbo v1, "WifiMonitor"

    #@60
    new-instance v2, Ljava/lang/StringBuilder;

    #@62
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@65
    const-string/jumbo v3, "Event ["

    #@68
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v2

    #@6c
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v2

    #@70
    const-string/jumbo v3, "]"

    #@73
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v2

    #@77
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7a
    move-result-object v2

    #@7b
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@7e
    .line 763
    :cond_3
    iget-object v1, p0, Lcom/android/server/wifi/WifiMonitor$MonitorThread;->mLocalLog:Landroid/util/LocalLog;

    #@80
    new-instance v2, Ljava/lang/StringBuilder;

    #@82
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@85
    const-string/jumbo v3, "Event ["

    #@88
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v2

    #@8c
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v2

    #@90
    const-string/jumbo v3, "]"

    #@93
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@96
    move-result-object v2

    #@97
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9a
    move-result-object v2

    #@9b
    invoke-virtual {v1, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    #@9e
    .line 766
    :cond_4
    iget-object v1, p0, Lcom/android/server/wifi/WifiMonitor$MonitorThread;->mWifiMonitorSingleton:Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;

    #@a0
    invoke-static {v1, v0}, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->-wrap0(Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;Ljava/lang/String;)Z

    #@a3
    move-result v1

    #@a4
    if-eqz v1, :cond_0

    #@a6
    .line 767
    invoke-static {}, Lcom/android/server/wifi/WifiMonitor;->-get0()Z

    #@a9
    move-result v1

    #@aa
    if-eqz v1, :cond_1

    #@ac
    const-string/jumbo v1, "WifiMonitor"

    #@af
    const-string/jumbo v2, "Disconnecting from the supplicant, no more events"

    #@b2
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@b5
    goto :goto_0
.end method
