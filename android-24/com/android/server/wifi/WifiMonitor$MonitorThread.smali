.class Lcom/android/server/wifi/WifiMonitor$MonitorThread;
.super Ljava/lang/Thread;
.source "WifiMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MonitorThread"
.end annotation


# instance fields
.field private final mLocalLog:Landroid/util/LocalLog;

.field final synthetic this$0:Lcom/android/server/wifi/WifiMonitor;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/WifiMonitor;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiMonitor;

    #@0
    .prologue
    .line 728
    iput-object p1, p0, Lcom/android/server/wifi/WifiMonitor$MonitorThread;->this$0:Lcom/android/server/wifi/WifiMonitor;

    #@2
    .line 729
    const-string/jumbo v0, "WifiMonitor"

    #@5
    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    #@8
    .line 726
    iget-object v0, p0, Lcom/android/server/wifi/WifiMonitor$MonitorThread;->this$0:Lcom/android/server/wifi/WifiMonitor;

    #@a
    invoke-static {v0}, Lcom/android/server/wifi/WifiMonitor;->-get2(Lcom/android/server/wifi/WifiMonitor;)Lcom/android/server/wifi/WifiNative;

    #@d
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->getLocalLog()Landroid/util/LocalLog;

    #@10
    move-result-object v0

    #@11
    iput-object v0, p0, Lcom/android/server/wifi/WifiMonitor$MonitorThread;->mLocalLog:Landroid/util/LocalLog;

    #@13
    .line 728
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    #@0
    .prologue
    .line 733
    invoke-static {}, Lcom/android/server/wifi/WifiMonitor;->-get0()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 734
    const-string/jumbo v1, "WifiMonitor"

    #@9
    new-instance v2, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v3, "MonitorThread start with mConnected="

    #@11
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v2

    #@15
    iget-object v3, p0, Lcom/android/server/wifi/WifiMonitor$MonitorThread;->this$0:Lcom/android/server/wifi/WifiMonitor;

    #@17
    invoke-static {v3}, Lcom/android/server/wifi/WifiMonitor;->-get1(Lcom/android/server/wifi/WifiMonitor;)Z

    #@1a
    move-result v3

    #@1b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v2

    #@23
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@26
    .line 738
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiMonitor$MonitorThread;->this$0:Lcom/android/server/wifi/WifiMonitor;

    #@28
    invoke-static {v1}, Lcom/android/server/wifi/WifiMonitor;->-get1(Lcom/android/server/wifi/WifiMonitor;)Z

    #@2b
    move-result v1

    #@2c
    if-nez v1, :cond_2

    #@2e
    .line 739
    invoke-static {}, Lcom/android/server/wifi/WifiMonitor;->-get0()Z

    #@31
    move-result v1

    #@32
    if-eqz v1, :cond_1

    #@34
    const-string/jumbo v1, "WifiMonitor"

    #@37
    const-string/jumbo v2, "MonitorThread exit because mConnected is false"

    #@3a
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@3d
    .line 732
    :cond_1
    :goto_0
    return-void

    #@3e
    .line 742
    :cond_2
    iget-object v1, p0, Lcom/android/server/wifi/WifiMonitor$MonitorThread;->this$0:Lcom/android/server/wifi/WifiMonitor;

    #@40
    invoke-static {v1}, Lcom/android/server/wifi/WifiMonitor;->-get2(Lcom/android/server/wifi/WifiMonitor;)Lcom/android/server/wifi/WifiNative;

    #@43
    move-result-object v1

    #@44
    invoke-virtual {v1}, Lcom/android/server/wifi/WifiNative;->waitForEvent()Ljava/lang/String;

    #@47
    move-result-object v0

    #@48
    .line 745
    .local v0, "eventStr":Ljava/lang/String;
    const-string/jumbo v1, "BSS-ADDED"

    #@4b
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@4e
    move-result v1

    #@4f
    if-nez v1, :cond_3

    #@51
    const-string/jumbo v1, "BSS-REMOVED"

    #@54
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@57
    move-result v1

    #@58
    if-eqz v1, :cond_4

    #@5a
    .line 750
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiMonitor$MonitorThread;->this$0:Lcom/android/server/wifi/WifiMonitor;

    #@5c
    invoke-static {v1, v0}, Lcom/android/server/wifi/WifiMonitor;->-wrap0(Lcom/android/server/wifi/WifiMonitor;Ljava/lang/String;)Z

    #@5f
    move-result v1

    #@60
    if-eqz v1, :cond_0

    #@62
    .line 751
    invoke-static {}, Lcom/android/server/wifi/WifiMonitor;->-get0()Z

    #@65
    move-result v1

    #@66
    if-eqz v1, :cond_1

    #@68
    const-string/jumbo v1, "WifiMonitor"

    #@6b
    const-string/jumbo v2, "Disconnecting from the supplicant, no more events"

    #@6e
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@71
    goto :goto_0

    #@72
    .line 746
    :cond_4
    invoke-static {}, Lcom/android/server/wifi/WifiMonitor;->-get0()Z

    #@75
    move-result v1

    #@76
    if-eqz v1, :cond_5

    #@78
    const-string/jumbo v1, "WifiMonitor"

    #@7b
    new-instance v2, Ljava/lang/StringBuilder;

    #@7d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@80
    const-string/jumbo v3, "Event ["

    #@83
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v2

    #@87
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v2

    #@8b
    const-string/jumbo v3, "]"

    #@8e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@91
    move-result-object v2

    #@92
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@95
    move-result-object v2

    #@96
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@99
    .line 747
    :cond_5
    iget-object v1, p0, Lcom/android/server/wifi/WifiMonitor$MonitorThread;->mLocalLog:Landroid/util/LocalLog;

    #@9b
    new-instance v2, Ljava/lang/StringBuilder;

    #@9d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@a0
    const-string/jumbo v3, "Event ["

    #@a3
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a6
    move-result-object v2

    #@a7
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@aa
    move-result-object v2

    #@ab
    const-string/jumbo v3, "]"

    #@ae
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b1
    move-result-object v2

    #@b2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b5
    move-result-object v2

    #@b6
    invoke-virtual {v1, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    #@b9
    goto :goto_1
.end method
