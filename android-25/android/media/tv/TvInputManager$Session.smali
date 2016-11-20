.class public final Landroid/media/tv/TvInputManager$Session;
.super Ljava/lang/Object;
.source "TvInputManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TvInputManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Session"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/TvInputManager$Session$FinishedInputEventCallback;,
        Landroid/media/tv/TvInputManager$Session$InputEventHandler;,
        Landroid/media/tv/TvInputManager$Session$PendingEvent;,
        Landroid/media/tv/TvInputManager$Session$TvInputEventSender;
    }
.end annotation


# static fields
.field static final DISPATCH_HANDLED:I = 0x1

.field static final DISPATCH_IN_PROGRESS:I = -0x1

.field static final DISPATCH_NOT_HANDLED:I = 0x0

.field private static final INPUT_SESSION_NOT_RESPONDING_TIMEOUT:J = 0x9c4L


# instance fields
.field private final mAudioTracks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/media/tv/TvTrackInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mChannel:Landroid/view/InputChannel;

.field private final mHandler:Landroid/media/tv/TvInputManager$Session$InputEventHandler;

.field private final mMetadataLock:Ljava/lang/Object;

.field private final mPendingEventPool:Landroid/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$Pool",
            "<",
            "Landroid/media/tv/TvInputManager$Session$PendingEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingEvents:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/media/tv/TvInputManager$Session$PendingEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedAudioTrackId:Ljava/lang/String;

.field private mSelectedSubtitleTrackId:Ljava/lang/String;

.field private mSelectedVideoTrackId:Ljava/lang/String;

.field private mSender:Landroid/media/tv/TvInputManager$Session$TvInputEventSender;

.field private final mSeq:I

.field private final mService:Landroid/media/tv/ITvInputManager;

.field private final mSessionCallbackRecordMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/media/tv/TvInputManager$SessionCallbackRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mSubtitleTracks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/media/tv/TvTrackInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mToken:Landroid/os/IBinder;

.field private final mUserId:I

.field private mVideoHeight:I

.field private final mVideoTracks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/media/tv/TvTrackInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoWidth:I


# direct methods
.method static synthetic -wrap0(Landroid/media/tv/TvInputManager$Session;Landroid/media/tv/TvInputManager$Session$PendingEvent;)V
    .locals 0
    .param p1, "p"    # Landroid/media/tv/TvInputManager$Session$PendingEvent;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/media/tv/TvInputManager$Session;->recyclePendingEventLocked(Landroid/media/tv/TvInputManager$Session$PendingEvent;)V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Landroid/media/tv/TvInputManager$Session;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/media/tv/TvInputManager$Session;->releaseInternal()V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Landroid/media/tv/TvInputManager$Session;Landroid/media/tv/TvInputManager$Session$PendingEvent;)V
    .locals 0
    .param p1, "p"    # Landroid/media/tv/TvInputManager$Session$PendingEvent;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/media/tv/TvInputManager$Session;->sendInputEventAndReportResultOnMainLooper(Landroid/media/tv/TvInputManager$Session$PendingEvent;)V

    #@3
    return-void
.end method

.method private constructor <init>(Landroid/os/IBinder;Landroid/view/InputChannel;Landroid/media/tv/ITvInputManager;IILandroid/util/SparseArray;)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "channel"    # Landroid/view/InputChannel;
    .param p3, "service"    # Landroid/media/tv/ITvInputManager;
    .param p4, "userId"    # I
    .param p5, "seq"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Landroid/view/InputChannel;",
            "Landroid/media/tv/ITvInputManager;",
            "II",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/media/tv/TvInputManager$SessionCallbackRecord;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p6, "sessionCallbackRecordMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/media/tv/TvInputManager$SessionCallbackRecord;>;"
    const/16 v2, 0x14

    #@2
    .line 1662
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 1634
    new-instance v0, Landroid/media/tv/TvInputManager$Session$InputEventHandler;

    #@7
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    #@a
    move-result-object v1

    #@b
    invoke-direct {v0, p0, v1}, Landroid/media/tv/TvInputManager$Session$InputEventHandler;-><init>(Landroid/media/tv/TvInputManager$Session;Landroid/os/Looper;)V

    #@e
    iput-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mHandler:Landroid/media/tv/TvInputManager$Session$InputEventHandler;

    #@10
    .line 1636
    new-instance v0, Landroid/util/Pools$SimplePool;

    #@12
    invoke-direct {v0, v2}, Landroid/util/Pools$SimplePool;-><init>(I)V

    #@15
    iput-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mPendingEventPool:Landroid/util/Pools$Pool;

    #@17
    .line 1637
    new-instance v0, Landroid/util/SparseArray;

    #@19
    invoke-direct {v0, v2}, Landroid/util/SparseArray;-><init>(I)V

    #@1c
    iput-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mPendingEvents:Landroid/util/SparseArray;

    #@1e
    .line 1644
    new-instance v0, Ljava/lang/Object;

    #@20
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@23
    iput-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mMetadataLock:Ljava/lang/Object;

    #@25
    .line 1646
    new-instance v0, Ljava/util/ArrayList;

    #@27
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@2a
    iput-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mAudioTracks:Ljava/util/List;

    #@2c
    .line 1648
    new-instance v0, Ljava/util/ArrayList;

    #@2e
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@31
    iput-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mVideoTracks:Ljava/util/List;

    #@33
    .line 1650
    new-instance v0, Ljava/util/ArrayList;

    #@35
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@38
    iput-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mSubtitleTracks:Ljava/util/List;

    #@3a
    .line 1664
    iput-object p1, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    #@3c
    .line 1665
    iput-object p2, p0, Landroid/media/tv/TvInputManager$Session;->mChannel:Landroid/view/InputChannel;

    #@3e
    .line 1666
    iput-object p3, p0, Landroid/media/tv/TvInputManager$Session;->mService:Landroid/media/tv/ITvInputManager;

    #@40
    .line 1667
    iput p4, p0, Landroid/media/tv/TvInputManager$Session;->mUserId:I

    #@42
    .line 1668
    iput p5, p0, Landroid/media/tv/TvInputManager$Session;->mSeq:I

    #@44
    .line 1669
    iput-object p6, p0, Landroid/media/tv/TvInputManager$Session;->mSessionCallbackRecordMap:Landroid/util/SparseArray;

    #@46
    .line 1663
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/IBinder;Landroid/view/InputChannel;Landroid/media/tv/ITvInputManager;IILandroid/util/SparseArray;Landroid/media/tv/TvInputManager$Session;)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "channel"    # Landroid/view/InputChannel;
    .param p3, "service"    # Landroid/media/tv/ITvInputManager;
    .param p4, "userId"    # I
    .param p5, "seq"    # I
    .param p6, "sessionCallbackRecordMap"    # Landroid/util/SparseArray;

    #@0
    .prologue
    invoke-direct/range {p0 .. p6}, Landroid/media/tv/TvInputManager$Session;-><init>(Landroid/os/IBinder;Landroid/view/InputChannel;Landroid/media/tv/ITvInputManager;IILandroid/util/SparseArray;)V

    #@3
    return-void
.end method

.method private containsTrack(Ljava/util/List;Ljava/lang/String;)Z
    .locals 3
    .param p2, "trackId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/media/tv/TvTrackInfo;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    #@0
    .prologue
    .line 1864
    .local p1, "tracks":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvTrackInfo;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@3
    move-result-object v1

    #@4
    .local v1, "track$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@7
    move-result v2

    #@8
    if-eqz v2, :cond_1

    #@a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Landroid/media/tv/TvTrackInfo;

    #@10
    .line 1865
    .local v0, "track":Landroid/media/tv/TvTrackInfo;
    invoke-virtual {v0}, Landroid/media/tv/TvTrackInfo;->getId()Ljava/lang/String;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@17
    move-result v2

    #@18
    if-eqz v2, :cond_0

    #@1a
    .line 1866
    const/4 v2, 0x1

    #@1b
    return v2

    #@1c
    .line 1869
    .end local v0    # "track":Landroid/media/tv/TvTrackInfo;
    :cond_1
    const/4 v2, 0x0

    #@1d
    return v2
.end method

