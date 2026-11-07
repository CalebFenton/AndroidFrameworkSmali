.class public final Landroid/media/tv/ad/TvAdManager$Session;
.super Ljava/lang/Object;
.source "TvAdManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/ad/TvAdManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Session"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/ad/TvAdManager$Session$InputEventHandler;,
        Landroid/media/tv/ad/TvAdManager$Session$TvInputEventSender;,
        Landroid/media/tv/ad/TvAdManager$Session$FinishedInputEventCallback;,
        Landroid/media/tv/ad/TvAdManager$Session$PendingEvent;
    }
.end annotation


# static fields
.field static final blacklist DISPATCH_HANDLED:I = 0x1

.field static final blacklist DISPATCH_IN_PROGRESS:I = -0x1

.field static final blacklist DISPATCH_NOT_HANDLED:I = 0x0

.field private static final blacklist INPUT_SESSION_NOT_RESPONDING_TIMEOUT:J = 0x9c4L


# instance fields
.field private final blacklist mHandler:Landroid/media/tv/ad/TvAdManager$Session$InputEventHandler;

.field private blacklist mInputChannel:Landroid/view/InputChannel;

.field private blacklist mInputSession:Landroid/media/tv/TvInputManager$Session;

.field private final blacklist mPendingEventPool:Landroid/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$Pool<",
            "Landroid/media/tv/ad/TvAdManager$Session$PendingEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPendingEvents:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/media/tv/ad/TvAdManager$Session$PendingEvent;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSender:Landroid/media/tv/ad/TvAdManager$Session$TvInputEventSender;

.field private final blacklist mSeq:I

.field private final blacklist mService:Landroid/media/tv/ad/ITvAdManager;

.field private final blacklist mSessionCallbackRecordMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mToken:Landroid/os/IBinder;

