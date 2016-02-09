.class public abstract Landroid/net/NetworkAgent;
.super Landroid/os/Handler;
.source "NetworkAgent.java"


# static fields
.field private static final BASE:I = 0x81000

.field private static final BW_REFRESH_MIN_WIN_MS:J = 0x1f4L

.field public static final CMD_PREVENT_AUTOMATIC_RECONNECT:I = 0x8100b

.field public static final CMD_REPORT_NETWORK_STATUS:I = 0x81007

.field public static final CMD_REQUEST_BANDWIDTH_UPDATE:I = 0x8100a

.field public static final CMD_SAVE_ACCEPT_UNVALIDATED:I = 0x81009

.field public static final CMD_SUSPECT_BAD:I = 0x81000

.field private static final DBG:Z = true

.field public static final EVENT_NETWORK_CAPABILITIES_CHANGED:I = 0x81002

.field public static final EVENT_NETWORK_INFO_CHANGED:I = 0x81001

.field public static final EVENT_NETWORK_PROPERTIES_CHANGED:I = 0x81003

.field public static final EVENT_NETWORK_SCORE_CHANGED:I = 0x81004

.field public static final EVENT_SET_EXPLICITLY_SELECTED:I = 0x81008

.field public static final EVENT_UID_RANGES_ADDED:I = 0x81005

.field public static final EVENT_UID_RANGES_REMOVED:I = 0x81006

.field public static final INVALID_NETWORK:I = 0x2

.field public static final VALID_NETWORK:I = 0x1

.field private static final VDBG:Z = false

.field public static final WIFI_BASE_SCORE:I = 0x3c


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private volatile mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

.field private final mContext:Landroid/content/Context;

.field private volatile mLastBwRefreshTime:J

.field private mPollLcePending:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mPollLceScheduled:Z

.field private final mPreConnectedQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field public final netId:I


