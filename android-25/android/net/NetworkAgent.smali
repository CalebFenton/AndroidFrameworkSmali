.class public abstract Landroid/net/NetworkAgent;
.super Landroid/os/Handler;
.source "NetworkAgent.java"


# static fields
.field private static final BASE:I = 0x81000

.field private static final BW_REFRESH_MIN_WIN_MS:J = 0x1f4L

.field public static final CMD_PREVENT_AUTOMATIC_RECONNECT:I = 0x8100f

.field public static final CMD_REPORT_NETWORK_STATUS:I = 0x81007

.field public static final CMD_REQUEST_BANDWIDTH_UPDATE:I = 0x8100a

.field public static final CMD_SAVE_ACCEPT_UNVALIDATED:I = 0x81009

.field public static final CMD_SET_SIGNAL_STRENGTH_THRESHOLDS:I = 0x8100e

.field public static final CMD_START_PACKET_KEEPALIVE:I = 0x8100b

.field public static final CMD_STOP_PACKET_KEEPALIVE:I = 0x8100c

.field public static final CMD_SUSPECT_BAD:I = 0x81000

.field private static final DBG:Z = true

.field public static final EVENT_NETWORK_CAPABILITIES_CHANGED:I = 0x81002

.field public static final EVENT_NETWORK_INFO_CHANGED:I = 0x81001

.field public static final EVENT_NETWORK_PROPERTIES_CHANGED:I = 0x81003

.field public static final EVENT_NETWORK_SCORE_CHANGED:I = 0x81004

.field public static final EVENT_PACKET_KEEPALIVE:I = 0x8100d

.field public static final EVENT_SET_EXPLICITLY_SELECTED:I = 0x81008

.field public static final EVENT_UID_RANGES_ADDED:I = 0x81005

.field public static final EVENT_UID_RANGES_REMOVED:I = 0x81006

.field public static final INVALID_NETWORK:I = 0x2

.field public static REDIRECT_URL_KEY:Ljava/lang/String; = null

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
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 132
    const-string/jumbo v0, "redirect URL"

    #@3
    sput-object v0, Landroid/net/NetworkAgent;->REDIRECT_URL_KEY:Ljava/lang/String;

    #@5
    .line 44
    return-void