.field private final blacklist mUserId:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$mrecyclePendingEventLocked(Landroid/media/tv/ad/TvAdManager$Session;Landroid/media/tv/ad/TvAdManager$Session$PendingEvent;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/tv/ad/TvAdManager$Session;->recyclePendingEventLocked(Landroid/media/tv/ad/TvAdManager$Session$PendingEvent;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mreleaseInternal(Landroid/media/tv/ad/TvAdManager$Session;)V
    .registers 1

    invoke-direct {p0}, Landroid/media/tv/ad/TvAdManager$Session;->releaseInternal()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msendInputEventAndReportResultOnMainLooper(Landroid/media/tv/ad/TvAdManager$Session;Landroid/media/tv/ad/TvAdManager$Session$PendingEvent;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/tv/ad/TvAdManager$Session;->sendInputEventAndReportResultOnMainLooper(Landroid/media/tv/ad/TvAdManager$Session$PendingEvent;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/IBinder;Landroid/view/InputChannel;Landroid/media/tv/ad/ITvAdManager;IILandroid/util/SparseArray;)V
    .registers 9
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "channel"    # Landroid/view/InputChannel;
    .param p3, "service"    # Landroid/media/tv/ad/ITvAdManager;
    .param p4, "userId"    # I
    .param p5, "seq"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Landroid/view/InputChannel;",
            "Landroid/media/tv/ad/ITvAdManager;",
            "II",
            "Landroid/util/SparseArray<",
            "Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;",
            ">;)V"
        }
    .end annotation

    .line 631
    .local p6, "sessionCallbackRecordMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 621
    new-instance v0, Landroid/media/tv/ad/TvAdManager$Session$InputEventHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/media/tv/ad/TvAdManager$Session$InputEventHandler;-><init>(Landroid/media/tv/ad/TvAdManager$Session;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/tv/ad/TvAdManager$Session;->mHandler:Landroid/media/tv/ad/TvAdManager$Session$InputEventHandler;

    .line 624
    new-instance v0, Landroid/util/Pools$SimplePool;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/util/Pools$SimplePool;-><init>(I)V

    iput-object v0, p0, Landroid/media/tv/ad/TvAdManager$Session;->mPendingEventPool:Landroid/util/Pools$Pool;

    .line 625
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Landroid/media/tv/ad/TvAdManager$Session;->mPendingEvents:Landroid/util/SparseArray;

    .line 632
    iput-object p1, p0, Landroid/media/tv/ad/TvAdManager$Session;->mToken:Landroid/os/IBinder;

    .line 633
    iput-object p2, p0, Landroid/media/tv/ad/TvAdManager$Session;->mInputChannel:Landroid/view/InputChannel;

    .line 634
    iput-object p3, p0, Landroid/media/tv/ad/TvAdManager$Session;->mService:Landroid/media/tv/ad/ITvAdManager;

    .line 635
    iput p4, p0, Landroid/media/tv/ad/TvAdManager$Session;->mUserId:I

    .line 636
    iput p5, p0, Landroid/media/tv/ad/TvAdManager$Session;->mSeq:I

    .line 637
    iput-object p6, p0, Landroid/media/tv/ad/TvAdManager$Session;->mSessionCallbackRecordMap:Landroid/util/SparseArray;

    .line 638
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/IBinder;Landroid/view/InputChannel;Landroid/media/tv/ad/ITvAdManager;IILandroid/util/SparseArray;Landroid/media/tv/ad/TvAdManager-IA;)V
    .registers 8

    invoke-direct/range {p0 .. p6}, Landroid/media/tv/ad/TvAdManager$Session;-><init>(Landroid/os/IBinder;Landroid/view/InputChannel;Landroid/media/tv/ad/ITvAdManager;IILandroid/util/SparseArray;)V

    return-void
.end method

.method private blacklist flushPendingEventsLocked()V
    .registers 7

    .line 765
    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$Session;->mHandler:Landroid/media/tv/ad/TvAdManager$Session$InputEventHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/tv/ad/TvAdManager$Session$InputEventHandler;->removeMessages(I)V

    .line 767
    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$Session;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 768
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    if-ge v2, v0, :cond_26

    .line 769
    iget-object v3, p0, Landroid/media/tv/ad/TvAdManager$Session;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 770
    .local v3, "seq":I
    iget-object v4, p0, Landroid/media/tv/ad/TvAdManager$Session;->mHandler:Landroid/media/tv/ad/TvAdManager$Session$InputEventHandler;

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v3, v5}, Landroid/media/tv/ad/TvAdManager$Session$InputEventHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    .line 772
    .local v4, "msg":Landroid/os/Message;
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 773
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 768
    .end local v3    # "seq":I
    .end local v4    # "msg":Landroid/os/Message;
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 775
    .end local v2    # "i":I
    :cond_26
    return-void
.end method

.method private blacklist obtainPendingEventLocked(Landroid/view/InputEvent;Ljava/lang/Object;Landroid/media/tv/ad/TvAdManager$Session$FinishedInputEventCallback;Landroid/os/Handler;)Landroid/media/tv/ad/TvAdManager$Session$PendingEvent;
    .registers 8
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "token"    # Ljava/lang/Object;
    .param p3, "callback"    # Landroid/media/tv/ad/TvAdManager$Session$FinishedInputEventCallback;
    .param p4, "handler"    # Landroid/os/Handler;

    .line 972
    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$Session;->mPendingEventPool:Landroid/util/Pools$Pool;

    invoke-interface {v0}, Landroid/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/tv/ad/TvAdManager$Session$PendingEvent;

    .line 973
    .local v0, "p":Landroid/media/tv/ad/TvAdManager$Session$PendingEvent;
    if-nez v0, :cond_11

    .line 974
    new-instance v1, Landroid/media/tv/ad/TvAdManager$Session$PendingEvent;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/media/tv/ad/TvAdManager$Session$PendingEvent;-><init>(Landroid/media/tv/ad/TvAdManager$Session;Landroid/media/tv/ad/TvAdManager-IA;)V

    move-object v0, v1

    .line 976
    :cond_11
    iput-object p1, v0, Landroid/media/tv/ad/TvAdManager$Session$PendingEvent;->mEvent:Landroid/view/InputEvent;

    .line 977
    iput-object p2, v0, Landroid/media/tv/ad/TvAdManager$Session$PendingEvent;->mEventToken:Ljava/lang/Object;

    .line 978
    iput-object p3, v0, Landroid/media/tv/ad/TvAdManager$Session$PendingEvent;->mCallback:Landroid/media/tv/ad/TvAdManager$Session$FinishedInputEventCallback;

    .line 979
    iput-object p4, v0, Landroid/media/tv/ad/TvAdManager$Session$PendingEvent;->mEventHandler:Landroid/os/Handler;

    .line 980
    return-object v0
.end method

.method private blacklist recyclePendingEventLocked(Landroid/media/tv/ad/TvAdManager$Session$PendingEvent;)V
    .registers 3
    .param p1, "p"    # Landroid/media/tv/ad/TvAdManager$Session$PendingEvent;

    .line 1102
    invoke-virtual {p1}, Landroid/media/tv/ad/TvAdManager$Session$PendingEvent;->recycle()V

    .line 1103
    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$Session;->mPendingEventPool:Landroid/util/Pools$Pool;

    invoke-interface {v0, p1}, Landroid/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 1104
    return-void
.end method

.method private blacklist releaseInternal()V
    .registers 4

    .line 778
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/tv/ad/TvAdManager$Session;->mToken:Landroid/os/IBinder;

    .line 779
    iget-object v1, p0, Landroid/media/tv/ad/TvAdManager$Session;->mHandler:Landroid/media/tv/ad/TvAdManager$Session$InputEventHandler;

    monitor-enter v1

    .line 780
    :try_start_6
    iget-object v2, p0, Landroid/media/tv/ad/TvAdManager$Session;->mInputChannel:Landroid/view/InputChannel;

    if-eqz v2, :cond_1f

    .line 781
    iget-object v2, p0, Landroid/media/tv/ad/TvAdManager$Session;->mSender:Landroid/media/tv/ad/TvAdManager$Session$TvInputEventSender;

    if-eqz v2, :cond_18

    .line 782
    invoke-direct {p0}, Landroid/media/tv/ad/TvAdManager$Session;->flushPendingEventsLocked()V

    .line 783
    iget-object v2, p0, Landroid/media/tv/ad/TvAdManager$Session;->mSender:Landroid/media/tv/ad/TvAdManager$Session$TvInputEventSender;

    invoke-virtual {v2}, Landroid/media/tv/ad/TvAdManager$Session$TvInputEventSender;->dispose()V

    .line 784
    iput-object v0, p0, Landroid/media/tv/ad/TvAdManager$Session;->mSender:Landroid/media/tv/ad/TvAdManager$Session$TvInputEventSender;

    .line 786
    :cond_18
    iget-object v2, p0, Landroid/media/tv/ad/TvAdManager$Session;->mInputChannel:Landroid/view/InputChannel;

    invoke-virtual {v2}, Landroid/view/InputChannel;->dispose()V

    .line 787
    iput-object v0, p0, Landroid/media/tv/ad/TvAdManager$Session;->mInputChannel:Landroid/view/InputChannel;

    .line 789
    :cond_1f
    monitor-exit v1
    :try_end_20
    .catchall {:try_start_6 .. :try_end_20} :catchall_2f

    .line 790
    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$Session;->mSessionCallbackRecordMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 791
    :try_start_23
    iget-object v1, p0, Landroid/media/tv/ad/TvAdManager$Session;->mSessionCallbackRecordMap:Landroid/util/SparseArray;

    iget v2, p0, Landroid/media/tv/ad/TvAdManager$Session;->mSeq:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->delete(I)V

    .line 792
    monitor-exit v0

    .line 793
    return-void

    .line 792
    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_23 .. :try_end_2e} :catchall_2c

    throw v1

    .line 789
    :catchall_2f
    move-exception v0

    :try_start_30
    monitor-exit v1
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw v0
.end method

