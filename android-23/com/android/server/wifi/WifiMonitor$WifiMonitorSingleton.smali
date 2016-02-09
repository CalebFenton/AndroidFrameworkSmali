.class Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;
.super Ljava/lang/Object;
.source "WifiMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WifiMonitorSingleton"
.end annotation


# static fields
.field private static final sInstance:Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;


# instance fields
.field private mConnected:Z

.field private final mIfaceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/wifi/WifiMonitor;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiNative:Lcom/android/server/wifi/WifiNative;


# direct methods
.method static synthetic -get0(Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->mConnected:Z

    #@2
    return v0
.end method

.method static synthetic -get1()Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;
    .locals 1

    #@0
    sget-object v0, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->sInstance:Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;Ljava/lang/String;)Z
    .locals 1
    .param p1, "eventStr"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->dispatchEvent(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 574
    new-instance v0, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;

    #@2
    invoke-direct {v0}, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;-><init>()V

    #@5
    sput-object v0, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->sInstance:Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;

    #@7
    .line 573
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 580
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 576
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->mIfaceMap:Ljava/util/HashMap;

    #@a
    .line 577
    const/4 v0, 0x0

    #@b
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->mConnected:Z

    #@d
    .line 580
    return-void
.end method

.method private declared-synchronized dispatchEvent(Ljava/lang/String;)Z
    .locals 12
    .param p1, "eventStr"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v11, 0x0

    #@1
    monitor-enter p0

    #@2
    .line 666
    :try_start_0
    const-string/jumbo v8, "IFNAME="

    #@5
    invoke-virtual {p1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@8
    move-result v8

    #@9
    if-eqz v8, :cond_2

    #@b
    .line 667
    const/16 v8, 0x20

    #@d
    invoke-virtual {p1, v8}, Ljava/lang/String;->indexOf(I)I

    #@10
    move-result v7

    #@11
    .line 668
    .local v7, "space":I
    const/4 v8, -0x1

    #@12
    if-eq v7, v8, :cond_1

    #@14
    .line 669
    const/4 v8, 0x7

    #@15
    invoke-virtual {p1, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    .line 670
    .local v1, "iface":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->mIfaceMap:Ljava/util/HashMap;

    #@1b
    invoke-virtual {v8, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@1e
    move-result v8

    #@1f
    if-nez v8, :cond_0

    #@21
    const-string/jumbo v8, "p2p-"

    #@24
    invoke-virtual {v1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@27
    move-result v8

    #@28
    if-eqz v8, :cond_0

    #@2a
    .line 674
    const-string/jumbo v1, "p2p0"

    #@2d
    .line 676
    :cond_0
    add-int/lit8 v8, v7, 0x1

    #@2f
    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@32
    move-result-object p1

    #@33
    .line 691
    .end local v7    # "space":I
    :goto_0
    iget-object v8, p0, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->mIfaceMap:Ljava/util/HashMap;

    #@35
    invoke-virtual {v8, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@38
    move-result-object v4

    #@39
    check-cast v4, Lcom/android/server/wifi/WifiMonitor;

    #@3b
    .line 692
    .local v4, "m":Lcom/android/server/wifi/WifiMonitor;
    if-eqz v4, :cond_6

    #@3d
    .line 693
    invoke-static {v4}, Lcom/android/server/wifi/WifiMonitor;->-get1(Lcom/android/server/wifi/WifiMonitor;)Z

    #@40
    move-result v8

    #@41
    if-eqz v8, :cond_4

    #@43
    .line 694
    invoke-static {v4, p1, v1}, Lcom/android/server/wifi/WifiMonitor;->-wrap0(Lcom/android/server/wifi/WifiMonitor;Ljava/lang/String;Ljava/lang/String;)Z

    #@46
    move-result v8

    #@47
    if-eqz v8, :cond_3

    #@49
    .line 695
    const/4 v8, 0x0

    #@4a
    iput-boolean v8, p0, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->mConnected:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4c
    .line 696
    const/4 v8, 0x1

    #@4d
    monitor-exit p0

    #@4e
    return v8

    #@4f
    .line 681
    .end local v1    # "iface":Ljava/lang/String;
    .end local v4    # "m":Lcom/android/server/wifi/WifiMonitor;
    .restart local v7    # "space":I
    :cond_1
    :try_start_1
    const-string/jumbo v8, "WifiMonitor"

    #@52
    new-instance v9, Ljava/lang/StringBuilder;

    #@54
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@57
    const-string/jumbo v10, "Dropping malformed event (unparsable iface): "

    #@5a
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v9

    #@5e
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v9

    #@62
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@65
    move-result-object v9

    #@66
    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@69
    monitor-exit p0

    #@6a
    .line 682
    return v11

    #@6b
    .line 686
    .end local v7    # "space":I
    :cond_2
    :try_start_2
    const-string/jumbo v1, "p2p0"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@6e
    .restart local v1    # "iface":Ljava/lang/String;
    goto :goto_0

    #@6f
    .restart local v4    # "m":Lcom/android/server/wifi/WifiMonitor;
    :cond_3
    monitor-exit p0

    #@70
    .line 699
    return v11

    #@71
    .line 701
    :cond_4
    :try_start_3
    invoke-static {}, Lcom/android/server/wifi/WifiMonitor;->-get0()Z

    #@74
    move-result v8

    #@75
    if-eqz v8, :cond_5

    #@77
    const-string/jumbo v8, "WifiMonitor"

    #@7a
    new-instance v9, Ljava/lang/StringBuilder;

    #@7c
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@7f
    const-string/jumbo v10, "Dropping event because ("

    #@82
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v9

    #@86
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@89
    move-result-object v9

    #@8a
    const-string/jumbo v10, ") is stopped"

    #@8d
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@90
    move-result-object v9

    #@91
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@94
    move-result-object v9

    #@95
    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@98
    :cond_5
    monitor-exit p0

    #@99
    .line 702
    return v11

    #@9a
    .line 705
    :cond_6
    :try_start_4
    invoke-static {}, Lcom/android/server/wifi/WifiMonitor;->-get0()Z

    #@9d
    move-result v8

    #@9e
    if-eqz v8, :cond_7

    #@a0
    const-string/jumbo v8, "WifiMonitor"

    #@a3
    const-string/jumbo v9, "Sending to all monitors because there\'s no matching iface"

    #@a6
    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@a9
    .line 706
    :cond_7
    const/4 v0, 0x0

    #@aa
    .line 707
    .local v0, "done":Z
    const/4 v2, 0x0

    #@ab
    .line 708
    .local v2, "isMonitoring":Z
    const/4 v3, 0x0

    #@ac
    .line 709
    .local v3, "isTerminating":Z
    const-string/jumbo v8, "CTRL-EVENT-"

    #@af
    invoke-virtual {p1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@b2
    move-result v8

    #@b3
    if-eqz v8, :cond_8

    #@b5
    .line 710
    const-string/jumbo v8, "TERMINATING"

    #@b8
    invoke-virtual {p1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@bb
    move-result v8

    #@bc
    .line 709
    if-eqz v8, :cond_8

    #@be
    .line 711
    const/4 v3, 0x1

    #@bf
    .line 713
    :cond_8
    iget-object v8, p0, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->mIfaceMap:Ljava/util/HashMap;

    #@c1
    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@c4
    move-result-object v8

    #@c5
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@c8
    move-result-object v6

    #@c9
    .local v6, "monitor$iterator":Ljava/util/Iterator;
    :cond_9
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@cc
    move-result v8

    #@cd
    if-eqz v8, :cond_a

    #@cf
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@d2
    move-result-object v5

    #@d3
    check-cast v5, Lcom/android/server/wifi/WifiMonitor;

    #@d5
    .line 714
    .local v5, "monitor":Lcom/android/server/wifi/WifiMonitor;
    invoke-static {v5}, Lcom/android/server/wifi/WifiMonitor;->-get1(Lcom/android/server/wifi/WifiMonitor;)Z

    #@d8
    move-result v8

    #@d9
    if-eqz v8, :cond_9

    #@db
    .line 715
    const/4 v2, 0x1

    #@dc
    .line 716
    invoke-static {v5, p1, v1}, Lcom/android/server/wifi/WifiMonitor;->-wrap0(Lcom/android/server/wifi/WifiMonitor;Ljava/lang/String;Ljava/lang/String;)Z

    #@df
    move-result v8

    #@e0
    if-eqz v8, :cond_9

    #@e2
    .line 717
    const/4 v0, 0x1

    #@e3
    goto :goto_1

    #@e4
    .line 722
    .end local v5    # "monitor":Lcom/android/server/wifi/WifiMonitor;
    :cond_a
    if-nez v2, :cond_b

    #@e6
    if-eqz v3, :cond_b

    #@e8
    .line 723
    const/4 v0, 0x1

    #@e9
    .line 726
    :cond_b
    if-eqz v0, :cond_c

    #@eb
    .line 727
    const/4 v8, 0x0

    #@ec
    iput-boolean v8, p0, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->mConnected:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@ee
    :cond_c
    monitor-exit p0

    #@ef
    .line 730
    return v0

    #@f0
    .end local v0    # "done":Z
    .end local v1    # "iface":Ljava/lang/String;
    .end local v2    # "isMonitoring":Z
    .end local v3    # "isTerminating":Z
    .end local v4    # "m":Lcom/android/server/wifi/WifiMonitor;
    .end local v6    # "monitor$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v8

    #@f1
    monitor-exit p0

    #@f2
    throw v8
.end method


# virtual methods
.method public declared-synchronized killSupplicant(Z)V
    .locals 7
    .param p1, "p2pSupported"    # Z

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 648
    :try_start_0
    const-string/jumbo v4, "init.svc.wpa_supplicant"

    #@4
    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v3

    #@8
    .line 649
    .local v3, "suppState":Ljava/lang/String;
    if-nez v3, :cond_0

    #@a
    const-string/jumbo v3, "unknown"

    #@d
    .line 650
    :cond_0
    const-string/jumbo v4, "init.svc.p2p_supplicant"

    #@10
    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@13
    move-result-object v2

    #@14
    .line 651
    .local v2, "p2pSuppState":Ljava/lang/String;
    if-nez v2, :cond_1

    #@16
    const-string/jumbo v2, "unknown"

    #@19
    .line 653
    :cond_1
    const-string/jumbo v4, "WifiMonitor"

    #@1c
    new-instance v5, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v6, "killSupplicant p2p"

    #@24
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v5

    #@28
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v5

    #@2c
    .line 654
    const-string/jumbo v6, " init.svc.wpa_supplicant="

    #@2f
    .line 653
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v5

    #@33
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v5

    #@37
    .line 655
    const-string/jumbo v6, " init.svc.p2p_supplicant="

    #@3a
    .line 653
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v5

    #@3e
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v5

    #@42
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v5

    #@46
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@49
    .line 656
    invoke-static {p1}, Lcom/android/server/wifi/WifiNative;->killSupplicant(Z)Z

    #@4c
    .line 657
    const/4 v4, 0x0

    #@4d
    iput-boolean v4, p0, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->mConnected:Z

    #@4f
    .line 658
    iget-object v4, p0, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->mIfaceMap:Ljava/util/HashMap;

    #@51
    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@54
    move-result-object v4

    #@55
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@58
    move-result-object v1

    #@59
    .local v1, "m$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@5c
    move-result v4

    #@5d
    if-eqz v4, :cond_2

    #@5f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@62
    move-result-object v0

    #@63
    check-cast v0, Lcom/android/server/wifi/WifiMonitor;

    #@65
    .line 659
    .local v0, "m":Lcom/android/server/wifi/WifiMonitor;
    const/4 v4, 0x0

    #@66
    invoke-static {v0, v4}, Lcom/android/server/wifi/WifiMonitor;->-set0(Lcom/android/server/wifi/WifiMonitor;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@69
    goto :goto_0

    #@6a
    .end local v0    # "m":Lcom/android/server/wifi/WifiMonitor;
    .end local v1    # "m$iterator":Ljava/util/Iterator;
    .end local v2    # "p2pSuppState":Ljava/lang/String;
    .end local v3    # "suppState":Ljava/lang/String;
    :catchall_0
    move-exception v4

    #@6b
    monitor-exit p0

    #@6c
    throw v4

    #@6d
    .restart local v1    # "m$iterator":Ljava/util/Iterator;
    .restart local v2    # "p2pSuppState":Ljava/lang/String;
    .restart local v3    # "suppState":Ljava/lang/String;
    :cond_2
    monitor-exit p0

    #@6e
    .line 647
    return-void
.end method

.method public declared-synchronized registerInterfaceMonitor(Ljava/lang/String;Lcom/android/server/wifi/WifiMonitor;)V
    .locals 3
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "m"    # Lcom/android/server/wifi/WifiMonitor;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 628
    :try_start_0
    invoke-static {}, Lcom/android/server/wifi/WifiMonitor;->-get0()Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    const-string/jumbo v0, "WifiMonitor"

    #@a
    new-instance v1, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v2, "registerInterface("

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    const-string/jumbo v2, "+"

    #@1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-static {p2}, Lcom/android/server/wifi/WifiMonitor;->-get2(Lcom/android/server/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    const-string/jumbo v2, ")"

    #@2c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v1

    #@30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v1

    #@34
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@37
    .line 629
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->mIfaceMap:Ljava/util/HashMap;

    #@39
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3c
    .line 630
    iget-object v0, p0, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@3e
    if-nez v0, :cond_1

    #@40
    .line 631
    invoke-static {p2}, Lcom/android/server/wifi/WifiMonitor;->-get3(Lcom/android/server/wifi/WifiMonitor;)Lcom/android/server/wifi/WifiNative;

    #@43
    move-result-object v0

    #@44
    iput-object v0, p0, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@46
    :cond_1
    monitor-exit p0

    #@47
    .line 627
    return-void

    #@48
    :catchall_0
    move-exception v0

    #@49
    monitor-exit p0

    #@4a
    throw v0
.end method

.method public declared-synchronized startMonitoring(Ljava/lang/String;)V
    .locals 7
    .param p1, "iface"    # Ljava/lang/String;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 584
    :try_start_0
    iget-object v4, p0, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->mIfaceMap:Ljava/util/HashMap;

    #@3
    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v3

    #@7
    check-cast v3, Lcom/android/server/wifi/WifiMonitor;

    #@9
    .line 585
    .local v3, "m":Lcom/android/server/wifi/WifiMonitor;
    if-nez v3, :cond_0

    #@b
    .line 586
    const-string/jumbo v4, "WifiMonitor"

    #@e
    new-instance v5, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v6, "startMonitor called with unknown iface="

    #@16
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v5

    #@1a
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v5

    #@1e
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v5

    #@22
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    monitor-exit p0

    #@26
    .line 587
    return-void

    #@27
    .line 590
    :cond_0
    :try_start_1
    const-string/jumbo v4, "WifiMonitor"

    #@2a
    new-instance v5, Ljava/lang/StringBuilder;

    #@2c
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@2f
    const-string/jumbo v6, "startMonitoring("

    #@32
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v5

    #@36
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v5

    #@3a
    const-string/jumbo v6, ") with mConnected = "

    #@3d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v5

    #@41
    iget-boolean v6, p0, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->mConnected:Z

    #@43
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@46
    move-result-object v5

    #@47
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object v5

    #@4b
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@4e
    .line 592
    iget-boolean v4, p0, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->mConnected:Z

    #@50
    if-eqz v4, :cond_1

    #@52
    .line 593
    const/4 v4, 0x1

    #@53
    invoke-static {v3, v4}, Lcom/android/server/wifi/WifiMonitor;->-set0(Lcom/android/server/wifi/WifiMonitor;Z)Z

    #@56
    .line 594
    invoke-static {v3}, Lcom/android/server/wifi/WifiMonitor;->-get2(Lcom/android/server/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    #@59
    move-result-object v4

    #@5a
    const v5, 0x24001

    #@5d
    invoke-virtual {v4, v5}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@60
    :goto_0
    monitor-exit p0

    #@61
    .line 583
    return-void

    #@62
    .line 596
    :cond_1
    :try_start_2
    invoke-static {}, Lcom/android/server/wifi/WifiMonitor;->-get0()Z

    #@65
    move-result v4

    #@66
    if-eqz v4, :cond_2

    #@68
    const-string/jumbo v4, "WifiMonitor"

    #@6b
    const-string/jumbo v5, "connecting to supplicant"

    #@6e
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@71
    .line 597
    :cond_2
    const/4 v0, 0x0

    #@72
    .local v0, "connectTries":I
    move v1, v0

    #@73
    .line 599
    .end local v0    # "connectTries":I
    .local v1, "connectTries":I
    :goto_1
    iget-object v4, p0, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@75
    invoke-virtual {v4}, Lcom/android/server/wifi/WifiNative;->connectToSupplicant()Z

    #@78
    move-result v4

    #@79
    if-eqz v4, :cond_3

    #@7b
    .line 600
    const/4 v4, 0x1

    #@7c
    invoke-static {v3, v4}, Lcom/android/server/wifi/WifiMonitor;->-set0(Lcom/android/server/wifi/WifiMonitor;Z)Z

    #@7f
    .line 601
    invoke-static {v3}, Lcom/android/server/wifi/WifiMonitor;->-get2(Lcom/android/server/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    #@82
    move-result-object v4

    #@83
    const v5, 0x24001

    #@86
    invoke-virtual {v4, v5}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    #@89
    .line 602
    const/4 v4, 0x1

    #@8a
    iput-boolean v4, p0, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->mConnected:Z

    #@8c
    .line 603
    new-instance v4, Lcom/android/server/wifi/WifiMonitor$MonitorThread;

    #@8e
    iget-object v5, p0, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@90
    invoke-direct {v4, v5, p0}, Lcom/android/server/wifi/WifiMonitor$MonitorThread;-><init>(Lcom/android/server/wifi/WifiNative;Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;)V

    #@93
    invoke-virtual {v4}, Lcom/android/server/wifi/WifiMonitor$MonitorThread;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@96
    goto :goto_0

    #@97
    .end local v1    # "connectTries":I
    .end local v3    # "m":Lcom/android/server/wifi/WifiMonitor;
    :catchall_0
    move-exception v4

    #@98
    monitor-exit p0

    #@99
    throw v4

    #@9a
    .line 606
    .restart local v1    # "connectTries":I
    .restart local v3    # "m":Lcom/android/server/wifi/WifiMonitor;
    :cond_3
    add-int/lit8 v0, v1, 0x1

    #@9c
    .end local v1    # "connectTries":I
    .restart local v0    # "connectTries":I
    const/4 v4, 0x5

    #@9d
    if-ge v1, v4, :cond_4

    #@9f
    .line 608
    const-wide/16 v4, 0x3e8

    #@a1
    :try_start_3
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@a4
    :goto_2
    move v1, v0

    #@a5
    .end local v0    # "connectTries":I
    .restart local v1    # "connectTries":I
    goto :goto_1

    #@a6
    .line 609
    .end local v1    # "connectTries":I
    .restart local v0    # "connectTries":I
    :catch_0
    move-exception v2

    #@a7
    .local v2, "ignore":Ljava/lang/InterruptedException;
    goto :goto_2

    #@a8
    .line 612
    .end local v2    # "ignore":Ljava/lang/InterruptedException;
    :cond_4
    :try_start_4
    invoke-static {v3}, Lcom/android/server/wifi/WifiMonitor;->-get2(Lcom/android/server/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    #@ab
    move-result-object v4

    #@ac
    const v5, 0x24002

    #@af
    invoke-virtual {v4, v5}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    #@b2
    .line 613
    const-string/jumbo v4, "WifiMonitor"

    #@b5
    new-instance v5, Ljava/lang/StringBuilder;

    #@b7
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@ba
    const-string/jumbo v6, "startMonitoring("

    #@bd
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c0
    move-result-object v5

    #@c1
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c4
    move-result-object v5

    #@c5
    const-string/jumbo v6, ") failed!"

    #@c8
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cb
    move-result-object v5

    #@cc
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@cf
    move-result-object v5

    #@d0
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@d3
    goto :goto_0
.end method

.method public declared-synchronized stopMonitoring(Ljava/lang/String;)V
    .locals 4
    .param p1, "iface"    # Ljava/lang/String;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 621
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->mIfaceMap:Ljava/util/HashMap;

    #@3
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Lcom/android/server/wifi/WifiMonitor;

    #@9
    .line 622
    .local v0, "m":Lcom/android/server/wifi/WifiMonitor;
    invoke-static {}, Lcom/android/server/wifi/WifiMonitor;->-get0()Z

    #@c
    move-result v1

    #@d
    if-eqz v1, :cond_0

    #@f
    const-string/jumbo v1, "WifiMonitor"

    #@12
    new-instance v2, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v3, "stopMonitoring("

    #@1a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    const-string/jumbo v3, ") = "

    #@25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v2

    #@29
    invoke-static {v0}, Lcom/android/server/wifi/WifiMonitor;->-get2(Lcom/android/server/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    #@2c
    move-result-object v3

    #@2d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v2

    #@31
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v2

    #@35
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@38
    .line 623
    :cond_0
    const/4 v1, 0x0

    #@39
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiMonitor;->-set0(Lcom/android/server/wifi/WifiMonitor;Z)Z

    #@3c
    .line 624
    invoke-static {v0}, Lcom/android/server/wifi/WifiMonitor;->-get2(Lcom/android/server/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    #@3f
    move-result-object v1

    #@40
    const v2, 0x24002

    #@43
    invoke-virtual {v1, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@46
    monitor-exit p0

    #@47
    .line 620
    return-void

    #@48
    .end local v0    # "m":Lcom/android/server/wifi/WifiMonitor;
    :catchall_0
    move-exception v1

    #@49
    monitor-exit p0

    #@4a
    throw v1
.end method

.method public declared-synchronized stopSupplicant()V
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 644
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@3
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiNative;->stopSupplicant()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit p0

    #@7
    .line 643
    return-void

    #@8
    :catchall_0
    move-exception v0

    #@9
    monitor-exit p0

    #@a
    throw v0
.end method

.method public declared-synchronized unregisterInterfaceMonitor(Ljava/lang/String;)V
    .locals 4
    .param p1, "iface"    # Ljava/lang/String;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 639
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->mIfaceMap:Ljava/util/HashMap;

    #@3
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Lcom/android/server/wifi/WifiMonitor;

    #@9
    .line 640
    .local v0, "m":Lcom/android/server/wifi/WifiMonitor;
    invoke-static {}, Lcom/android/server/wifi/WifiMonitor;->-get0()Z

    #@c
    move-result v1

    #@d
    if-eqz v1, :cond_0

    #@f
    const-string/jumbo v1, "WifiMonitor"

    #@12
    new-instance v2, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v3, "unregisterInterface("

    #@1a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    const-string/jumbo v3, "+"

    #@25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v2

    #@29
    invoke-static {v0}, Lcom/android/server/wifi/WifiMonitor;->-get2(Lcom/android/server/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    #@2c
    move-result-object v3

    #@2d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v2

    #@31
    const-string/jumbo v3, ")"

    #@34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v2

    #@38
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v2

    #@3c
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3f
    :cond_0
    monitor-exit p0

    #@40
    .line 635
    return-void

    #@41
    .end local v0    # "m":Lcom/android/server/wifi/WifiMonitor;
    :catchall_0
    move-exception v1

    #@42
    monitor-exit p0

    #@43
    throw v1
.end method
