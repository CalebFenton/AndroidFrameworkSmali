.class final Lcom/android/server/wifi/WifiTrafficPoller;
.super Ljava/lang/Object;
.source "WifiTrafficPoller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;
    }
.end annotation


# static fields
.field private static final ADD_CLIENT:I = 0x3

.field private static final ENABLE_TRAFFIC_STATS_POLL:I = 0x1

.field private static final POLL_TRAFFIC_STATS_INTERVAL_MSECS:I = 0x3e8

.field private static final REMOVE_CLIENT:I = 0x4

.field private static final TAG:Ljava/lang/String; = "WifiTrafficPoller"

.field private static final TRAFFIC_STATS_POLL:I = 0x2


# instance fields
.field private DBG:Z

.field private VDBG:Z

.field private final mClients:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/os/Messenger;",
            ">;"
        }
    .end annotation
.end field

.field private mDataActivity:I

.field private mEnableTrafficStatsPoll:Z

.field private final mInterface:Ljava/lang/String;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mRxPkts:J

.field private mScreenOn:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mTrafficHandler:Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;

.field private mTrafficStatsPollToken:I

.field private mTxPkts:J


# direct methods
.method static synthetic -get0(Lcom/android/server/wifi/WifiTrafficPoller;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->DBG:Z

    #@2
    return v0
.end method

.method static synthetic -get1(Lcom/android/server/wifi/WifiTrafficPoller;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->VDBG:Z

    #@2
    return v0
.end method

.method static synthetic -get2(Lcom/android/server/wifi/WifiTrafficPoller;)Ljava/util/List;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mClients:Ljava/util/List;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/wifi/WifiTrafficPoller;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mEnableTrafficStatsPoll:Z

    #@2
    return v0
.end method

.method static synthetic -get4(Lcom/android/server/wifi/WifiTrafficPoller;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mScreenOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/wifi/WifiTrafficPoller;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mTrafficStatsPollToken:I

    #@2
    return v0
.end method

.method static synthetic -set0(Lcom/android/server/wifi/WifiTrafficPoller;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mEnableTrafficStatsPoll:Z

    #@2
    return p1
.end method

.method static synthetic -set1(Lcom/android/server/wifi/WifiTrafficPoller;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mNetworkInfo:Landroid/net/NetworkInfo;

    #@2
    return-object p1
.end method

.method static synthetic -set2(Lcom/android/server/wifi/WifiTrafficPoller;I)I
    .locals 0

    #@0
    iput p1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mTrafficStatsPollToken:I

    #@2
    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/wifi/WifiTrafficPoller;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/wifi/WifiTrafficPoller;->evaluateTrafficStatsPolling()V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/wifi/WifiTrafficPoller;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/wifi/WifiTrafficPoller;->notifyOnDataActivity()V

    #@3
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "iface"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 44
    iput-boolean v1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->DBG:Z

    #@6
    .line 45
    iput-boolean v1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->VDBG:Z

    #@8
    .line 59
    iput-boolean v1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mEnableTrafficStatsPoll:Z

    #@a
    .line 60
    iput v1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mTrafficStatsPollToken:I

    #@c
    .line 66
    new-instance v1, Ljava/util/ArrayList;

    #@e
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@11
    iput-object v1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mClients:Ljava/util/List;

    #@13
    .line 69
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    #@15
    const/4 v2, 0x1

    #@16
    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    #@19
    iput-object v1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mScreenOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@1b
    .line 75
    iput-object p3, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mInterface:Ljava/lang/String;

    #@1d
    .line 76
    new-instance v1, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;

    #@1f
    invoke-direct {v1, p0, p2}, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;-><init>(Lcom/android/server/wifi/WifiTrafficPoller;Landroid/os/Looper;)V

    #@22
    iput-object v1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mTrafficHandler:Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;

    #@24
    .line 78
    new-instance v0, Landroid/content/IntentFilter;

    #@26
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    #@29
    .line 79
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.net.wifi.STATE_CHANGE"

    #@2c
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@2f
    .line 80
    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    #@32
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@35
    .line 81
    const-string/jumbo v1, "android.intent.action.SCREEN_ON"

    #@38
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@3b
    .line 84
    new-instance v1, Lcom/android/server/wifi/WifiTrafficPoller$1;

    #@3d
    invoke-direct {v1, p0}, Lcom/android/server/wifi/WifiTrafficPoller$1;-><init>(Lcom/android/server/wifi/WifiTrafficPoller;)V

    #@40
    .line 83
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@43
    .line 74
    return-void
.end method

.method private evaluateTrafficStatsPolling()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 171
    iget-object v1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mNetworkInfo:Landroid/net/NetworkInfo;

    #@4
    if-nez v1, :cond_0

    #@6
    return-void

    #@7
    .line 172
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mNetworkInfo:Landroid/net/NetworkInfo;

    #@9
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    #@c
    move-result-object v1

    #@d
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    #@f
    if-ne v1, v2, :cond_1

    #@11
    iget-object v1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mScreenOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@13
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@16
    move-result v1

    #@17
    if-eqz v1, :cond_1

    #@19
    .line 173
    iget-object v1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mTrafficHandler:Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;

    #@1b
    invoke-static {v1, v4, v4, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    #@1e
    move-result-object v0

    #@1f
    .line 179
    .local v0, "msg":Landroid/os/Message;
    :goto_0
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@22
    .line 169
    return-void

    #@23
    .line 176
    .end local v0    # "msg":Landroid/os/Message;
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mTrafficHandler:Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;

    #@25
    invoke-static {v1, v4, v3, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    #@28
    move-result-object v0

    #@29
    .restart local v0    # "msg":Landroid/os/Message;
    goto :goto_0
.end method

.method private notifyOnDataActivity()V
    .locals 22

    #@0
    .prologue
    .line 184
    move-object/from16 v0, p0

    #@2
    iget-wide v12, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mTxPkts:J

    #@4
    .local v12, "preTxPkts":J
    move-object/from16 v0, p0

    #@6
    iget-wide v10, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mRxPkts:J

    #@8
    .line 185
    .local v10, "preRxPkts":J
    const/4 v6, 0x0

    #@9
    .line 187
    .local v6, "dataActivity":I
    move-object/from16 v0, p0

    #@b
    iget-object v9, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mInterface:Ljava/lang/String;

    #@d
    invoke-static {v9}, Landroid/net/TrafficStats;->getTxPackets(Ljava/lang/String;)J

    #@10
    move-result-wide v18

    #@11
    move-wide/from16 v0, v18

    #@13
    move-object/from16 v2, p0

    #@15
    iput-wide v0, v2, Lcom/android/server/wifi/WifiTrafficPoller;->mTxPkts:J

    #@17
    .line 188
    move-object/from16 v0, p0

    #@19
    iget-object v9, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mInterface:Ljava/lang/String;

    #@1b
    invoke-static {v9}, Landroid/net/TrafficStats;->getRxPackets(Ljava/lang/String;)J

    #@1e
    move-result-wide v18

    #@1f
    move-wide/from16 v0, v18

    #@21
    move-object/from16 v2, p0

    #@23
    iput-wide v0, v2, Lcom/android/server/wifi/WifiTrafficPoller;->mRxPkts:J

    #@25
    .line 190
    move-object/from16 v0, p0

    #@27
    iget-boolean v9, v0, Lcom/android/server/wifi/WifiTrafficPoller;->VDBG:Z

    #@29
    if-eqz v9, :cond_0

    #@2b
    .line 191
    const-string/jumbo v9, "WifiTrafficPoller"

    #@2e
    new-instance v18, Ljava/lang/StringBuilder;

    #@30
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    const-string/jumbo v19, " packet count Tx="

    #@36
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v18

    #@3a
    .line 192
    move-object/from16 v0, p0

    #@3c
    iget-wide v0, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mTxPkts:J

    #@3e
    move-wide/from16 v20, v0

    #@40
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@43
    move-result-object v19

    #@44
    .line 191
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v18

    #@48
    .line 193
    const-string/jumbo v19, " Rx="

    #@4b
    .line 191
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v18

    #@4f
    .line 194
    move-object/from16 v0, p0

    #@51
    iget-wide v0, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mRxPkts:J

    #@53
    move-wide/from16 v20, v0

    #@55
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@58
    move-result-object v19

    #@59
    .line 191
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v18

    #@5d
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@60
    move-result-object v18

    #@61
    move-object/from16 v0, v18

    #@63
    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@66
    .line 197
    :cond_0
    const-wide/16 v18, 0x0

    #@68
    cmp-long v9, v12, v18

    #@6a
    if-gtz v9, :cond_1

    #@6c
    const-wide/16 v18, 0x0

    #@6e
    cmp-long v9, v10, v18

    #@70
    if-lez v9, :cond_5

    #@72
    .line 198
    :cond_1
    move-object/from16 v0, p0

    #@74
    iget-wide v0, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mTxPkts:J

    #@76
    move-wide/from16 v18, v0

    #@78
    sub-long v16, v18, v12

    #@7a
    .line 199
    .local v16, "sent":J
    move-object/from16 v0, p0

    #@7c
    iget-wide v0, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mRxPkts:J

    #@7e
    move-wide/from16 v18, v0

    #@80
    sub-long v14, v18, v10

    #@82
    .line 200
    .local v14, "received":J
    const-wide/16 v18, 0x0

    #@84
    cmp-long v9, v16, v18

    #@86
    if-lez v9, :cond_2

    #@88
    .line 201
    const/4 v6, 0x2

    #@89
    .line 203
    :cond_2
    const-wide/16 v18, 0x0

    #@8b
    cmp-long v9, v14, v18

    #@8d
    if-lez v9, :cond_3

    #@8f
    .line 204
    or-int/lit8 v6, v6, 0x1

    #@91
    .line 207
    :cond_3
    move-object/from16 v0, p0

    #@93
    iget v9, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mDataActivity:I

    #@95
    if-eq v6, v9, :cond_5

    #@97
    move-object/from16 v0, p0

    #@99
    iget-object v9, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mScreenOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@9b
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@9e
    move-result v9

    #@9f
    if-eqz v9, :cond_5

    #@a1
    .line 208
    move-object/from16 v0, p0

    #@a3
    iput v6, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mDataActivity:I

    #@a5
    .line 209
    move-object/from16 v0, p0

    #@a7
    iget-boolean v9, v0, Lcom/android/server/wifi/WifiTrafficPoller;->DBG:Z

    #@a9
    if-eqz v9, :cond_4

    #@ab
    .line 210
    const-string/jumbo v9, "WifiTrafficPoller"

    #@ae
    new-instance v18, Ljava/lang/StringBuilder;

    #@b0
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@b3
    const-string/jumbo v19, "notifying of data activity "

    #@b6
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b9
    move-result-object v18

    #@ba
    .line 211
    move-object/from16 v0, p0

    #@bc
    iget v0, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mDataActivity:I

    #@be
    move/from16 v19, v0

    #@c0
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@c3
    move-result-object v19

    #@c4
    .line 210
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c7
    move-result-object v18

    #@c8
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@cb
    move-result-object v18

    #@cc
    move-object/from16 v0, v18

    #@ce
    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@d1
    .line 213
    :cond_4
    move-object/from16 v0, p0

    #@d3
    iget-object v9, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mClients:Ljava/util/List;

    #@d5
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@d8
    move-result-object v5

    #@d9
    .local v5, "client$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@dc
    move-result v9

    #@dd
    if-eqz v9, :cond_5

    #@df
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@e2
    move-result-object v4

    #@e3
    check-cast v4, Landroid/os/Messenger;

    #@e5
    .line 214
    .local v4, "client":Landroid/os/Messenger;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    #@e8
    move-result-object v8

    #@e9
    .line 215
    .local v8, "msg":Landroid/os/Message;
    const/4 v9, 0x1

    #@ea
    iput v9, v8, Landroid/os/Message;->what:I

    #@ec
    .line 216
    move-object/from16 v0, p0

    #@ee
    iget v9, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mDataActivity:I

    #@f0
    iput v9, v8, Landroid/os/Message;->arg1:I

    #@f2
    .line 218
    :try_start_0
    invoke-virtual {v4, v8}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f5
    goto :goto_0

    #@f6
    .line 219
    :catch_0
    move-exception v7

    #@f7
    .local v7, "e":Landroid/os/RemoteException;
    goto :goto_0

    #@f8
    .line 182
    .end local v4    # "client":Landroid/os/Messenger;
    .end local v5    # "client$iterator":Ljava/util/Iterator;
    .end local v7    # "e":Landroid/os/RemoteException;
    .end local v8    # "msg":Landroid/os/Message;
    .end local v14    # "received":J
    .end local v16    # "sent":J
    :cond_5
    return-void
.end method


# virtual methods
.method addClient(Landroid/os/Messenger;)V
    .locals 2
    .param p1, "client"    # Landroid/os/Messenger;

    #@0
    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mTrafficHandler:Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;

    #@2
    const/4 v1, 0x3

    #@3
    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@a
    .line 104
    return-void
.end method

.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "mEnableTrafficStatsPoll "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mEnableTrafficStatsPoll:Z

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@19
    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    const-string/jumbo v1, "mTrafficStatsPollToken "

    #@21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    iget v1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mTrafficStatsPollToken:I

    #@27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v0

    #@2b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v0

    #@2f
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@32
    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    #@34
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@37
    const-string/jumbo v1, "mTxPkts "

    #@3a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v0

    #@3e
    iget-wide v2, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mTxPkts:J

    #@40
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@43
    move-result-object v0

    #@44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object v0

    #@48
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@4b
    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    #@4d
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@50
    const-string/jumbo v1, "mRxPkts "

    #@53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v0

    #@57
    iget-wide v2, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mRxPkts:J

    #@59
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v0

    #@5d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@60
    move-result-object v0

    #@61
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@64
    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    #@66
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@69
    const-string/jumbo v1, "mDataActivity "

    #@6c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v0

    #@70
    iget v1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mDataActivity:I

    #@72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@75
    move-result-object v0

    #@76
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@79
    move-result-object v0

    #@7a
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@7d
    .line 228
    return-void
.end method

.method enableVerboseLogging(I)V
    .locals 1
    .param p1, "verbose"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 113
    if-lez p1, :cond_0

    #@3
    .line 114
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->DBG:Z

    #@6
    .line 112
    :goto_0
    return-void

    #@7
    .line 116
    :cond_0
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->DBG:Z

    #@9
    goto :goto_0
.end method

.method removeClient(Landroid/os/Messenger;)V
    .locals 2
    .param p1, "client"    # Landroid/os/Messenger;

    #@0
    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mTrafficHandler:Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;

    #@2
    const/4 v1, 0x4

    #@3
    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@a
    .line 108
    return-void
.end method