.method private blacklist sendInputEventAndReportResultOnMainLooper(Landroid/media/tv/ad/TvAdManager$Session$PendingEvent;)V
    .registers 5
    .param p1, "p"    # Landroid/media/tv/ad/TvAdManager$Session$PendingEvent;

    .line 1046
    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$Session;->mHandler:Landroid/media/tv/ad/TvAdManager$Session$InputEventHandler;

    monitor-enter v0

    .line 1047
    :try_start_3
    invoke-direct {p0, p1}, Landroid/media/tv/ad/TvAdManager$Session;->sendInputEventOnMainLooperLocked(Landroid/media/tv/ad/TvAdManager$Session$PendingEvent;)I

    move-result v1

    .line 1048
    .local v1, "result":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_c

    .line 1049
    monitor-exit v0

    return-void

    .line 1051
    .end local v1    # "result":I
    :cond_c
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_12

    .line 1053
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/media/tv/ad/TvAdManager$Session;->invokeFinishedInputEventCallback(Landroid/media/tv/ad/TvAdManager$Session$PendingEvent;Z)V

    .line 1054
    return-void

    .line 1051
    :catchall_12
    move-exception v1

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v1
.end method

.method private blacklist sendInputEventOnMainLooperLocked(Landroid/media/tv/ad/TvAdManager$Session$PendingEvent;)I
    .registers 8
    .param p1, "p"    # Landroid/media/tv/ad/TvAdManager$Session$PendingEvent;

    .line 1057
    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$Session;->mInputChannel:Landroid/view/InputChannel;

    if-eqz v0, :cond_62

    .line 1058
    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$Session;->mSender:Landroid/media/tv/ad/TvAdManager$Session$TvInputEventSender;

    if-nez v0, :cond_17

    .line 1059
    new-instance v0, Landroid/media/tv/ad/TvAdManager$Session$TvInputEventSender;

    iget-object v1, p0, Landroid/media/tv/ad/TvAdManager$Session;->mInputChannel:Landroid/view/InputChannel;

    iget-object v2, p0, Landroid/media/tv/ad/TvAdManager$Session;->mHandler:Landroid/media/tv/ad/TvAdManager$Session$InputEventHandler;

    invoke-virtual {v2}, Landroid/media/tv/ad/TvAdManager$Session$InputEventHandler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Landroid/media/tv/ad/TvAdManager$Session$TvInputEventSender;-><init>(Landroid/media/tv/ad/TvAdManager$Session;Landroid/view/InputChannel;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/tv/ad/TvAdManager$Session;->mSender:Landroid/media/tv/ad/TvAdManager$Session$TvInputEventSender;

    .line 1062
    :cond_17
    iget-object v0, p1, Landroid/media/tv/ad/TvAdManager$Session$PendingEvent;->mEvent:Landroid/view/InputEvent;

    .line 1063
    .local v0, "event":Landroid/view/InputEvent;
    invoke-virtual {v0}, Landroid/view/InputEvent;->getSequenceNumber()I

    move-result v1

    .line 1064
    .local v1, "seq":I
    iget-object v2, p0, Landroid/media/tv/ad/TvAdManager$Session;->mSender:Landroid/media/tv/ad/TvAdManager$Session$TvInputEventSender;

    invoke-virtual {v2, v1, v0}, Landroid/media/tv/ad/TvAdManager$Session$TvInputEventSender;->sendInputEvent(ILandroid/view/InputEvent;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 1065
    iget-object v2, p0, Landroid/media/tv/ad/TvAdManager$Session;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v2, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1066
    iget-object v2, p0, Landroid/media/tv/ad/TvAdManager$Session;->mHandler:Landroid/media/tv/ad/TvAdManager$Session$InputEventHandler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, p1}, Landroid/media/tv/ad/TvAdManager$Session$InputEventHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1068
    .local v2, "msg":Landroid/os/Message;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 1069
    iget-object v3, p0, Landroid/media/tv/ad/TvAdManager$Session;->mHandler:Landroid/media/tv/ad/TvAdManager$Session$InputEventHandler;

    const-wide/16 v4, 0x9c4

    invoke-virtual {v3, v2, v4, v5}, Landroid/media/tv/ad/TvAdManager$Session$InputEventHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1070
    const/4 v3, -0x1

    return v3

    .line 1073
    .end local v2    # "msg":Landroid/os/Message;
    :cond_3e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to send input event to session: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/tv/ad/TvAdManager$Session;->mToken:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " dropping:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TvAdManager"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    .end local v0    # "event":Landroid/view/InputEvent;
    .end local v1    # "seq":I
    :cond_62
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method blacklist createMediaView(Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "frame"    # Landroid/graphics/Rect;

    .line 695
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 696
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 697
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 700
    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_18

    .line 701
    const-string v0, "TvAdManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    return-void

    .line 705
    :cond_18
    :try_start_18
    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$Session;->mService:Landroid/media/tv/ad/ITvAdManager;

    iget-object v1, p0, Landroid/media/tv/ad/TvAdManager$Session;->mToken:Landroid/os/IBinder;

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    iget v3, p0, Landroid/media/tv/ad/TvAdManager$Session;->mUserId:I

    invoke-interface {v0, v1, v2, p2, v3}, Landroid/media/tv/ad/ITvAdManager;->createMediaView(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/graphics/Rect;I)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_25} :catch_27

    .line 708
    nop

    .line 709
    return-void

    .line 706
    :catch_27
    move-exception v0

    .line 707
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 698
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "view must be attached to a window"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist dispatchInputEvent(Landroid/view/InputEvent;Ljava/lang/Object;Landroid/media/tv/ad/TvAdManager$Session$FinishedInputEventCallback;Landroid/os/Handler;)I
    .registers 9
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "token"    # Ljava/lang/Object;
    .param p3, "callback"    # Landroid/media/tv/ad/TvAdManager$Session$FinishedInputEventCallback;
    .param p4, "handler"    # Landroid/os/Handler;

    .line 949
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 950
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 951
    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 952
    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$Session;->mHandler:Landroid/media/tv/ad/TvAdManager$Session$InputEventHandler;

    monitor-enter v0

    .line 953
    :try_start_c
    iget-object v1, p0, Landroid/media/tv/ad/TvAdManager$Session;->mInputChannel:Landroid/view/InputChannel;

    if-nez v1, :cond_13

    .line 954
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    .line 956
    :cond_13
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/media/tv/ad/TvAdManager$Session;->obtainPendingEventLocked(Landroid/view/InputEvent;Ljava/lang/Object;Landroid/media/tv/ad/TvAdManager$Session$FinishedInputEventCallback;Landroid/os/Handler;)Landroid/media/tv/ad/TvAdManager$Session$PendingEvent;

    move-result-object v1

    .line 957
    .local v1, "p":Landroid/media/tv/ad/TvAdManager$Session$PendingEvent;
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v2, v3, :cond_27

    .line 959
    invoke-direct {p0, v1}, Landroid/media/tv/ad/TvAdManager$Session;->sendInputEventOnMainLooperLocked(Landroid/media/tv/ad/TvAdManager$Session$PendingEvent;)I

    move-result v2

    monitor-exit v0

    return v2

    .line 963
    :cond_27
    iget-object v2, p0, Landroid/media/tv/ad/TvAdManager$Session;->mHandler:Landroid/media/tv/ad/TvAdManager$Session$InputEventHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v1}, Landroid/media/tv/ad/TvAdManager$Session$InputEventHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 964
    .local v2, "msg":Landroid/os/Message;
    invoke-virtual {v2, v3}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 965
    iget-object v3, p0, Landroid/media/tv/ad/TvAdManager$Session;->mHandler:Landroid/media/tv/ad/TvAdManager$Session$InputEventHandler;

    invoke-virtual {v3, v2}, Landroid/media/tv/ad/TvAdManager$Session$InputEventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 966
    monitor-exit v0

    const/4 v0, -0x1

    return v0

    .line 967
    .end local v1    # "p":Landroid/media/tv/ad/TvAdManager$Session$PendingEvent;
    .end local v2    # "msg":Landroid/os/Message;
    :catchall_39
    move-exception v1

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_c .. :try_end_3b} :catchall_39

    throw v1