# direct methods
.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;I)V
    .locals 9
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "logTag"    # Ljava/lang/String;
    .param p4, "ni"    # Landroid/net/NetworkInfo;
    .param p5, "nc"    # Landroid/net/NetworkCapabilities;
    .param p6, "lp"    # Landroid/net/LinkProperties;
    .param p7, "score"    # I

    #@0
    .prologue
    .line 160
    const/4 v8, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move-object v2, p2

    #@4
    move-object v3, p3

    #@5
    move-object v4, p4

    #@6
    move-object v5, p5

    #@7
    move-object v6, p6

    #@8
    move/from16 v7, p7

    #@a
    invoke-direct/range {v0 .. v8}, Landroid/net/NetworkAgent;-><init>(Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;ILandroid/net/NetworkMisc;)V

    #@d
    .line 159
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;ILandroid/net/NetworkMisc;)V
    .locals 7
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "logTag"    # Ljava/lang/String;
    .param p4, "ni"    # Landroid/net/NetworkInfo;
    .param p5, "nc"    # Landroid/net/NetworkCapabilities;
    .param p6, "lp"    # Landroid/net/LinkProperties;
    .param p7, "score"    # I
    .param p8, "misc"    # Landroid/net/NetworkMisc;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 165
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@4
    .line 52
    new-instance v1, Ljava/util/ArrayList;

    #@6
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@9
    iput-object v1, p0, Landroid/net/NetworkAgent;->mPreConnectedQueue:Ljava/util/ArrayList;

    #@b
    .line 53
    const-wide/16 v2, 0x0

    #@d
    iput-wide v2, p0, Landroid/net/NetworkAgent;->mLastBwRefreshTime:J

    #@f
    .line 55
    iput-boolean v4, p0, Landroid/net/NetworkAgent;->mPollLceScheduled:Z

    #@11
    .line 56
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    #@13
    invoke-direct {v1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    #@16
    iput-object v1, p0, Landroid/net/NetworkAgent;->mPollLcePending:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@18
    .line 166
    iput-object p3, p0, Landroid/net/NetworkAgent;->LOG_TAG:Ljava/lang/String;

    #@1a
    .line 167
    iput-object p2, p0, Landroid/net/NetworkAgent;->mContext:Landroid/content/Context;

    #@1c
    .line 168
    if-eqz p4, :cond_0

    #@1e
    if-nez p5, :cond_1

    #@20
    .line 169
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@22
    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@25
    throw v1

    #@26
    .line 168
    :cond_1
    if-eqz p6, :cond_0

    #@28
    .line 173
    iget-object v1, p0, Landroid/net/NetworkAgent;->mContext:Landroid/content/Context;

    #@2a
    .line 174
    const-string/jumbo v2, "connectivity"

    #@2d
    .line 173
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@30
    move-result-object v0

    #@31
    check-cast v0, Landroid/net/ConnectivityManager;

    #@33
    .line 175
    .local v0, "cm":Landroid/net/ConnectivityManager;
    new-instance v1, Landroid/os/Messenger;

    #@35
    invoke-direct {v1, p0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    #@38
    new-instance v2, Landroid/net/NetworkInfo;

    #@3a
    invoke-direct {v2, p4}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    #@3d
    .line 176
    new-instance v3, Landroid/net/LinkProperties;

    #@3f
    invoke-direct {v3, p6}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    #@42
    new-instance v4, Landroid/net/NetworkCapabilities;

    #@44
    invoke-direct {v4, p5}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    #@47
    move v5, p7

    #@48
    move-object v6, p8

    #@49
    .line 175
    invoke-virtual/range {v0 .. v6}, Landroid/net/ConnectivityManager;->registerNetworkAgent(Landroid/os/Messenger;Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;ILandroid/net/NetworkMisc;)I

    #@4c
    move-result v1

    #@4d
    iput v1, p0, Landroid/net/NetworkAgent;->netId:I

    #@4f
    .line 164
    return-void
.end method

.method private queueOrSendMessage(ILjava/lang/Object;)V
    .locals 3
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 260
    iget-object v2, p0, Landroid/net/NetworkAgent;->mPreConnectedQueue:Ljava/util/ArrayList;

    #@2
    monitor-enter v2

    #@3
    .line 261
    :try_start_0
    iget-object v1, p0, Landroid/net/NetworkAgent;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 262
    iget-object v1, p0, Landroid/net/NetworkAgent;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    #@9
    invoke-virtual {v1, p1, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    :goto_0
    monitor-exit v2

    #@d
    .line 259
    return-void

    #@e
    .line 264
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    #@11
    move-result-object v0

    #@12
    .line 265
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    #@14
    .line 266
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@16
    .line 267
    iget-object v1, p0, Landroid/net/NetworkAgent;->mPreConnectedQueue:Ljava/util/ArrayList;

    #@18
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1b
    goto :goto_0

    #@1c
    .line 260
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    #@1d
    monitor-exit v2

    #@1e
    throw v1
.end method


# virtual methods
.method public addUidRanges([Landroid/net/UidRange;)V
    .locals 1
    .param p1, "ranges"    # [Landroid/net/UidRange;

    #@0
    .prologue
    .line 311
    const v0, 0x81005

    #@3
    invoke-direct {p0, v0, p1}, Landroid/net/NetworkAgent;->queueOrSendMessage(ILjava/lang/Object;)V

    #@6
    .line 310
    return-void
.end method

.method public explicitlySelected(Z)V
    .locals 2
    .param p1, "acceptUnvalidated"    # Z

    #@0
    .prologue
    .line 334
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@3
    move-result-object v0

    #@4
    const v1, 0x81008

    #@7
    invoke-direct {p0, v1, v0}, Landroid/net/NetworkAgent;->queueOrSendMessage(ILjava/lang/Object;)V

    #@a
    .line 333
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const-wide/16 v12, 0x1f4

    #@2
    const/4 v5, 0x1

    #@3
    const/4 v10, 0x0

    #@4
    const/4 v8, 0x0

    #@5
    .line 181
    iget v9, p1, Landroid/os/Message;->what:I

    #@7
    sparse-switch v9, :sswitch_data_0

    #@a
    .line 180
    :cond_0
    :goto_0
    return-void

    #@b
    .line 183
    :sswitch_0
    iget-object v5, p0, Landroid/net/NetworkAgent;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    #@d
    if-eqz v5, :cond_1

    #@f
    .line 184
    const-string/jumbo v5, "Received new connection while already connected!"

    #@12
    invoke-virtual {p0, v5}, Landroid/net/NetworkAgent;->log(Ljava/lang/String;)V

    #@15
    goto :goto_0

    #@16
    .line 187
    :cond_1
    new-instance v0, Lcom/android/internal/util/AsyncChannel;

    #@18
    invoke-direct {v0}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    #@1b
    .line 188
    .local v0, "ac":Lcom/android/internal/util/AsyncChannel;
    iget-object v5, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@1d
    invoke-virtual {v0, v10, p0, v5}, Lcom/android/internal/util/AsyncChannel;->connected(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    #@20
    .line 189
    const v5, 0x11002

    #@23
    invoke-virtual {v0, p1, v5, v8}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    #@26
    .line 191
    iget-object v8, p0, Landroid/net/NetworkAgent;->mPreConnectedQueue:Ljava/util/ArrayList;

    #@28
    monitor-enter v8

    #@29
    .line 192
    :try_start_0
    iput-object v0, p0, Landroid/net/NetworkAgent;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    #@2b
    .line 193
    iget-object v5, p0, Landroid/net/NetworkAgent;->mPreConnectedQueue:Ljava/util/ArrayList;

    #@2d
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@30
    move-result-object v4

    #@31
    .local v4, "m$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@34
    move-result v5

    #@35
    if-eqz v5, :cond_2

    #@37
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3a
    move-result-object v1

    #@3b
    check-cast v1, Landroid/os/Message;

    #@3d
    .line 194
    .local v1, "m":Landroid/os/Message;
    invoke-virtual {v0, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@40
    goto :goto_1

    #@41
    .line 191
    .end local v1    # "m":Landroid/os/Message;
    .end local v4    # "m$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    #@42
    monitor-exit v8

    #@43
    throw v5

    #@44
    .line 196
    .restart local v4    # "m$iterator":Ljava/util/Iterator;
    :cond_2
    :try_start_1
    iget-object v5, p0, Landroid/net/NetworkAgent;->mPreConnectedQueue:Ljava/util/ArrayList;

    #@46
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@49
    monitor-exit v8

    #@4a
    goto :goto_0

    #@4b
    .line 203
    .end local v0    # "ac":Lcom/android/internal/util/AsyncChannel;
    .end local v4    # "m$iterator":Ljava/util/Iterator;
    :sswitch_1
    iget-object v5, p0, Landroid/net/NetworkAgent;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    #@4d
    if-eqz v5, :cond_0

    #@4f
    iget-object v5, p0, Landroid/net/NetworkAgent;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    #@51
    invoke-virtual {v5}, Lcom/android/internal/util/AsyncChannel;->disconnect()V

    #@54
    goto :goto_0

    #@55
    .line 207
    :sswitch_2
    const-string/jumbo v5, "NetworkAgent channel lost"

    #@58
    invoke-virtual {p0, v5}, Landroid/net/NetworkAgent;->log(Ljava/lang/String;)V

    #@5b
    .line 209
    invoke-virtual {p0}, Landroid/net/NetworkAgent;->unwanted()V

    #@5e
    .line 210
    iget-object v5, p0, Landroid/net/NetworkAgent;->mPreConnectedQueue:Ljava/util/ArrayList;

    #@60
    monitor-enter v5

    #@61
    .line 211
    const/4 v8, 0x0

    #@62
    :try_start_2
    iput-object v8, p0, Landroid/net/NetworkAgent;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@64
    monitor-exit v5

    #@65
    goto :goto_0

    #@66
    .line 210
    :catchall_1
    move-exception v8

    #@67
    monitor-exit v5

    #@68
    throw v8

    #@69
    .line 216
    :sswitch_3
    new-instance v5, Ljava/lang/StringBuilder;

    #@6b
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@6e
    const-string/jumbo v8, "Unhandled Message "

    #@71
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v5

    #@75
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v5

    #@79
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7c
    move-result-object v5

    #@7d
    invoke-virtual {p0, v5}, Landroid/net/NetworkAgent;->log(Ljava/lang/String;)V

    #@80
    goto :goto_0

    #@81
    .line 220
    :sswitch_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@84
    move-result-wide v2

    #@85
    .line 224
    .local v2, "currentTimeMs":J
    iget-wide v10, p0, Landroid/net/NetworkAgent;->mLastBwRefreshTime:J

    #@87
    add-long/2addr v10, v12

    #@88
    cmp-long v9, v2, v10

    #@8a
    if-ltz v9, :cond_3

    #@8c
    .line 225
    iput-boolean v8, p0, Landroid/net/NetworkAgent;->mPollLceScheduled:Z

    #@8e
    .line 226
    iget-object v8, p0, Landroid/net/NetworkAgent;->mPollLcePending:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@90
    invoke-virtual {v8, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    #@93
    move-result v5

    #@94
    if-nez v5, :cond_0

    #@96
    .line 227
    invoke-virtual {p0}, Landroid/net/NetworkAgent;->pollLceData()V

    #@99
    goto/16 :goto_0

    #@9b
    .line 231
    :cond_3
    iget-boolean v5, p0, Landroid/net/NetworkAgent;->mPollLceScheduled:Z

    #@9d
    if-nez v5, :cond_0

    #@9f
    .line 232
    iget-wide v8, p0, Landroid/net/NetworkAgent;->mLastBwRefreshTime:J

    #@a1
    add-long/2addr v8, v12

    #@a2
    sub-long/2addr v8, v2

    #@a3
    .line 233
    const-wide/16 v10, 0x1

    #@a5
    .line 232
    add-long v6, v8, v10

    #@a7
    .line 235
    .local v6, "waitTime":J
    const v5, 0x8100a

    #@aa
    .line 234
    invoke-virtual {p0, v5, v6, v7}, Landroid/net/NetworkAgent;->sendEmptyMessageDelayed(IJ)Z

    #@ad
    move-result v5

    #@ae
    iput-boolean v5, p0, Landroid/net/NetworkAgent;->mPollLceScheduled:Z

    #@b0
    goto/16 :goto_0

    #@b2
    .line 245
    .end local v2    # "currentTimeMs":J
    .end local v6    # "waitTime":J
    :sswitch_5
    iget v5, p1, Landroid/os/Message;->arg1:I

    #@b4
    invoke-virtual {p0, v5}, Landroid/net/NetworkAgent;->networkStatus(I)V

    #@b7
    goto/16 :goto_0

    #@b9
    .line 249
    :sswitch_6
    iget v9, p1, Landroid/os/Message;->arg1:I

    #@bb
    if-eqz v9, :cond_4

    #@bd
    :goto_2
    invoke-virtual {p0, v5}, Landroid/net/NetworkAgent;->saveAcceptUnvalidated(Z)V

    #@c0
    goto/16 :goto_0

    #@c2
    :cond_4
    move v5, v8

    #@c3
    goto :goto_2

    #@c4
    .line 253
    :sswitch_7
    invoke-virtual {p0}, Landroid/net/NetworkAgent;->preventAutomaticReconnect()V

    #@c7
    goto/16 :goto_0

    #@c9
    .line 181
    nop

    #@ca
    :sswitch_data_0
    .sparse-switch
        0x11001 -> :sswitch_0
        0x11003 -> :sswitch_1
        0x11004 -> :sswitch_2
        0x81000 -> :sswitch_3
        0x81007 -> :sswitch_5
        0x81009 -> :sswitch_6
        0x8100a -> :sswitch_4
        0x8100b -> :sswitch_7
    .end sparse-switch
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 390
    iget-object v0, p0, Landroid/net/NetworkAgent;->LOG_TAG:Ljava/lang/String;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v2, "NetworkAgent: "

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@19
    .line 389
    return-void
.end method

.method protected networkStatus(I)V
    .locals 0
    .param p1, "status"    # I

    #@0
    .prologue
    .line 367
    return-void
.end method

.method protected pollLceData()V
    .locals 0

    #@0
    .prologue
    .line 349
    return-void
.end method

.method protected preventAutomaticReconnect()V
    .locals 0

    #@0
    .prologue
    .line 386
    return-void
.end method

.method public removeUidRanges([Landroid/net/UidRange;)V
    .locals 1
    .param p1, "ranges"    # [Landroid/net/UidRange;

    #@0
    .prologue
    .line 319
    const v0, 0x81006

    #@3
    invoke-direct {p0, v0, p1}, Landroid/net/NetworkAgent;->queueOrSendMessage(ILjava/lang/Object;)V

    #@6
    .line 318
    return-void
.end method

.method protected saveAcceptUnvalidated(Z)V
    .locals 0
    .param p1, "accept"    # Z

    #@0
    .prologue
    .line 377
    return-void
.end method

.method public sendLinkProperties(Landroid/net/LinkProperties;)V
    .locals 2
    .param p1, "linkProperties"    # Landroid/net/LinkProperties;

    #@0
    .prologue
    .line 276
    new-instance v0, Landroid/net/LinkProperties;

    #@2
    invoke-direct {v0, p1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    #@5
    const v1, 0x81003

    #@8
    invoke-direct {p0, v1, v0}, Landroid/net/NetworkAgent;->queueOrSendMessage(ILjava/lang/Object;)V

    #@b
    .line 275
    return-void
.end method

.method public sendNetworkCapabilities(Landroid/net/NetworkCapabilities;)V
    .locals 2
    .param p1, "networkCapabilities"    # Landroid/net/NetworkCapabilities;

    #@0
    .prologue
    .line 290
    iget-object v0, p0, Landroid/net/NetworkAgent;->mPollLcePending:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    #@6
    .line 291
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@9
    move-result-wide v0

    #@a
    iput-wide v0, p0, Landroid/net/NetworkAgent;->mLastBwRefreshTime:J

    #@c
    .line 293
    new-instance v0, Landroid/net/NetworkCapabilities;

    #@e
    invoke-direct {v0, p1}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    #@11
    .line 292
    const v1, 0x81002

    #@14
    invoke-direct {p0, v1, v0}, Landroid/net/NetworkAgent;->queueOrSendMessage(ILjava/lang/Object;)V

    #@17
    .line 289
    return-void
.end method

.method public sendNetworkInfo(Landroid/net/NetworkInfo;)V
    .locals 2
    .param p1, "networkInfo"    # Landroid/net/NetworkInfo;

    #@0
    .prologue
    .line 283
    new-instance v0, Landroid/net/NetworkInfo;

    #@2
    invoke-direct {v0, p1}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    #@5
    const v1, 0x81001

    #@8
    invoke-direct {p0, v1, v0}, Landroid/net/NetworkAgent;->queueOrSendMessage(ILjava/lang/Object;)V

    #@b
    .line 282
    return-void
.end method

.method public sendNetworkScore(I)V
    .locals 2
    .param p1, "score"    # I

    #@0
    .prologue
    .line 300
    if-gez p1, :cond_0

    #@2
    .line 301
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "Score must be >= 0"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 303
    :cond_0
    new-instance v0, Ljava/lang/Integer;

    #@d
    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    #@10
    const v1, 0x81004

    #@13
    invoke-direct {p0, v1, v0}, Landroid/net/NetworkAgent;->queueOrSendMessage(ILjava/lang/Object;)V

    #@16
    .line 299
    return-void
.end method

.method protected abstract unwanted()V
.end method