.method private flushPendingEventsLocked()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x3

    #@1
    .line 2354
    iget-object v4, p0, Landroid/media/tv/TvInputManager$Session;->mHandler:Landroid/media/tv/TvInputManager$Session$InputEventHandler;

    #@3
    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeMessages(I)V

    #@6
    .line 2356
    iget-object v4, p0, Landroid/media/tv/TvInputManager$Session;->mPendingEvents:Landroid/util/SparseArray;

    #@8
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    #@b
    move-result v0

    #@c
    .line 2357
    .local v0, "count":I
    const/4 v1, 0x0

    #@d
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@f
    .line 2358
    iget-object v4, p0, Landroid/media/tv/TvInputManager$Session;->mPendingEvents:Landroid/util/SparseArray;

    #@11
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->keyAt(I)I

    #@14
    move-result v3

    #@15
    .line 2359
    .local v3, "seq":I
    iget-object v4, p0, Landroid/media/tv/TvInputManager$Session;->mHandler:Landroid/media/tv/TvInputManager$Session$InputEventHandler;

    #@17
    const/4 v5, 0x0

    #@18
    invoke-virtual {v4, v6, v3, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    #@1b
    move-result-object v2

    #@1c
    .line 2360
    .local v2, "msg":Landroid/os/Message;
    const/4 v4, 0x1

    #@1d
    invoke-virtual {v2, v4}, Landroid/os/Message;->setAsynchronous(Z)V

    #@20
    .line 2361
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    #@23
    .line 2357
    add-int/lit8 v1, v1, 0x1

    #@25
    goto :goto_0

    #@26
    .line 2353
    .end local v2    # "msg":Landroid/os/Message;
    .end local v3    # "seq":I
    :cond_0
    return-void
.end method

.method private obtainPendingEventLocked(Landroid/view/InputEvent;Ljava/lang/Object;Landroid/media/tv/TvInputManager$Session$FinishedInputEventCallback;Landroid/os/Handler;)Landroid/media/tv/TvInputManager$Session$PendingEvent;
    .locals 3
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "token"    # Ljava/lang/Object;
    .param p3, "callback"    # Landroid/media/tv/TvInputManager$Session$FinishedInputEventCallback;
    .param p4, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 2367
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mPendingEventPool:Landroid/util/Pools$Pool;

    #@3
    invoke-interface {v1}, Landroid/util/Pools$Pool;->acquire()Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroid/media/tv/TvInputManager$Session$PendingEvent;

    #@9
    .line 2368
    .local v0, "p":Landroid/media/tv/TvInputManager$Session$PendingEvent;
    if-nez v0, :cond_0

    #@b
    .line 2369
    new-instance v0, Landroid/media/tv/TvInputManager$Session$PendingEvent;

    #@d
    .end local v0    # "p":Landroid/media/tv/TvInputManager$Session$PendingEvent;
    invoke-direct {v0, p0, v2}, Landroid/media/tv/TvInputManager$Session$PendingEvent;-><init>(Landroid/media/tv/TvInputManager$Session;Landroid/media/tv/TvInputManager$Session$PendingEvent;)V

    #@10
    .line 2371
    .restart local v0    # "p":Landroid/media/tv/TvInputManager$Session$PendingEvent;
    :cond_0
    iput-object p1, v0, Landroid/media/tv/TvInputManager$Session$PendingEvent;->mEvent:Landroid/view/InputEvent;

    #@12
    .line 2372
    iput-object p2, v0, Landroid/media/tv/TvInputManager$Session$PendingEvent;->mEventToken:Ljava/lang/Object;

    #@14
    .line 2373
    iput-object p3, v0, Landroid/media/tv/TvInputManager$Session$PendingEvent;->mCallback:Landroid/media/tv/TvInputManager$Session$FinishedInputEventCallback;

    #@16
    .line 2374
    iput-object p4, v0, Landroid/media/tv/TvInputManager$Session$PendingEvent;->mEventHandler:Landroid/os/Handler;

    #@18
    .line 2375
    return-object v0
.end method

.method private recyclePendingEventLocked(Landroid/media/tv/TvInputManager$Session$PendingEvent;)V
    .locals 1
    .param p1, "p"    # Landroid/media/tv/TvInputManager$Session$PendingEvent;

    #@0
    .prologue
    .line 2379
    invoke-virtual {p1}, Landroid/media/tv/TvInputManager$Session$PendingEvent;->recycle()V

    #@3
    .line 2380
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mPendingEventPool:Landroid/util/Pools$Pool;

    #@5
    invoke-interface {v0, p1}, Landroid/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    #@8
    .line 2378
    return-void
.end method

.method private releaseInternal()V
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 2388
    iput-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    #@3
    .line 2389
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mHandler:Landroid/media/tv/TvInputManager$Session$InputEventHandler;

    #@5
    monitor-enter v1

    #@6
    .line 2390
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mChannel:Landroid/view/InputChannel;

    #@8
    if-eqz v0, :cond_1

    #@a
    .line 2391
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mSender:Landroid/media/tv/TvInputManager$Session$TvInputEventSender;

    #@c
    if-eqz v0, :cond_0

    #@e
    .line 2392
    invoke-direct {p0}, Landroid/media/tv/TvInputManager$Session;->flushPendingEventsLocked()V

    #@11
    .line 2393
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mSender:Landroid/media/tv/TvInputManager$Session$TvInputEventSender;

    #@13
    invoke-virtual {v0}, Landroid/view/InputEventSender;->dispose()V

    #@16
    .line 2394
    const/4 v0, 0x0

    #@17
    iput-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mSender:Landroid/media/tv/TvInputManager$Session$TvInputEventSender;

    #@19
    .line 2396
    :cond_0
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mChannel:Landroid/view/InputChannel;

    #@1b
    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    #@1e
    .line 2397
    const/4 v0, 0x0

    #@1f
    iput-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mChannel:Landroid/view/InputChannel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    :cond_1
    monitor-exit v1

    #@22
    .line 2400
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mSessionCallbackRecordMap:Landroid/util/SparseArray;

    #@24
    monitor-enter v1

    #@25
    .line 2401
    :try_start_1
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mSessionCallbackRecordMap:Landroid/util/SparseArray;

    #@27
    iget v2, p0, Landroid/media/tv/TvInputManager$Session;->mSeq:I

    #@29
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->remove(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@2c
    monitor-exit v1

    #@2d
    .line 2387
    return-void

    #@2e
    .line 2389
    :catchall_0
    move-exception v0

    #@2f
    monitor-exit v1

    #@30
    throw v0

    #@31
    .line 2400
    :catchall_1
    move-exception v0

    #@32
    monitor-exit v1

    #@33
    throw v0
.end method

.method private sendInputEventAndReportResultOnMainLooper(Landroid/media/tv/TvInputManager$Session$PendingEvent;)V
    .locals 3
    .param p1, "p"    # Landroid/media/tv/TvInputManager$Session$PendingEvent;

    #@0
    .prologue
    .line 2283
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mHandler:Landroid/media/tv/TvInputManager$Session$InputEventHandler;

    #@2
    monitor-enter v1

    #@3
    .line 2284
    :try_start_0
    invoke-direct {p0, p1}, Landroid/media/tv/TvInputManager$Session;->sendInputEventOnMainLooperLocked(Landroid/media/tv/TvInputManager$Session$PendingEvent;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    move-result v0

    #@7
    .line 2285
    .local v0, "result":I
    const/4 v2, -0x1

    #@8
    if-ne v0, v2, :cond_0

    #@a
    monitor-exit v1

    #@b
    .line 2286
    return-void

    #@c
    :cond_0
    monitor-exit v1

    #@d
    .line 2290
    const/4 v1, 0x0

    #@e
    invoke-virtual {p0, p1, v1}, Landroid/media/tv/TvInputManager$Session;->invokeFinishedInputEventCallback(Landroid/media/tv/TvInputManager$Session$PendingEvent;Z)V

    #@11
    .line 2282
    return-void

    #@12
    .line 2283
    .end local v0    # "result":I
    :catchall_0
    move-exception v2

    #@13
    monitor-exit v1

    #@14
    throw v2
.end method

.method private sendInputEventOnMainLooperLocked(Landroid/media/tv/TvInputManager$Session$PendingEvent;)I
    .locals 6
    .param p1, "p"    # Landroid/media/tv/TvInputManager$Session$PendingEvent;

    #@0
    .prologue
    .line 2294
    iget-object v3, p0, Landroid/media/tv/TvInputManager$Session;->mChannel:Landroid/view/InputChannel;

    #@2
    if-eqz v3, :cond_2

    #@4
    .line 2295
    iget-object v3, p0, Landroid/media/tv/TvInputManager$Session;->mSender:Landroid/media/tv/TvInputManager$Session$TvInputEventSender;

    #@6
    if-nez v3, :cond_0

    #@8
    .line 2296
    new-instance v3, Landroid/media/tv/TvInputManager$Session$TvInputEventSender;

    #@a
    iget-object v4, p0, Landroid/media/tv/TvInputManager$Session;->mChannel:Landroid/view/InputChannel;

    #@c
    iget-object v5, p0, Landroid/media/tv/TvInputManager$Session;->mHandler:Landroid/media/tv/TvInputManager$Session$InputEventHandler;

    #@e
    invoke-virtual {v5}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    #@11
    move-result-object v5

    #@12
    invoke-direct {v3, p0, v4, v5}, Landroid/media/tv/TvInputManager$Session$TvInputEventSender;-><init>(Landroid/media/tv/TvInputManager$Session;Landroid/view/InputChannel;Landroid/os/Looper;)V

    #@15
    iput-object v3, p0, Landroid/media/tv/TvInputManager$Session;->mSender:Landroid/media/tv/TvInputManager$Session$TvInputEventSender;

    #@17
    .line 2299
    :cond_0
    iget-object v0, p1, Landroid/media/tv/TvInputManager$Session$PendingEvent;->mEvent:Landroid/view/InputEvent;

    #@19
    .line 2300
    .local v0, "event":Landroid/view/InputEvent;
    invoke-virtual {v0}, Landroid/view/InputEvent;->getSequenceNumber()I

    #@1c
    move-result v2

    #@1d
    .line 2301
    .local v2, "seq":I
    iget-object v3, p0, Landroid/media/tv/TvInputManager$Session;->mSender:Landroid/media/tv/TvInputManager$Session$TvInputEventSender;

    #@1f
    invoke-virtual {v3, v2, v0}, Landroid/view/InputEventSender;->sendInputEvent(ILandroid/view/InputEvent;)Z

    #@22
    move-result v3

    #@23
    if-eqz v3, :cond_1

    #@25
    .line 2302
    iget-object v3, p0, Landroid/media/tv/TvInputManager$Session;->mPendingEvents:Landroid/util/SparseArray;

    #@27
    invoke-virtual {v3, v2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@2a
    .line 2303
    iget-object v3, p0, Landroid/media/tv/TvInputManager$Session;->mHandler:Landroid/media/tv/TvInputManager$Session$InputEventHandler;

    #@2c
    const/4 v4, 0x2

    #@2d
    invoke-virtual {v3, v4, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@30
    move-result-object v1

    #@31
    .line 2304
    .local v1, "msg":Landroid/os/Message;
    const/4 v3, 0x1

    #@32
    invoke-virtual {v1, v3}, Landroid/os/Message;->setAsynchronous(Z)V

    #@35
    .line 2305
    iget-object v3, p0, Landroid/media/tv/TvInputManager$Session;->mHandler:Landroid/media/tv/TvInputManager$Session$InputEventHandler;

    #@37
    const-wide/16 v4, 0x9c4

    #@39
    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@3c
    .line 2306
    const/4 v3, -0x1

    #@3d
    return v3

    #@3e
    .line 2309
    .end local v1    # "msg":Landroid/os/Message;
    :cond_1
    const-string/jumbo v3, "TvInputManager"

    #@41
    new-instance v4, Ljava/lang/StringBuilder;

    #@43
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@46
    const-string/jumbo v5, "Unable to send input event to session: "

    #@49
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v4

    #@4d
    iget-object v5, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    #@4f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v4

    #@53
    const-string/jumbo v5, " dropping:"

    #@56
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v4

    #@5a
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v4

    #@5e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@61
    move-result-object v4

    #@62
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@65
    .line 2312
    .end local v0    # "event":Landroid/view/InputEvent;
    .end local v2    # "seq":I
    :cond_2
    const/4 v3, 0x0

    #@66
    return v3
.end method


# virtual methods
.method createOverlayView(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "frame"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 2162
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 2163
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 2164
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    #@9
    move-result-object v1

    #@a
    if-nez v1, :cond_0

    #@c
    .line 2165
    new-instance v1, Ljava/lang/IllegalStateException;

    #@e
    const-string/jumbo v2, "view must be attached to a window"

    #@11
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@14
    throw v1

    #@15
    .line 2167
    :cond_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    #@17
    if-nez v1, :cond_1

    #@19
    .line 2168
    const-string/jumbo v1, "TvInputManager"

    #@1c
    const-string/jumbo v2, "The session has been already released"

    #@1f
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@22
    .line 2169
    return-void

    #@23
    .line 2172
    :cond_1
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mService:Landroid/media/tv/ITvInputManager;

    #@25
    iget-object v2, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    #@27
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    #@2a
    move-result-object v3

    #@2b
    iget v4, p0, Landroid/media/tv/TvInputManager$Session;->mUserId:I

    #@2d
    invoke-interface {v1, v2, v3, p2, v4}, Landroid/media/tv/ITvInputManager;->createOverlayView(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/graphics/Rect;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@30
    .line 2161
    return-void

    #@31
    .line 2173
    :catch_0
    move-exception v0

    #@32
    .line 2174
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@35
    move-result-object v1

    #@36
    throw v1
.end method

.method public dispatchInputEvent(Landroid/view/InputEvent;Ljava/lang/Object;Landroid/media/tv/TvInputManager$Session$FinishedInputEventCallback;Landroid/os/Handler;)I
    .locals 5
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "token"    # Ljava/lang/Object;
    .param p3, "callback"    # Landroid/media/tv/TvInputManager$Session$FinishedInputEventCallback;
    .param p4, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 2243
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 2244
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 2245
    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    .line 2246
    iget-object v3, p0, Landroid/media/tv/TvInputManager$Session;->mHandler:Landroid/media/tv/TvInputManager$Session$InputEventHandler;

    #@b
    monitor-enter v3

    #@c
    .line 2247
    :try_start_0
    iget-object v2, p0, Landroid/media/tv/TvInputManager$Session;->mChannel:Landroid/view/InputChannel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    if-nez v2, :cond_0

    #@10
    .line 2248
    const/4 v2, 0x0

    #@11
    monitor-exit v3

    #@12
    return v2

    #@13
    .line 2250
    :cond_0
    :try_start_1
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/media/tv/TvInputManager$Session;->obtainPendingEventLocked(Landroid/view/InputEvent;Ljava/lang/Object;Landroid/media/tv/TvInputManager$Session$FinishedInputEventCallback;Landroid/os/Handler;)Landroid/media/tv/TvInputManager$Session$PendingEvent;

    #@16
    move-result-object v1

    #@17
    .line 2251
    .local v1, "p":Landroid/media/tv/TvInputManager$Session$PendingEvent;
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@1a
    move-result-object v2

    #@1b
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    #@1e
    move-result-object v4

    #@1f
    if-ne v2, v4, :cond_1

    #@21
    .line 2253
    invoke-direct {p0, v1}, Landroid/media/tv/TvInputManager$Session;->sendInputEventOnMainLooperLocked(Landroid/media/tv/TvInputManager$Session$PendingEvent;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@24
    move-result v2

    #@25
    monitor-exit v3

    #@26
    return v2

    #@27
    .line 2257
    :cond_1
    :try_start_2
    iget-object v2, p0, Landroid/media/tv/TvInputManager$Session;->mHandler:Landroid/media/tv/TvInputManager$Session$InputEventHandler;

    #@29
    const/4 v4, 0x1

    #@2a
    invoke-virtual {v2, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@2d
    move-result-object v0

    #@2e
    .line 2258
    .local v0, "msg":Landroid/os/Message;
    const/4 v2, 0x1

    #@2f
    invoke-virtual {v0, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    #@32
    .line 2259
    iget-object v2, p0, Landroid/media/tv/TvInputManager$Session;->mHandler:Landroid/media/tv/TvInputManager$Session$InputEventHandler;

    #@34
    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@37
    .line 2260
    const/4 v2, -0x1

    #@38
    monitor-exit v3

    #@39
    return v2

    #@3a
    .line 2246
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "p":Landroid/media/tv/TvInputManager$Session$PendingEvent;
    :catchall_0
    move-exception v2

    #@3b
    monitor-exit v3

    #@3c
    throw v2
.end method

.method public dispatchSurfaceChanged(III)V
    .locals 7
    .param p1, "format"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    #@0
    .prologue
    .line 1734
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1735
    const-string/jumbo v0, "TvInputManager"

    #@7
    const-string/jumbo v1, "The session has been already released"

    #@a
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    .line 1736
    return-void

    #@e
    .line 1739
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mService:Landroid/media/tv/ITvInputManager;

    #@10
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    #@12
    iget v5, p0, Landroid/media/tv/TvInputManager$Session;->mUserId:I

    #@14
    move v2, p1

    #@15
    move v3, p2

    #@16
    move v4, p3

    #@17
    invoke-interface/range {v0 .. v5}, Landroid/media/tv/ITvInputManager;->dispatchSurfaceChanged(Landroid/os/IBinder;IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1a
    .line 1733
    return-void

    #@1b
    .line 1740
    :catch_0
    move-exception v6

    #@1c
    .line 1741
    .local v6, "e":Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@1f
    move-result-object v0

    #@20
    throw v0
.end method

.method finishedInputEvent(IZZ)V
    .locals 6
    .param p1, "seq"    # I
    .param p2, "handled"    # Z
    .param p3, "timeout"    # Z

    #@0
    .prologue
    .line 2317
    iget-object v3, p0, Landroid/media/tv/TvInputManager$Session;->mHandler:Landroid/media/tv/TvInputManager$Session$InputEventHandler;

    #@2
    monitor-enter v3

    #@3
    .line 2318
    :try_start_0
    iget-object v2, p0, Landroid/media/tv/TvInputManager$Session;->mPendingEvents:Landroid/util/SparseArray;

    #@5
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->indexOfKey(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result v0

    #@9
    .line 2319
    .local v0, "index":I
    if-gez v0, :cond_0

    #@b
    monitor-exit v3

    #@c
    .line 2320
    return-void

    #@d
    .line 2323
    :cond_0
    :try_start_1
    iget-object v2, p0, Landroid/media/tv/TvInputManager$Session;->mPendingEvents:Landroid/util/SparseArray;

    #@f
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@12
    move-result-object v1

    #@13
    check-cast v1, Landroid/media/tv/TvInputManager$Session$PendingEvent;

    #@15
    .line 2324
    .local v1, "p":Landroid/media/tv/TvInputManager$Session$PendingEvent;
    iget-object v2, p0, Landroid/media/tv/TvInputManager$Session;->mPendingEvents:Landroid/util/SparseArray;

    #@17
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->removeAt(I)V

    #@1a
    .line 2326
    if-eqz p3, :cond_1

    #@1c
    .line 2327
    const-string/jumbo v2, "TvInputManager"

    #@1f
    new-instance v4, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string/jumbo v5, "Timeout waiting for session to handle input event after 2500 ms: "

    #@27
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v4

    #@2b
    .line 2328
    iget-object v5, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    #@2d
    .line 2327
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v4

    #@31
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v4

    #@35
    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@38
    :goto_0
    monitor-exit v3

    #@39
    .line 2334
    invoke-virtual {p0, v1, p2}, Landroid/media/tv/TvInputManager$Session;->invokeFinishedInputEventCallback(Landroid/media/tv/TvInputManager$Session$PendingEvent;Z)V

    #@3c
    .line 2315
    return-void

    #@3d
    .line 2330
    :cond_1
    :try_start_2
    iget-object v2, p0, Landroid/media/tv/TvInputManager$Session;->mHandler:Landroid/media/tv/TvInputManager$Session$InputEventHandler;

    #@3f
    const/4 v4, 0x2

    #@40
    invoke-virtual {v2, v4, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@43
    goto :goto_0

    #@44
    .line 2317
    .end local v0    # "index":I
    .end local v1    # "p":Landroid/media/tv/TvInputManager$Session$PendingEvent;
    :catchall_0
    move-exception v2

    #@45
    monitor-exit v3

    #@46
    throw v2
.end method

.method public getSelectedTrack(I)Ljava/lang/String;
    .locals 3
    .param p1, "type"    # I

    #@0
    .prologue
    .line 1912
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mMetadataLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 1913
    if-nez p1, :cond_0

    #@5
    .line 1914
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mSelectedAudioTrackId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    monitor-exit v1

    #@8
    return-object v0

    #@9
    .line 1915
    :cond_0
    const/4 v0, 0x1

    #@a
    if-ne p1, v0, :cond_1

    #@c
    .line 1916
    :try_start_1
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mSelectedVideoTrackId:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@e
    monitor-exit v1

    #@f
    return-object v0

    #@10
    .line 1917
    :cond_1
    const/4 v0, 0x2

    #@11
    if-ne p1, v0, :cond_2

    #@13
    .line 1918
    :try_start_2
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mSelectedSubtitleTrackId:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@15
    monitor-exit v1

    #@16
    return-object v0

    #@17
    :cond_2
    monitor-exit v1

    #@18
    .line 1921
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1a
    new-instance v1, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string/jumbo v2, "invalid type: "

    #@22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v1

    #@2e
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@31
    throw v0

    #@32
    .line 1912
    :catchall_0
    move-exception v0

    #@33
    monitor-exit v1

    #@34
    throw v0
.end method

.method getToken()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 2384
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public getTracks(I)Ljava/util/List;
    .locals 3
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/media/tv/TvTrackInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1882
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mMetadataLock:Ljava/lang/Object;

    #@3
    monitor-enter v1

    #@4
    .line 1883
    if-nez p1, :cond_1

    #@6
    .line 1884
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mAudioTracks:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    if-nez v0, :cond_0

    #@a
    monitor-exit v1

    #@b
    .line 1885
    return-object v2

    #@c
    .line 1887
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    #@e
    iget-object v2, p0, Landroid/media/tv/TvInputManager$Session;->mAudioTracks:Ljava/util/List;

    #@10
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@13
    monitor-exit v1

    #@14
    return-object v0

    #@15
    .line 1888
    :cond_1
    const/4 v0, 0x1

    #@16
    if-ne p1, v0, :cond_3

    #@18
    .line 1889
    :try_start_2
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mVideoTracks:Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@1a
    if-nez v0, :cond_2

    #@1c
    monitor-exit v1

    #@1d
    .line 1890
    return-object v2

    #@1e
    .line 1892
    :cond_2
    :try_start_3
    new-instance v0, Ljava/util/ArrayList;

    #@20
    iget-object v2, p0, Landroid/media/tv/TvInputManager$Session;->mVideoTracks:Ljava/util/List;

    #@22
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@25
    monitor-exit v1

    #@26
    return-object v0

    #@27
    .line 1893
    :cond_3
    const/4 v0, 0x2

    #@28
    if-ne p1, v0, :cond_5

    #@2a
    .line 1894
    :try_start_4
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mSubtitleTracks:Ljava/util/List;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@2c
    if-nez v0, :cond_4

    #@2e
    monitor-exit v1

    #@2f
    .line 1895
    return-object v2

    #@30
    .line 1897
    :cond_4
    :try_start_5
    new-instance v0, Ljava/util/ArrayList;

    #@32
    iget-object v2, p0, Landroid/media/tv/TvInputManager$Session;->mSubtitleTracks:Ljava/util/List;

    #@34
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@37
    monitor-exit v1

    #@38
    return-object v0

    #@39
    :cond_5
    monitor-exit v1

    #@3a
    .line 1900
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@3c
    new-instance v1, Ljava/lang/StringBuilder;

    #@3e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@41
    const-string/jumbo v2, "invalid type: "

    #@44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v1

    #@48
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v1

    #@4c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f
    move-result-object v1

    #@50
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@53
    throw v0

    #@54
    .line 1882
    :catchall_0
    move-exception v0

    #@55
    monitor-exit v1

    #@56
    throw v0
.end method

.method getVideoTrackToNotify()Landroid/media/tv/TvTrackInfo;
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 1978
    iget-object v5, p0, Landroid/media/tv/TvInputManager$Session;->mMetadataLock:Ljava/lang/Object;

    #@3
    monitor-enter v5

    #@4
    .line 1979
    :try_start_0
    iget-object v4, p0, Landroid/media/tv/TvInputManager$Session;->mVideoTracks:Ljava/util/List;

    #@6
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    #@9
    move-result v4

    #@a
    if-nez v4, :cond_2

    #@c
    iget-object v4, p0, Landroid/media/tv/TvInputManager$Session;->mSelectedVideoTrackId:Ljava/lang/String;

    #@e
    if-eqz v4, :cond_2

    #@10
    .line 1980
    iget-object v4, p0, Landroid/media/tv/TvInputManager$Session;->mVideoTracks:Ljava/util/List;

    #@12
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@15
    move-result-object v1

    #@16
    .local v1, "track$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@19
    move-result v4

    #@1a
    if-eqz v4, :cond_2

    #@1c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1f
    move-result-object v0

    #@20
    check-cast v0, Landroid/media/tv/TvTrackInfo;

    #@22
    .line 1981
    .local v0, "track":Landroid/media/tv/TvTrackInfo;
    invoke-virtual {v0}, Landroid/media/tv/TvTrackInfo;->getId()Ljava/lang/String;

    #@25
    move-result-object v4

    #@26
    iget-object v6, p0, Landroid/media/tv/TvInputManager$Session;->mSelectedVideoTrackId:Ljava/lang/String;

    #@28
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2b
    move-result v4

    #@2c
    if-eqz v4, :cond_0

    #@2e
    .line 1982
    invoke-virtual {v0}, Landroid/media/tv/TvTrackInfo;->getVideoWidth()I

    #@31
    move-result v3

    #@32
    .line 1983
    .local v3, "videoWidth":I
    invoke-virtual {v0}, Landroid/media/tv/TvTrackInfo;->getVideoHeight()I

    #@35
    move-result v2

    #@36
    .line 1984
    .local v2, "videoHeight":I
    iget v4, p0, Landroid/media/tv/TvInputManager$Session;->mVideoWidth:I

    #@38
    if-ne v4, v3, :cond_1

    #@3a
    iget v4, p0, Landroid/media/tv/TvInputManager$Session;->mVideoHeight:I

    #@3c
    if-eq v4, v2, :cond_0

    #@3e
    .line 1985
    :cond_1
    iput v3, p0, Landroid/media/tv/TvInputManager$Session;->mVideoWidth:I

    #@40
    .line 1986
    iput v2, p0, Landroid/media/tv/TvInputManager$Session;->mVideoHeight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@42
    monitor-exit v5

    #@43
    .line 1987
    return-object v0

    #@44
    .end local v0    # "track":Landroid/media/tv/TvTrackInfo;
    .end local v1    # "track$iterator":Ljava/util/Iterator;
    .end local v2    # "videoHeight":I
    .end local v3    # "videoWidth":I
    :cond_2
    monitor-exit v5

    #@45
    .line 1993
    return-object v7

    #@46
    .line 1978
    :catchall_0
    move-exception v4

    #@47
    monitor-exit v5

    #@48
    throw v4
.end method

.method invokeFinishedInputEventCallback(Landroid/media/tv/TvInputManager$Session$PendingEvent;Z)V
    .locals 2
    .param p1, "p"    # Landroid/media/tv/TvInputManager$Session$PendingEvent;
    .param p2, "handled"    # Z

    #@0
    .prologue
    .line 2339
    iput-boolean p2, p1, Landroid/media/tv/TvInputManager$Session$PendingEvent;->mHandled:Z

    #@2
    .line 2340
    iget-object v1, p1, Landroid/media/tv/TvInputManager$Session$PendingEvent;->mEventHandler:Landroid/os/Handler;

    #@4
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v1}, Landroid/os/Looper;->isCurrentThread()Z

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_0

    #@e
    .line 2343
    invoke-virtual {p1}, Landroid/media/tv/TvInputManager$Session$PendingEvent;->run()V

    #@11
    .line 2338
    :goto_0
    return-void

    #@12
    .line 2347
    :cond_0
    iget-object v1, p1, Landroid/media/tv/TvInputManager$Session$PendingEvent;->mEventHandler:Landroid/os/Handler;

    #@14
    invoke-static {v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    #@17
    move-result-object v0

    #@18
    .line 2348
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    #@19
    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    #@1c
    .line 2349
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@1f
    goto :goto_0
.end method

.method relayoutOverlayView(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "frame"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 2184
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 2185
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    #@5
    if-nez v1, :cond_0

    #@7
    .line 2186
    const-string/jumbo v1, "TvInputManager"

    #@a
    const-string/jumbo v2, "The session has been already released"

    #@d
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@10
    .line 2187
    return-void

    #@11
    .line 2190
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mService:Landroid/media/tv/ITvInputManager;

    #@13
    iget-object v2, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    #@15
    iget v3, p0, Landroid/media/tv/TvInputManager$Session;->mUserId:I

    #@17
    invoke-interface {v1, v2, p1, v3}, Landroid/media/tv/ITvInputManager;->relayoutOverlayView(Landroid/os/IBinder;Landroid/graphics/Rect;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1a
    .line 2183
    return-void

    #@1b
    .line 2191
    :catch_0
    move-exception v0

    #@1c
    .line 2192
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@1f
    move-result-object v1

    #@20
    throw v1
.end method

.method public release()V
    .locals 4

    #@0
    .prologue
    .line 1676
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 1677
    const-string/jumbo v1, "TvInputManager"

    #@7
    const-string/jumbo v2, "The session has been already released"

    #@a
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    .line 1678
    return-void

    #@e
    .line 1681
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mService:Landroid/media/tv/ITvInputManager;

    #@10
    iget-object v2, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    #@12
    iget v3, p0, Landroid/media/tv/TvInputManager$Session;->mUserId:I

    #@14
    invoke-interface {v1, v2, v3}, Landroid/media/tv/ITvInputManager;->releaseSession(Landroid/os/IBinder;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    .line 1686
    invoke-direct {p0}, Landroid/media/tv/TvInputManager$Session;->releaseInternal()V

    #@1a
    .line 1675
    return-void

    #@1b
    .line 1682
    :catch_0
    move-exception v0

    #@1c
    .line 1683
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@1f
    move-result-object v1

    #@20
    throw v1
.end method

.method removeOverlayView()V
    .locals 4

    #@0
    .prologue
    .line 2200
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 2201
    const-string/jumbo v1, "TvInputManager"

    #@7
    const-string/jumbo v2, "The session has been already released"

    #@a
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    .line 2202
    return-void

    #@e
    .line 2205
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mService:Landroid/media/tv/ITvInputManager;

    #@10
    iget-object v2, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    #@12
    iget v3, p0, Landroid/media/tv/TvInputManager$Session;->mUserId:I

    #@14
    invoke-interface {v1, v2, v3}, Landroid/media/tv/ITvInputManager;->removeOverlayView(Landroid/os/IBinder;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    .line 2199
    return-void

    #@18
    .line 2206
    :catch_0
    move-exception v0

    #@19
    .line 2207
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@1c
    move-result-object v1

    #@1d
    throw v1
.end method

.method public selectTrack(ILjava/lang/String;)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "trackId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1832
    iget-object v2, p0, Landroid/media/tv/TvInputManager$Session;->mMetadataLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 1833
    if-nez p1, :cond_2

    #@5
    .line 1834
    if-eqz p2, :cond_0

    #@7
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mAudioTracks:Ljava/util/List;

    #@9
    invoke-direct {p0, v1, p2}, Landroid/media/tv/TvInputManager$Session;->containsTrack(Ljava/util/List;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    move-result v1

    #@d
    if-eqz v1, :cond_1

    #@f
    :cond_0
    monitor-exit v2

    #@10
    .line 1852
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    #@12
    if-nez v1, :cond_5

    #@14
    .line 1853
    const-string/jumbo v1, "TvInputManager"

    #@17
    const-string/jumbo v2, "The session has been already released"

    #@1a
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1d
    .line 1854
    return-void

    #@1e
    .line 1835
    :cond_1
    :try_start_1
    const-string/jumbo v1, "TvInputManager"

    #@21
    new-instance v3, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    const-string/jumbo v4, "Invalid audio trackId: "

    #@29
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v3

    #@2d
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v3

    #@31
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v3

    #@35
    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@38
    monitor-exit v2

    #@39
    .line 1836
    return-void

    #@3a
    .line 1838
    :cond_2
    const/4 v1, 0x1

    #@3b
    if-ne p1, v1, :cond_3

    #@3d
    .line 1839
    if-eqz p2, :cond_0

    #@3f
    :try_start_2
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mVideoTracks:Ljava/util/List;

    #@41
    invoke-direct {p0, v1, p2}, Landroid/media/tv/TvInputManager$Session;->containsTrack(Ljava/util/List;Ljava/lang/String;)Z

    #@44
    move-result v1

    #@45
    if-nez v1, :cond_0

    #@47
    .line 1840
    const-string/jumbo v1, "TvInputManager"

    #@4a
    new-instance v3, Ljava/lang/StringBuilder;

    #@4c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@4f
    const-string/jumbo v4, "Invalid video trackId: "

    #@52
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v3

    #@56
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v3

    #@5a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d
    move-result-object v3

    #@5e
    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@61
    monitor-exit v2

    #@62
    .line 1841
    return-void

    #@63
    .line 1843
    :cond_3
    const/4 v1, 0x2

    #@64
    if-ne p1, v1, :cond_4

    #@66
    .line 1844
    if-eqz p2, :cond_0

    #@68
    :try_start_3
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mSubtitleTracks:Ljava/util/List;

    #@6a
    invoke-direct {p0, v1, p2}, Landroid/media/tv/TvInputManager$Session;->containsTrack(Ljava/util/List;Ljava/lang/String;)Z

    #@6d
    move-result v1

    #@6e
    if-nez v1, :cond_0

    #@70
    .line 1845
    const-string/jumbo v1, "TvInputManager"

    #@73
    new-instance v3, Ljava/lang/StringBuilder;

    #@75
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@78
    const-string/jumbo v4, "Invalid subtitle trackId: "

    #@7b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v3

    #@7f
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v3

    #@83
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@86
    move-result-object v3

    #@87
    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@8a
    monitor-exit v2

    #@8b
    .line 1846
    return-void

    #@8c
    .line 1849
    :cond_4
    :try_start_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@8e
    new-instance v3, Ljava/lang/StringBuilder;

    #@90
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@93
    const-string/jumbo v4, "invalid type: "

    #@96
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@99
    move-result-object v3

    #@9a
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@9d
    move-result-object v3

    #@9e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a1
    move-result-object v3

    #@a2
    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a5
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@a6
    .line 1832
    :catchall_0
    move-exception v1

    #@a7
    monitor-exit v2

    #@a8
    throw v1

    #@a9
    .line 1857
    :cond_5
    :try_start_5
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mService:Landroid/media/tv/ITvInputManager;

    #@ab
    iget-object v2, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    #@ad
    iget v3, p0, Landroid/media/tv/TvInputManager$Session;->mUserId:I

    #@af
    invoke-interface {v1, v2, p1, p2, v3}, Landroid/media/tv/ITvInputManager;->selectTrack(Landroid/os/IBinder;ILjava/lang/String;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    #@b2
    .line 1831
    return-void

    #@b3
    .line 1858
    :catch_0
    move-exception v0

    #@b4
    .line 1859
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@b7
    move-result-object v1

    #@b8
    throw v1
.end method

.method public sendAppPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 2139
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 2140
    const-string/jumbo v1, "TvInputManager"

    #@7
    const-string/jumbo v2, "The session has been already released"

    #@a
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    .line 2141
    return-void

    #@e
    .line 2144
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mService:Landroid/media/tv/ITvInputManager;

    #@10
    iget-object v2, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    #@12
    iget v3, p0, Landroid/media/tv/TvInputManager$Session;->mUserId:I

    #@14
    invoke-interface {v1, v2, p1, p2, v3}, Landroid/media/tv/ITvInputManager;->sendAppPrivateCommand(Landroid/os/IBinder;Ljava/lang/String;Landroid/os/Bundle;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    .line 2138
    return-void

    #@18
    .line 2145
    :catch_0
    move-exception v0

    #@19
    .line 2146
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@1c
    move-result-object v1

    #@1d
    throw v1
.end method

.method public setCaptionEnabled(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 1810
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 1811
    const-string/jumbo v1, "TvInputManager"

    #@7
    const-string/jumbo v2, "The session has been already released"

    #@a
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    .line 1812
    return-void

    #@e
    .line 1815
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mService:Landroid/media/tv/ITvInputManager;

    #@10
    iget-object v2, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    #@12
    iget v3, p0, Landroid/media/tv/TvInputManager$Session;->mUserId:I

    #@14
    invoke-interface {v1, v2, p1, v3}, Landroid/media/tv/ITvInputManager;->setCaptionEnabled(Landroid/os/IBinder;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    .line 1809
    return-void

    #@18
    .line 1816
    :catch_0
    move-exception v0

    #@19
    .line 1817
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@1c
    move-result-object v1

    #@1d
    throw v1
.end method

.method setMain()V
    .locals 4

    #@0
    .prologue
    .line 1696
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 1697
    const-string/jumbo v1, "TvInputManager"

    #@7
    const-string/jumbo v2, "The session has been already released"

    #@a
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    .line 1698
    return-void

    #@e
    .line 1701
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mService:Landroid/media/tv/ITvInputManager;

    #@10
    iget-object v2, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    #@12
    iget v3, p0, Landroid/media/tv/TvInputManager$Session;->mUserId:I

    #@14
    invoke-interface {v1, v2, v3}, Landroid/media/tv/ITvInputManager;->setMainSession(Landroid/os/IBinder;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    .line 1695
    return-void

    #@18
    .line 1702
    :catch_0
    move-exception v0

    #@19
    .line 1703
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@1c
    move-result-object v1

    #@1d
    throw v1
.end method

.method public setStreamVolume(F)V
    .locals 4
    .param p1, "volume"    # F

    #@0
    .prologue
    .line 1752
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 1753
    const-string/jumbo v1, "TvInputManager"

    #@7
    const-string/jumbo v2, "The session has been already released"

    #@a
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    .line 1754
    return-void

    #@e
    .line 1757
    :cond_0
    const/4 v1, 0x0

    #@f
    cmpg-float v1, p1, v1

    #@11
    if-ltz v1, :cond_1

    #@13
    const/high16 v1, 0x3f800000    # 1.0f

    #@15
    cmpl-float v1, p1, v1

    #@17
    if-lez v1, :cond_2

    #@19
    .line 1758
    :cond_1
    :try_start_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@1b
    const-string/jumbo v2, "volume should be between 0.0f and 1.0f"

    #@1e
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@21
    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@22
    .line 1761
    :catch_0
    move-exception v0

    #@23
    .line 1762
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@26
    move-result-object v1

    #@27
    throw v1

    #@28
    .line 1760
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    :try_start_1
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mService:Landroid/media/tv/ITvInputManager;

    #@2a
    iget-object v2, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    #@2c
    iget v3, p0, Landroid/media/tv/TvInputManager$Session;->mUserId:I

    #@2e
    invoke-interface {v1, v2, p1, v3}, Landroid/media/tv/ITvInputManager;->setVolume(Landroid/os/IBinder;FI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@31
    .line 1751
    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 4
    .param p1, "surface"    # Landroid/view/Surface;

    #@0
    .prologue
    .line 1713
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 1714
    const-string/jumbo v1, "TvInputManager"

    #@7
    const-string/jumbo v2, "The session has been already released"

    #@a
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    .line 1715
    return-void

    #@e
    .line 1719
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mService:Landroid/media/tv/ITvInputManager;

    #@10
    iget-object v2, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    #@12
    iget v3, p0, Landroid/media/tv/TvInputManager$Session;->mUserId:I

    #@14
    invoke-interface {v1, v2, p1, v3}, Landroid/media/tv/ITvInputManager;->setSurface(Landroid/os/IBinder;Landroid/view/Surface;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    .line 1712
    return-void

    #@18
    .line 1720
    :catch_0
    move-exception v0

    #@19
    .line 1721
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@1c
    move-result-object v1

    #@1d
    throw v1
.end method

.method startRecording(Landroid/net/Uri;)V
    .locals 4
    .param p1, "programUri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 2103
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 2104
    const-string/jumbo v1, "TvInputManager"

    #@7
    const-string/jumbo v2, "The session has been already released"

    #@a
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    .line 2105
    return-void

    #@e
    .line 2108
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mService:Landroid/media/tv/ITvInputManager;

    #@10
    iget-object v2, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    #@12
    iget v3, p0, Landroid/media/tv/TvInputManager$Session;->mUserId:I

    #@14
    invoke-interface {v1, v2, p1, v3}, Landroid/media/tv/ITvInputManager;->startRecording(Landroid/os/IBinder;Landroid/net/Uri;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    .line 2102
    return-void

    #@18
    .line 2109
    :catch_0
    move-exception v0

    #@19
    .line 2110
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@1c
    move-result-object v1

    #@1d
    throw v1
.end method

.method stopRecording()V
    .locals 4

    #@0
    .prologue
    .line 2118
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 2119
    const-string/jumbo v1, "TvInputManager"

    #@7
    const-string/jumbo v2, "The session has been already released"

    #@a
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    .line 2120
    return-void

    #@e
    .line 2123
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mService:Landroid/media/tv/ITvInputManager;

    #@10
    iget-object v2, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    #@12
    iget v3, p0, Landroid/media/tv/TvInputManager$Session;->mUserId:I

    #@14
    invoke-interface {v1, v2, v3}, Landroid/media/tv/ITvInputManager;->stopRecording(Landroid/os/IBinder;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    .line 2117
    return-void

    #@18
    .line 2124
    :catch_0
    move-exception v0

    #@19
    .line 2125
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@1c
    move-result-object v1

    #@1d
    throw v1
.end method

.method timeShiftEnablePositionTracking(Z)V
    .locals 4
    .param p1, "enable"    # Z

    #@0
    .prologue
    .line 2085
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 2086
    const-string/jumbo v1, "TvInputManager"

    #@7
    const-string/jumbo v2, "The session has been already released"

    #@a
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    .line 2087
    return-void

    #@e
    .line 2090
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mService:Landroid/media/tv/ITvInputManager;

    #@10
    iget-object v2, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    #@12
    iget v3, p0, Landroid/media/tv/TvInputManager$Session;->mUserId:I

    #@14
    invoke-interface {v1, v2, p1, v3}, Landroid/media/tv/ITvInputManager;->timeShiftEnablePositionTracking(Landroid/os/IBinder;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    .line 2084
    return-void

    #@18
    .line 2091
    :catch_0
    move-exception v0

    #@19
    .line 2092
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@1c
    move-result-object v1

    #@1d
    throw v1
.end method

.method timeShiftPause()V
    .locals 4

    #@0
    .prologue
    .line 2015
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 2016
    const-string/jumbo v1, "TvInputManager"

    #@7
    const-string/jumbo v2, "The session has been already released"

    #@a
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    .line 2017
    return-void

    #@e
    .line 2020
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mService:Landroid/media/tv/ITvInputManager;

    #@10
    iget-object v2, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    #@12
    iget v3, p0, Landroid/media/tv/TvInputManager$Session;->mUserId:I

    #@14
    invoke-interface {v1, v2, v3}, Landroid/media/tv/ITvInputManager;->timeShiftPause(Landroid/os/IBinder;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    .line 2014
    return-void

    #@18
    .line 2021
    :catch_0
    move-exception v0

    #@19
    .line 2022
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@1c
    move-result-object v1

    #@1d
    throw v1
.end method

.method timeShiftPlay(Landroid/net/Uri;)V
    .locals 4
    .param p1, "recordedProgramUri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 2000
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 2001
    const-string/jumbo v1, "TvInputManager"

    #@7
    const-string/jumbo v2, "The session has been already released"

    #@a
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    .line 2002
    return-void

    #@e
    .line 2005
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mService:Landroid/media/tv/ITvInputManager;

    #@10
    iget-object v2, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    #@12
    iget v3, p0, Landroid/media/tv/TvInputManager$Session;->mUserId:I

    #@14
    invoke-interface {v1, v2, p1, v3}, Landroid/media/tv/ITvInputManager;->timeShiftPlay(Landroid/os/IBinder;Landroid/net/Uri;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    .line 1999
    return-void

    #@18
    .line 2006
    :catch_0
    move-exception v0

    #@19
    .line 2007
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@1c
    move-result-object v1

    #@1d
    throw v1
.end method

.method timeShiftResume()V
    .locals 4

    #@0
    .prologue
    .line 2030
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 2031
    const-string/jumbo v1, "TvInputManager"

    #@7
    const-string/jumbo v2, "The session has been already released"

    #@a
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    .line 2032
    return-void

    #@e
    .line 2035
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mService:Landroid/media/tv/ITvInputManager;

    #@10
    iget-object v2, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    #@12
    iget v3, p0, Landroid/media/tv/TvInputManager$Session;->mUserId:I

    #@14
    invoke-interface {v1, v2, v3}, Landroid/media/tv/ITvInputManager;->timeShiftResume(Landroid/os/IBinder;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    .line 2029
    return-void

    #@18
    .line 2036
    :catch_0
    move-exception v0

    #@19
    .line 2037
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@1c
    move-result-object v1

    #@1d
    throw v1
.end method

.method timeShiftSeekTo(J)V
    .locals 5
    .param p1, "timeMs"    # J

    #@0
    .prologue
    .line 2051
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 2052
    const-string/jumbo v1, "TvInputManager"

    #@7
    const-string/jumbo v2, "The session has been already released"

    #@a
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    .line 2053
    return-void

    #@e
    .line 2056
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mService:Landroid/media/tv/ITvInputManager;

    #@10
    iget-object v2, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    #@12
    iget v3, p0, Landroid/media/tv/TvInputManager$Session;->mUserId:I

    #@14
    invoke-interface {v1, v2, p1, p2, v3}, Landroid/media/tv/ITvInputManager;->timeShiftSeekTo(Landroid/os/IBinder;JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    .line 2050
    return-void

    #@18
    .line 2057
    :catch_0
    move-exception v0

    #@19
    .line 2058
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@1c
    move-result-object v1

    #@1d
    throw v1
.end method

.method timeShiftSetPlaybackParams(Landroid/media/PlaybackParams;)V
    .locals 4
    .param p1, "params"    # Landroid/media/PlaybackParams;

    #@0
    .prologue
    .line 2068
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 2069
    const-string/jumbo v1, "TvInputManager"

    #@7
    const-string/jumbo v2, "The session has been already released"

    #@a
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    .line 2070
    return-void

    #@e
    .line 2073
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mService:Landroid/media/tv/ITvInputManager;

    #@10
    iget-object v2, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    #@12
    iget v3, p0, Landroid/media/tv/TvInputManager$Session;->mUserId:I

    #@14
    invoke-interface {v1, v2, p1, v3}, Landroid/media/tv/ITvInputManager;->timeShiftSetPlaybackParams(Landroid/os/IBinder;Landroid/media/PlaybackParams;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    .line 2067
    return-void

    #@18
    .line 2074
    :catch_0
    move-exception v0

    #@19
    .line 2075
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@1c
    move-result-object v1

    #@1d
    throw v1
.end method

.method public tune(Landroid/net/Uri;)V
    .locals 1
    .param p1, "channelUri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 1772
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Landroid/media/tv/TvInputManager$Session;->tune(Landroid/net/Uri;Landroid/os/Bundle;)V

    #@4
    .line 1771
    return-void
.end method

.method public tune(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "channelUri"    # Landroid/net/Uri;
    .param p2, "params"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1782
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 1783
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    #@5
    if-nez v1, :cond_0

    #@7
    .line 1784
    const-string/jumbo v1, "TvInputManager"

    #@a
    const-string/jumbo v2, "The session has been already released"

    #@d
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@10
    .line 1785
    return-void

    #@11
    .line 1787
    :cond_0
    iget-object v2, p0, Landroid/media/tv/TvInputManager$Session;->mMetadataLock:Ljava/lang/Object;

    #@13
    monitor-enter v2

    #@14
    .line 1788
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mAudioTracks:Ljava/util/List;

    #@16
    invoke-interface {v1}, Ljava/util/List;->clear()V

    #@19
    .line 1789
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mVideoTracks:Ljava/util/List;

    #@1b
    invoke-interface {v1}, Ljava/util/List;->clear()V

    #@1e
    .line 1790
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mSubtitleTracks:Ljava/util/List;

    #@20
    invoke-interface {v1}, Ljava/util/List;->clear()V

    #@23
    .line 1791
    const/4 v1, 0x0

    #@24
    iput-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mSelectedAudioTrackId:Ljava/lang/String;

    #@26
    .line 1792
    const/4 v1, 0x0

    #@27
    iput-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mSelectedVideoTrackId:Ljava/lang/String;

    #@29
    .line 1793
    const/4 v1, 0x0

    #@2a
    iput-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mSelectedSubtitleTrackId:Ljava/lang/String;

    #@2c
    .line 1794
    const/4 v1, 0x0

    #@2d
    iput v1, p0, Landroid/media/tv/TvInputManager$Session;->mVideoWidth:I

    #@2f
    .line 1795
    const/4 v1, 0x0

    #@30
    iput v1, p0, Landroid/media/tv/TvInputManager$Session;->mVideoHeight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@32
    monitor-exit v2

    #@33
    .line 1798
    :try_start_1
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mService:Landroid/media/tv/ITvInputManager;

    #@35
    iget-object v2, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    #@37
    iget v3, p0, Landroid/media/tv/TvInputManager$Session;->mUserId:I

    #@39
    invoke-interface {v1, v2, p1, p2, v3}, Landroid/media/tv/ITvInputManager;->tune(Landroid/os/IBinder;Landroid/net/Uri;Landroid/os/Bundle;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@3c
    .line 1781
    return-void

    #@3d
    .line 1787
    :catchall_0
    move-exception v1

    #@3e
    monitor-exit v2

    #@3f
    throw v1

    #@40
    .line 1799
    :catch_0
    move-exception v0

    #@41
    .line 1800
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@44
    move-result-object v1

    #@45
    throw v1
.end method

.method unblockContent(Landroid/media/tv/TvContentRating;)V
    .locals 5
    .param p1, "unblockedRating"    # Landroid/media/tv/TvContentRating;

    #@0
    .prologue
    .line 2215
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 2216
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    #@5
    if-nez v1, :cond_0

    #@7
    .line 2217
    const-string/jumbo v1, "TvInputManager"

    #@a
    const-string/jumbo v2, "The session has been already released"

    #@d
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@10
    .line 2218
    return-void

    #@11
    .line 2221
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mService:Landroid/media/tv/ITvInputManager;

    #@13
    iget-object v2, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    #@15
    invoke-virtual {p1}, Landroid/media/tv/TvContentRating;->flattenToString()Ljava/lang/String;

    #@18
    move-result-object v3

    #@19
    iget v4, p0, Landroid/media/tv/TvInputManager$Session;->mUserId:I

    #@1b
    invoke-interface {v1, v2, v3, v4}, Landroid/media/tv/ITvInputManager;->unblockContent(Landroid/os/IBinder;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1e
    .line 2214
    return-void

    #@1f
    .line 2222
    :catch_0
    move-exception v0

    #@20
    .line 2223
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@23
    move-result-object v1

    #@24
    throw v1
.end method

.method updateTrackSelection(ILjava/lang/String;)Z
    .locals 4
    .param p1, "type"    # I
    .param p2, "trackId"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x1

    #@2
    .line 1952
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mMetadataLock:Ljava/lang/Object;

    #@4
    monitor-enter v1

    #@5
    .line 1953
    if-nez p1, :cond_0

    #@7
    .line 1954
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mSelectedAudioTrackId:Ljava/lang/String;

    #@9
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_3

    #@f
    .line 1957
    :cond_0
    if-ne p1, v2, :cond_1

    #@11
    .line 1958
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mSelectedVideoTrackId:Ljava/lang/String;

    #@13
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@16
    move-result v0

    #@17
    if-eqz v0, :cond_4

    #@19
    .line 1961
    :cond_1
    const/4 v0, 0x2

    #@1a
    if-ne p1, v0, :cond_2

    #@1c
    .line 1962
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mSelectedSubtitleTrackId:Ljava/lang/String;

    #@1e
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    move-result v0

    #@22
    if-eqz v0, :cond_5

    #@24
    :cond_2
    monitor-exit v1

    #@25
    .line 1967
    return v3

    #@26
    .line 1955
    :cond_3
    :try_start_1
    iput-object p2, p0, Landroid/media/tv/TvInputManager$Session;->mSelectedAudioTrackId:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@28
    monitor-exit v1

    #@29
    .line 1956
    return v2

    #@2a
    .line 1959
    :cond_4
    :try_start_2
    iput-object p2, p0, Landroid/media/tv/TvInputManager$Session;->mSelectedVideoTrackId:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@2c
    monitor-exit v1

    #@2d
    .line 1960
    return v2

    #@2e
    .line 1963
    :cond_5
    :try_start_3
    iput-object p2, p0, Landroid/media/tv/TvInputManager$Session;->mSelectedSubtitleTrackId:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@30
    monitor-exit v1

    #@31
    .line 1964
    return v2

    #@32
    .line 1952
    :catchall_0
    move-exception v0

    #@33
    monitor-exit v1

    #@34
    throw v0
.end method

.method updateTracks(Ljava/util/List;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/media/tv/TvTrackInfo;",
            ">;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "tracks":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvTrackInfo;>;"
    const/4 v2, 0x0

    #@1
    const/4 v3, 0x1

    #@2
    .line 1929
    iget-object v4, p0, Landroid/media/tv/TvInputManager$Session;->mMetadataLock:Ljava/lang/Object;

    #@4
    monitor-enter v4

    #@5
    .line 1930
    :try_start_0
    iget-object v5, p0, Landroid/media/tv/TvInputManager$Session;->mAudioTracks:Ljava/util/List;

    #@7
    invoke-interface {v5}, Ljava/util/List;->clear()V

    #@a
    .line 1931
    iget-object v5, p0, Landroid/media/tv/TvInputManager$Session;->mVideoTracks:Ljava/util/List;

    #@c
    invoke-interface {v5}, Ljava/util/List;->clear()V

    #@f
    .line 1932
    iget-object v5, p0, Landroid/media/tv/TvInputManager$Session;->mSubtitleTracks:Ljava/util/List;

    #@11
    invoke-interface {v5}, Ljava/util/List;->clear()V

    #@14
    .line 1933
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@17
    move-result-object v1

    #@18
    .local v1, "track$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@1b
    move-result v5

    #@1c
    if-eqz v5, :cond_3

    #@1e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@21
    move-result-object v0

    #@22
    check-cast v0, Landroid/media/tv/TvTrackInfo;

    #@24
    .line 1934
    .local v0, "track":Landroid/media/tv/TvTrackInfo;
    invoke-virtual {v0}, Landroid/media/tv/TvTrackInfo;->getType()I

    #@27
    move-result v5

    #@28
    if-nez v5, :cond_1

    #@2a
    .line 1935
    iget-object v5, p0, Landroid/media/tv/TvInputManager$Session;->mAudioTracks:Ljava/util/List;

    #@2c
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2f
    goto :goto_0

    #@30
    .line 1929
    .end local v0    # "track":Landroid/media/tv/TvTrackInfo;
    .end local v1    # "track$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    #@31
    monitor-exit v4

    #@32
    throw v2

    #@33
    .line 1936
    .restart local v0    # "track":Landroid/media/tv/TvTrackInfo;
    .restart local v1    # "track$iterator":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Landroid/media/tv/TvTrackInfo;->getType()I

    #@36
    move-result v5

    #@37
    if-ne v5, v3, :cond_2

    #@39
    .line 1937
    iget-object v5, p0, Landroid/media/tv/TvInputManager$Session;->mVideoTracks:Ljava/util/List;

    #@3b
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@3e
    goto :goto_0

    #@3f
    .line 1938
    :cond_2
    invoke-virtual {v0}, Landroid/media/tv/TvTrackInfo;->getType()I

    #@42
    move-result v5

    #@43
    const/4 v6, 0x2

    #@44
    if-ne v5, v6, :cond_0

    #@46
    .line 1939
    iget-object v5, p0, Landroid/media/tv/TvInputManager$Session;->mSubtitleTracks:Ljava/util/List;

    #@48
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@4b
    goto :goto_0

    #@4c
    .line 1942
    .end local v0    # "track":Landroid/media/tv/TvTrackInfo;
    :cond_3
    iget-object v5, p0, Landroid/media/tv/TvInputManager$Session;->mAudioTracks:Ljava/util/List;

    #@4e
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    #@51
    move-result v5

    #@52
    if-eqz v5, :cond_4

    #@54
    iget-object v5, p0, Landroid/media/tv/TvInputManager$Session;->mVideoTracks:Ljava/util/List;

    #@56
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    #@59
    move-result v5

    #@5a
    if-eqz v5, :cond_4

    #@5c
    .line 1943
    iget-object v5, p0, Landroid/media/tv/TvInputManager$Session;->mSubtitleTracks:Ljava/util/List;

    #@5e
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@61
    move-result v5

    #@62
    if-eqz v5, :cond_5

    #@64
    :goto_1
    monitor-exit v4

    #@65
    .line 1942
    return v2

    #@66
    :cond_4
    move v2, v3

    #@67
    goto :goto_1

    #@68
    :cond_5
    move v2, v3

    #@69
    .line 1943
    goto :goto_1
.end method