.end method

.method public blacklist dispatchSurfaceChanged(III)V
    .registers 12
    .param p1, "format"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 753
    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    .line 754
    const-string v0, "TvAdManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    return-void

    .line 758
    :cond_c
    :try_start_c
    iget-object v2, p0, Landroid/media/tv/ad/TvAdManager$Session;->mService:Landroid/media/tv/ad/ITvAdManager;

    iget-object v3, p0, Landroid/media/tv/ad/TvAdManager$Session;->mToken:Landroid/os/IBinder;

    iget v7, p0, Landroid/media/tv/ad/TvAdManager$Session;->mUserId:I
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_12} :catch_1d

    move v4, p1

    move v5, p2

    move v6, p3

    .end local p1    # "format":I
    .end local p2    # "width":I
    .end local p3    # "height":I
    .local v4, "format":I
    .local v5, "width":I
    .local v6, "height":I
    :try_start_15
    invoke-interface/range {v2 .. v7}, Landroid/media/tv/ad/ITvAdManager;->dispatchSurfaceChanged(Landroid/os/IBinder;IIII)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_18} :catch_1a

    .line 761
    nop

    .line 762
    return-void

    .line 759
    :catch_1a
    move-exception v0

    move-object p1, v0

    goto :goto_22

    .end local v4    # "format":I
    .end local v5    # "width":I
    .end local v6    # "height":I
    .restart local p1    # "format":I
    .restart local p2    # "width":I
    .restart local p3    # "height":I
    :catch_1d
    move-exception v0

    move v4, p1

    move v5, p2

    move v6, p3

    move-object p1, v0

    .line 760
    .end local p2    # "width":I
    .end local p3    # "height":I
    .restart local v4    # "format":I
    .restart local v5    # "width":I
    .restart local v6    # "height":I
    .local p1, "e":Landroid/os/RemoteException;
    :goto_22
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2
.end method

