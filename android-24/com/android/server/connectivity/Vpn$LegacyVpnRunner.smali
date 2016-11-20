.class Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
.super Ljava/lang/Thread;
.source "Vpn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Vpn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LegacyVpnRunner"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LegacyVpnRunner"


# instance fields
.field private final mArguments:[[Ljava/lang/String;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mDaemons:[Ljava/lang/String;

.field private final mOuterConnection:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mOuterInterface:Ljava/lang/String;

.field private final mSockets:[Landroid/net/LocalSocket;

.field private mTimer:J

.field final synthetic this$0:Lcom/android/server/connectivity/Vpn;


# direct methods
.method static synthetic -get0(Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterConnection:Ljava/util/concurrent/atomic/AtomicInteger;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterInterface:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public constructor <init>(Lcom/android/server/connectivity/Vpn;Lcom/android/internal/net/VpnConfig;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 10
    .param p1, "this$0"    # Lcom/android/server/connectivity/Vpn;
    .param p2, "config"    # Lcom/android/internal/net/VpnConfig;
    .param p3, "racoon"    # [Ljava/lang/String;
    .param p4, "mtpd"    # [Ljava/lang/String;

    #@0
    .prologue
    const/4 v9, 0x2

    #@1
    const/4 v8, 0x1

    #@2
    const/4 v5, 0x0

    #@3
    .line 1505
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    #@5
    .line 1506
    const-string/jumbo v6, "LegacyVpnRunner"

    #@8
    invoke-direct {p0, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    #@b
    .line 1478
    new-instance v6, Ljava/util/concurrent/atomic/AtomicInteger;

    #@d
    const/4 v7, -0x1

    #@e
    invoke-direct {v6, v7}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    #@11
    .line 1477
    iput-object v6, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterConnection:Ljava/util/concurrent/atomic/AtomicInteger;

    #@13
    .line 1480
    const-wide/16 v6, -0x1

    #@15
    iput-wide v6, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mTimer:J

    #@17
    .line 1485
    new-instance v6, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$1;

    #@19
    invoke-direct {v6, p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$1;-><init>(Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;)V

    #@1c
    iput-object v6, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    #@1e
    .line 1507
    invoke-static {p1, p2}, Lcom/android/server/connectivity/Vpn;->-set0(Lcom/android/server/connectivity/Vpn;Lcom/android/internal/net/VpnConfig;)Lcom/android/internal/net/VpnConfig;

    #@21
    .line 1508
    new-array v6, v9, [Ljava/lang/String;

    #@23
    const-string/jumbo v7, "racoon"

    #@26
    aput-object v7, v6, v5

    #@28
    const-string/jumbo v7, "mtpd"

    #@2b
    aput-object v7, v6, v8

    #@2d
    iput-object v6, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    #@2f
    .line 1510
    new-array v6, v9, [[Ljava/lang/String;

    #@31
    aput-object p3, v6, v5

    #@33
    aput-object p4, v6, v8

    #@35
    iput-object v6, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    #@37
    .line 1511
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    #@39
    array-length v6, v6

    #@3a
    new-array v6, v6, [Landroid/net/LocalSocket;

    #@3c
    iput-object v6, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    #@3e
    .line 1519
    invoke-static {p1}, Lcom/android/server/connectivity/Vpn;->-get0(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    #@41
    move-result-object v6

    #@42
    iget-object v6, v6, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    #@44
    iput-object v6, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterInterface:Ljava/lang/String;

    #@46
    .line 1521
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterInterface:Ljava/lang/String;

    #@48
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@4b
    move-result v6

    #@4c
    if-nez v6, :cond_1

    #@4e
    .line 1522
    invoke-static {p1}, Lcom/android/server/connectivity/Vpn;->-get2(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;

    #@51
    move-result-object v6

    #@52
    invoke-static {v6}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    #@55
    move-result-object v0

    #@56
    .line 1523
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    #@59
    move-result-object v6

    #@5a
    array-length v7, v6

    #@5b
    :goto_0
    if-ge v5, v7, :cond_1

    #@5d
    aget-object v3, v6, v5

    #@5f
    .line 1524
    .local v3, "network":Landroid/net/Network;
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    #@62
    move-result-object v2

    #@63
    .line 1525
    .local v2, "lp":Landroid/net/LinkProperties;
    if-eqz v2, :cond_0

    #@65
    invoke-virtual {v2}, Landroid/net/LinkProperties;->getAllInterfaceNames()Ljava/util/List;

    #@68
    move-result-object v8

    #@69
    iget-object v9, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterInterface:Ljava/lang/String;

    #@6b
    invoke-interface {v8, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@6e
    move-result v8

    #@6f
    if-eqz v8, :cond_0

    #@71
    .line 1526
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    #@74
    move-result-object v4

    #@75
    .line 1527
    .local v4, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v4, :cond_0

    #@77
    iget-object v8, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterConnection:Ljava/util/concurrent/atomic/AtomicInteger;

    #@79
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    #@7c
    move-result v9

    #@7d
    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    #@80
    .line 1523
    .end local v4    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    #@82
    goto :goto_0

    #@83
    .line 1532
    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    .end local v2    # "lp":Landroid/net/LinkProperties;
    .end local v3    # "network":Landroid/net/Network;
    :cond_1
    new-instance v1, Landroid/content/IntentFilter;

    #@85
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    #@88
    .line 1533
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v5, "android.net.conn.CONNECTIVITY_CHANGE"

    #@8b
    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@8e
    .line 1534
    invoke-static {p1}, Lcom/android/server/connectivity/Vpn;->-get2(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;

    #@91
    move-result-object v5

    #@92
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    #@94
    invoke-virtual {v5, v6, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@97
    .line 1505
    return-void
.end method

.method private checkpoint(Z)V
    .locals 6
    .param p1, "yield"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    #@0
    .prologue
    .line 1568
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@3
    move-result-wide v0

    #@4
    .line 1569
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mTimer:J

    #@6
    const-wide/16 v4, -0x1

    #@8
    cmp-long v2, v2, v4

    #@a
    if-nez v2, :cond_0

    #@c
    .line 1570
    iput-wide v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mTimer:J

    #@e
    .line 1571
    const-wide/16 v2, 0x1

    #@10
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    #@13
    .line 1567
    :goto_0
    return-void

    #@14
    .line 1572
    :cond_0
    iget-wide v2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mTimer:J

    #@16
    sub-long v2, v0, v2

    #@18
    const-wide/32 v4, 0xea60

    #@1b
    cmp-long v2, v2, v4

    #@1d
    if-gtz v2, :cond_2

    #@1f
    .line 1573
    if-eqz p1, :cond_1

    #@21
    const/16 v2, 0xc8

    #@23
    :goto_1
    int-to-long v2, v2

    #@24
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    #@27
    goto :goto_0

    #@28
    :cond_1
    const/4 v2, 0x1

    #@29
    goto :goto_1

    #@2a
    .line 1575
    :cond_2
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    #@2c
    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    #@2e
    const-string/jumbo v4, "checkpoint"

    #@31
    invoke-static {v2, v3, v4}, Lcom/android/server/connectivity/Vpn;->-wrap5(Lcom/android/server/connectivity/Vpn;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    #@34
    .line 1576
    new-instance v2, Ljava/lang/IllegalStateException;

    #@36
    const-string/jumbo v3, "Time is up"

    #@39
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@3c
    throw v2
.end method

.method private execute()V
    .locals 26

    #@0
    .prologue
    .line 1582
    const/16 v16, 0x0

    #@2
    .line 1585
    .local v16, "initFinished":Z
    const/16 v22, 0x0

    #@4
    :try_start_0
    move-object/from16 v0, p0

    #@6
    move/from16 v1, v22

    #@8
    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkpoint(Z)V

    #@b
    .line 1588
    move-object/from16 v0, p0

    #@d
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    #@f
    move-object/from16 v23, v0

    #@11
    const/16 v22, 0x0

    #@13
    move-object/from16 v0, v23

    #@15
    array-length v0, v0

    #@16
    move/from16 v24, v0

    #@18
    :goto_0
    move/from16 v0, v22

    #@1a
    move/from16 v1, v24

    #@1c
    if-ge v0, v1, :cond_1

    #@1e
    aget-object v9, v23, v22

    #@20
    .line 1589
    .local v9, "daemon":Ljava/lang/String;
    :goto_1
    invoke-static {v9}, Landroid/os/SystemService;->isStopped(Ljava/lang/String;)Z

    #@23
    move-result v25

    #@24
    if-nez v25, :cond_0

    #@26
    .line 1590
    const/16 v25, 0x1

    #@28
    move-object/from16 v0, p0

    #@2a
    move/from16 v1, v25

    #@2c
    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkpoint(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2f
    goto :goto_1

    #@30
    .line 1758
    .end local v9    # "daemon":Ljava/lang/String;
    :catch_0
    move-exception v11

    #@31
    .line 1759
    .local v11, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v22, "LegacyVpnRunner"

    #@34
    const-string/jumbo v23, "Aborting"

    #@37
    move-object/from16 v0, v22

    #@39
    move-object/from16 v1, v23

    #@3b
    invoke-static {v0, v1, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3e
    .line 1760
    move-object/from16 v0, p0

    #@40
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    #@42
    move-object/from16 v22, v0

    #@44
    sget-object v23, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    #@46
    invoke-virtual {v11}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    #@49
    move-result-object v24

    #@4a
    invoke-static/range {v22 .. v24}, Lcom/android/server/connectivity/Vpn;->-wrap5(Lcom/android/server/connectivity/Vpn;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    #@4d
    .line 1761
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->exit()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@50
    .line 1764
    if-nez v16, :cond_22

    #@52
    .line 1765
    move-object/from16 v0, p0

    #@54
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    #@56
    move-object/from16 v23, v0

    #@58
    const/16 v22, 0x0

    #@5a
    move-object/from16 v0, v23

    #@5c
    array-length v0, v0

    #@5d
    move/from16 v24, v0

    #@5f
    :goto_2
    move/from16 v0, v22

    #@61
    move/from16 v1, v24

    #@63
    if-ge v0, v1, :cond_22

    #@65
    aget-object v9, v23, v22

    #@67
    .line 1766
    .restart local v9    # "daemon":Ljava/lang/String;
    invoke-static {v9}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V

    #@6a
    .line 1765
    add-int/lit8 v22, v22, 0x1

    #@6c
    goto :goto_2

    #@6d
    .line 1588
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_0
    add-int/lit8 v22, v22, 0x1

    #@6f
    goto :goto_0

    #@70
    .line 1595
    .end local v9    # "daemon":Ljava/lang/String;
    :cond_1
    :try_start_2
    new-instance v21, Ljava/io/File;

    #@72
    const-string/jumbo v22, "/data/misc/vpn/state"

    #@75
    invoke-direct/range {v21 .. v22}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@78
    .line 1596
    .local v21, "state":Ljava/io/File;
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->delete()Z

    #@7b
    .line 1597
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->exists()Z

    #@7e
    move-result v22

    #@7f
    if-eqz v22, :cond_2

    #@81
    .line 1598
    new-instance v22, Ljava/lang/IllegalStateException;

    #@83
    const-string/jumbo v23, "Cannot delete the state"

    #@86
    invoke-direct/range {v22 .. v23}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@89
    throw v22
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@8a
    .line 1762
    .end local v21    # "state":Ljava/io/File;
    :catchall_0
    move-exception v22

    #@8b
    .line 1764
    if-nez v16, :cond_24

    #@8d
    .line 1765
    move-object/from16 v0, p0

    #@8f
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    #@91
    move-object/from16 v24, v0

    #@93
    const/16 v23, 0x0

    #@95
    move-object/from16 v0, v24

    #@97
    array-length v0, v0

    #@98
    move/from16 v25, v0

    #@9a
    :goto_3
    move/from16 v0, v23

    #@9c
    move/from16 v1, v25

    #@9e
    if-ge v0, v1, :cond_24

    #@a0
    aget-object v9, v24, v23

    #@a2
    .line 1766
    .restart local v9    # "daemon":Ljava/lang/String;
    invoke-static {v9}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V

    #@a5
    .line 1765
    add-int/lit8 v23, v23, 0x1

    #@a7
    goto :goto_3

    #@a8
    .line 1600
    .end local v9    # "daemon":Ljava/lang/String;
    .restart local v21    # "state":Ljava/io/File;
    :cond_2
    :try_start_3
    new-instance v22, Ljava/io/File;

    #@aa
    const-string/jumbo v23, "/data/misc/vpn/abort"

    #@ad
    invoke-direct/range {v22 .. v23}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@b0
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->delete()Z

    #@b3
    .line 1601
    const/16 v16, 0x1

    #@b5
    .line 1604
    const/16 v19, 0x0

    #@b7
    .line 1605
    .local v19, "restart":Z
    move-object/from16 v0, p0

    #@b9
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    #@bb
    move-object/from16 v23, v0

    #@bd
    const/16 v22, 0x0

    #@bf
    move-object/from16 v0, v23

    #@c1
    array-length v0, v0

    #@c2
    move/from16 v24, v0

    #@c4
    :goto_4
    move/from16 v0, v22

    #@c6
    move/from16 v1, v24

    #@c8
    if-ge v0, v1, :cond_5

    #@ca
    aget-object v7, v23, v22

    #@cc
    .line 1606
    .local v7, "arguments":[Ljava/lang/String;
    if-nez v19, :cond_3

    #@ce
    if-eqz v7, :cond_4

    #@d0
    :cond_3
    const/16 v19, 0x1

    #@d2
    .line 1605
    :goto_5
    add-int/lit8 v22, v22, 0x1

    #@d4
    goto :goto_4

    #@d5
    .line 1606
    :cond_4
    const/16 v19, 0x0

    #@d7
    goto :goto_5

    #@d8
    .line 1608
    .end local v7    # "arguments":[Ljava/lang/String;
    :cond_5
    if-nez v19, :cond_9

    #@da
    .line 1609
    move-object/from16 v0, p0

    #@dc
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    #@de
    move-object/from16 v22, v0

    #@e0
    invoke-static/range {v22 .. v22}, Lcom/android/server/connectivity/Vpn;->-wrap3(Lcom/android/server/connectivity/Vpn;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@e3
    .line 1764
    if-nez v16, :cond_6

    #@e5
    .line 1765
    move-object/from16 v0, p0

    #@e7
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    #@e9
    move-object/from16 v23, v0

    #@eb
    const/16 v22, 0x0

    #@ed
    move-object/from16 v0, v23

    #@ef
    array-length v0, v0

    #@f0
    move/from16 v24, v0

    #@f2
    :goto_6
    move/from16 v0, v22

    #@f4
    move/from16 v1, v24

    #@f6
    if-ge v0, v1, :cond_6

    #@f8
    aget-object v9, v23, v22

    #@fa
    .line 1766
    .restart local v9    # "daemon":Ljava/lang/String;
    invoke-static {v9}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V

    #@fd
    .line 1765
    add-int/lit8 v22, v22, 0x1

    #@ff
    goto :goto_6

    #@100
    .line 1771
    .end local v9    # "daemon":Ljava/lang/String;
    :cond_6
    if-eqz v16, :cond_7

    #@102
    move-object/from16 v0, p0

    #@104
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    #@106
    move-object/from16 v22, v0

    #@108
    invoke-static/range {v22 .. v22}, Lcom/android/server/connectivity/Vpn;->-get6(Lcom/android/server/connectivity/Vpn;)Landroid/net/NetworkInfo;

    #@10b
    move-result-object v22

    #@10c
    invoke-virtual/range {v22 .. v22}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    #@10f
    move-result-object v22

    #@110
    sget-object v23, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    #@112
    move-object/from16 v0, v22

    #@114
    move-object/from16 v1, v23

    #@116
    if-ne v0, v1, :cond_8

    #@118
    .line 1772
    :cond_7
    move-object/from16 v0, p0

    #@11a
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    #@11c
    move-object/from16 v22, v0

    #@11e
    invoke-static/range {v22 .. v22}, Lcom/android/server/connectivity/Vpn;->-wrap3(Lcom/android/server/connectivity/Vpn;)V

    #@121
    .line 1610
    :cond_8
    return-void

    #@122
    .line 1612
    :cond_9
    :try_start_4
    move-object/from16 v0, p0

    #@124
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    #@126
    move-object/from16 v22, v0

    #@128
    sget-object v23, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    #@12a
    const-string/jumbo v24, "execute"

    #@12d
    invoke-static/range {v22 .. v24}, Lcom/android/server/connectivity/Vpn;->-wrap5(Lcom/android/server/connectivity/Vpn;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    #@130
    .line 1615
    const/4 v14, 0x0

    #@131
    .local v14, "i":I
    :goto_7
    move-object/from16 v0, p0

    #@133
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    #@135
    move-object/from16 v22, v0

    #@137
    move-object/from16 v0, v22

    #@139
    array-length v0, v0

    #@13a
    move/from16 v22, v0

    #@13c
    move/from16 v0, v22

    #@13e
    if-ge v14, v0, :cond_10

    #@140
    .line 1616
    move-object/from16 v0, p0

    #@142
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    #@144
    move-object/from16 v22, v0

    #@146
    aget-object v7, v22, v14

    #@148
    .line 1617
    .restart local v7    # "arguments":[Ljava/lang/String;
    if-nez v7, :cond_b

    #@14a
    .line 1615
    :cond_a
    add-int/lit8 v14, v14, 0x1

    #@14c
    goto :goto_7

    #@14d
    .line 1622
    :cond_b
    move-object/from16 v0, p0

    #@14f
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    #@151
    move-object/from16 v22, v0

    #@153
    aget-object v9, v22, v14

    #@155
    .line 1623
    .restart local v9    # "daemon":Ljava/lang/String;
    invoke-static {v9}, Landroid/os/SystemService;->start(Ljava/lang/String;)V

    #@158
    .line 1626
    :goto_8
    invoke-static {v9}, Landroid/os/SystemService;->isRunning(Ljava/lang/String;)Z

    #@15b
    move-result v22

    #@15c
    if-nez v22, :cond_c

    #@15e
    .line 1627
    const/16 v22, 0x1

    #@160
    move-object/from16 v0, p0

    #@162
    move/from16 v1, v22

    #@164
    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkpoint(Z)V

    #@167
    goto :goto_8

    #@168
    .line 1631
    :cond_c
    move-object/from16 v0, p0

    #@16a
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    #@16c
    move-object/from16 v22, v0

    #@16e
    new-instance v23, Landroid/net/LocalSocket;

    #@170
    invoke-direct/range {v23 .. v23}, Landroid/net/LocalSocket;-><init>()V

    #@173
    aput-object v23, v22, v14

    #@175
    .line 1632
    new-instance v5, Landroid/net/LocalSocketAddress;

    #@177
    .line 1633
    sget-object v22, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    #@179
    .line 1632
    move-object/from16 v0, v22

    #@17b
    invoke-direct {v5, v9, v0}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@17e
    .line 1638
    .local v5, "address":Landroid/net/LocalSocketAddress;
    :goto_9
    :try_start_5
    move-object/from16 v0, p0

    #@180
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    #@182
    move-object/from16 v22, v0

    #@184
    aget-object v22, v22, v14

    #@186
    move-object/from16 v0, v22

    #@188
    invoke-virtual {v0, v5}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@18b
    .line 1645
    :try_start_6
    move-object/from16 v0, p0

    #@18d
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    #@18f
    move-object/from16 v22, v0

    #@191
    aget-object v22, v22, v14

    #@193
    const/16 v23, 0x1f4

    #@195
    invoke-virtual/range {v22 .. v23}, Landroid/net/LocalSocket;->setSoTimeout(I)V

    #@198
    .line 1648
    move-object/from16 v0, p0

    #@19a
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    #@19c
    move-object/from16 v22, v0

    #@19e
    aget-object v22, v22, v14

    #@1a0
    invoke-virtual/range {v22 .. v22}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    #@1a3
    move-result-object v17

    #@1a4
    .line 1649
    .local v17, "out":Ljava/io/OutputStream;
    const/16 v22, 0x0

    #@1a6
    array-length v0, v7

    #@1a7
    move/from16 v23, v0

    #@1a9
    :goto_a
    move/from16 v0, v22

    #@1ab
    move/from16 v1, v23

    #@1ad
    if-ge v0, v1, :cond_e

    #@1af
    aget-object v6, v7, v22

    #@1b1
    .line 1650
    .local v6, "argument":Ljava/lang/String;
    sget-object v24, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@1b3
    move-object/from16 v0, v24

    #@1b5
    invoke-virtual {v6, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    #@1b8
    move-result-object v8

    #@1b9
    .line 1651
    .local v8, "bytes":[B
    array-length v0, v8

    #@1ba
    move/from16 v24, v0

    #@1bc
    const v25, 0xffff

    #@1bf
    move/from16 v0, v24

    #@1c1
    move/from16 v1, v25

    #@1c3
    if-lt v0, v1, :cond_d

    #@1c5
    .line 1652
    new-instance v22, Ljava/lang/IllegalArgumentException;

    #@1c7
    const-string/jumbo v23, "Argument is too large"

    #@1ca
    invoke-direct/range {v22 .. v23}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1cd
    throw v22

    #@1ce
    .line 1640
    .end local v6    # "argument":Ljava/lang/String;
    .end local v8    # "bytes":[B
    .end local v17    # "out":Ljava/io/OutputStream;
    :catch_1
    move-exception v11

    #@1cf
    .line 1643
    .restart local v11    # "e":Ljava/lang/Exception;
    const/16 v22, 0x1

    #@1d1
    move-object/from16 v0, p0

    #@1d3
    move/from16 v1, v22

    #@1d5
    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkpoint(Z)V

    #@1d8
    goto :goto_9

    #@1d9
    .line 1654
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v6    # "argument":Ljava/lang/String;
    .restart local v8    # "bytes":[B
    .restart local v17    # "out":Ljava/io/OutputStream;
    :cond_d
    array-length v0, v8

    #@1da
    move/from16 v24, v0

    #@1dc
    shr-int/lit8 v24, v24, 0x8

    #@1de
    move-object/from16 v0, v17

    #@1e0
    move/from16 v1, v24

    #@1e2
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    #@1e5
    .line 1655
    array-length v0, v8

    #@1e6
    move/from16 v24, v0

    #@1e8
    move-object/from16 v0, v17

    #@1ea
    move/from16 v1, v24

    #@1ec
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    #@1ef
    .line 1656
    move-object/from16 v0, v17

    #@1f1
    invoke-virtual {v0, v8}, Ljava/io/OutputStream;->write([B)V

    #@1f4
    .line 1657
    const/16 v24, 0x0

    #@1f6
    move-object/from16 v0, p0

    #@1f8
    move/from16 v1, v24

    #@1fa
    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkpoint(Z)V

    #@1fd
    .line 1649
    add-int/lit8 v22, v22, 0x1

    #@1ff
    goto :goto_a

    #@200
    .line 1659
    .end local v6    # "argument":Ljava/lang/String;
    .end local v8    # "bytes":[B
    :cond_e
    const/16 v22, 0xff

    #@202
    move-object/from16 v0, v17

    #@204
    move/from16 v1, v22

    #@206
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    #@209
    .line 1660
    const/16 v22, 0xff

    #@20b
    move-object/from16 v0, v17

    #@20d
    move/from16 v1, v22

    #@20f
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    #@212
    .line 1661
    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStream;->flush()V

    #@215
    .line 1664
    move-object/from16 v0, p0

    #@217
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    #@219
    move-object/from16 v22, v0

    #@21b
    aget-object v22, v22, v14

    #@21d
    invoke-virtual/range {v22 .. v22}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@220
    move-result-object v15

    #@221
    .line 1667
    .local v15, "in":Ljava/io/InputStream;
    :goto_b
    :try_start_7
    invoke-virtual {v15}, Ljava/io/InputStream;->read()I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@224
    move-result v22

    #@225
    const/16 v23, -0x1

    #@227
    move/from16 v0, v22

    #@229
    move/from16 v1, v23

    #@22b
    if-eq v0, v1, :cond_a

    #@22d
    .line 1673
    :goto_c
    const/16 v22, 0x1

    #@22f
    :try_start_8
    move-object/from16 v0, p0

    #@231
    move/from16 v1, v22

    #@233
    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkpoint(Z)V

    #@236
    goto :goto_b

    #@237
    .line 1670
    :catch_2
    move-exception v11

    #@238
    .restart local v11    # "e":Ljava/lang/Exception;
    goto :goto_c

    #@239
    .line 1686
    .end local v5    # "address":Landroid/net/LocalSocketAddress;
    .end local v7    # "arguments":[Ljava/lang/String;
    .end local v9    # "daemon":Ljava/lang/String;
    .end local v11    # "e":Ljava/lang/Exception;
    .end local v15    # "in":Ljava/io/InputStream;
    .end local v17    # "out":Ljava/io/OutputStream;
    :cond_f
    const/16 v22, 0x1

    #@23b
    move-object/from16 v0, p0

    #@23d
    move/from16 v1, v22

    #@23f
    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkpoint(Z)V

    #@242
    .line 1678
    :cond_10
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->exists()Z

    #@245
    move-result v22

    #@246
    if-nez v22, :cond_13

    #@248
    .line 1680
    const/4 v14, 0x0

    #@249
    :goto_d
    move-object/from16 v0, p0

    #@24b
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    #@24d
    move-object/from16 v22, v0

    #@24f
    move-object/from16 v0, v22

    #@251
    array-length v0, v0

    #@252
    move/from16 v22, v0

    #@254
    move/from16 v0, v22

    #@256
    if-ge v14, v0, :cond_f

    #@258
    .line 1681
    move-object/from16 v0, p0

    #@25a
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    #@25c
    move-object/from16 v22, v0

    #@25e
    aget-object v9, v22, v14

    #@260
    .line 1682
    .restart local v9    # "daemon":Ljava/lang/String;
    move-object/from16 v0, p0

    #@262
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    #@264
    move-object/from16 v22, v0

    #@266
    aget-object v22, v22, v14

    #@268
    if-eqz v22, :cond_11

    #@26a
    invoke-static {v9}, Landroid/os/SystemService;->isRunning(Ljava/lang/String;)Z

    #@26d
    move-result v22

    #@26e
    if-eqz v22, :cond_12

    #@270
    .line 1680
    :cond_11
    add-int/lit8 v14, v14, 0x1

    #@272
    goto :goto_d

    #@273
    .line 1683
    :cond_12
    new-instance v22, Ljava/lang/IllegalStateException;

    #@275
    new-instance v23, Ljava/lang/StringBuilder;

    #@277
    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    #@27a
    move-object/from16 v0, v23

    #@27c
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27f
    move-result-object v23

    #@280
    const-string/jumbo v24, " is dead"

    #@283
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@286
    move-result-object v23

    #@287
    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28a
    move-result-object v23

    #@28b
    invoke-direct/range {v22 .. v23}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@28e
    throw v22

    #@28f
    .line 1690
    .end local v9    # "daemon":Ljava/lang/String;
    :cond_13
    const/16 v22, 0x0

    #@291
    const/16 v23, 0x0

    #@293
    invoke-static/range {v21 .. v23}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    #@296
    move-result-object v22

    #@297
    const-string/jumbo v23, "\n"

    #@29a
    const/16 v24, -0x1

    #@29c
    invoke-virtual/range {v22 .. v24}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    #@29f
    move-result-object v18

    #@2a0
    .line 1691
    .local v18, "parameters":[Ljava/lang/String;
    move-object/from16 v0, v18

    #@2a2
    array-length v0, v0

    #@2a3
    move/from16 v22, v0

    #@2a5
    const/16 v23, 0x7

    #@2a7
    move/from16 v0, v22

    #@2a9
    move/from16 v1, v23

    #@2ab
    if-eq v0, v1, :cond_14

    #@2ad
    .line 1692
    new-instance v22, Ljava/lang/IllegalStateException;

    #@2af
    const-string/jumbo v23, "Cannot parse the state"

    #@2b2
    invoke-direct/range {v22 .. v23}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@2b5
    throw v22

    #@2b6
    .line 1696
    :cond_14
    move-object/from16 v0, p0

    #@2b8
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    #@2ba
    move-object/from16 v22, v0

    #@2bc
    invoke-static/range {v22 .. v22}, Lcom/android/server/connectivity/Vpn;->-get0(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    #@2bf
    move-result-object v22

    #@2c0
    const/16 v23, 0x0

    #@2c2
    aget-object v23, v18, v23

    #@2c4
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@2c7
    move-result-object v23

    #@2c8
    move-object/from16 v0, v23

    #@2ca
    move-object/from16 v1, v22

    #@2cc
    iput-object v0, v1, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    #@2ce
    .line 1698
    move-object/from16 v0, p0

    #@2d0
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    #@2d2
    move-object/from16 v22, v0

    #@2d4
    invoke-static/range {v22 .. v22}, Lcom/android/server/connectivity/Vpn;->-get0(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    #@2d7
    move-result-object v22

    #@2d8
    const/16 v23, 0x1

    #@2da
    aget-object v23, v18, v23

    #@2dc
    invoke-virtual/range {v22 .. v23}, Lcom/android/internal/net/VpnConfig;->addLegacyAddresses(Ljava/lang/String;)V

    #@2df
    .line 1700
    move-object/from16 v0, p0

    #@2e1
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    #@2e3
    move-object/from16 v22, v0

    #@2e5
    invoke-static/range {v22 .. v22}, Lcom/android/server/connectivity/Vpn;->-get0(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    #@2e8
    move-result-object v22

    #@2e9
    move-object/from16 v0, v22

    #@2eb
    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    #@2ed
    move-object/from16 v22, v0

    #@2ef
    if-eqz v22, :cond_15

    #@2f1
    move-object/from16 v0, p0

    #@2f3
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    #@2f5
    move-object/from16 v22, v0

    #@2f7
    invoke-static/range {v22 .. v22}, Lcom/android/server/connectivity/Vpn;->-get0(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    #@2fa
    move-result-object v22

    #@2fb
    move-object/from16 v0, v22

    #@2fd
    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    #@2ff
    move-object/from16 v22, v0

    #@301
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->isEmpty()Z

    #@304
    move-result v22

    #@305
    if-eqz v22, :cond_16

    #@307
    .line 1701
    :cond_15
    move-object/from16 v0, p0

    #@309
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    #@30b
    move-object/from16 v22, v0

    #@30d
    invoke-static/range {v22 .. v22}, Lcom/android/server/connectivity/Vpn;->-get0(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    #@310
    move-result-object v22

    #@311
    const/16 v23, 0x2

    #@313
    aget-object v23, v18, v23

    #@315
    invoke-virtual/range {v22 .. v23}, Lcom/android/internal/net/VpnConfig;->addLegacyRoutes(Ljava/lang/String;)V

    #@318
    .line 1705
    :cond_16
    move-object/from16 v0, p0

    #@31a
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    #@31c
    move-object/from16 v22, v0

    #@31e
    invoke-static/range {v22 .. v22}, Lcom/android/server/connectivity/Vpn;->-get0(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    #@321
    move-result-object v22

    #@322
    move-object/from16 v0, v22

    #@324
    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    #@326
    move-object/from16 v22, v0

    #@328
    if-eqz v22, :cond_17

    #@32a
    move-object/from16 v0, p0

    #@32c
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    #@32e
    move-object/from16 v22, v0

    #@330
    invoke-static/range {v22 .. v22}, Lcom/android/server/connectivity/Vpn;->-get0(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    #@333
    move-result-object v22

    #@334
    move-object/from16 v0, v22

    #@336
    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    #@338
    move-object/from16 v22, v0

    #@33a
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    #@33d
    move-result v22

    #@33e
    if-nez v22, :cond_18

    #@340
    .line 1706
    :cond_17
    const/16 v22, 0x3

    #@342
    aget-object v22, v18, v22

    #@344
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@347
    move-result-object v10

    #@348
    .line 1707
    .local v10, "dnsServers":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    #@34b
    move-result v22

    #@34c
    if-nez v22, :cond_18

    #@34e
    .line 1708
    move-object/from16 v0, p0

    #@350
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    #@352
    move-object/from16 v22, v0

    #@354
    invoke-static/range {v22 .. v22}, Lcom/android/server/connectivity/Vpn;->-get0(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    #@357
    move-result-object v22

    #@358
    const-string/jumbo v23, " "

    #@35b
    move-object/from16 v0, v23

    #@35d
    invoke-virtual {v10, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@360
    move-result-object v23

    #@361
    invoke-static/range {v23 .. v23}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@364
    move-result-object v23

    #@365
    move-object/from16 v0, v23

    #@367
    move-object/from16 v1, v22

    #@369
    iput-object v0, v1, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    #@36b
    .line 1713
    .end local v10    # "dnsServers":Ljava/lang/String;
    :cond_18
    move-object/from16 v0, p0

    #@36d
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    #@36f
    move-object/from16 v22, v0

    #@371
    invoke-static/range {v22 .. v22}, Lcom/android/server/connectivity/Vpn;->-get0(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    #@374
    move-result-object v22

    #@375
    move-object/from16 v0, v22

    #@377
    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    #@379
    move-object/from16 v22, v0

    #@37b
    if-eqz v22, :cond_19

    #@37d
    move-object/from16 v0, p0

    #@37f
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    #@381
    move-object/from16 v22, v0

    #@383
    invoke-static/range {v22 .. v22}, Lcom/android/server/connectivity/Vpn;->-get0(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    #@386
    move-result-object v22

    #@387
    move-object/from16 v0, v22

    #@389
    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    #@38b
    move-object/from16 v22, v0

    #@38d
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    #@390
    move-result v22

    #@391
    if-nez v22, :cond_1a

    #@393
    .line 1714
    :cond_19
    const/16 v22, 0x4

    #@395
    aget-object v22, v18, v22

    #@397
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@39a
    move-result-object v20

    #@39b
    .line 1715
    .local v20, "searchDomains":Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->isEmpty()Z

    #@39e
    move-result v22

    #@39f
    if-nez v22, :cond_1a

    #@3a1
    .line 1716
    move-object/from16 v0, p0

    #@3a3
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    #@3a5
    move-object/from16 v22, v0

    #@3a7
    invoke-static/range {v22 .. v22}, Lcom/android/server/connectivity/Vpn;->-get0(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    #@3aa
    move-result-object v22

    #@3ab
    const-string/jumbo v23, " "

    #@3ae
    move-object/from16 v0, v20

    #@3b0
    move-object/from16 v1, v23

    #@3b2
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@3b5
    move-result-object v23

    #@3b6
    invoke-static/range {v23 .. v23}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@3b9
    move-result-object v23

    #@3ba
    move-object/from16 v0, v23

    #@3bc
    move-object/from16 v1, v22

    #@3be
    iput-object v0, v1, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    #@3c0
    .line 1721
    .end local v20    # "searchDomains":Ljava/lang/String;
    :cond_1a
    const/16 v22, 0x5

    #@3c2
    aget-object v13, v18, v22

    #@3c4
    .line 1722
    .local v13, "endpoint":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    #@3c7
    move-result v22

    #@3c8
    if-nez v22, :cond_1b

    #@3ca
    .line 1724
    :try_start_9
    invoke-static {v13}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    #@3cd
    move-result-object v4

    #@3ce
    .line 1725
    .local v4, "addr":Ljava/net/InetAddress;
    instance-of v0, v4, Ljava/net/Inet4Address;

    #@3d0
    move/from16 v22, v0

    #@3d2
    if-eqz v22, :cond_1c

    #@3d4
    .line 1726
    move-object/from16 v0, p0

    #@3d6
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    #@3d8
    move-object/from16 v22, v0

    #@3da
    invoke-static/range {v22 .. v22}, Lcom/android/server/connectivity/Vpn;->-get0(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    #@3dd
    move-result-object v22

    #@3de
    move-object/from16 v0, v22

    #@3e0
    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    #@3e2
    move-object/from16 v22, v0

    #@3e4
    new-instance v23, Landroid/net/RouteInfo;

    #@3e6
    new-instance v24, Landroid/net/IpPrefix;

    #@3e8
    const/16 v25, 0x20

    #@3ea
    move-object/from16 v0, v24

    #@3ec
    move/from16 v1, v25

    #@3ee
    invoke-direct {v0, v4, v1}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    #@3f1
    const/16 v25, 0x9

    #@3f3
    invoke-direct/range {v23 .. v25}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;I)V

    #@3f6
    invoke-interface/range {v22 .. v23}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    #@3f9
    .line 1738
    .end local v4    # "addr":Ljava/net/InetAddress;
    :cond_1b
    :goto_e
    :try_start_a
    move-object/from16 v0, p0

    #@3fb
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    #@3fd
    move-object/from16 v23, v0

    #@3ff
    monitor-enter v23
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    #@400
    .line 1740
    :try_start_b
    move-object/from16 v0, p0

    #@402
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    #@404
    move-object/from16 v22, v0

    #@406
    invoke-static/range {v22 .. v22}, Lcom/android/server/connectivity/Vpn;->-get0(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    #@409
    move-result-object v22

    #@40a
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@40d
    move-result-wide v24

    #@40e
    move-wide/from16 v0, v24

    #@410
    move-object/from16 v2, v22

    #@412
    iput-wide v0, v2, Lcom/android/internal/net/VpnConfig;->startTime:J

    #@414
    .line 1743
    const/16 v22, 0x0

    #@416
    move-object/from16 v0, p0

    #@418
    move/from16 v1, v22

    #@41a
    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkpoint(Z)V

    #@41d
    .line 1746
    move-object/from16 v0, p0

    #@41f
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    #@421
    move-object/from16 v22, v0

    #@423
    move-object/from16 v0, p0

    #@425
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    #@427
    move-object/from16 v24, v0

    #@429
    invoke-static/range {v24 .. v24}, Lcom/android/server/connectivity/Vpn;->-get0(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    #@42c
    move-result-object v24

    #@42d
    move-object/from16 v0, v24

    #@42f
    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    #@431
    move-object/from16 v24, v0

    #@433
    move-object/from16 v0, v22

    #@435
    move-object/from16 v1, v24

    #@437
    invoke-static {v0, v1}, Lcom/android/server/connectivity/Vpn;->-wrap1(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)I

    #@43a
    move-result v22

    #@43b
    if-nez v22, :cond_1e

    #@43d
    .line 1747
    new-instance v22, Ljava/lang/IllegalStateException;

    #@43f
    new-instance v24, Ljava/lang/StringBuilder;

    #@441
    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    #@444
    move-object/from16 v0, p0

    #@446
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    #@448
    move-object/from16 v25, v0

    #@44a
    invoke-static/range {v25 .. v25}, Lcom/android/server/connectivity/Vpn;->-get0(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    #@44d
    move-result-object v25

    #@44e
    move-object/from16 v0, v25

    #@450
    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    #@452
    move-object/from16 v25, v0

    #@454
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@457
    move-result-object v24

    #@458
    const-string/jumbo v25, " is gone"

    #@45b
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45e
    move-result-object v24

    #@45f
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@462
    move-result-object v24

    #@463
    move-object/from16 v0, v22

    #@465
    move-object/from16 v1, v24

    #@467
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@46a
    throw v22
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    #@46b
    .line 1738
    :catchall_1
    move-exception v22

    #@46c
    :try_start_c
    monitor-exit v23

    #@46d
    throw v22
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    #@46e
    .line 1727
    .restart local v4    # "addr":Ljava/net/InetAddress;
    :cond_1c
    :try_start_d
    instance-of v0, v4, Ljava/net/Inet6Address;

    #@470
    move/from16 v22, v0

    #@472
    if-eqz v22, :cond_1d

    #@474
    .line 1728
    move-object/from16 v0, p0

    #@476
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    #@478
    move-object/from16 v22, v0

    #@47a
    invoke-static/range {v22 .. v22}, Lcom/android/server/connectivity/Vpn;->-get0(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    #@47d
    move-result-object v22

    #@47e
    move-object/from16 v0, v22

    #@480
    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    #@482
    move-object/from16 v22, v0

    #@484
    new-instance v23, Landroid/net/RouteInfo;

    #@486
    new-instance v24, Landroid/net/IpPrefix;

    #@488
    const/16 v25, 0x80

    #@48a
    move-object/from16 v0, v24

    #@48c
    move/from16 v1, v25

    #@48e
    invoke-direct {v0, v4, v1}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    #@491
    const/16 v25, 0x9

    #@493
    invoke-direct/range {v23 .. v25}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;I)V

    #@496
    invoke-interface/range {v22 .. v23}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_d} :catch_3
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    #@499
    goto/16 :goto_e

    #@49b
    .line 1732
    .end local v4    # "addr":Ljava/net/InetAddress;
    :catch_3
    move-exception v12

    #@49c
    .line 1733
    .local v12, "e":Ljava/lang/IllegalArgumentException;
    :try_start_e
    const-string/jumbo v22, "LegacyVpnRunner"

    #@49f
    new-instance v23, Ljava/lang/StringBuilder;

    #@4a1
    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    #@4a4
    const-string/jumbo v24, "Exception constructing throw route to "

    #@4a7
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4aa
    move-result-object v23

    #@4ab
    move-object/from16 v0, v23

    #@4ad
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b0
    move-result-object v23

    #@4b1
    const-string/jumbo v24, ": "

    #@4b4
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b7
    move-result-object v23

    #@4b8
    move-object/from16 v0, v23

    #@4ba
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4bd
    move-result-object v23

    #@4be
    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c1
    move-result-object v23

    #@4c2
    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    #@4c5
    goto/16 :goto_e

    #@4c7
    .line 1730
    .end local v12    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v4    # "addr":Ljava/net/InetAddress;
    :cond_1d
    :try_start_f
    const-string/jumbo v22, "LegacyVpnRunner"

    #@4ca
    new-instance v23, Ljava/lang/StringBuilder;

    #@4cc
    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    #@4cf
    const-string/jumbo v24, "Unknown IP address family for VPN endpoint: "

    #@4d2
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d5
    move-result-object v23

    #@4d6
    move-object/from16 v0, v23

    #@4d8
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4db
    move-result-object v23

    #@4dc
    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4df
    move-result-object v23

    #@4e0
    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f .. :try_end_f} :catch_3
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    #@4e3
    goto/16 :goto_e

    #@4e5
    .line 1751
    .end local v4    # "addr":Ljava/net/InetAddress;
    :cond_1e
    :try_start_10
    move-object/from16 v0, p0

    #@4e7
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    #@4e9
    move-object/from16 v22, v0

    #@4eb
    move-object/from16 v0, p0

    #@4ed
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    #@4ef
    move-object/from16 v24, v0

    #@4f1
    invoke-static/range {v24 .. v24}, Lcom/android/server/connectivity/Vpn;->-get0(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    #@4f4
    move-result-object v24

    #@4f5
    move-object/from16 v0, v24

    #@4f7
    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    #@4f9
    move-object/from16 v24, v0

    #@4fb
    move-object/from16 v0, v22

    #@4fd
    move-object/from16 v1, v24

    #@4ff
    invoke-static {v0, v1}, Lcom/android/server/connectivity/Vpn;->-set2(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)Ljava/lang/String;

    #@502
    .line 1752
    move-object/from16 v0, p0

    #@504
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    #@506
    move-object/from16 v22, v0

    #@508
    invoke-static/range {v22 .. v22}, Lcom/android/server/connectivity/Vpn;->-wrap4(Lcom/android/server/connectivity/Vpn;)V

    #@50b
    .line 1754
    move-object/from16 v0, p0

    #@50d
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    #@50f
    move-object/from16 v22, v0

    #@511
    invoke-static/range {v22 .. v22}, Lcom/android/server/connectivity/Vpn;->-wrap2(Lcom/android/server/connectivity/Vpn;)V

    #@514
    .line 1756
    const-string/jumbo v22, "LegacyVpnRunner"

    #@517
    const-string/jumbo v24, "Connected!"

    #@51a
    move-object/from16 v0, v22

    #@51c
    move-object/from16 v1, v24

    #@51e
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    #@521
    :try_start_11
    monitor-exit v23
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_0
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    #@522
    .line 1764
    if-nez v16, :cond_1f

    #@524
    .line 1765
    move-object/from16 v0, p0

    #@526
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    #@528
    move-object/from16 v23, v0

    #@52a
    const/16 v22, 0x0

    #@52c
    move-object/from16 v0, v23

    #@52e
    array-length v0, v0

    #@52f
    move/from16 v24, v0

    #@531
    :goto_f
    move/from16 v0, v22

    #@533
    move/from16 v1, v24

    #@535
    if-ge v0, v1, :cond_1f

    #@537
    aget-object v9, v23, v22

    #@539
    .line 1766
    .restart local v9    # "daemon":Ljava/lang/String;
    invoke-static {v9}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V

    #@53c
    .line 1765
    add-int/lit8 v22, v22, 0x1

    #@53e
    goto :goto_f

    #@53f
    .line 1771
    .end local v9    # "daemon":Ljava/lang/String;
    :cond_1f
    if-eqz v16, :cond_20

    #@541
    move-object/from16 v0, p0

    #@543
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    #@545
    move-object/from16 v22, v0

    #@547
    invoke-static/range {v22 .. v22}, Lcom/android/server/connectivity/Vpn;->-get6(Lcom/android/server/connectivity/Vpn;)Landroid/net/NetworkInfo;

    #@54a
    move-result-object v22

    #@54b
    invoke-virtual/range {v22 .. v22}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    #@54e
    move-result-object v22

    #@54f
    sget-object v23, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    #@551
    move-object/from16 v0, v22

    #@553
    move-object/from16 v1, v23

    #@555
    if-ne v0, v1, :cond_21

    #@557
    .line 1772
    :cond_20
    move-object/from16 v0, p0

    #@559
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    #@55b
    move-object/from16 v22, v0

    #@55d
    invoke-static/range {v22 .. v22}, Lcom/android/server/connectivity/Vpn;->-wrap3(Lcom/android/server/connectivity/Vpn;)V

    #@560
    .line 1580
    .end local v13    # "endpoint":Ljava/lang/String;
    .end local v14    # "i":I
    .end local v18    # "parameters":[Ljava/lang/String;
    .end local v19    # "restart":Z
    .end local v21    # "state":Ljava/io/File;
    :cond_21
    :goto_10
    return-void

    #@561
    .line 1771
    .restart local v11    # "e":Ljava/lang/Exception;
    :cond_22
    if-eqz v16, :cond_23

    #@563
    move-object/from16 v0, p0

    #@565
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    #@567
    move-object/from16 v22, v0

    #@569
    invoke-static/range {v22 .. v22}, Lcom/android/server/connectivity/Vpn;->-get6(Lcom/android/server/connectivity/Vpn;)Landroid/net/NetworkInfo;

    #@56c
    move-result-object v22

    #@56d
    invoke-virtual/range {v22 .. v22}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    #@570
    move-result-object v22

    #@571
    sget-object v23, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    #@573
    move-object/from16 v0, v22

    #@575
    move-object/from16 v1, v23

    #@577
    if-ne v0, v1, :cond_21

    #@579
    .line 1772
    :cond_23
    move-object/from16 v0, p0

    #@57b
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    #@57d
    move-object/from16 v22, v0

    #@57f
    invoke-static/range {v22 .. v22}, Lcom/android/server/connectivity/Vpn;->-wrap3(Lcom/android/server/connectivity/Vpn;)V

    #@582
    goto :goto_10

    #@583
    .line 1771
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_24
    if-eqz v16, :cond_25

    #@585
    move-object/from16 v0, p0

    #@587
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    #@589
    move-object/from16 v23, v0

    #@58b
    invoke-static/range {v23 .. v23}, Lcom/android/server/connectivity/Vpn;->-get6(Lcom/android/server/connectivity/Vpn;)Landroid/net/NetworkInfo;

    #@58e
    move-result-object v23

    #@58f
    invoke-virtual/range {v23 .. v23}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    #@592
    move-result-object v23

    #@593
    sget-object v24, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    #@595
    move-object/from16 v0, v23

    #@597
    move-object/from16 v1, v24

    #@599
    if-ne v0, v1, :cond_26

    #@59b
    .line 1772
    :cond_25
    move-object/from16 v0, p0

    #@59d
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    #@59f
    move-object/from16 v23, v0

    #@5a1
    invoke-static/range {v23 .. v23}, Lcom/android/server/connectivity/Vpn;->-wrap3(Lcom/android/server/connectivity/Vpn;)V

    #@5a4
    .line 1762
    :cond_26
    throw v22
.end method

.method private monitorDaemons()V
    .locals 8

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1782
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    #@3
    invoke-static {v3}, Lcom/android/server/connectivity/Vpn;->-get6(Lcom/android/server/connectivity/Vpn;)Landroid/net/NetworkInfo;

    #@6
    move-result-object v3

    #@7
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    #@a
    move-result v3

    #@b
    if-nez v3, :cond_0

    #@d
    .line 1783
    return-void

    #@e
    .line 1788
    :cond_0
    const-wide/16 v6, 0x7d0

    #@10
    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    #@13
    .line 1789
    const/4 v2, 0x0

    #@14
    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    #@16
    array-length v3, v3

    #@17
    if-ge v2, v3, :cond_0

    #@19
    .line 1790
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    #@1b
    aget-object v3, v3, v2

    #@1d
    if-eqz v3, :cond_2

    #@1f
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    #@21
    aget-object v3, v3, v2

    #@23
    invoke-static {v3}, Landroid/os/SystemService;->isStopped(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    move-result v3

    #@27
    if-eqz v3, :cond_2

    #@29
    .line 1798
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    #@2b
    array-length v5, v3

    #@2c
    :goto_1
    if-ge v4, v5, :cond_1

    #@2e
    aget-object v0, v3, v4

    #@30
    .line 1799
    .local v0, "daemon":Ljava/lang/String;
    invoke-static {v0}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V

    #@33
    .line 1798
    add-int/lit8 v4, v4, 0x1

    #@35
    goto :goto_1

    #@36
    .line 1802
    .end local v0    # "daemon":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    #@38
    invoke-static {v3}, Lcom/android/server/connectivity/Vpn;->-wrap3(Lcom/android/server/connectivity/Vpn;)V

    #@3b
    .line 1791
    return-void

    #@3c
    .line 1789
    :cond_2
    add-int/lit8 v2, v2, 0x1

    #@3e
    goto :goto_0

    #@3f
    .line 1795
    .end local v2    # "i":I
    :catch_0
    move-exception v1

    #@40
    .line 1796
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_1
    const-string/jumbo v3, "LegacyVpnRunner"

    #@43
    const-string/jumbo v5, "interrupted during monitorDaemons(); stopping services"

    #@46
    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@49
    .line 1798
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    #@4b
    array-length v5, v3

    #@4c
    :goto_2
    if-ge v4, v5, :cond_3

    #@4e
    aget-object v0, v3, v4

    #@50
    .line 1799
    .restart local v0    # "daemon":Ljava/lang/String;
    invoke-static {v0}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V

    #@53
    .line 1798
    add-int/lit8 v4, v4, 0x1

    #@55
    goto :goto_2

    #@56
    .line 1802
    .end local v0    # "daemon":Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    #@58
    invoke-static {v3}, Lcom/android/server/connectivity/Vpn;->-wrap3(Lcom/android/server/connectivity/Vpn;)V

    #@5b
    .line 1781
    return-void

    #@5c
    .line 1797
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    #@5d
    .line 1798
    iget-object v5, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    #@5f
    array-length v6, v5

    #@60
    :goto_3
    if-ge v4, v6, :cond_4

    #@62
    aget-object v0, v5, v4

    #@64
    .line 1799
    .restart local v0    # "daemon":Ljava/lang/String;
    invoke-static {v0}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V

    #@67
    .line 1798
    add-int/lit8 v4, v4, 0x1

    #@69
    goto :goto_3

    #@6a
    .line 1802
    .end local v0    # "daemon":Ljava/lang/String;
    :cond_4
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    #@6c
    invoke-static {v4}, Lcom/android/server/connectivity/Vpn;->-wrap3(Lcom/android/server/connectivity/Vpn;)V

    #@6f
    .line 1797
    throw v3
.end method


# virtual methods
.method public check(Ljava/lang/String;)V
    .locals 3
    .param p1, "interfaze"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1538
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterInterface:Ljava/lang/String;

    #@2
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1539
    const-string/jumbo v0, "LegacyVpnRunner"

    #@b
    new-instance v1, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v2, "Legacy VPN is going down with "

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@22
    .line 1540
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->exit()V

    #@25
    .line 1537
    :cond_0
    return-void
.end method

.method public exit()V
    .locals 5

    #@0
    .prologue
    .line 1546
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->interrupt()V

    #@3
    .line 1547
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    #@5
    const/4 v2, 0x0

    #@6
    array-length v4, v3

    #@7
    :goto_0
    if-ge v2, v4, :cond_0

    #@9
    aget-object v1, v3, v2

    #@b
    .line 1548
    .local v1, "socket":Landroid/net/LocalSocket;
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@e
    .line 1547
    add-int/lit8 v2, v2, 0x1

    #@10
    goto :goto_0

    #@11
    .line 1550
    .end local v1    # "socket":Landroid/net/LocalSocket;
    :cond_0
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    #@13
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->-wrap3(Lcom/android/server/connectivity/Vpn;)V

    #@16
    .line 1552
    :try_start_0
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    #@18
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->-get2(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;

    #@1b
    move-result-object v2

    #@1c
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    #@1e
    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@21
    .line 1544
    :goto_1
    return-void

    #@22
    .line 1553
    :catch_0
    move-exception v0

    #@23
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    goto :goto_1
.end method

.method public run()V
    .locals 3

    #@0
    .prologue
    .line 1559
    const-string/jumbo v0, "LegacyVpnRunner"

    #@3
    const-string/jumbo v1, "Waiting"

    #@6
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 1560
    const-string/jumbo v1, "LegacyVpnRunner"

    #@c
    monitor-enter v1

    #@d
    .line 1561
    :try_start_0
    const-string/jumbo v0, "LegacyVpnRunner"

    #@10
    const-string/jumbo v2, "Executing"

    #@13
    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@16
    .line 1562
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->execute()V

    #@19
    .line 1563
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->monitorDaemons()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    monitor-exit v1

    #@1d
    .line 1557
    return-void

    #@1e
    .line 1560
    :catchall_0
    move-exception v0

    #@1f
    monitor-exit v1

    #@20
    throw v0
.end method
