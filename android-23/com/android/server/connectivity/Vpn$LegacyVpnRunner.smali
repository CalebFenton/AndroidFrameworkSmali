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
    .line 1118
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    #@5
    .line 1119
    const-string/jumbo v6, "LegacyVpnRunner"

    #@8
    invoke-direct {p0, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    #@b
    .line 1091
    new-instance v6, Ljava/util/concurrent/atomic/AtomicInteger;

    #@d
    const/4 v7, -0x1

    #@e
    invoke-direct {v6, v7}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    #@11
    .line 1090
    iput-object v6, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterConnection:Ljava/util/concurrent/atomic/AtomicInteger;

    #@13
    .line 1093
    const-wide/16 v6, -0x1

    #@15
    iput-wide v6, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mTimer:J

    #@17
    .line 1098
    new-instance v6, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$1;

    #@19
    invoke-direct {v6, p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$1;-><init>(Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;)V

    #@1c
    iput-object v6, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    #@1e
    .line 1120
    invoke-static {p1, p2}, Lcom/android/server/connectivity/Vpn;->-set0(Lcom/android/server/connectivity/Vpn;Lcom/android/internal/net/VpnConfig;)Lcom/android/internal/net/VpnConfig;

    #@21
    .line 1121
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
    .line 1123
    new-array v6, v9, [[Ljava/lang/String;

    #@31
    aput-object p3, v6, v5

    #@33
    aput-object p4, v6, v8

    #@35
    iput-object v6, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    #@37
    .line 1124
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    #@39
    array-length v6, v6

    #@3a
    new-array v6, v6, [Landroid/net/LocalSocket;

    #@3c
    iput-object v6, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    #@3e
    .line 1132
    invoke-static {p1}, Lcom/android/server/connectivity/Vpn;->-get0(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    #@41
    move-result-object v6

    #@42
    iget-object v6, v6, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    #@44
    iput-object v6, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterInterface:Ljava/lang/String;

    #@46
    .line 1134
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterInterface:Ljava/lang/String;

    #@48
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@4b
    move-result v6

    #@4c
    if-nez v6, :cond_1

    #@4e
    .line 1135
    invoke-static {p1}, Lcom/android/server/connectivity/Vpn;->-get2(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;

    #@51
    move-result-object v6

    #@52
    invoke-static {v6}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    #@55
    move-result-object v0

    #@56
    .line 1136
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
    .line 1137
    .local v3, "network":Landroid/net/Network;
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    #@62
    move-result-object v2

    #@63
    .line 1138
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
    .line 1139
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    #@74
    move-result-object v4

    #@75
    .line 1140
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
    .line 1136
    .end local v4    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    #@82
    goto :goto_0

    #@83
    .line 1145
    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    .end local v2    # "lp":Landroid/net/LinkProperties;
    .end local v3    # "network":Landroid/net/Network;
    :cond_1
    new-instance v1, Landroid/content/IntentFilter;

    #@85
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    #@88
    .line 1146
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v5, "android.net.conn.CONNECTIVITY_CHANGE"

    #@8b
    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@8e
    .line 1147
    invoke-static {p1}, Lcom/android/server/connectivity/Vpn;->-get2(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;

    #@91
    move-result-object v5

    #@92
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    #@94
    invoke-virtual {v5, v6, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@97
    .line 1118
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
    .line 1181
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@3
    move-result-wide v0

    #@4
    .line 1182
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mTimer:J

    #@6
    const-wide/16 v4, -0x1

    #@8
    cmp-long v2, v2, v4

    #@a
    if-nez v2, :cond_0

    #@c
    .line 1183
    iput-wide v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mTimer:J

    #@e
    .line 1184
    const-wide/16 v2, 0x1

    #@10
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    #@13
    .line 1180
    :goto_0
    return-void

    #@14
    .line 1185
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
    .line 1186
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
    .line 1188
    :cond_2
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    #@2c
    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    #@2e
    const-string/jumbo v4, "checkpoint"

    #@31
    invoke-static {v2, v3, v4}, Lcom/android/server/connectivity/Vpn;->-wrap5(Lcom/android/server/connectivity/Vpn;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    #@34
    .line 1189
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
    .line 1195
    const/16 v16, 0x0

    #@2
    .line 1198
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
    .line 1201
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
    .line 1202
    .local v9, "daemon":Ljava/lang/String;
    :goto_1
    invoke-static {v9}, Landroid/os/SystemService;->isStopped(Ljava/lang/String;)Z

    #@23
    move-result v25

    #@24
    if-nez v25, :cond_0

    #@26
    .line 1203
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
    .line 1371
    .end local v9    # "daemon":Ljava/lang/String;
    :catch_0
    move-exception v11

    #@31
    .line 1372
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
    .line 1373
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
    .line 1374
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->exit()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@50
    .line 1377
    if-nez v16, :cond_22

    #@52
    .line 1378
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
    .line 1379
    .restart local v9    # "daemon":Ljava/lang/String;
    invoke-static {v9}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V

    #@6a
    .line 1378
    add-int/lit8 v22, v22, 0x1

    #@6c
    goto :goto_2

    #@6d
    .line 1201
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_0
    add-int/lit8 v22, v22, 0x1

    #@6f
    goto :goto_0

    #@70
    .line 1208
    .end local v9    # "daemon":Ljava/lang/String;
    :cond_1
    :try_start_2
    new-instance v21, Ljava/io/File;

    #@72
    const-string/jumbo v22, "/data/misc/vpn/state"

    #@75
    invoke-direct/range {v21 .. v22}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@78
    .line 1209
    .local v21, "state":Ljava/io/File;
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->delete()Z

    #@7b
    .line 1210
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->exists()Z

    #@7e
    move-result v22

    #@7f
    if-eqz v22, :cond_2

    #@81
    .line 1211
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
    .line 1375
    .end local v21    # "state":Ljava/io/File;
    :catchall_0
    move-exception v22

    #@8b
    .line 1377
    if-nez v16, :cond_24

    #@8d
    .line 1378
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
    .line 1379
    .restart local v9    # "daemon":Ljava/lang/String;
    invoke-static {v9}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V

    #@a5
    .line 1378
    add-int/lit8 v23, v23, 0x1

    #@a7
    goto :goto_3

    #@a8
    .line 1213
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
    .line 1214
    const/16 v16, 0x1

    #@b5
    .line 1217
    const/16 v19, 0x0

    #@b7
    .line 1218
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
    .line 1219
    .local v7, "arguments":[Ljava/lang/String;
    if-nez v19, :cond_3

    #@ce
    if-eqz v7, :cond_4

    #@d0
    :cond_3
    const/16 v19, 0x1

    #@d2
    .line 1218
    :goto_5
    add-int/lit8 v22, v22, 0x1

    #@d4
    goto :goto_4

    #@d5
    .line 1219
    :cond_4
    const/16 v19, 0x0

    #@d7
    goto :goto_5

    #@d8
    .line 1221
    .end local v7    # "arguments":[Ljava/lang/String;
    :cond_5
    if-nez v19, :cond_9

    #@da
    .line 1222
    move-object/from16 v0, p0

    #@dc
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    #@de
    move-object/from16 v22, v0

    #@e0
    invoke-static/range {v22 .. v22}, Lcom/android/server/connectivity/Vpn;->-wrap2(Lcom/android/server/connectivity/Vpn;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@e3
    .line 1377
    if-nez v16, :cond_6

    #@e5
    .line 1378
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
    .line 1379
    .restart local v9    # "daemon":Ljava/lang/String;
    invoke-static {v9}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V

    #@fd
    .line 1378
    add-int/lit8 v22, v22, 0x1

    #@ff
    goto :goto_6

    #@100
    .line 1384
    .end local v9    # "daemon":Ljava/lang/String;
    :cond_6
    if-nez v16, :cond_8

    #@102
    .line 1385
    :goto_7
    move-object/from16 v0, p0

    #@104
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    #@106
    move-object/from16 v22, v0

    #@108
    invoke-static/range {v22 .. v22}, Lcom/android/server/connectivity/Vpn;->-wrap2(Lcom/android/server/connectivity/Vpn;)V

    #@10b
    .line 1223
    :cond_7
    return-void

    #@10c
    .line 1384
    :cond_8
    move-object/from16 v0, p0

    #@10e
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    #@110
    move-object/from16 v22, v0

    #@112
    invoke-static/range {v22 .. v22}, Lcom/android/server/connectivity/Vpn;->-get6(Lcom/android/server/connectivity/Vpn;)Landroid/net/NetworkInfo;

    #@115
    move-result-object v22

    #@116
    invoke-virtual/range {v22 .. v22}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    #@119
    move-result-object v22

    #@11a
    sget-object v23, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    #@11c
    move-object/from16 v0, v22

    #@11e
    move-object/from16 v1, v23

    #@120
    if-ne v0, v1, :cond_7

    #@122
    goto :goto_7

    #@123
    .line 1225
    :cond_9
    :try_start_4
    move-object/from16 v0, p0

    #@125
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    #@127
    move-object/from16 v22, v0

    #@129
    sget-object v23, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    #@12b
    const-string/jumbo v24, "execute"

    #@12e
    invoke-static/range {v22 .. v24}, Lcom/android/server/connectivity/Vpn;->-wrap5(Lcom/android/server/connectivity/Vpn;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    #@131
    .line 1228
    const/4 v14, 0x0

    #@132
    .local v14, "i":I
    :goto_8
    move-object/from16 v0, p0

    #@134
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    #@136
    move-object/from16 v22, v0

    #@138
    move-object/from16 v0, v22

    #@13a
    array-length v0, v0

    #@13b
    move/from16 v22, v0

    #@13d
    move/from16 v0, v22

    #@13f
    if-ge v14, v0, :cond_10

    #@141
    .line 1229
    move-object/from16 v0, p0

    #@143
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    #@145
    move-object/from16 v22, v0

    #@147
    aget-object v7, v22, v14

    #@149
    .line 1230
    .restart local v7    # "arguments":[Ljava/lang/String;
    if-nez v7, :cond_b

    #@14b
    .line 1228
    :cond_a
    add-int/lit8 v14, v14, 0x1

    #@14d
    goto :goto_8

    #@14e
    .line 1235
    :cond_b
    move-object/from16 v0, p0

    #@150
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    #@152
    move-object/from16 v22, v0

    #@154
    aget-object v9, v22, v14

    #@156
    .line 1236
    .restart local v9    # "daemon":Ljava/lang/String;
    invoke-static {v9}, Landroid/os/SystemService;->start(Ljava/lang/String;)V

    #@159
    .line 1239
    :goto_9
    invoke-static {v9}, Landroid/os/SystemService;->isRunning(Ljava/lang/String;)Z

    #@15c
    move-result v22

    #@15d
    if-nez v22, :cond_c

    #@15f
    .line 1240
    const/16 v22, 0x1

    #@161
    move-object/from16 v0, p0

    #@163
    move/from16 v1, v22

    #@165
    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkpoint(Z)V

    #@168
    goto :goto_9

    #@169
    .line 1244
    :cond_c
    move-object/from16 v0, p0

    #@16b
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    #@16d
    move-object/from16 v22, v0

    #@16f
    new-instance v23, Landroid/net/LocalSocket;

    #@171
    invoke-direct/range {v23 .. v23}, Landroid/net/LocalSocket;-><init>()V

    #@174
    aput-object v23, v22, v14

    #@176
    .line 1245
    new-instance v5, Landroid/net/LocalSocketAddress;

    #@178
    .line 1246
    sget-object v22, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    #@17a
    .line 1245
    move-object/from16 v0, v22

    #@17c
    invoke-direct {v5, v9, v0}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@17f
    .line 1251
    .local v5, "address":Landroid/net/LocalSocketAddress;
    :goto_a
    :try_start_5
    move-object/from16 v0, p0

    #@181
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    #@183
    move-object/from16 v22, v0

    #@185
    aget-object v22, v22, v14

    #@187
    move-object/from16 v0, v22

    #@189
    invoke-virtual {v0, v5}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@18c
    .line 1258
    :try_start_6
    move-object/from16 v0, p0

    #@18e
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    #@190
    move-object/from16 v22, v0

    #@192
    aget-object v22, v22, v14

    #@194
    const/16 v23, 0x1f4

    #@196
    invoke-virtual/range {v22 .. v23}, Landroid/net/LocalSocket;->setSoTimeout(I)V

    #@199
    .line 1261
    move-object/from16 v0, p0

    #@19b
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    #@19d
    move-object/from16 v22, v0

    #@19f
    aget-object v22, v22, v14

    #@1a1
    invoke-virtual/range {v22 .. v22}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    #@1a4
    move-result-object v17

    #@1a5
    .line 1262
    .local v17, "out":Ljava/io/OutputStream;
    const/16 v22, 0x0

    #@1a7
    array-length v0, v7

    #@1a8
    move/from16 v23, v0

    #@1aa
    :goto_b
    move/from16 v0, v22

    #@1ac
    move/from16 v1, v23

    #@1ae
    if-ge v0, v1, :cond_e

    #@1b0
    aget-object v6, v7, v22

    #@1b2
    .line 1263
    .local v6, "argument":Ljava/lang/String;
    sget-object v24, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@1b4
    move-object/from16 v0, v24

    #@1b6
    invoke-virtual {v6, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    #@1b9
    move-result-object v8

    #@1ba
    .line 1264
    .local v8, "bytes":[B
    array-length v0, v8

    #@1bb
    move/from16 v24, v0

    #@1bd
    const v25, 0xffff

    #@1c0
    move/from16 v0, v24

    #@1c2
    move/from16 v1, v25

    #@1c4
    if-lt v0, v1, :cond_d

    #@1c6
    .line 1265
    new-instance v22, Ljava/lang/IllegalArgumentException;

    #@1c8
    const-string/jumbo v23, "Argument is too large"

    #@1cb
    invoke-direct/range {v22 .. v23}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1ce
    throw v22

    #@1cf
    .line 1253
    .end local v6    # "argument":Ljava/lang/String;
    .end local v8    # "bytes":[B
    .end local v17    # "out":Ljava/io/OutputStream;
    :catch_1
    move-exception v11

    #@1d0
    .line 1256
    .restart local v11    # "e":Ljava/lang/Exception;
    const/16 v22, 0x1

    #@1d2
    move-object/from16 v0, p0

    #@1d4
    move/from16 v1, v22

    #@1d6
    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkpoint(Z)V

    #@1d9
    goto :goto_a

    #@1da
    .line 1267
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v6    # "argument":Ljava/lang/String;
    .restart local v8    # "bytes":[B
    .restart local v17    # "out":Ljava/io/OutputStream;
    :cond_d
    array-length v0, v8

    #@1db
    move/from16 v24, v0

    #@1dd
    shr-int/lit8 v24, v24, 0x8

    #@1df
    move-object/from16 v0, v17

    #@1e1
    move/from16 v1, v24

    #@1e3
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    #@1e6
    .line 1268
    array-length v0, v8

    #@1e7
    move/from16 v24, v0

    #@1e9
    move-object/from16 v0, v17

    #@1eb
    move/from16 v1, v24

    #@1ed
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    #@1f0
    .line 1269
    move-object/from16 v0, v17

    #@1f2
    invoke-virtual {v0, v8}, Ljava/io/OutputStream;->write([B)V

    #@1f5
    .line 1270
    const/16 v24, 0x0

    #@1f7
    move-object/from16 v0, p0

    #@1f9
    move/from16 v1, v24

    #@1fb
    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkpoint(Z)V

    #@1fe
    .line 1262
    add-int/lit8 v22, v22, 0x1

    #@200
    goto :goto_b

    #@201
    .line 1272
    .end local v6    # "argument":Ljava/lang/String;
    .end local v8    # "bytes":[B
    :cond_e
    const/16 v22, 0xff

    #@203
    move-object/from16 v0, v17

    #@205
    move/from16 v1, v22

    #@207
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    #@20a
    .line 1273
    const/16 v22, 0xff

    #@20c
    move-object/from16 v0, v17

    #@20e
    move/from16 v1, v22

    #@210
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    #@213
    .line 1274
    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStream;->flush()V

    #@216
    .line 1277
    move-object/from16 v0, p0

    #@218
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    #@21a
    move-object/from16 v22, v0

    #@21c
    aget-object v22, v22, v14

    #@21e
    invoke-virtual/range {v22 .. v22}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@221
    move-result-object v15

    #@222
    .line 1280
    .local v15, "in":Ljava/io/InputStream;
    :goto_c
    :try_start_7
    invoke-virtual {v15}, Ljava/io/InputStream;->read()I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@225
    move-result v22

    #@226
    const/16 v23, -0x1

    #@228
    move/from16 v0, v22

    #@22a
    move/from16 v1, v23

    #@22c
    if-eq v0, v1, :cond_a

    #@22e
    .line 1286
    :goto_d
    const/16 v22, 0x1

    #@230
    :try_start_8
    move-object/from16 v0, p0

    #@232
    move/from16 v1, v22

    #@234
    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkpoint(Z)V

    #@237
    goto :goto_c

    #@238
    .line 1283
    :catch_2
    move-exception v11

    #@239
    .restart local v11    # "e":Ljava/lang/Exception;
    goto :goto_d

    #@23a
    .line 1299
    .end local v5    # "address":Landroid/net/LocalSocketAddress;
    .end local v7    # "arguments":[Ljava/lang/String;
    .end local v9    # "daemon":Ljava/lang/String;
    .end local v11    # "e":Ljava/lang/Exception;
    .end local v15    # "in":Ljava/io/InputStream;
    .end local v17    # "out":Ljava/io/OutputStream;
    :cond_f
    const/16 v22, 0x1

    #@23c
    move-object/from16 v0, p0

    #@23e
    move/from16 v1, v22

    #@240
    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkpoint(Z)V

    #@243
    .line 1291
    :cond_10
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->exists()Z

    #@246
    move-result v22

    #@247
    if-nez v22, :cond_13

    #@249
    .line 1293
    const/4 v14, 0x0

    #@24a
    :goto_e
    move-object/from16 v0, p0

    #@24c
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    #@24e
    move-object/from16 v22, v0

    #@250
    move-object/from16 v0, v22

    #@252
    array-length v0, v0

    #@253
    move/from16 v22, v0

    #@255
    move/from16 v0, v22

    #@257
    if-ge v14, v0, :cond_f

    #@259
    .line 1294
    move-object/from16 v0, p0

    #@25b
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    #@25d
    move-object/from16 v22, v0

    #@25f
    aget-object v9, v22, v14

    #@261
    .line 1295
    .restart local v9    # "daemon":Ljava/lang/String;
    move-object/from16 v0, p0

    #@263
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    #@265
    move-object/from16 v22, v0

    #@267
    aget-object v22, v22, v14

    #@269
    if-eqz v22, :cond_11

    #@26b
    invoke-static {v9}, Landroid/os/SystemService;->isRunning(Ljava/lang/String;)Z

    #@26e
    move-result v22

    #@26f
    if-eqz v22, :cond_12

    #@271
    .line 1293
    :cond_11
    add-int/lit8 v14, v14, 0x1

    #@273
    goto :goto_e

    #@274
    .line 1296
    :cond_12
    new-instance v22, Ljava/lang/IllegalStateException;

    #@276
    new-instance v23, Ljava/lang/StringBuilder;

    #@278
    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    #@27b
    move-object/from16 v0, v23

    #@27d
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@280
    move-result-object v23

    #@281
    const-string/jumbo v24, " is dead"

    #@284
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@287
    move-result-object v23

    #@288
    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28b
    move-result-object v23

    #@28c
    invoke-direct/range {v22 .. v23}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@28f
    throw v22

    #@290
    .line 1303
    .end local v9    # "daemon":Ljava/lang/String;
    :cond_13
    const/16 v22, 0x0

    #@292
    const/16 v23, 0x0

    #@294
    invoke-static/range {v21 .. v23}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    #@297
    move-result-object v22

    #@298
    const-string/jumbo v23, "\n"

    #@29b
    const/16 v24, -0x1

    #@29d
    invoke-virtual/range {v22 .. v24}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    #@2a0
    move-result-object v18

    #@2a1
    .line 1304
    .local v18, "parameters":[Ljava/lang/String;
    move-object/from16 v0, v18

    #@2a3
    array-length v0, v0

    #@2a4
    move/from16 v22, v0

    #@2a6
    const/16 v23, 0x7

    #@2a8
    move/from16 v0, v22

    #@2aa
    move/from16 v1, v23

    #@2ac
    if-eq v0, v1, :cond_14

    #@2ae
    .line 1305
    new-instance v22, Ljava/lang/IllegalStateException;

    #@2b0
    const-string/jumbo v23, "Cannot parse the state"

    #@2b3
    invoke-direct/range {v22 .. v23}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@2b6
    throw v22

    #@2b7
    .line 1309
    :cond_14
    move-object/from16 v0, p0

    #@2b9
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    #@2bb
    move-object/from16 v22, v0

    #@2bd
    invoke-static/range {v22 .. v22}, Lcom/android/server/connectivity/Vpn;->-get0(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    #@2c0
    move-result-object v22

    #@2c1
    const/16 v23, 0x0

    #@2c3
    aget-object v23, v18, v23

    #@2c5
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@2c8
    move-result-object v23

    #@2c9
    move-object/from16 v0, v23

    #@2cb
    move-object/from16 v1, v22

    #@2cd
    iput-object v0, v1, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    #@2cf
    .line 1311
    move-object/from16 v0, p0

    #@2d1
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    #@2d3
    move-object/from16 v22, v0

    #@2d5
    invoke-static/range {v22 .. v22}, Lcom/android/server/connectivity/Vpn;->-get0(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    #@2d8
    move-result-object v22

    #@2d9
    const/16 v23, 0x1

    #@2db
    aget-object v23, v18, v23

    #@2dd
    invoke-virtual/range {v22 .. v23}, Lcom/android/internal/net/VpnConfig;->addLegacyAddresses(Ljava/lang/String;)V

    #@2e0
    .line 1313
    move-object/from16 v0, p0

    #@2e2
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    #@2e4
    move-object/from16 v22, v0

    #@2e6
    invoke-static/range {v22 .. v22}, Lcom/android/server/connectivity/Vpn;->-get0(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    #@2e9
    move-result-object v22

    #@2ea
    move-object/from16 v0, v22

    #@2ec
    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    #@2ee
    move-object/from16 v22, v0

    #@2f0
    if-eqz v22, :cond_15

    #@2f2
    move-object/from16 v0, p0

    #@2f4
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    #@2f6
    move-object/from16 v22, v0

    #@2f8
    invoke-static/range {v22 .. v22}, Lcom/android/server/connectivity/Vpn;->-get0(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    #@2fb
    move-result-object v22

    #@2fc
    move-object/from16 v0, v22

    #@2fe
    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    #@300
    move-object/from16 v22, v0

    #@302
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->isEmpty()Z

    #@305
    move-result v22

    #@306
    if-eqz v22, :cond_16

    #@308
    .line 1314
    :cond_15
    move-object/from16 v0, p0

    #@30a
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    #@30c
    move-object/from16 v22, v0

    #@30e
    invoke-static/range {v22 .. v22}, Lcom/android/server/connectivity/Vpn;->-get0(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    #@311
    move-result-object v22

    #@312
    const/16 v23, 0x2

    #@314
    aget-object v23, v18, v23

    #@316
    invoke-virtual/range {v22 .. v23}, Lcom/android/internal/net/VpnConfig;->addLegacyRoutes(Ljava/lang/String;)V

    #@319
    .line 1318
    :cond_16
    move-object/from16 v0, p0

    #@31b
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    #@31d
    move-object/from16 v22, v0

    #@31f
    invoke-static/range {v22 .. v22}, Lcom/android/server/connectivity/Vpn;->-get0(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    #@322
    move-result-object v22

    #@323
    move-object/from16 v0, v22

    #@325
    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    #@327
    move-object/from16 v22, v0

    #@329
    if-eqz v22, :cond_17

    #@32b
    move-object/from16 v0, p0

    #@32d
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    #@32f
    move-object/from16 v22, v0

    #@331
    invoke-static/range {v22 .. v22}, Lcom/android/server/connectivity/Vpn;->-get0(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    #@334
    move-result-object v22

    #@335
    move-object/from16 v0, v22

    #@337
    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    #@339
    move-object/from16 v22, v0

    #@33b
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    #@33e
    move-result v22

    #@33f
    if-nez v22, :cond_18

    #@341
    .line 1319
    :cond_17
    const/16 v22, 0x3

    #@343
    aget-object v22, v18, v22

    #@345
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@348
    move-result-object v10

    #@349
    .line 1320
    .local v10, "dnsServers":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    #@34c
    move-result v22

    #@34d
    if-nez v22, :cond_18

    #@34f
    .line 1321
    move-object/from16 v0, p0

    #@351
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    #@353
    move-object/from16 v22, v0

    #@355
    invoke-static/range {v22 .. v22}, Lcom/android/server/connectivity/Vpn;->-get0(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    #@358
    move-result-object v22

    #@359
    const-string/jumbo v23, " "

    #@35c
    move-object/from16 v0, v23

    #@35e
    invoke-virtual {v10, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@361
    move-result-object v23

    #@362
    invoke-static/range {v23 .. v23}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@365
    move-result-object v23

    #@366
    move-object/from16 v0, v23

    #@368
    move-object/from16 v1, v22

    #@36a
    iput-object v0, v1, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    #@36c
    .line 1326
    .end local v10    # "dnsServers":Ljava/lang/String;
    :cond_18
    move-object/from16 v0, p0

    #@36e
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    #@370
    move-object/from16 v22, v0

    #@372
    invoke-static/range {v22 .. v22}, Lcom/android/server/connectivity/Vpn;->-get0(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    #@375
    move-result-object v22

    #@376
    move-object/from16 v0, v22

    #@378
    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    #@37a
    move-object/from16 v22, v0

    #@37c
    if-eqz v22, :cond_19

    #@37e
    move-object/from16 v0, p0

    #@380
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    #@382
    move-object/from16 v22, v0

    #@384
    invoke-static/range {v22 .. v22}, Lcom/android/server/connectivity/Vpn;->-get0(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    #@387
    move-result-object v22

    #@388
    move-object/from16 v0, v22

    #@38a
    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    #@38c
    move-object/from16 v22, v0

    #@38e
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    #@391
    move-result v22

    #@392
    if-nez v22, :cond_1a

    #@394
    .line 1327
    :cond_19
    const/16 v22, 0x4

    #@396
    aget-object v22, v18, v22

    #@398
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@39b
    move-result-object v20

    #@39c
    .line 1328
    .local v20, "searchDomains":Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->isEmpty()Z

    #@39f
    move-result v22

    #@3a0
    if-nez v22, :cond_1a

    #@3a2
    .line 1329
    move-object/from16 v0, p0

    #@3a4
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    #@3a6
    move-object/from16 v22, v0

    #@3a8
    invoke-static/range {v22 .. v22}, Lcom/android/server/connectivity/Vpn;->-get0(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    #@3ab
    move-result-object v22

    #@3ac
    const-string/jumbo v23, " "

    #@3af
    move-object/from16 v0, v20

    #@3b1
    move-object/from16 v1, v23

    #@3b3
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@3b6
    move-result-object v23

    #@3b7
    invoke-static/range {v23 .. v23}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@3ba
    move-result-object v23

    #@3bb
    move-object/from16 v0, v23

    #@3bd
    move-object/from16 v1, v22

    #@3bf
    iput-object v0, v1, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    #@3c1
    .line 1334
    .end local v20    # "searchDomains":Ljava/lang/String;
    :cond_1a
    const/16 v22, 0x5

    #@3c3
    aget-object v13, v18, v22

    #@3c5
    .line 1335
    .local v13, "endpoint":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    #@3c8
    move-result v22

    #@3c9
    if-nez v22, :cond_1b

    #@3cb
    .line 1337
    :try_start_9
    invoke-static {v13}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    #@3ce
    move-result-object v4

    #@3cf
    .line 1338
    .local v4, "addr":Ljava/net/InetAddress;
    instance-of v0, v4, Ljava/net/Inet4Address;

    #@3d1
    move/from16 v22, v0

    #@3d3
    if-eqz v22, :cond_1c

    #@3d5
    .line 1339
    move-object/from16 v0, p0

    #@3d7
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    #@3d9
    move-object/from16 v22, v0

    #@3db
    invoke-static/range {v22 .. v22}, Lcom/android/server/connectivity/Vpn;->-get0(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    #@3de
    move-result-object v22

    #@3df
    move-object/from16 v0, v22

    #@3e1
    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    #@3e3
    move-object/from16 v22, v0

    #@3e5
    new-instance v23, Landroid/net/RouteInfo;

    #@3e7
    new-instance v24, Landroid/net/IpPrefix;

    #@3e9
    const/16 v25, 0x20

    #@3eb
    move-object/from16 v0, v24

    #@3ed
    move/from16 v1, v25

    #@3ef
    invoke-direct {v0, v4, v1}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    #@3f2
    const/16 v25, 0x9

    #@3f4
    invoke-direct/range {v23 .. v25}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;I)V

    #@3f7
    invoke-interface/range {v22 .. v23}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    #@3fa
    .line 1351
    .end local v4    # "addr":Ljava/net/InetAddress;
    :cond_1b
    :goto_f
    :try_start_a
    move-object/from16 v0, p0

    #@3fc
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    #@3fe
    move-object/from16 v23, v0

    #@400
    monitor-enter v23
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    #@401
    .line 1353
    :try_start_b
    move-object/from16 v0, p0

    #@403
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    #@405
    move-object/from16 v22, v0

    #@407
    invoke-static/range {v22 .. v22}, Lcom/android/server/connectivity/Vpn;->-get0(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    #@40a
    move-result-object v22

    #@40b
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@40e
    move-result-wide v24

    #@40f
    move-wide/from16 v0, v24

    #@411
    move-object/from16 v2, v22

    #@413
    iput-wide v0, v2, Lcom/android/internal/net/VpnConfig;->startTime:J

    #@415
    .line 1356
    const/16 v22, 0x0

    #@417
    move-object/from16 v0, p0

    #@419
    move/from16 v1, v22

    #@41b
    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkpoint(Z)V

    #@41e
    .line 1359
    move-object/from16 v0, p0

    #@420
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    #@422
    move-object/from16 v22, v0

    #@424
    move-object/from16 v0, p0

    #@426
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    #@428
    move-object/from16 v24, v0

    #@42a
    invoke-static/range {v24 .. v24}, Lcom/android/server/connectivity/Vpn;->-get0(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    #@42d
    move-result-object v24

    #@42e
    move-object/from16 v0, v24

    #@430
    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    #@432
    move-object/from16 v24, v0

    #@434
    move-object/from16 v0, v22

    #@436
    move-object/from16 v1, v24

    #@438
    invoke-static {v0, v1}, Lcom/android/server/connectivity/Vpn;->-wrap0(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)I

    #@43b
    move-result v22

    #@43c
    if-nez v22, :cond_1e

    #@43e
    .line 1360
    new-instance v22, Ljava/lang/IllegalStateException;

    #@440
    new-instance v24, Ljava/lang/StringBuilder;

    #@442
    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    #@445
    move-object/from16 v0, p0

    #@447
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    #@449
    move-object/from16 v25, v0

    #@44b
    invoke-static/range {v25 .. v25}, Lcom/android/server/connectivity/Vpn;->-get0(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    #@44e
    move-result-object v25

    #@44f
    move-object/from16 v0, v25

    #@451
    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    #@453
    move-object/from16 v25, v0

    #@455
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@458
    move-result-object v24

    #@459
    const-string/jumbo v25, " is gone"

    #@45c
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45f
    move-result-object v24

    #@460
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@463
    move-result-object v24

    #@464
    move-object/from16 v0, v22

    #@466
    move-object/from16 v1, v24

    #@468
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@46b
    throw v22
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    #@46c
    .line 1351
    :catchall_1
    move-exception v22

    #@46d
    :try_start_c
    monitor-exit v23

    #@46e
    throw v22
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    #@46f
    .line 1340
    .restart local v4    # "addr":Ljava/net/InetAddress;
    :cond_1c
    :try_start_d
    instance-of v0, v4, Ljava/net/Inet6Address;

    #@471
    move/from16 v22, v0

    #@473
    if-eqz v22, :cond_1d

    #@475
    .line 1341
    move-object/from16 v0, p0

    #@477
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    #@479
    move-object/from16 v22, v0

    #@47b
    invoke-static/range {v22 .. v22}, Lcom/android/server/connectivity/Vpn;->-get0(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    #@47e
    move-result-object v22

    #@47f
    move-object/from16 v0, v22

    #@481
    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    #@483
    move-object/from16 v22, v0

    #@485
    new-instance v23, Landroid/net/RouteInfo;

    #@487
    new-instance v24, Landroid/net/IpPrefix;

    #@489
    const/16 v25, 0x80

    #@48b
    move-object/from16 v0, v24

    #@48d
    move/from16 v1, v25

    #@48f
    invoke-direct {v0, v4, v1}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    #@492
    const/16 v25, 0x9

    #@494
    invoke-direct/range {v23 .. v25}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;I)V

    #@497
    invoke-interface/range {v22 .. v23}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_d} :catch_3
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    #@49a
    goto/16 :goto_f

    #@49c
    .line 1345
    .end local v4    # "addr":Ljava/net/InetAddress;
    :catch_3
    move-exception v12

    #@49d
    .line 1346
    .local v12, "e":Ljava/lang/IllegalArgumentException;
    :try_start_e
    const-string/jumbo v22, "LegacyVpnRunner"

    #@4a0
    new-instance v23, Ljava/lang/StringBuilder;

    #@4a2
    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    #@4a5
    const-string/jumbo v24, "Exception constructing throw route to "

    #@4a8
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4ab
    move-result-object v23

    #@4ac
    move-object/from16 v0, v23

    #@4ae
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b1
    move-result-object v23

    #@4b2
    const-string/jumbo v24, ": "

    #@4b5
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b8
    move-result-object v23

    #@4b9
    move-object/from16 v0, v23

    #@4bb
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4be
    move-result-object v23

    #@4bf
    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c2
    move-result-object v23

    #@4c3
    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    #@4c6
    goto/16 :goto_f

    #@4c8
    .line 1343
    .end local v12    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v4    # "addr":Ljava/net/InetAddress;
    :cond_1d
    :try_start_f
    const-string/jumbo v22, "LegacyVpnRunner"

    #@4cb
    new-instance v23, Ljava/lang/StringBuilder;

    #@4cd
    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    #@4d0
    const-string/jumbo v24, "Unknown IP address family for VPN endpoint: "

    #@4d3
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d6
    move-result-object v23

    #@4d7
    move-object/from16 v0, v23

    #@4d9
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4dc
    move-result-object v23

    #@4dd
    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e0
    move-result-object v23

    #@4e1
    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f .. :try_end_f} :catch_3
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    #@4e4
    goto/16 :goto_f

    #@4e6
    .line 1364
    .end local v4    # "addr":Ljava/net/InetAddress;
    :cond_1e
    :try_start_10
    move-object/from16 v0, p0

    #@4e8
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    #@4ea
    move-object/from16 v22, v0

    #@4ec
    move-object/from16 v0, p0

    #@4ee
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    #@4f0
    move-object/from16 v24, v0

    #@4f2
    invoke-static/range {v24 .. v24}, Lcom/android/server/connectivity/Vpn;->-get0(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    #@4f5
    move-result-object v24

    #@4f6
    move-object/from16 v0, v24

    #@4f8
    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    #@4fa
    move-object/from16 v24, v0

    #@4fc
    move-object/from16 v0, v22

    #@4fe
    move-object/from16 v1, v24

    #@500
    invoke-static {v0, v1}, Lcom/android/server/connectivity/Vpn;->-set2(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)Ljava/lang/String;

    #@503
    .line 1365
    move-object/from16 v0, p0

    #@505
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    #@507
    move-object/from16 v22, v0

    #@509
    new-instance v24, Ljava/util/ArrayList;

    #@50b
    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    #@50e
    move-object/from16 v0, v22

    #@510
    move-object/from16 v1, v24

    #@512
    invoke-static {v0, v1}, Lcom/android/server/connectivity/Vpn;->-set5(Lcom/android/server/connectivity/Vpn;Ljava/util/List;)Ljava/util/List;

    #@515
    .line 1367
    move-object/from16 v0, p0

    #@517
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    #@519
    move-object/from16 v22, v0

    #@51b
    invoke-static/range {v22 .. v22}, Lcom/android/server/connectivity/Vpn;->-wrap1(Lcom/android/server/connectivity/Vpn;)V

    #@51e
    .line 1369
    const-string/jumbo v22, "LegacyVpnRunner"

    #@521
    const-string/jumbo v24, "Connected!"

    #@524
    move-object/from16 v0, v22

    #@526
    move-object/from16 v1, v24

    #@528
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    #@52b
    :try_start_11
    monitor-exit v23
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_0
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    #@52c
    .line 1377
    if-nez v16, :cond_1f

    #@52e
    .line 1378
    move-object/from16 v0, p0

    #@530
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    #@532
    move-object/from16 v23, v0

    #@534
    const/16 v22, 0x0

    #@536
    move-object/from16 v0, v23

    #@538
    array-length v0, v0

    #@539
    move/from16 v24, v0

    #@53b
    :goto_10
    move/from16 v0, v22

    #@53d
    move/from16 v1, v24

    #@53f
    if-ge v0, v1, :cond_1f

    #@541
    aget-object v9, v23, v22

    #@543
    .line 1379
    .restart local v9    # "daemon":Ljava/lang/String;
    invoke-static {v9}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V

    #@546
    .line 1378
    add-int/lit8 v22, v22, 0x1

    #@548
    goto :goto_10

    #@549
    .line 1384
    .end local v9    # "daemon":Ljava/lang/String;
    :cond_1f
    if-nez v16, :cond_21

    #@54b
    .line 1385
    :goto_11
    move-object/from16 v0, p0

    #@54d
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    #@54f
    move-object/from16 v22, v0

    #@551
    invoke-static/range {v22 .. v22}, Lcom/android/server/connectivity/Vpn;->-wrap2(Lcom/android/server/connectivity/Vpn;)V

    #@554
    .line 1193
    .end local v13    # "endpoint":Ljava/lang/String;
    .end local v14    # "i":I
    .end local v18    # "parameters":[Ljava/lang/String;
    .end local v19    # "restart":Z
    .end local v21    # "state":Ljava/io/File;
    :cond_20
    :goto_12
    return-void

    #@555
    .line 1384
    .restart local v13    # "endpoint":Ljava/lang/String;
    .restart local v14    # "i":I
    .restart local v18    # "parameters":[Ljava/lang/String;
    .restart local v19    # "restart":Z
    .restart local v21    # "state":Ljava/io/File;
    :cond_21
    move-object/from16 v0, p0

    #@557
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    #@559
    move-object/from16 v22, v0

    #@55b
    invoke-static/range {v22 .. v22}, Lcom/android/server/connectivity/Vpn;->-get6(Lcom/android/server/connectivity/Vpn;)Landroid/net/NetworkInfo;

    #@55e
    move-result-object v22

    #@55f
    invoke-virtual/range {v22 .. v22}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    #@562
    move-result-object v22

    #@563
    sget-object v23, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    #@565
    move-object/from16 v0, v22

    #@567
    move-object/from16 v1, v23

    #@569
    if-ne v0, v1, :cond_20

    #@56b
    goto :goto_11

    #@56c
    .end local v13    # "endpoint":Ljava/lang/String;
    .end local v14    # "i":I
    .end local v18    # "parameters":[Ljava/lang/String;
    .end local v19    # "restart":Z
    .end local v21    # "state":Ljava/io/File;
    .restart local v11    # "e":Ljava/lang/Exception;
    :cond_22
    if-nez v16, :cond_23

    #@56e
    .line 1385
    :goto_13
    move-object/from16 v0, p0

    #@570
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    #@572
    move-object/from16 v22, v0

    #@574
    invoke-static/range {v22 .. v22}, Lcom/android/server/connectivity/Vpn;->-wrap2(Lcom/android/server/connectivity/Vpn;)V

    #@577
    goto :goto_12

    #@578
    .line 1384
    :cond_23
    move-object/from16 v0, p0

    #@57a
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    #@57c
    move-object/from16 v22, v0

    #@57e
    invoke-static/range {v22 .. v22}, Lcom/android/server/connectivity/Vpn;->-get6(Lcom/android/server/connectivity/Vpn;)Landroid/net/NetworkInfo;

    #@581
    move-result-object v22

    #@582
    invoke-virtual/range {v22 .. v22}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    #@585
    move-result-object v22

    #@586
    sget-object v23, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    #@588
    move-object/from16 v0, v22

    #@58a
    move-object/from16 v1, v23

    #@58c
    if-ne v0, v1, :cond_20

    #@58e
    goto :goto_13

    #@58f
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_24
    if-nez v16, :cond_26

    #@591
    .line 1385
    :goto_14
    move-object/from16 v0, p0

    #@593
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    #@595
    move-object/from16 v23, v0

    #@597
    invoke-static/range {v23 .. v23}, Lcom/android/server/connectivity/Vpn;->-wrap2(Lcom/android/server/connectivity/Vpn;)V

    #@59a
    .line 1375
    :cond_25
    throw v22

    #@59b
    .line 1384
    :cond_26
    move-object/from16 v0, p0

    #@59d
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    #@59f
    move-object/from16 v23, v0

    #@5a1
    invoke-static/range {v23 .. v23}, Lcom/android/server/connectivity/Vpn;->-get6(Lcom/android/server/connectivity/Vpn;)Landroid/net/NetworkInfo;

    #@5a4
    move-result-object v23

    #@5a5
    invoke-virtual/range {v23 .. v23}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    #@5a8
    move-result-object v23

    #@5a9
    sget-object v24, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    #@5ab
    move-object/from16 v0, v23

    #@5ad
    move-object/from16 v1, v24

    #@5af
    if-ne v0, v1, :cond_25

    #@5b1
    goto :goto_14
.end method

.method private monitorDaemons()V
    .locals 8

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1395
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
    .line 1396
    return-void

    #@e
    .line 1401
    :cond_0
    const-wide/16 v6, 0x7d0

    #@10
    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    #@13
    .line 1402
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
    .line 1403
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
    .line 1411
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    #@2b
    array-length v5, v3

    #@2c
    :goto_1
    if-ge v4, v5, :cond_1

    #@2e
    aget-object v0, v3, v4

    #@30
    .line 1412
    .local v0, "daemon":Ljava/lang/String;
    invoke-static {v0}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V

    #@33
    .line 1411
    add-int/lit8 v4, v4, 0x1

    #@35
    goto :goto_1

    #@36
    .line 1415
    .end local v0    # "daemon":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    #@38
    invoke-static {v3}, Lcom/android/server/connectivity/Vpn;->-wrap2(Lcom/android/server/connectivity/Vpn;)V

    #@3b
    .line 1404
    return-void

    #@3c
    .line 1402
    :cond_2
    add-int/lit8 v2, v2, 0x1

    #@3e
    goto :goto_0

    #@3f
    .line 1408
    .end local v2    # "i":I
    :catch_0
    move-exception v1

    #@40
    .line 1409
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
    .line 1411
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    #@4b
    array-length v5, v3

    #@4c
    :goto_2
    if-ge v4, v5, :cond_3

    #@4e
    aget-object v0, v3, v4

    #@50
    .line 1412
    .restart local v0    # "daemon":Ljava/lang/String;
    invoke-static {v0}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V

    #@53
    .line 1411
    add-int/lit8 v4, v4, 0x1

    #@55
    goto :goto_2

    #@56
    .line 1415
    .end local v0    # "daemon":Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    #@58
    invoke-static {v3}, Lcom/android/server/connectivity/Vpn;->-wrap2(Lcom/android/server/connectivity/Vpn;)V

    #@5b
    .line 1394
    return-void

    #@5c
    .line 1410
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    #@5d
    .line 1411
    iget-object v5, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    #@5f
    array-length v6, v5

    #@60
    :goto_3
    if-ge v4, v6, :cond_4

    #@62
    aget-object v0, v5, v4

    #@64
    .line 1412
    .restart local v0    # "daemon":Ljava/lang/String;
    invoke-static {v0}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V

    #@67
    .line 1411
    add-int/lit8 v4, v4, 0x1

    #@69
    goto :goto_3

    #@6a
    .line 1415
    .end local v0    # "daemon":Ljava/lang/String;
    :cond_4
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    #@6c
    invoke-static {v4}, Lcom/android/server/connectivity/Vpn;->-wrap2(Lcom/android/server/connectivity/Vpn;)V

    #@6f
    .line 1410
    throw v3
.end method


# virtual methods
.method public check(Ljava/lang/String;)V
    .locals 3
    .param p1, "interfaze"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1151
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterInterface:Ljava/lang/String;

    #@2
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1152
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
    .line 1153
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->exit()V

    #@25
    .line 1150
    :cond_0
    return-void
.end method

.method public exit()V
    .locals 5

    #@0
    .prologue
    .line 1159
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->interrupt()V

    #@3
    .line 1160
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
    .line 1161
    .local v1, "socket":Landroid/net/LocalSocket;
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@e
    .line 1160
    add-int/lit8 v2, v2, 0x1

    #@10
    goto :goto_0

    #@11
    .line 1163
    .end local v1    # "socket":Landroid/net/LocalSocket;
    :cond_0
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    #@13
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->-wrap2(Lcom/android/server/connectivity/Vpn;)V

    #@16
    .line 1165
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
    .line 1157
    :goto_1
    return-void

    #@22
    .line 1166
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
    .line 1172
    const-string/jumbo v0, "LegacyVpnRunner"

    #@3
    const-string/jumbo v1, "Waiting"

    #@6
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 1173
    const-string/jumbo v1, "LegacyVpnRunner"

    #@c
    monitor-enter v1

    #@d
    .line 1174
    :try_start_0
    const-string/jumbo v0, "LegacyVpnRunner"

    #@10
    const-string/jumbo v2, "Executing"

    #@13
    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@16
    .line 1175
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->execute()V

    #@19
    .line 1176
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->monitorDaemons()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    monitor-exit v1

    #@1d
    .line 1170
    return-void

    #@1e
    .line 1173
    :catchall_0
    move-exception v0

    #@1f
    monitor-exit v1

    #@20
    throw v0
.end method