.method blacklist finishedInputEvent(IZZ)V
    .registers 10
    .param p1, "seq"    # I
    .param p2, "handled"    # Z
    .param p3, "timeout"    # Z

    .line 1081
    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$Session;->mHandler:Landroid/media/tv/ad/TvAdManager$Session$InputEventHandler;

    monitor-enter v0

    .line 1082
    :try_start_3
    iget-object v1, p0, Landroid/media/tv/ad/TvAdManager$Session;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    .line 1083
    .local v1, "index":I
    if-gez v1, :cond_d

    .line 1084
    monitor-exit v0

    return-void

    .line 1087
    :cond_d
    iget-object v2, p0, Landroid/media/tv/ad/TvAdManager$Session;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/tv/ad/TvAdManager$Session$PendingEvent;

    .line 1088
    .local v2, "p":Landroid/media/tv/ad/TvAdManager$Session$PendingEvent;
    iget-object v3, p0, Landroid/media/tv/ad/TvAdManager$Session;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 1090
    if-eqz p3, :cond_37

    .line 1091
    const-string v3, "TvAdManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Timeout waiting for session to handle input event after 2500 ms: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/media/tv/ad/TvAdManager$Session;->mToken:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3d

    .line 1094
    :cond_37
    iget-object v3, p0, Landroid/media/tv/ad/TvAdManager$Session;->mHandler:Landroid/media/tv/ad/TvAdManager$Session$InputEventHandler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v2}, Landroid/media/tv/ad/TvAdManager$Session$InputEventHandler;->removeMessages(ILjava/lang/Object;)V

    .line 1096
    .end local v1    # "index":I
    :goto_3d
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3 .. :try_end_3e} :catchall_42

    .line 1098
    invoke-virtual {p0, v2, p2}, Landroid/media/tv/ad/TvAdManager$Session;->invokeFinishedInputEventCallback(Landroid/media/tv/ad/TvAdManager$Session$PendingEvent;Z)V

    .line 1099
    return-void

    .line 1096
    .end local v2    # "p":Landroid/media/tv/ad/TvAdManager$Session$PendingEvent;
    :catchall_42
    move-exception v1

    :try_start_43
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    throw v1
.end method