.end method

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
    .line 210
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
    .line 209
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
    .line 215
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@4
    .line 54
    new-instance v1, Ljava/util/ArrayList;

    #@6
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@9
    iput-object v1, p0, Landroid/net/NetworkAgent;->mPreConnectedQueue:Ljava/util/ArrayList;

    #@b
    .line 55
    const-wide/16 v2, 0x0

    #@d
    iput-wide v2, p0, Landroid/net/NetworkAgent;->mLastBwRefreshTime:J

    #@f
    .line 57
    iput-boolean v4, p0, Landroid/net/NetworkAgent;->mPollLceScheduled:Z

    #@11
    .line 58
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    #@13
    invoke-direct {v1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    #@16
    iput-object v1, p0, Landroid/net/NetworkAgent;->mPollLcePending:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@18
    .line 216
    iput-object p3, p0, Landroid/net/NetworkAgent;->LOG_TAG:Ljava/lang/String;

    #@1a
    .line 217
    iput-object p2, p0, Landroid/net/NetworkAgent;->mContext:Landroid/content/Context;

    #@1c
    .line 218
    if-eqz p4, :cond_0

    #@1e
    if-nez p5, :cond_1

    #@20
    .line 219
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@22
    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@25
    throw v1

    #@26
    .line 218
    :cond_1
    if-eqz p6, :cond_0

    #@28
    .line 223
    iget-object v1, p0, Landroid/net/NetworkAgent;->mContext:Landroid/content/Context;

    #@2a
    .line 224
    const-string/jumbo v2, "connectivity"

    #@2d
    .line 223
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@30
    move-result-object v0

    #@31
    check-cast v0, Landroid/net/ConnectivityManager;

    #@33
    .line 225
    .local v0, "cm":Landroid/net/ConnectivityManager;
    new-instance v1, Landroid/os/Messenger;

    #@35
    invoke-direct {v1, p0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    #@38
    new-instance v2, Landroid/net/NetworkInfo;

    #@3a
    invoke-direct {v2, p4}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    #@3d
    .line 226
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
    .line 225
    invoke-virtual/range {v0 .. v6}, Landroid/net/ConnectivityManager;->registerNetworkAgent(Landroid/os/Messenger;Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;ILandroid/net/NetworkMisc;)I

    #@4c
    move-result v1

    #@4d
    iput v1, p0, Landroid/net/NetworkAgent;->netId:I

    #@4f
    .line 214
    return-void
.end method

.method private queueOrSendMessage(III)V
    .locals 1
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    #@0
    .prologue
    .line 336
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/net/NetworkAgent;->queueOrSendMessage(IIILjava/lang/Object;)V

    #@4
    .line 335
    return-void
.end method

.method private queueOrSendMessage(IIILjava/lang/Object;)V
    .locals 1
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 340
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    #@3
    move-result-object v0

    #@4
    .line 341
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    #@6
    .line 342
    iput p2, v0, Landroid/os/Message;->arg1:I

    #@8
    .line 343
    iput p3, v0, Landroid/os/Message;->arg2:I

    #@a
    .line 344
    iput-object p4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@c
    .line 345
    invoke-direct {p0, v0}, Landroid/net/NetworkAgent;->queueOrSendMessage(Landroid/os/Message;)V

    #@f
    .line 339
    return-void
.end method

.method private queueOrSendMessage(ILjava/lang/Object;)V
    .locals 1
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 332
    invoke-direct {p0, p1, v0, v0, p2}, Landroid/net/NetworkAgent;->queueOrSendMessage(IIILjava/lang/Object;)V

    #@4
    .line 331
    return-void
.end method

.method private queueOrSendMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 349
    iget-object v1, p0, Landroid/net/NetworkAgent;->mPreConnectedQueue:Ljava/util/ArrayList;

    #@2
    monitor-enter v1

    #@3
    .line 350
    :try_start_0
    iget-object v0, p0, Landroid/net/NetworkAgent;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 351
    iget-object v0, p0, Landroid/net/NetworkAgent;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    #@9
    invoke-virtual {v0, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    :goto_0
    monitor-exit v1

    #@d
    .line 348
    return-void

    #@e
    .line 353
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/net/NetworkAgent;->mPreConnectedQueue:Ljava/util/ArrayList;

    #@10
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@13
    goto :goto_0

    #@14
    .line 349
    :catchall_0
    move-exception v0

    #@15
    monitor-exit v1

    #@16
    throw v0
.end method


# virtual methods
.method public addUidRanges([Landroid/net/UidRange;)V
    .locals 1
    .param p1, "ranges"    # [Landroid/net/UidRange;

    #@0
    .prologue
    .line 397
    const v0, 0x81005

    #@3
    invoke-direct {p0, v0, p1}, Landroid/net/NetworkAgent;->queueOrSendMessage(ILjava/lang/Object;)V

    #@6
    .line 396
    return-void
.end method

.method public explicitlySelected(Z)V
    .locals 2
    .param p1, "acceptUnvalidated"    # Z

    #@0
    .prologue
    .line 420
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@3
    move-result-object v0

    #@4
    const v1, 0x81008

    #@7
    invoke-direct {p0, v1, v0}, Landroid/net/NetworkAgent;->queueOrSendMessage(ILjava/lang/Object;)V

    #@a
    .line 419
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 18
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 231
    move-object/from16 v0, p1

    #@2
    iget v11, v0, Landroid/os/Message;->what:I

    #@4
    sparse-switch v11, :sswitch_data_0

    #@7
    .line 230
    :cond_0
    :goto_0
    return-void

    #@8
    .line 233
    :sswitch_0
    move-object/from16 v0, p0

    #@a
    iget-object v11, v0, Landroid/net/NetworkAgent;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    #@c
    if-eqz v11, :cond_1

    #@e
    .line 234
    const-string/jumbo v11, "Received new connection while already connected!"

    #@11
    move-object/from16 v0, p0

    #@13
    invoke-virtual {v0, v11}, Landroid/net/NetworkAgent;->log(Ljava/lang/String;)V

    #@16
    goto :goto_0

    #@17
    .line 237
    :cond_1
    new-instance v2, Lcom/android/internal/util/AsyncChannel;

    #@19
    invoke-direct {v2}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    #@1c
    .line 238
    .local v2, "ac":Lcom/android/internal/util/AsyncChannel;
    move-object/from16 v0, p1

    #@1e
    iget-object v11, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@20
    const/4 v14, 0x0

    #@21
    move-object/from16 v0, p0

    #@23
    invoke-virtual {v2, v14, v0, v11}, Lcom/android/internal/util/AsyncChannel;->connected(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    #@26
    .line 239
    const v11, 0x11002

    #@29
    .line 240
    const/4 v14, 0x0

    #@2a
    .line 239
    move-object/from16 v0, p1

    #@2c
    invoke-virtual {v2, v0, v11, v14}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    #@2f
    .line 241
    move-object/from16 v0, p0

    #@31
    iget-object v14, v0, Landroid/net/NetworkAgent;->mPreConnectedQueue:Ljava/util/ArrayList;

    #@33
    monitor-enter v14

    #@34
    .line 242
    :try_start_0
    move-object/from16 v0, p0

    #@36
    iput-object v2, v0, Landroid/net/NetworkAgent;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    #@38
    .line 243
    move-object/from16 v0, p0

    #@3a
    iget-object v11, v0, Landroid/net/NetworkAgent;->mPreConnectedQueue:Ljava/util/ArrayList;

    #@3c
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@3f
    move-result-object v8

    #@40
    .local v8, "m$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    #@43
    move-result v11

    #@44
    if-eqz v11, :cond_2

    #@46
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@49
    move-result-object v7

    #@4a
    check-cast v7, Landroid/os/Message;

    #@4c
    .line 244
    .local v7, "m":Landroid/os/Message;
    invoke-virtual {v2, v7}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4f
    goto :goto_1

    #@50
    .line 241
    .end local v7    # "m":Landroid/os/Message;
    .end local v8    # "m$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v11

    #@51
    monitor-exit v14

    #@52
    throw v11

    #@53
    .line 246
    .restart local v8    # "m$iterator":Ljava/util/Iterator;
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    #@55
    iget-object v11, v0, Landroid/net/NetworkAgent;->mPreConnectedQueue:Ljava/util/ArrayList;

    #@57
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@5a
    monitor-exit v14

    #@5b
    goto :goto_0

    #@5c
    .line 253
    .end local v2    # "ac":Lcom/android/internal/util/AsyncChannel;
    .end local v8    # "m$iterator":Ljava/util/Iterator;
    :sswitch_1
    move-object/from16 v0, p0

    #@5e
    iget-object v11, v0, Landroid/net/NetworkAgent;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    #@60
    if-eqz v11, :cond_0

    #@62
    move-object/from16 v0, p0

    #@64
    iget-object v11, v0, Landroid/net/NetworkAgent;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    #@66
    invoke-virtual {v11}, Lcom/android/internal/util/AsyncChannel;->disconnect()V

    #@69
    goto :goto_0

    #@6a
    .line 257
    :sswitch_2
    const-string/jumbo v11, "NetworkAgent channel lost"

    #@6d
    move-object/from16 v0, p0

    #@6f
    invoke-virtual {v0, v11}, Landroid/net/NetworkAgent;->log(Ljava/lang/String;)V

    #@72
    .line 259
    invoke-virtual/range {p0 .. p0}, Landroid/net/NetworkAgent;->unwanted()V

    #@75
    .line 260
    move-object/from16 v0, p0

    #@77
    iget-object v11, v0, Landroid/net/NetworkAgent;->mPreConnectedQueue:Ljava/util/ArrayList;

    #@79
    monitor-enter v11

    #@7a
    .line 261
    const/4 v14, 0x0

    #@7b
    :try_start_2
    move-object/from16 v0, p0

    #@7d
    iput-object v14, v0, Landroid/net/NetworkAgent;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@7f
    monitor-exit v11

    #@80
    goto :goto_0

    #@81
    .line 260
    :catchall_1
    move-exception v14

    #@82
    monitor-exit v11

    #@83
    throw v14

    #@84
    .line 266
    :sswitch_3
    new-instance v11, Ljava/lang/StringBuilder;

    #@86
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@89
    const-string/jumbo v14, "Unhandled Message "

    #@8c
    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v11

    #@90
    move-object/from16 v0, p1

    #@92
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v11

    #@96
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@99
    move-result-object v11

    #@9a
    move-object/from16 v0, p0

    #@9c
    invoke-virtual {v0, v11}, Landroid/net/NetworkAgent;->log(Ljava/lang/String;)V

    #@9f
    goto/16 :goto_0

    #@a1
    .line 270
    :sswitch_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@a4
    move-result-wide v4

    #@a5
    .line 274
    .local v4, "currentTimeMs":J
    move-object/from16 v0, p0

    #@a7
    iget-wide v14, v0, Landroid/net/NetworkAgent;->mLastBwRefreshTime:J

    #@a9
    const-wide/16 v16, 0x1f4

    #@ab
    add-long v14, v14, v16

    #@ad
    cmp-long v11, v4, v14

    #@af
    if-ltz v11, :cond_3

    #@b1
    .line 275
    const/4 v11, 0x0

    #@b2
    move-object/from16 v0, p0

    #@b4
    iput-boolean v11, v0, Landroid/net/NetworkAgent;->mPollLceScheduled:Z

    #@b6
    .line 276
    move-object/from16 v0, p0

    #@b8
    iget-object v11, v0, Landroid/net/NetworkAgent;->mPollLcePending:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@ba
    const/4 v14, 0x1

    #@bb
    invoke-virtual {v11, v14}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    #@be
    move-result v11

    #@bf
    if-nez v11, :cond_0

    #@c1
    .line 277
    invoke-virtual/range {p0 .. p0}, Landroid/net/NetworkAgent;->pollLceData()V

    #@c4
    goto/16 :goto_0

    #@c6
    .line 281
    :cond_3
    move-object/from16 v0, p0

    #@c8
    iget-boolean v11, v0, Landroid/net/NetworkAgent;->mPollLceScheduled:Z

    #@ca
    if-nez v11, :cond_0

    #@cc
    .line 282
    move-object/from16 v0, p0

    #@ce
    iget-wide v14, v0, Landroid/net/NetworkAgent;->mLastBwRefreshTime:J

    #@d0
    const-wide/16 v16, 0x1f4

    #@d2
    add-long v14, v14, v16

    #@d4
    sub-long/2addr v14, v4

    #@d5
    .line 283
    const-wide/16 v16, 0x1

    #@d7
    .line 282
    add-long v12, v14, v16

    #@d9
    .line 285
    .local v12, "waitTime":J
    const v11, 0x8100a

    #@dc
    .line 284
    move-object/from16 v0, p0

    #@de
    invoke-virtual {v0, v11, v12, v13}, Landroid/net/NetworkAgent;->sendEmptyMessageDelayed(IJ)Z

    #@e1
    move-result v11

    #@e2
    move-object/from16 v0, p0

    #@e4
    iput-boolean v11, v0, Landroid/net/NetworkAgent;->mPollLceScheduled:Z

    #@e6
    goto/16 :goto_0

    #@e8
    .line 291
    .end local v4    # "currentTimeMs":J
    .end local v12    # "waitTime":J
    :sswitch_5
    move-object/from16 v0, p1

    #@ea
    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@ec
    check-cast v11, Landroid/os/Bundle;

    #@ee
    sget-object v14, Landroid/net/NetworkAgent;->REDIRECT_URL_KEY:Ljava/lang/String;

    #@f0
    invoke-virtual {v11, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@f3
    move-result-object v9

    #@f4
    .line 296
    .local v9, "redirectUrl":Ljava/lang/String;
    move-object/from16 v0, p1

    #@f6
    iget v11, v0, Landroid/os/Message;->arg1:I

    #@f8
    move-object/from16 v0, p0

    #@fa
    invoke-virtual {v0, v11, v9}, Landroid/net/NetworkAgent;->networkStatus(ILjava/lang/String;)V

    #@fd
    goto/16 :goto_0

    #@ff
    .line 300
    .end local v9    # "redirectUrl":Ljava/lang/String;
    :sswitch_6
    move-object/from16 v0, p1

    #@101
    iget v11, v0, Landroid/os/Message;->arg1:I

    #@103
    if-eqz v11, :cond_4

    #@105
    const/4 v11, 0x1

    #@106
    :goto_2
    move-object/from16 v0, p0

    #@108
    invoke-virtual {v0, v11}, Landroid/net/NetworkAgent;->saveAcceptUnvalidated(Z)V

    #@10b
    goto/16 :goto_0

    #@10d
    :cond_4
    const/4 v11, 0x0

    #@10e
    goto :goto_2

    #@10f
    .line 304
    :sswitch_7
    invoke-virtual/range {p0 .. p1}, Landroid/net/NetworkAgent;->startPacketKeepalive(Landroid/os/Message;)V

    #@112
    goto/16 :goto_0

    #@114
    .line 308
    :sswitch_8
    invoke-virtual/range {p0 .. p1}, Landroid/net/NetworkAgent;->stopPacketKeepalive(Landroid/os/Message;)V

    #@117
    goto/16 :goto_0

    #@119
    .line 314
    :sswitch_9
    move-object/from16 v0, p1

    #@11b
    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@11d
    check-cast v11, Landroid/os/Bundle;

    #@11f
    const-string/jumbo v14, "thresholds"

    #@122
    invoke-virtual {v11, v14}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    #@125
    move-result-object v10

    #@126
    .line 317
    .local v10, "thresholds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v10, :cond_5

    #@128
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    #@12b
    move-result v11

    #@12c
    :goto_3
    new-array v6, v11, [I

    #@12e
    .line 318
    .local v6, "intThresholds":[I
    const/4 v3, 0x0

    #@12f
    .local v3, "i":I
    :goto_4
    array-length v11, v6

    #@130
    if-ge v3, v11, :cond_6

    #@132
    .line 319
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@135
    move-result-object v11

    #@136
    check-cast v11, Ljava/lang/Integer;

    #@138
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    #@13b
    move-result v11

    #@13c
    aput v11, v6, v3

    #@13e
    .line 318
    add-int/lit8 v3, v3, 0x1

    #@140
    goto :goto_4

    #@141
    .line 317
    .end local v3    # "i":I
    .end local v6    # "intThresholds":[I
    :cond_5
    const/4 v11, 0x0

    #@142
    goto :goto_3

    #@143
    .line 321
    .restart local v3    # "i":I
    .restart local v6    # "intThresholds":[I
    :cond_6
    move-object/from16 v0, p0

    #@145
    invoke-virtual {v0, v6}, Landroid/net/NetworkAgent;->setSignalStrengthThresholds([I)V

    #@148
    goto/16 :goto_0

    #@14a
    .line 325
    .end local v3    # "i":I
    .end local v6    # "intThresholds":[I
    .end local v10    # "thresholds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_a
    invoke-virtual/range {p0 .. p0}, Landroid/net/NetworkAgent;->preventAutomaticReconnect()V

    #@14d
    goto/16 :goto_0

    #@14f
    .line 231
    nop

    #@150
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
        0x8100c -> :sswitch_8
        0x8100e -> :sswitch_9
        0x8100f -> :sswitch_a
    .end sparse-switch
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 508
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
    .line 507
    return-void
.end method

.method protected networkStatus(ILjava/lang/String;)V
    .locals 0
    .param p1, "status"    # I
    .param p2, "redirectUrl"    # Ljava/lang/String;

    #@0
    .prologue
    .line 457
    return-void
.end method

.method public onPacketKeepaliveEvent(II)V
    .locals 1
    .param p1, "slot"    # I
    .param p2, "reason"    # I

    #@0
    .prologue
    .line 488
    const v0, 0x8100d

    #@3
    invoke-direct {p0, v0, p1, p2}, Landroid/net/NetworkAgent;->queueOrSendMessage(III)V

    #@6
    .line 487
    return-void
.end method

.method protected pollLceData()V
    .locals 0

    #@0
    .prologue
    .line 435
    return-void
.end method

.method protected preventAutomaticReconnect()V
    .locals 0

    #@0
    .prologue
    .line 504
    return-void
.end method

.method public removeUidRanges([Landroid/net/UidRange;)V
    .locals 1
    .param p1, "ranges"    # [Landroid/net/UidRange;

    #@0
    .prologue
    .line 405
    const v0, 0x81006

    #@3
    invoke-direct {p0, v0, p1}, Landroid/net/NetworkAgent;->queueOrSendMessage(ILjava/lang/Object;)V

    #@6
    .line 404
    return-void
.end method

.method protected saveAcceptUnvalidated(Z)V
    .locals 0
    .param p1, "accept"    # Z

    #@0
    .prologue
    .line 467
    return-void
.end method

.method public sendLinkProperties(Landroid/net/LinkProperties;)V
    .locals 2
    .param p1, "linkProperties"    # Landroid/net/LinkProperties;

    #@0
    .prologue
    .line 362
    new-instance v0, Landroid/net/LinkProperties;

    #@2
    invoke-direct {v0, p1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    #@5
    const v1, 0x81003

    #@8
    invoke-direct {p0, v1, v0}, Landroid/net/NetworkAgent;->queueOrSendMessage(ILjava/lang/Object;)V

    #@b
    .line 361
    return-void
.end method

.method public sendNetworkCapabilities(Landroid/net/NetworkCapabilities;)V
    .locals 2
    .param p1, "networkCapabilities"    # Landroid/net/NetworkCapabilities;

    #@0
    .prologue
    .line 376
    iget-object v0, p0, Landroid/net/NetworkAgent;->mPollLcePending:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    #@6
    .line 377
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@9
    move-result-wide v0

    #@a
    iput-wide v0, p0, Landroid/net/NetworkAgent;->mLastBwRefreshTime:J

    #@c
    .line 379
    new-instance v0, Landroid/net/NetworkCapabilities;

    #@e
    invoke-direct {v0, p1}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    #@11
    .line 378
    const v1, 0x81002

    #@14
    invoke-direct {p0, v1, v0}, Landroid/net/NetworkAgent;->queueOrSendMessage(ILjava/lang/Object;)V

    #@17
    .line 375
    return-void
.end method

.method public sendNetworkInfo(Landroid/net/NetworkInfo;)V
    .locals 2
    .param p1, "networkInfo"    # Landroid/net/NetworkInfo;

    #@0
    .prologue
    .line 369
    new-instance v0, Landroid/net/NetworkInfo;

    #@2
    invoke-direct {v0, p1}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    #@5
    const v1, 0x81001

    #@8
    invoke-direct {p0, v1, v0}, Landroid/net/NetworkAgent;->queueOrSendMessage(ILjava/lang/Object;)V

    #@b
    .line 368
    return-void
.end method

.method public sendNetworkScore(I)V
    .locals 2
    .param p1, "score"    # I

    #@0
    .prologue
    .line 386
    if-gez p1, :cond_0

    #@2
    .line 387
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "Score must be >= 0"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 389
    :cond_0
    new-instance v0, Ljava/lang/Integer;

    #@d
    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    #@10
    const v1, 0x81004

    #@13
    invoke-direct {p0, v1, v0}, Landroid/net/NetworkAgent;->queueOrSendMessage(ILjava/lang/Object;)V

    #@16
    .line 385
    return-void
.end method

.method protected setSignalStrengthThresholds([I)V
    .locals 0
    .param p1, "thresholds"    # [I

    #@0
    .prologue
    .line 495
    return-void
.end method

.method protected startPacketKeepalive(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 474
    iget v0, p1, Landroid/os/Message;->arg1:I

    #@2
    const/16 v1, -0x1e

    #@4
    invoke-virtual {p0, v0, v1}, Landroid/net/NetworkAgent;->onPacketKeepaliveEvent(II)V

    #@7
    .line 473
    return-void
.end method

.method protected stopPacketKeepalive(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 481
    iget v0, p1, Landroid/os/Message;->arg1:I

    #@2
    const/16 v1, -0x1e

    #@4
    invoke-virtual {p0, v0, v1}, Landroid/net/NetworkAgent;->onPacketKeepaliveEvent(II)V

    #@7
    .line 480
    return-void
.end method

.method protected abstract unwanted()V
.end method