.method public blacklist getInputSession()Landroid/media/tv/TvInputManager$Session;
    .registers 2

    .line 641
    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$Session;->mInputSession:Landroid/media/tv/TvInputManager$Session;

    return-object v0
.end method

.method blacklist invokeFinishedInputEventCallback(Landroid/media/tv/ad/TvAdManager$Session$PendingEvent;Z)V
    .registers 5
    .param p1, "p"    # Landroid/media/tv/ad/TvAdManager$Session$PendingEvent;
    .param p2, "handled"    # Z

    .line 1030
    iput-boolean p2, p1, Landroid/media/tv/ad/TvAdManager$Session$PendingEvent;->mHandled:Z

    .line 1031
    iget-object v0, p1, Landroid/media/tv/ad/TvAdManager$Session$PendingEvent;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1034
    invoke-virtual {p1}, Landroid/media/tv/ad/TvAdManager$Session$PendingEvent;->run()V

    goto :goto_1f

    .line 1038
    :cond_12
    iget-object v0, p1, Landroid/media/tv/ad/TvAdManager$Session$PendingEvent;->mEventHandler:Landroid/os/Handler;

    invoke-static {v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    .line 1039
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 1040
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1042
    .end local v0    # "msg":Landroid/os/Message;
    :goto_1f
    return-void
.end method

.method blacklist notifyError(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6
    .param p1, "errMsg"    # Ljava/lang/String;
    .param p2, "params"    # Landroid/os/Bundle;

    .line 892
    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    .line 893
    const-string v0, "TvAdManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    return-void

    .line 897
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$Session;->mService:Landroid/media/tv/ad/ITvAdManager;

    iget-object v1, p0, Landroid/media/tv/ad/TvAdManager$Session;->mToken:Landroid/os/IBinder;

    iget v2, p0, Landroid/media/tv/ad/TvAdManager$Session;->mUserId:I

    invoke-interface {v0, v1, p1, p2, v2}, Landroid/media/tv/ad/ITvAdManager;->notifyError(Landroid/os/IBinder;Ljava/lang/String;Landroid/os/Bundle;I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_15} :catch_17

    .line 900
    nop

    .line 901
    return-void

    .line 898
    :catch_17
    move-exception v0

    .line 899
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist notifyTvInputSessionData(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .line 922
    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    .line 923
    const-string v0, "TvAdManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    return-void

    .line 927
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$Session;->mService:Landroid/media/tv/ad/ITvAdManager;

    iget-object v1, p0, Landroid/media/tv/ad/TvAdManager$Session;->mToken:Landroid/os/IBinder;

    iget v2, p0, Landroid/media/tv/ad/TvAdManager$Session;->mUserId:I

    invoke-interface {v0, v1, p1, p2, v2}, Landroid/media/tv/ad/ITvAdManager;->notifyTvInputSessionData(Landroid/os/IBinder;Ljava/lang/String;Landroid/os/Bundle;I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_15} :catch_17

    .line 930
    nop

    .line 931
    return-void

    .line 928
    :catch_17
    move-exception v0

    .line 929
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist notifyTvMessage(ILandroid/os/Bundle;)V
    .registers 6
    .param p1, "type"    # I
    .param p2, "data"    # Landroid/os/Bundle;

    .line 907
    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    .line 908
    const-string v0, "TvAdManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    return-void

    .line 912
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$Session;->mService:Landroid/media/tv/ad/ITvAdManager;

    iget-object v1, p0, Landroid/media/tv/ad/TvAdManager$Session;->mToken:Landroid/os/IBinder;

    iget v2, p0, Landroid/media/tv/ad/TvAdManager$Session;->mUserId:I

    invoke-interface {v0, v1, p1, p2, v2}, Landroid/media/tv/ad/ITvAdManager;->notifyTvMessage(Landroid/os/IBinder;ILandroid/os/Bundle;I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_15} :catch_17

    .line 915
    nop

    .line 916
    return-void

    .line 913
    :catch_17
    move-exception v0

    .line 914
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist relayoutMediaView(Landroid/graphics/Rect;)V
    .registers 5
    .param p1, "frame"    # Landroid/graphics/Rect;

    .line 717
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 718
    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_f

    .line 719
    const-string v0, "TvAdManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    return-void

    .line 723
    :cond_f
    :try_start_f
    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$Session;->mService:Landroid/media/tv/ad/ITvAdManager;

    iget-object v1, p0, Landroid/media/tv/ad/TvAdManager$Session;->mToken:Landroid/os/IBinder;

    iget v2, p0, Landroid/media/tv/ad/TvAdManager$Session;->mUserId:I

    invoke-interface {v0, v1, p1, v2}, Landroid/media/tv/ad/ITvAdManager;->relayoutMediaView(Landroid/os/IBinder;Landroid/graphics/Rect;I)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_18} :catch_1a

    .line 726
    nop

    .line 727
    return-void

    .line 724
    :catch_1a
    move-exception v0

    .line 725
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist release()V
    .registers 4

    .line 652
    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    .line 653
    const-string v0, "TvAdManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    return-void

    .line 657
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$Session;->mService:Landroid/media/tv/ad/ITvAdManager;

    iget-object v1, p0, Landroid/media/tv/ad/TvAdManager$Session;->mToken:Landroid/os/IBinder;

    iget v2, p0, Landroid/media/tv/ad/TvAdManager$Session;->mUserId:I

    invoke-interface {v0, v1, v2}, Landroid/media/tv/ad/ITvAdManager;->releaseSession(Landroid/os/IBinder;I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_15} :catch_1a

    .line 660
    nop

    .line 662
    invoke-direct {p0}, Landroid/media/tv/ad/TvAdManager$Session;->releaseInternal()V

    .line 663
    return-void

    .line 658
    :catch_1a
    move-exception v0

    .line 659
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist removeMediaView()V
    .registers 4

    .line 733
    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    .line 734
    const-string v0, "TvAdManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    return-void

    .line 738
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$Session;->mService:Landroid/media/tv/ad/ITvAdManager;

    iget-object v1, p0, Landroid/media/tv/ad/TvAdManager$Session;->mToken:Landroid/os/IBinder;

    iget v2, p0, Landroid/media/tv/ad/TvAdManager$Session;->mUserId:I

    invoke-interface {v0, v1, v2}, Landroid/media/tv/ad/ITvAdManager;->removeMediaView(Landroid/os/IBinder;I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_15} :catch_17

    .line 741
    nop

    .line 742
    return-void

    .line 739
    :catch_17
    move-exception v0

    .line 740
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist resetAdService()V
    .registers 4

    .line 820
    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    .line 821
    const-string v0, "TvAdManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    return-void

    .line 825
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$Session;->mService:Landroid/media/tv/ad/ITvAdManager;

    iget-object v1, p0, Landroid/media/tv/ad/TvAdManager$Session;->mToken:Landroid/os/IBinder;

    iget v2, p0, Landroid/media/tv/ad/TvAdManager$Session;->mUserId:I

    invoke-interface {v0, v1, v2}, Landroid/media/tv/ad/ITvAdManager;->resetAdService(Landroid/os/IBinder;I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_15} :catch_17

    .line 828
    nop

    .line 829
    return-void

    .line 826
    :catch_17
    move-exception v0

    .line 827
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist sendCurrentChannelUri(Landroid/net/Uri;)V
    .registers 5
    .param p1, "channelUri"    # Landroid/net/Uri;

    .line 844
    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    .line 845
    const-string v0, "TvAdManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    return-void

    .line 849
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$Session;->mService:Landroid/media/tv/ad/ITvAdManager;

    iget-object v1, p0, Landroid/media/tv/ad/TvAdManager$Session;->mToken:Landroid/os/IBinder;

    iget v2, p0, Landroid/media/tv/ad/TvAdManager$Session;->mUserId:I

    invoke-interface {v0, v1, p1, v2}, Landroid/media/tv/ad/ITvAdManager;->sendCurrentChannelUri(Landroid/os/IBinder;Landroid/net/Uri;I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_15} :catch_17

    .line 852
    nop

    .line 853
    return-void

    .line 850
    :catch_17
    move-exception v0

    .line 851
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist sendCurrentTvInputId(Ljava/lang/String;)V
    .registers 5
    .param p1, "inputId"    # Ljava/lang/String;

    .line 868
    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    .line 869
    const-string v0, "TvAdManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    return-void

    .line 873
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$Session;->mService:Landroid/media/tv/ad/ITvAdManager;

    iget-object v1, p0, Landroid/media/tv/ad/TvAdManager$Session;->mToken:Landroid/os/IBinder;

    iget v2, p0, Landroid/media/tv/ad/TvAdManager$Session;->mUserId:I

    invoke-interface {v0, v1, p1, v2}, Landroid/media/tv/ad/ITvAdManager;->sendCurrentTvInputId(Landroid/os/IBinder;Ljava/lang/String;I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_15} :catch_17

    .line 876
    nop

    .line 877
    return-void

    .line 874
    :catch_17
    move-exception v0

    .line 875
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist sendCurrentVideoBounds(Landroid/graphics/Rect;)V
    .registers 5
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 832
    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    .line 833
    const-string v0, "TvAdManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    return-void

    .line 837
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$Session;->mService:Landroid/media/tv/ad/ITvAdManager;

    iget-object v1, p0, Landroid/media/tv/ad/TvAdManager$Session;->mToken:Landroid/os/IBinder;

    iget v2, p0, Landroid/media/tv/ad/TvAdManager$Session;->mUserId:I

    invoke-interface {v0, v1, p1, v2}, Landroid/media/tv/ad/ITvAdManager;->sendCurrentVideoBounds(Landroid/os/IBinder;Landroid/graphics/Rect;I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_15} :catch_17

    .line 840
    nop

    .line 841
    return-void

    .line 838
    :catch_17
    move-exception v0

    .line 839
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist sendSigningResult(Ljava/lang/String;[B)V
    .registers 6
    .param p1, "signingId"    # Ljava/lang/String;
    .param p2, "result"    # [B

    .line 880
    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    .line 881
    const-string v0, "TvAdManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    return-void

    .line 885
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$Session;->mService:Landroid/media/tv/ad/ITvAdManager;

    iget-object v1, p0, Landroid/media/tv/ad/TvAdManager$Session;->mToken:Landroid/os/IBinder;

    iget v2, p0, Landroid/media/tv/ad/TvAdManager$Session;->mUserId:I

    invoke-interface {v0, v1, p1, p2, v2}, Landroid/media/tv/ad/ITvAdManager;->sendSigningResult(Landroid/os/IBinder;Ljava/lang/String;[BI)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_15} :catch_17

    .line 888
    nop

    .line 889
    return-void

    .line 886
    :catch_17
    move-exception v0

    .line 887
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist sendTrackInfoList(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/tv/TvTrackInfo;",
            ">;)V"
        }
    .end annotation

    .line 856
    .local p1, "tracks":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvTrackInfo;>;"
    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    .line 857
    const-string v0, "TvAdManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    return-void

    .line 861
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$Session;->mService:Landroid/media/tv/ad/ITvAdManager;

    iget-object v1, p0, Landroid/media/tv/ad/TvAdManager$Session;->mToken:Landroid/os/IBinder;

    iget v2, p0, Landroid/media/tv/ad/TvAdManager$Session;->mUserId:I

    invoke-interface {v0, v1, p1, v2}, Landroid/media/tv/ad/ITvAdManager;->sendTrackInfoList(Landroid/os/IBinder;Ljava/util/List;I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_15} :catch_17

    .line 864
    nop

    .line 865
    return-void

    .line 862
    :catch_17
    move-exception v0

    .line 863
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setInputSession(Landroid/media/tv/TvInputManager$Session;)V
    .registers 2
    .param p1, "inputSession"    # Landroid/media/tv/TvInputManager$Session;

    .line 645
    iput-object p1, p0, Landroid/media/tv/ad/TvAdManager$Session;->mInputSession:Landroid/media/tv/TvInputManager$Session;

    .line 646
    return-void
.end method

.method public blacklist setSurface(Landroid/view/Surface;)V
    .registers 5
    .param p1, "surface"    # Landroid/view/Surface;

    .line 671
    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    .line 672
    const-string v0, "TvAdManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    return-void

    .line 677
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$Session;->mService:Landroid/media/tv/ad/ITvAdManager;

    iget-object v1, p0, Landroid/media/tv/ad/TvAdManager$Session;->mToken:Landroid/os/IBinder;

    iget v2, p0, Landroid/media/tv/ad/TvAdManager$Session;->mUserId:I

    invoke-interface {v0, v1, p1, v2}, Landroid/media/tv/ad/ITvAdManager;->setSurface(Landroid/os/IBinder;Landroid/view/Surface;I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_15} :catch_17

    .line 680
    nop

    .line 681
    return-void

    .line 678
    :catch_17
    move-exception v0

    .line 679
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist startAdService()V
    .registers 4

    .line 796
    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    .line 797
    const-string v0, "TvAdManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    return-void

    .line 801
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$Session;->mService:Landroid/media/tv/ad/ITvAdManager;

    iget-object v1, p0, Landroid/media/tv/ad/TvAdManager$Session;->mToken:Landroid/os/IBinder;

    iget v2, p0, Landroid/media/tv/ad/TvAdManager$Session;->mUserId:I

    invoke-interface {v0, v1, v2}, Landroid/media/tv/ad/ITvAdManager;->startAdService(Landroid/os/IBinder;I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_15} :catch_17

    .line 804
    nop

    .line 805
    return-void

    .line 802
    :catch_17
    move-exception v0

    .line 803
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist stopAdService()V
    .registers 4

    .line 808
    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    .line 809
    const-string v0, "TvAdManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    return-void

    .line 813
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$Session;->mService:Landroid/media/tv/ad/ITvAdManager;

    iget-object v1, p0, Landroid/media/tv/ad/TvAdManager$Session;->mToken:Landroid/os/IBinder;

    iget v2, p0, Landroid/media/tv/ad/TvAdManager$Session;->mUserId:I

    invoke-interface {v0, v1, v2}, Landroid/media/tv/ad/ITvAdManager;->stopAdService(Landroid/os/IBinder;I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_15} :catch_17

    .line 816
    nop

    .line 817
    return-void

    .line 814
    :catch_17
    move-exception v0

    .line 815
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
