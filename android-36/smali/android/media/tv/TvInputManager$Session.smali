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
        Landroid/media/tv/TvInputManager$Session$InputEventHandler;,
        Landroid/media/tv/TvInputManager$Session$FinishedInputEventCallback;,
        Landroid/media/tv/TvInputManager$Session$PendingEvent;,
        Landroid/media/tv/TvInputManager$Session$TvInputEventSender;
    }
.end annotation


# static fields
.field static final greylist-max-o DISPATCH_HANDLED:I = 0x1

.field static final greylist-max-o DISPATCH_IN_PROGRESS:I = -0x1

.field static final greylist-max-o DISPATCH_NOT_HANDLED:I = 0x0

.field private static final greylist-max-o INPUT_SESSION_NOT_RESPONDING_TIMEOUT:J = 0x9c4L


# instance fields
.field private blacklist mAdSession:Landroid/media/tv/ad/TvAdManager$Session;

.field private final blacklist mAudioPresentations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/AudioPresentation;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mAudioTracks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/tv/TvTrackInfo;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mChannel:Landroid/view/InputChannel;

.field private final greylist-max-o mHandler:Landroid/media/tv/TvInputManager$Session$InputEventHandler;

.field private blacklist mIAppNotificationEnabled:Z

.field private blacklist mIAppSession:Landroid/media/tv/interactive/TvInteractiveAppManager$Session;

.field private final greylist-max-o mMetadataLock:Ljava/lang/Object;

.field private final greylist-max-o mPendingEventPool:Landroid/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$Pool<",
            "Landroid/media/tv/TvInputManager$Session$PendingEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mPendingEvents:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/media/tv/TvInputManager$Session$PendingEvent;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSelectedAudioPresentationId:I

.field private blacklist mSelectedAudioProgramId:I

.field private greylist-max-o mSelectedAudioTrackId:Ljava/lang/String;

.field private greylist-max-o mSelectedSubtitleTrackId:Ljava/lang/String;

.field private greylist-max-o mSelectedVideoTrackId:Ljava/lang/String;

.field private greylist-max-o mSender:Landroid/media/tv/TvInputManager$Session$TvInputEventSender;

.field private final greylist-max-o mSeq:I

.field private final greylist-max-o mService:Landroid/media/tv/ITvInputManager;

.field private final greylist-max-o mSessionCallbackRecordMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/media/tv/TvInputManager$SessionCallbackRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mSubtitleTracks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/tv/TvTrackInfo;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mToken:Landroid/os/IBinder;

.field private final greylist-max-o mUserId:I

.field private greylist-max-o mVideoHeight:I

.field private final greylist-max-o mVideoTracks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/tv/TvTrackInfo;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mVideoWidth:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmIAppNotificationEnabled(Landroid/media/tv/TvInputManager$Session;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/media/tv/TvInputManager$Session;->mIAppNotificationEnabled:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mrecyclePendingEventLocked(Landroid/media/tv/TvInputManager$Session;Landroid/media/tv/TvInputManager$Session$PendingEvent;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/tv/TvInputManager$Session;->recyclePendingEventLocked(Landroid/media/tv/TvInputManager$Session$PendingEvent;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mreleaseInternal(Landroid/media/tv/TvInputManager$Session;)V
    .registers 1

    invoke-direct {p0}, Landroid/media/tv/TvInputManager$Session;->releaseInternal()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msendInputEventAndReportResultOnMainLooper(Landroid/media/tv/TvInputManager$Session;Landroid/media/tv/TvInputManager$Session$PendingEvent;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/tv/TvInputManager$Session;->sendInputEventAndReportResultOnMainLooper(Landroid/media/tv/TvInputManager$Session$PendingEvent;)V

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/IBinder;Landroid/view/InputChannel;Landroid/media/tv/ITvInputManager;IILandroid/util/SparseArray;)V
    .registers 9
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
            "Landroid/util/SparseArray<",
            "Landroid/media/tv/TvInputManager$SessionCallbackRecord;",
            ">;)V"
        }
    .end annotation

    .line 3043
    .local p6, "sessionCallbackRecordMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/media/tv/TvInputManager$SessionCallbackRecord;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3004
    new-instance v0, Landroid/media/tv/TvInputManager$Session$InputEventHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/media/tv/TvInputManager$Session$InputEventHandler;-><init>(Landroid/media/tv/TvInputManager$Session;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mHandler:Landroid/media/tv/TvInputManager$Session$InputEventHandler;

    .line 3006
    new-instance v0, Landroid/util/Pools$SimplePool;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/util/Pools$SimplePool;-><init>(I)V

    iput-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mPendingEventPool:Landroid/util/Pools$Pool;

    .line 3007
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mPendingEvents:Landroid/util/SparseArray;

    .line 3014
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mMetadataLock:Ljava/lang/Object;

    .line 3016
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mAudioPresentations:Ljava/util/List;

    .line 3018
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mAudioTracks:Ljava/util/List;

    .line 3020
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mVideoTracks:Ljava/util/List;

    .line 3022
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mSubtitleTracks:Ljava/util/List;

    .line 3024
    const/4 v0, -0x1

    iput v0, p0, Landroid/media/tv/TvInputManager$Session;->mSelectedAudioProgramId:I

    .line 3026
    iput v0, p0, Landroid/media/tv/TvInputManager$Session;->mSelectedAudioPresentationId:I

    .line 3040
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/tv/TvInputManager$Session;->mIAppNotificationEnabled:Z

    .line 3044
    iput-object p1, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    .line 3045
    iput-object p2, p0, Landroid/media/tv/TvInputManager$Session;->mChannel:Landroid/view/InputChannel;

    .line 3046
    iput-object p3, p0, Landroid/media/tv/TvInputManager$Session;->mService:Landroid/media/tv/ITvInputManager;

    .line 3047
    iput p4, p0, Landroid/media/tv/TvInputManager$Session;->mUserId:I

    .line 3048
    iput p5, p0, Landroid/media/tv/TvInputManager$Session;->mSeq:I

    .line 3049
    iput-object p6, p0, Landroid/media/tv/TvInputManager$Session;->mSessionCallbackRecordMap:Landroid/util/SparseArray;

    .line 3050
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/IBinder;Landroid/view/InputChannel;Landroid/media/tv/ITvInputManager;IILandroid/util/SparseArray;Landroid/media/tv/TvInputManager-IA;)V
    .registers 8

    invoke-direct/range {p0 .. p6}, Landroid/media/tv/TvInputManager$Session;-><init>(Landroid/os/IBinder;Landroid/view/InputChannel;Landroid/media/tv/ITvInputManager;IILandroid/util/SparseArray;)V

    return-void
.end method

.method private blacklist containsAudioPresentation(Ljava/util/List;I)Z
    .registers 7
    .param p2, "presentationId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/AudioPresentation;",
            ">;I)Z"
        }
    .end annotation

    .line 3248
    .local p1, "audioPresentations":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioPresentation;>;"
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mMetadataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3249
    :try_start_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioPresentation;

    .line 3250
    .local v2, "audioPresentation":Landroid/media/AudioPresentation;
    invoke-virtual {v2}, Landroid/media/AudioPresentation;->getPresentationId()I

    move-result v3

    if-ne v3, p2, :cond_1c

    .line 3251
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 3253
    .end local v2    # "audioPresentation":Landroid/media/AudioPresentation;
    :cond_1c
    goto :goto_7

    .line 3254
    :cond_1d
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    .line 3255
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw v1
.end method

.method private greylist-max-o containsTrack(Ljava/util/List;Ljava/lang/String;)Z
    .registers 6
    .param p2, "trackId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/tv/TvTrackInfo;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 3376
    .local p1, "tracks":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvTrackInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/TvTrackInfo;

    .line 3377
    .local v1, "track":Landroid/media/tv/TvTrackInfo;
    invoke-virtual {v1}, Landroid/media/tv/TvTrackInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 3378
    const/4 v0, 0x1

    return v0

    .line 3380
    .end local v1    # "track":Landroid/media/tv/TvTrackInfo;
    :cond_1c
    goto :goto_4

    .line 3381
    :cond_1d
    const/4 v0, 0x0

    return v0
.end method

.method private greylist-max-o flushPendingEventsLocked()V
    .registers 7

    .line 4015
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mHandler:Landroid/media/tv/TvInputManager$Session$InputEventHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/tv/TvInputManager$Session$InputEventHandler;->removeMessages(I)V

    .line 4017
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 4018
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    if-ge v2, v0, :cond_26

    .line 4019
    iget-object v3, p0, Landroid/media/tv/TvInputManager$Session;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 4020
    .local v3, "seq":I
    iget-object v4, p0, Landroid/media/tv/TvInputManager$Session;->mHandler:Landroid/media/tv/TvInputManager$Session$InputEventHandler;

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v3, v5}, Landroid/media/tv/TvInputManager$Session$InputEventHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    .line 4021
    .local v4, "msg":Landroid/os/Message;
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 4022
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 4018
    .end local v3    # "seq":I
    .end local v4    # "msg":Landroid/os/Message;
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 4024
    .end local v2    # "i":I
    :cond_26
    return-void
.end method

.method private greylist-max-o obtainPendingEventLocked(Landroid/view/InputEvent;Ljava/lang/Object;Landroid/media/tv/TvInputManager$Session$FinishedInputEventCallback;Landroid/os/Handler;)Landroid/media/tv/TvInputManager$Session$PendingEvent;
    .registers 8
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "token"    # Ljava/lang/Object;
    .param p3, "callback"    # Landroid/media/tv/TvInputManager$Session$FinishedInputEventCallback;
    .param p4, "handler"    # Landroid/os/Handler;

    .line 4028
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mPendingEventPool:Landroid/util/Pools$Pool;

    invoke-interface {v0}, Landroid/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/tv/TvInputManager$Session$PendingEvent;

    .line 4029
    .local v0, "p":Landroid/media/tv/TvInputManager$Session$PendingEvent;
    if-nez v0, :cond_11

    .line 4030
    new-instance v1, Landroid/media/tv/TvInputManager$Session$PendingEvent;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/media/tv/TvInputManager$Session$PendingEvent;-><init>(Landroid/media/tv/TvInputManager$Session;Landroid/media/tv/TvInputManager-IA;)V

    move-object v0, v1

    .line 4032
    :cond_11
    iput-object p1, v0, Landroid/media/tv/TvInputManager$Session$PendingEvent;->mEvent:Landroid/view/InputEvent;

    .line 4033
    iput-object p2, v0, Landroid/media/tv/TvInputManager$Session$PendingEvent;->mEventToken:Ljava/lang/Object;

    .line 4034
    iput-object p3, v0, Landroid/media/tv/TvInputManager$Session$PendingEvent;->mCallback:Landroid/media/tv/TvInputManager$Session$FinishedInputEventCallback;

    .line 4035
    iput-object p4, v0, Landroid/media/tv/TvInputManager$Session$PendingEvent;->mEventHandler:Landroid/os/Handler;

    .line 4036
    return-object v0
.end method

.method private greylist-max-o recyclePendingEventLocked(Landroid/media/tv/TvInputManager$Session$PendingEvent;)V
    .registers 3
    .param p1, "p"    # Landroid/media/tv/TvInputManager$Session$PendingEvent;

    .line 4040
    invoke-virtual {p1}, Landroid/media/tv/TvInputManager$Session$PendingEvent;->recycle()V

    .line 4041
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mPendingEventPool:Landroid/util/Pools$Pool;

    invoke-interface {v0, p1}, Landroid/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 4042
    return-void
.end method

.method private greylist-max-o releaseInternal()V
    .registers 4

    .line 4049
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    .line 4050
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mHandler:Landroid/media/tv/TvInputManager$Session$InputEventHandler;

    monitor-enter v1

    .line 4051
    :try_start_6
    iget-object v2, p0, Landroid/media/tv/TvInputManager$Session;->mChannel:Landroid/view/InputChannel;

    if-eqz v2, :cond_1f

    .line 4052
    iget-object v2, p0, Landroid/media/tv/TvInputManager$Session;->mSender:Landroid/media/tv/TvInputManager$Session$TvInputEventSender;

    if-eqz v2, :cond_18

    .line 4053
    invoke-direct {p0}, Landroid/media/tv/TvInputManager$Session;->flushPendingEventsLocked()V

    .line 4054
    iget-object v2, p0, Landroid/media/tv/TvInputManager$Session;->mSender:Landroid/media/tv/TvInputManager$Session$TvInputEventSender;

    invoke-virtual {v2}, Landroid/media/tv/TvInputManager$Session$TvInputEventSender;->dispose()V

    .line 4055
    iput-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mSender:Landroid/media/tv/TvInputManager$Session$TvInputEventSender;

    .line 4057
    :cond_18
    iget-object v2, p0, Landroid/media/tv/TvInputManager$Session;->mChannel:Landroid/view/InputChannel;

    invoke-virtual {v2}, Landroid/view/InputChannel;->dispose()V

    .line 4058
    iput-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mChannel:Landroid/view/InputChannel;

    .line 4060
    :cond_1f
    monitor-exit v1
    :try_end_20
    .catchall {:try_start_6 .. :try_end_20} :catchall_2f

    .line 4061
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mSessionCallbackRecordMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 4062
    :try_start_23
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mSessionCallbackRecordMap:Landroid/util/SparseArray;

    iget v2, p0, Landroid/media/tv/TvInputManager$Session;->mSeq:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->delete(I)V

    .line 4063
    monitor-exit v0

    .line 4064
    return-void

    .line 4063
    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_23 .. :try_end_2e} :catchall_2c

    throw v1

    .line 4060
    :catchall_2f
    move-exception v0

    :try_start_30
    monitor-exit v1
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw v0
.end method

.method private greylist-max-o sendInputEventAndReportResultOnMainLooper(Landroid/media/tv/TvInputManager$Session$PendingEvent;)V
    .registers 5
    .param p1, "p"    # Landroid/media/tv/TvInputManager$Session$PendingEvent;

    .line 3944
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mHandler:Landroid/media/tv/TvInputManager$Session$InputEventHandler;

    monitor-enter v0

    .line 3945
    :try_start_3
    invoke-direct {p0, p1}, Landroid/media/tv/TvInputManager$Session;->sendInputEventOnMainLooperLocked(Landroid/media/tv/TvInputManager$Session$PendingEvent;)I

    move-result v1

    .line 3946
    .local v1, "result":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_c

    .line 3947
    monitor-exit v0

    return-void

    .line 3949
    .end local v1    # "result":I
    :cond_c
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_12

    .line 3951
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/media/tv/TvInputManager$Session;->invokeFinishedInputEventCallback(Landroid/media/tv/TvInputManager$Session$PendingEvent;Z)V

    .line 3952
    return-void

    .line 3949
    :catchall_12
    move-exception v1

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v1
.end method

.method private greylist-max-o sendInputEventOnMainLooperLocked(Landroid/media/tv/TvInputManager$Session$PendingEvent;)I
    .registers 8
    .param p1, "p"    # Landroid/media/tv/TvInputManager$Session$PendingEvent;

    .line 3955
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mChannel:Landroid/view/InputChannel;

    if-eqz v0, :cond_62

    .line 3956
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mSender:Landroid/media/tv/TvInputManager$Session$TvInputEventSender;

    if-nez v0, :cond_17

    .line 3957
    new-instance v0, Landroid/media/tv/TvInputManager$Session$TvInputEventSender;

    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mChannel:Landroid/view/InputChannel;

    iget-object v2, p0, Landroid/media/tv/TvInputManager$Session;->mHandler:Landroid/media/tv/TvInputManager$Session$InputEventHandler;

    invoke-virtual {v2}, Landroid/media/tv/TvInputManager$Session$InputEventHandler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Landroid/media/tv/TvInputManager$Session$TvInputEventSender;-><init>(Landroid/media/tv/TvInputManager$Session;Landroid/view/InputChannel;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mSender:Landroid/media/tv/TvInputManager$Session$TvInputEventSender;

    .line 3960
    :cond_17
    iget-object v0, p1, Landroid/media/tv/TvInputManager$Session$PendingEvent;->mEvent:Landroid/view/InputEvent;

    .line 3961
    .local v0, "event":Landroid/view/InputEvent;
    invoke-virtual {v0}, Landroid/view/InputEvent;->getSequenceNumber()I

    move-result v1

    .line 3962
    .local v1, "seq":I
    iget-object v2, p0, Landroid/media/tv/TvInputManager$Session;->mSender:Landroid/media/tv/TvInputManager$Session$TvInputEventSender;

    invoke-virtual {v2, v1, v0}, Landroid/media/tv/TvInputManager$Session$TvInputEventSender;->sendInputEvent(ILandroid/view/InputEvent;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 3963
    iget-object v2, p0, Landroid/media/tv/TvInputManager$Session;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v2, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3964
    iget-object v2, p0, Landroid/media/tv/TvInputManager$Session;->mHandler:Landroid/media/tv/TvInputManager$Session$InputEventHandler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, p1}, Landroid/media/tv/TvInputManager$Session$InputEventHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 3965
    .local v2, "msg":Landroid/os/Message;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 3966
    iget-object v3, p0, Landroid/media/tv/TvInputManager$Session;->mHandler:Landroid/media/tv/TvInputManager$Session$InputEventHandler;

    const-wide/16 v4, 0x9c4

    invoke-virtual {v3, v2, v4, v5}, Landroid/media/tv/TvInputManager$Session$InputEventHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3967
    const/4 v3, -0x1

    return v3

    .line 3970
    .end local v2    # "msg":Landroid/os/Message;
    :cond_3e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to send input event to session: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " dropping:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TvInputManager"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3973
    .end local v0    # "event":Landroid/view/InputEvent;
    .end local v1    # "seq":I
    :cond_62
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method greylist-max-o createOverlayView(Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "frame"    # Landroid/graphics/Rect;

    .line 3823
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3824
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3825
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 3828
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_18

    .line 3829
    const-string v0, "TvInputManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3830
    return-void

    .line 3833
    :cond_18
    :try_start_18
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mService:Landroid/media/tv/ITvInputManager;

    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    iget v3, p0, Landroid/media/tv/TvInputManager$Session;->mUserId:I

    invoke-interface {v0, v1, v2, p2, v3}, Landroid/media/tv/ITvInputManager;->createOverlayView(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/graphics/Rect;I)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_25} :catch_27

    .line 3836
    nop

    .line 3837
    return-void

    .line 3834
    :catch_27
    move-exception v0

    .line 3835
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 3826
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "view must be attached to a window"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o dispatchInputEvent(Landroid/view/InputEvent;Ljava/lang/Object;Landroid/media/tv/TvInputManager$Session$FinishedInputEventCallback;Landroid/os/Handler;)I
    .registers 9
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "token"    # Ljava/lang/Object;
    .param p3, "callback"    # Landroid/media/tv/TvInputManager$Session$FinishedInputEventCallback;
    .param p4, "handler"    # Landroid/os/Handler;

    .line 3904
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3905
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3906
    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3907
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mHandler:Landroid/media/tv/TvInputManager$Session$InputEventHandler;

    monitor-enter v0

    .line 3908
    :try_start_c
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mChannel:Landroid/view/InputChannel;

    if-nez v1, :cond_13

    .line 3909
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    .line 3911
    :cond_13
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/media/tv/TvInputManager$Session;->obtainPendingEventLocked(Landroid/view/InputEvent;Ljava/lang/Object;Landroid/media/tv/TvInputManager$Session$FinishedInputEventCallback;Landroid/os/Handler;)Landroid/media/tv/TvInputManager$Session$PendingEvent;

    move-result-object v1

    .line 3912
    .local v1, "p":Landroid/media/tv/TvInputManager$Session$PendingEvent;
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v2, v3, :cond_27

    .line 3914
    invoke-direct {p0, v1}, Landroid/media/tv/TvInputManager$Session;->sendInputEventOnMainLooperLocked(Landroid/media/tv/TvInputManager$Session$PendingEvent;)I

    move-result v2

    monitor-exit v0

    return v2

    .line 3918
    :cond_27
    iget-object v2, p0, Landroid/media/tv/TvInputManager$Session;->mHandler:Landroid/media/tv/TvInputManager$Session$InputEventHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v1}, Landroid/media/tv/TvInputManager$Session$InputEventHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 3919
    .local v2, "msg":Landroid/os/Message;
    invoke-virtual {v2, v3}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 3920
    iget-object v3, p0, Landroid/media/tv/TvInputManager$Session;->mHandler:Landroid/media/tv/TvInputManager$Session$InputEventHandler;

    invoke-virtual {v3, v2}, Landroid/media/tv/TvInputManager$Session$InputEventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3921
    monitor-exit v0

    const/4 v0, -0x1

    return v0

    .line 3922
    .end local v1    # "p":Landroid/media/tv/TvInputManager$Session$PendingEvent;
    .end local v2    # "msg":Landroid/os/Message;
    :catchall_39
    move-exception v1

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_c .. :try_end_3b} :catchall_39

    throw v1
.end method

.method public greylist-max-o dispatchSurfaceChanged(III)V
    .registers 12
    .param p1, "format"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 3130
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    .line 3131
    const-string v0, "TvInputManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3132
    return-void

    .line 3135
    :cond_c
    :try_start_c
    iget-object v2, p0, Landroid/media/tv/TvInputManager$Session;->mService:Landroid/media/tv/ITvInputManager;

    iget-object v3, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    iget v7, p0, Landroid/media/tv/TvInputManager$Session;->mUserId:I
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
    invoke-interface/range {v2 .. v7}, Landroid/media/tv/ITvInputManager;->dispatchSurfaceChanged(Landroid/os/IBinder;IIII)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_18} :catch_1a

    .line 3138
    nop

    .line 3139
    return-void

    .line 3136
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

    .line 3137
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

.method greylist-max-o finishedInputEvent(IZZ)V
    .registers 10
    .param p1, "seq"    # I
    .param p2, "handled"    # Z
    .param p3, "timeout"    # Z

    .line 3978
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mHandler:Landroid/media/tv/TvInputManager$Session$InputEventHandler;

    monitor-enter v0

    .line 3979
    :try_start_3
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    .line 3980
    .local v1, "index":I
    if-gez v1, :cond_d

    .line 3981
    monitor-exit v0

    return-void

    .line 3984
    :cond_d
    iget-object v2, p0, Landroid/media/tv/TvInputManager$Session;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/tv/TvInputManager$Session$PendingEvent;

    .line 3985
    .local v2, "p":Landroid/media/tv/TvInputManager$Session$PendingEvent;
    iget-object v3, p0, Landroid/media/tv/TvInputManager$Session;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 3987
    if-eqz p3, :cond_37

    .line 3988
    const-string v3, "TvInputManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Timeout waiting for session to handle input event after 2500 ms: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3d

    .line 3991
    :cond_37
    iget-object v3, p0, Landroid/media/tv/TvInputManager$Session;->mHandler:Landroid/media/tv/TvInputManager$Session$InputEventHandler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v2}, Landroid/media/tv/TvInputManager$Session$InputEventHandler;->removeMessages(ILjava/lang/Object;)V

    .line 3993
    .end local v1    # "index":I
    :goto_3d
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3 .. :try_end_3e} :catchall_42

    .line 3995
    invoke-virtual {p0, v2, p2}, Landroid/media/tv/TvInputManager$Session;->invokeFinishedInputEventCallback(Landroid/media/tv/TvInputManager$Session$PendingEvent;Z)V

    .line 3996
    return-void

    .line 3993
    .end local v2    # "p":Landroid/media/tv/TvInputManager$Session$PendingEvent;
    :catchall_42
    move-exception v1

    :try_start_43
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    throw v1
.end method

.method public blacklist getAdSession()Landroid/media/tv/ad/TvAdManager$Session;
    .registers 2

    .line 3061
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mAdSession:Landroid/media/tv/ad/TvAdManager$Session;

    return-object v0
.end method

.method public blacklist getAudioPresentations()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/AudioPresentation;",
            ">;"
        }
    .end annotation

    .line 3265
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mMetadataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3266
    :try_start_3
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mAudioPresentations:Ljava/util/List;

    if-nez v1, :cond_e

    .line 3267
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    monitor-exit v0

    return-object v1

    .line 3269
    :cond_e
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/media/tv/TvInputManager$Session;->mAudioPresentations:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    .line 3270
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public blacklist getInteractiveAppSession()Landroid/media/tv/interactive/TvInteractiveAppManager$Session;
    .registers 2

    .line 3053
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mIAppSession:Landroid/media/tv/interactive/TvInteractiveAppManager$Session;

    return-object v0
.end method

.method public blacklist getSelectedAudioPresentationId()I
    .registers 3

    .line 3296
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mMetadataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3297
    :try_start_3
    iget v1, p0, Landroid/media/tv/TvInputManager$Session;->mSelectedAudioPresentationId:I

    monitor-exit v0

    return v1

    .line 3298
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public blacklist getSelectedProgramId()I
    .registers 3

    .line 3282
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mMetadataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3283
    :try_start_3
    iget v1, p0, Landroid/media/tv/TvInputManager$Session;->mSelectedAudioProgramId:I

    monitor-exit v0

    return v1

    .line 3284
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public greylist-max-o getSelectedTrack(I)Ljava/lang/String;
    .registers 5
    .param p1, "type"    # I

    .line 3424
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mMetadataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3425
    if-nez p1, :cond_b

    .line 3426
    :try_start_5
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mSelectedAudioTrackId:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 3432
    :catchall_9
    move-exception v1

    goto :goto_33

    .line 3427
    :cond_b
    const/4 v1, 0x1

    if-ne p1, v1, :cond_12

    .line 3428
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mSelectedVideoTrackId:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 3429
    :cond_12
    const/4 v1, 0x2

    if-ne p1, v1, :cond_19

    .line 3430
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mSelectedSubtitleTrackId:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 3432
    :cond_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_9

    .line 3433
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3432
    :goto_33
    :try_start_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_9

    throw v1
.end method

.method greylist-max-o getToken()Landroid/os/IBinder;
    .registers 2

    .line 4045
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public greylist-max-o getTracks(I)Ljava/util/List;
    .registers 5
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/media/tv/TvTrackInfo;",
            ">;"
        }
    .end annotation

    .line 3394
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mMetadataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3395
    const/4 v1, 0x0

    if-nez p1, :cond_17

    .line 3396
    :try_start_6
    iget-object v2, p0, Landroid/media/tv/TvInputManager$Session;->mAudioTracks:Ljava/util/List;

    if-nez v2, :cond_c

    .line 3397
    monitor-exit v0

    return-object v1

    .line 3399
    :cond_c
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/media/tv/TvInputManager$Session;->mAudioTracks:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    .line 3411
    :catchall_15
    move-exception v1

    goto :goto_55

    .line 3400
    :cond_17
    const/4 v2, 0x1

    if-ne p1, v2, :cond_29

    .line 3401
    iget-object v2, p0, Landroid/media/tv/TvInputManager$Session;->mVideoTracks:Ljava/util/List;

    if-nez v2, :cond_20

    .line 3402
    monitor-exit v0

    return-object v1

    .line 3404
    :cond_20
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/media/tv/TvInputManager$Session;->mVideoTracks:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    .line 3405
    :cond_29
    const/4 v2, 0x2

    if-ne p1, v2, :cond_3b

    .line 3406
    iget-object v2, p0, Landroid/media/tv/TvInputManager$Session;->mSubtitleTracks:Ljava/util/List;

    if-nez v2, :cond_32

    .line 3407
    monitor-exit v0

    return-object v1

    .line 3409
    :cond_32
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/media/tv/TvInputManager$Session;->mSubtitleTracks:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    .line 3411
    :cond_3b
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_6 .. :try_end_3c} :catchall_15

    .line 3412
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3411
    :goto_55
    :try_start_55
    monitor-exit v0
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_15

    throw v1
.end method

.method greylist-max-o getVideoTrackToNotify()Landroid/media/tv/TvTrackInfo;
    .registers 7

    .line 3509
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mMetadataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3510
    :try_start_3
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mVideoTracks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_44

    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mSelectedVideoTrackId:Ljava/lang/String;

    if-eqz v1, :cond_44

    .line 3511
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mVideoTracks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/tv/TvTrackInfo;

    .line 3512
    .local v2, "track":Landroid/media/tv/TvTrackInfo;
    invoke-virtual {v2}, Landroid/media/tv/TvTrackInfo;->getId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/media/tv/TvInputManager$Session;->mSelectedVideoTrackId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_43

    .line 3513
    invoke-virtual {v2}, Landroid/media/tv/TvTrackInfo;->getVideoWidth()I

    move-result v3

    .line 3514
    .local v3, "videoWidth":I
    invoke-virtual {v2}, Landroid/media/tv/TvTrackInfo;->getVideoHeight()I

    move-result v4

    .line 3515
    .local v4, "videoHeight":I
    iget v5, p0, Landroid/media/tv/TvInputManager$Session;->mVideoWidth:I

    if-ne v5, v3, :cond_3d

    iget v5, p0, Landroid/media/tv/TvInputManager$Session;->mVideoHeight:I

    if-eq v5, v4, :cond_43

    .line 3516
    :cond_3d
    iput v3, p0, Landroid/media/tv/TvInputManager$Session;->mVideoWidth:I

    .line 3517
    iput v4, p0, Landroid/media/tv/TvInputManager$Session;->mVideoHeight:I

    .line 3518
    monitor-exit v0

    return-object v2

    .line 3521
    .end local v2    # "track":Landroid/media/tv/TvTrackInfo;
    .end local v3    # "videoWidth":I
    .end local v4    # "videoHeight":I
    :cond_43
    goto :goto_15

    .line 3523
    :cond_44
    monitor-exit v0

    .line 3524
    const/4 v0, 0x0

    return-object v0

    .line 3523
    :catchall_47
    move-exception v1

    monitor-exit v0
    :try_end_49
    .catchall {:try_start_3 .. :try_end_49} :catchall_47

    throw v1
.end method

.method greylist-max-o invokeFinishedInputEventCallback(Landroid/media/tv/TvInputManager$Session$PendingEvent;Z)V
    .registers 5
    .param p1, "p"    # Landroid/media/tv/TvInputManager$Session$PendingEvent;
    .param p2, "handled"    # Z

    .line 4000
    iput-boolean p2, p1, Landroid/media/tv/TvInputManager$Session$PendingEvent;->mHandled:Z

    .line 4001
    iget-object v0, p1, Landroid/media/tv/TvInputManager$Session$PendingEvent;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 4004
    invoke-virtual {p1}, Landroid/media/tv/TvInputManager$Session$PendingEvent;->run()V

    goto :goto_1f

    .line 4008
    :cond_12
    iget-object v0, p1, Landroid/media/tv/TvInputManager$Session$PendingEvent;->mEventHandler:Landroid/os/Handler;

    invoke-static {v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    .line 4009
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 4010
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 4012
    .end local v0    # "msg":Landroid/os/Message;
    :goto_1f
    return-void
.end method

.method public blacklist notifyAdBufferReady(Landroid/media/tv/AdBuffer;)V
    .registers 5
    .param p1, "buffer"    # Landroid/media/tv/AdBuffer;

    .line 4111
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    .line 4112
    const-string v0, "TvInputManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4113
    return-void

    .line 4116
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mService:Landroid/media/tv/ITvInputManager;

    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    iget v2, p0, Landroid/media/tv/TvInputManager$Session;->mUserId:I

    invoke-interface {v0, v1, p1, v2}, Landroid/media/tv/ITvInputManager;->notifyAdBufferReady(Landroid/os/IBinder;Landroid/media/tv/AdBuffer;I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_15} :catch_21
    .catchall {:try_start_c .. :try_end_15} :catchall_1f

    .line 4120
    if-eqz p1, :cond_1e

    .line 4121
    invoke-virtual {p1}, Landroid/media/tv/AdBuffer;->getSharedMemory()Landroid/os/SharedMemory;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/SharedMemory;->close()V

    .line 4124
    :cond_1e
    return-void

    .line 4120
    :catchall_1f
    move-exception v0

    goto :goto_27

    .line 4117
    :catch_21
    move-exception v0

    .line 4118
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_22
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    .end local p0    # "this":Landroid/media/tv/TvInputManager$Session;
    .end local p1    # "buffer":Landroid/media/tv/AdBuffer;
    throw v1
    :try_end_27
    .catchall {:try_start_22 .. :try_end_27} :catchall_1f

    .line 4120
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/media/tv/TvInputManager$Session;
    .restart local p1    # "buffer":Landroid/media/tv/AdBuffer;
    :goto_27
    if-eqz p1, :cond_30

    .line 4121
    invoke-virtual {p1}, Landroid/media/tv/AdBuffer;->getSharedMemory()Landroid/os/SharedMemory;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/SharedMemory;->close()V

    .line 4123
    :cond_30
    throw v0
.end method

.method public blacklist notifyTvAdSessionData(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .line 4130
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    .line 4131
    const-string v0, "TvInputManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4132
    return-void

    .line 4135
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mService:Landroid/media/tv/ITvInputManager;

    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    iget v2, p0, Landroid/media/tv/TvInputManager$Session;->mUserId:I

    invoke-interface {v0, v1, p1, p2, v2}, Landroid/media/tv/ITvInputManager;->notifyTvAdSessionData(Landroid/os/IBinder;Ljava/lang/String;Landroid/os/Bundle;I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_15} :catch_17

    .line 4138
    nop

    .line 4139
    return-void

    .line 4136
    :catch_17
    move-exception v0

    .line 4137
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist notifyTvMessage(ILandroid/os/Bundle;)V
    .registers 6
    .param p1, "type"    # I
    .param p2, "data"    # Landroid/os/Bundle;

    .line 3689
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mService:Landroid/media/tv/ITvInputManager;

    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    iget v2, p0, Landroid/media/tv/TvInputManager$Session;->mUserId:I

    invoke-interface {v0, v1, p1, p2, v2}, Landroid/media/tv/ITvInputManager;->notifyTvMessage(Landroid/os/IBinder;ILandroid/os/Bundle;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 3692
    nop

    .line 3693
    return-void

    .line 3690
    :catch_b
    move-exception v0

    .line 3691
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist pauseRecording(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "params"    # Landroid/os/Bundle;

    .line 3759
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    .line 3760
    const-string v0, "TvInputManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3761
    return-void

    .line 3764
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mService:Landroid/media/tv/ITvInputManager;

    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    iget v2, p0, Landroid/media/tv/TvInputManager$Session;->mUserId:I

    invoke-interface {v0, v1, p1, v2}, Landroid/media/tv/ITvInputManager;->pauseRecording(Landroid/os/IBinder;Landroid/os/Bundle;I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_15} :catch_17

    .line 3767
    nop

    .line 3768
    return-void

    .line 3765
    :catch_17
    move-exception v0

    .line 3766
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method greylist-max-o relayoutOverlayView(Landroid/graphics/Rect;)V
    .registers 5
    .param p1, "frame"    # Landroid/graphics/Rect;

    .line 3845
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3846
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_f

    .line 3847
    const-string v0, "TvInputManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3848
    return-void

    .line 3851
    :cond_f
    :try_start_f
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mService:Landroid/media/tv/ITvInputManager;

    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    iget v2, p0, Landroid/media/tv/TvInputManager$Session;->mUserId:I

    invoke-interface {v0, v1, p1, v2}, Landroid/media/tv/ITvInputManager;->relayoutOverlayView(Landroid/os/IBinder;Landroid/graphics/Rect;I)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_18} :catch_1a

    .line 3854
    nop

    .line 3855
    return-void

    .line 3852
    :catch_1a
    move-exception v0

    .line 3853
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o release()V
    .registers 4

    .line 3072
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    .line 3073
    const-string v0, "TvInputManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3074
    return-void

    .line 3077
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mService:Landroid/media/tv/ITvInputManager;

    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    iget v2, p0, Landroid/media/tv/TvInputManager$Session;->mUserId:I

    invoke-interface {v0, v1, v2}, Landroid/media/tv/ITvInputManager;->releaseSession(Landroid/os/IBinder;I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_15} :catch_1a

    .line 3080
    nop

    .line 3082
    invoke-direct {p0}, Landroid/media/tv/TvInputManager$Session;->releaseInternal()V

    .line 3083
    return-void

    .line 3078
    :catch_1a
    move-exception v0

    .line 3079
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist removeBroadcastInfo(I)V
    .registers 5
    .param p1, "requestId"    # I

    .line 4084
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    .line 4085
    const-string v0, "TvInputManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4086
    return-void

    .line 4089
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mService:Landroid/media/tv/ITvInputManager;

    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    iget v2, p0, Landroid/media/tv/TvInputManager$Session;->mUserId:I

    invoke-interface {v0, v1, p1, v2}, Landroid/media/tv/ITvInputManager;->removeBroadcastInfo(Landroid/os/IBinder;II)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_15} :catch_17

    .line 4092
    nop

    .line 4093
    return-void

    .line 4090
    :catch_17
    move-exception v0

    .line 4091
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method greylist-max-o removeOverlayView()V
    .registers 4

    .line 3861
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    .line 3862
    const-string v0, "TvInputManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3863
    return-void

    .line 3866
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mService:Landroid/media/tv/ITvInputManager;

    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    iget v2, p0, Landroid/media/tv/TvInputManager$Session;->mUserId:I

    invoke-interface {v0, v1, v2}, Landroid/media/tv/ITvInputManager;->removeOverlayView(Landroid/os/IBinder;I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_15} :catch_17

    .line 3869
    nop

    .line 3870
    return-void

    .line 3867
    :catch_17
    move-exception v0

    .line 3868
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist requestAd(Landroid/media/tv/AdRequest;)V
    .registers 5
    .param p1, "request"    # Landroid/media/tv/AdRequest;

    .line 4096
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    .line 4097
    const-string v0, "TvInputManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4098
    return-void

    .line 4101
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mService:Landroid/media/tv/ITvInputManager;

    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    iget v2, p0, Landroid/media/tv/TvInputManager$Session;->mUserId:I

    invoke-interface {v0, v1, p1, v2}, Landroid/media/tv/ITvInputManager;->requestAd(Landroid/os/IBinder;Landroid/media/tv/AdRequest;I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_15} :catch_17

    .line 4104
    nop

    .line 4105
    return-void

    .line 4102
    :catch_17
    move-exception v0

    .line 4103
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist requestBroadcastInfo(Landroid/media/tv/BroadcastInfoRequest;)V
    .registers 5
    .param p1, "request"    # Landroid/media/tv/BroadcastInfoRequest;

    .line 4067
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    .line 4068
    const-string v0, "TvInputManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4069
    return-void

    .line 4072
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mService:Landroid/media/tv/ITvInputManager;

    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    iget v2, p0, Landroid/media/tv/TvInputManager$Session;->mUserId:I

    invoke-interface {v0, v1, p1, v2}, Landroid/media/tv/ITvInputManager;->requestBroadcastInfo(Landroid/os/IBinder;Landroid/media/tv/BroadcastInfoRequest;I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_15} :catch_17

    .line 4075
    nop

    .line 4076
    return-void

    .line 4073
    :catch_17
    move-exception v0

    .line 4074
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist resumePlayback()V
    .registers 4

    .line 3661
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    .line 3662
    const-string v0, "TvInputManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3663
    return-void

    .line 3666
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mService:Landroid/media/tv/ITvInputManager;

    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    iget v2, p0, Landroid/media/tv/TvInputManager$Session;->mUserId:I

    invoke-interface {v0, v1, v2}, Landroid/media/tv/ITvInputManager;->resumePlayback(Landroid/os/IBinder;I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_15} :catch_17

    .line 3669
    nop

    .line 3670
    return-void

    .line 3667
    :catch_17
    move-exception v0

    .line 3668
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist resumeRecording(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "params"    # Landroid/os/Bundle;

    .line 3779
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    .line 3780
    const-string v0, "TvInputManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3781
    return-void

    .line 3784
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mService:Landroid/media/tv/ITvInputManager;

    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    iget v2, p0, Landroid/media/tv/TvInputManager$Session;->mUserId:I

    invoke-interface {v0, v1, p1, v2}, Landroid/media/tv/ITvInputManager;->resumeRecording(Landroid/os/IBinder;Landroid/os/Bundle;I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_15} :catch_17

    .line 3787
    nop

    .line 3788
    return-void

    .line 3785
    :catch_17
    move-exception v0

    .line 3786
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist selectAudioPresentation(II)V
    .registers 7
    .param p1, "presentationId"    # I
    .param p2, "programId"    # I

    .line 3228
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mMetadataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3229
    const/4 v1, -0x1

    if-eq p1, v1, :cond_28

    :try_start_6
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mAudioPresentations:Ljava/util/List;

    .line 3230
    invoke-direct {p0, v1, p1}, Landroid/media/tv/TvInputManager$Session;->containsAudioPresentation(Ljava/util/List;I)Z

    move-result v1

    if-nez v1, :cond_28

    .line 3231
    const-string v1, "TvInputManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid audio presentation id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3232
    monitor-exit v0

    return-void

    .line 3234
    :cond_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_6 .. :try_end_29} :catchall_46

    .line 3235
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_35

    .line 3236
    const-string v0, "TvInputManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3237
    return-void

    .line 3240
    :cond_35
    :try_start_35
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mService:Landroid/media/tv/ITvInputManager;

    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    iget v2, p0, Landroid/media/tv/TvInputManager$Session;->mUserId:I

    invoke-interface {v0, v1, p1, p2, v2}, Landroid/media/tv/ITvInputManager;->selectAudioPresentation(Landroid/os/IBinder;III)V
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_3e} :catch_40

    .line 3243
    nop

    .line 3244
    return-void

    .line 3241
    :catch_40
    move-exception v0

    .line 3242
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 3234
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_46
    move-exception v1

    :try_start_47
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_46

    throw v1
.end method

.method public greylist-max-o selectTrack(ILjava/lang/String;)V
    .registers 7
    .param p1, "type"    # I
    .param p2, "trackId"    # Ljava/lang/String;

    .line 3344
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mMetadataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3345
    if-nez p1, :cond_29

    .line 3346
    if-eqz p2, :cond_77

    :try_start_7
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mAudioTracks:Ljava/util/List;

    invoke-direct {p0, v1, p2}, Landroid/media/tv/TvInputManager$Session;->containsTrack(Ljava/util/List;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_77

    .line 3347
    const-string v1, "TvInputManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid audio trackId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3348
    monitor-exit v0

    return-void

    .line 3350
    :cond_29
    const/4 v1, 0x1

    if-ne p1, v1, :cond_50

    .line 3351
    if-eqz p2, :cond_77

    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mVideoTracks:Ljava/util/List;

    invoke-direct {p0, v1, p2}, Landroid/media/tv/TvInputManager$Session;->containsTrack(Ljava/util/List;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_77

    .line 3352
    const-string v1, "TvInputManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid video trackId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3353
    monitor-exit v0

    return-void

    .line 3355
    :cond_50
    const/4 v1, 0x2

    if-ne p1, v1, :cond_97

    .line 3356
    if-eqz p2, :cond_77

    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mSubtitleTracks:Ljava/util/List;

    invoke-direct {p0, v1, p2}, Landroid/media/tv/TvInputManager$Session;->containsTrack(Ljava/util/List;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_77

    .line 3357
    const-string v1, "TvInputManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid subtitle trackId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3358
    monitor-exit v0

    return-void

    .line 3363
    :cond_77
    monitor-exit v0
    :try_end_78
    .catchall {:try_start_7 .. :try_end_78} :catchall_95

    .line 3364
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_84

    .line 3365
    const-string v0, "TvInputManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3366
    return-void

    .line 3369
    :cond_84
    :try_start_84
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mService:Landroid/media/tv/ITvInputManager;

    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    iget v2, p0, Landroid/media/tv/TvInputManager$Session;->mUserId:I

    invoke-interface {v0, v1, p1, p2, v2}, Landroid/media/tv/ITvInputManager;->selectTrack(Landroid/os/IBinder;ILjava/lang/String;I)V
    :try_end_8d
    .catch Landroid/os/RemoteException; {:try_start_84 .. :try_end_8d} :catch_8f

    .line 3372
    nop

    .line 3373
    return-void

    .line 3370
    :catch_8f
    move-exception v0

    .line 3371
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 3363
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_95
    move-exception v1

    goto :goto_b0

    .line 3361
    :cond_97
    :try_start_97
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/tv/TvInputManager$Session;
    .end local p1    # "type":I
    .end local p2    # "trackId":Ljava/lang/String;
    throw v1

    .line 3363
    .restart local p0    # "this":Landroid/media/tv/TvInputManager$Session;
    .restart local p1    # "type":I
    .restart local p2    # "trackId":Ljava/lang/String;
    :goto_b0
    monitor-exit v0
    :try_end_b1
    .catchall {:try_start_97 .. :try_end_b1} :catchall_95

    throw v1
.end method

.method public greylist-max-o sendAppPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .line 3800
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    .line 3801
    const-string v0, "TvInputManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3802
    return-void

    .line 3805
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mService:Landroid/media/tv/ITvInputManager;

    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    iget v2, p0, Landroid/media/tv/TvInputManager$Session;->mUserId:I

    invoke-interface {v0, v1, p1, p2, v2}, Landroid/media/tv/ITvInputManager;->sendAppPrivateCommand(Landroid/os/IBinder;Ljava/lang/String;Landroid/os/Bundle;I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_15} :catch_17

    .line 3808
    nop

    .line 3809
    return-void

    .line 3806
    :catch_17
    move-exception v0

    .line 3807
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setAdSession(Landroid/media/tv/ad/TvAdManager$Session;)V
    .registers 2
    .param p1, "adSession"    # Landroid/media/tv/ad/TvAdManager$Session;

    .line 3065
    iput-object p1, p0, Landroid/media/tv/TvInputManager$Session;->mAdSession:Landroid/media/tv/ad/TvAdManager$Session;

    .line 3066
    return-void
.end method

.method public greylist-max-o setCaptionEnabled(Z)V
    .registers 5
    .param p1, "enabled"    # Z

    .line 3209
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    .line 3210
    const-string v0, "TvInputManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3211
    return-void

    .line 3214
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mService:Landroid/media/tv/ITvInputManager;

    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    iget v2, p0, Landroid/media/tv/TvInputManager$Session;->mUserId:I

    invoke-interface {v0, v1, p1, v2}, Landroid/media/tv/ITvInputManager;->setCaptionEnabled(Landroid/os/IBinder;ZI)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_15} :catch_17

    .line 3217
    nop

    .line 3218
    return-void

    .line 3215
    :catch_17
    move-exception v0

    .line 3216
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setInteractiveAppNotificationEnabled(Z)V
    .registers 5
    .param p1, "enabled"    # Z

    .line 3443
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    .line 3444
    const-string v0, "TvInputManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3445
    return-void

    .line 3448
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mService:Landroid/media/tv/ITvInputManager;

    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    iget v2, p0, Landroid/media/tv/TvInputManager$Session;->mUserId:I

    invoke-interface {v0, v1, p1, v2}, Landroid/media/tv/ITvInputManager;->setInteractiveAppNotificationEnabled(Landroid/os/IBinder;ZI)V

    .line 3449
    iput-boolean p1, p0, Landroid/media/tv/TvInputManager$Session;->mIAppNotificationEnabled:Z
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_17} :catch_19

    .line 3452
    nop

    .line 3453
    return-void

    .line 3450
    :catch_19
    move-exception v0

    .line 3451
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setInteractiveAppSession(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;)V
    .registers 2
    .param p1, "iAppSession"    # Landroid/media/tv/interactive/TvInteractiveAppManager$Session;

    .line 3057
    iput-object p1, p0, Landroid/media/tv/TvInputManager$Session;->mIAppSession:Landroid/media/tv/interactive/TvInteractiveAppManager$Session;

    .line 3058
    return-void
.end method

.method greylist-max-o setMain()V
    .registers 4

    .line 3092
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    .line 3093
    const-string v0, "TvInputManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3094
    return-void

    .line 3097
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mService:Landroid/media/tv/ITvInputManager;

    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    iget v2, p0, Landroid/media/tv/TvInputManager$Session;->mUserId:I

    invoke-interface {v0, v1, v2}, Landroid/media/tv/ITvInputManager;->setMainSession(Landroid/os/IBinder;I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_15} :catch_17

    .line 3100
    nop

    .line 3101
    return-void

    .line 3098
    :catch_17
    move-exception v0

    .line 3099
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o setStreamVolume(F)V
    .registers 5
    .param p1, "volume"    # F

    .line 3148
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    .line 3149
    const-string v0, "TvInputManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3150
    return-void

    .line 3153
    :cond_c
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_22

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_22

    .line 3156
    :try_start_17
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mService:Landroid/media/tv/ITvInputManager;

    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    iget v2, p0, Landroid/media/tv/TvInputManager$Session;->mUserId:I

    invoke-interface {v0, v1, p1, v2}, Landroid/media/tv/ITvInputManager;->setVolume(Landroid/os/IBinder;FI)V

    .line 3159
    nop

    .line 3160
    return-void

    .line 3154
    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "volume should be between 0.0f and 1.0f"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/tv/TvInputManager$Session;
    .end local p1    # "volume":F
    throw v0
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_2a} :catch_2a

    .line 3157
    .restart local p0    # "this":Landroid/media/tv/TvInputManager$Session;
    .restart local p1    # "volume":F
    :catch_2a
    move-exception v0

    .line 3158
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o setSurface(Landroid/view/Surface;)V
    .registers 5
    .param p1, "surface"    # Landroid/view/Surface;

    .line 3109
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    .line 3110
    const-string v0, "TvInputManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3111
    return-void

    .line 3115
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mService:Landroid/media/tv/ITvInputManager;

    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    iget v2, p0, Landroid/media/tv/TvInputManager$Session;->mUserId:I

    invoke-interface {v0, v1, p1, v2}, Landroid/media/tv/ITvInputManager;->setSurface(Landroid/os/IBinder;Landroid/view/Surface;I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_15} :catch_17

    .line 3118
    nop

    .line 3119
    return-void

    .line 3116
    :catch_17
    move-exception v0

    .line 3117
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setTvMessageEnabled(IZ)V
    .registers 6
    .param p1, "type"    # I
    .param p2, "enabled"    # Z

    .line 3700
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mService:Landroid/media/tv/ITvInputManager;

    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    iget v2, p0, Landroid/media/tv/TvInputManager$Session;->mUserId:I

    invoke-interface {v0, v1, p1, p2, v2}, Landroid/media/tv/ITvInputManager;->setTvMessageEnabled(Landroid/os/IBinder;IZI)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 3703
    nop

    .line 3704
    return-void

    .line 3701
    :catch_b
    move-exception v0

    .line 3702
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist setVideoFrozen(Z)V
    .registers 5
    .param p1, "isFrozen"    # Z

    .line 3673
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    .line 3674
    const-string v0, "TvInputManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3675
    return-void

    .line 3678
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mService:Landroid/media/tv/ITvInputManager;

    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    iget v2, p0, Landroid/media/tv/TvInputManager$Session;->mUserId:I

    invoke-interface {v0, v1, p1, v2}, Landroid/media/tv/ITvInputManager;->setVideoFrozen(Landroid/os/IBinder;ZI)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_15} :catch_17

    .line 3681
    nop

    .line 3682
    return-void

    .line 3679
    :catch_17
    move-exception v0

    .line 3680
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method greylist-max-o startRecording(Landroid/net/Uri;)V
    .registers 3
    .param p1, "programUri"    # Landroid/net/Uri;

    .line 3713
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/media/tv/TvInputManager$Session;->startRecording(Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 3714
    return-void
.end method

.method blacklist startRecording(Landroid/net/Uri;Landroid/os/Bundle;)V
    .registers 6
    .param p1, "programUri"    # Landroid/net/Uri;
    .param p2, "params"    # Landroid/os/Bundle;

    .line 3724
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    .line 3725
    const-string v0, "TvInputManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3726
    return-void

    .line 3729
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mService:Landroid/media/tv/ITvInputManager;

    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    iget v2, p0, Landroid/media/tv/TvInputManager$Session;->mUserId:I

    invoke-interface {v0, v1, p1, p2, v2}, Landroid/media/tv/ITvInputManager;->startRecording(Landroid/os/IBinder;Landroid/net/Uri;Landroid/os/Bundle;I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_15} :catch_17

    .line 3732
    nop

    .line 3733
    return-void

    .line 3730
    :catch_17
    move-exception v0

    .line 3731
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist stopPlayback(I)V
    .registers 5
    .param p1, "mode"    # I

    .line 3649
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    .line 3650
    const-string v0, "TvInputManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3651
    return-void

    .line 3654
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mService:Landroid/media/tv/ITvInputManager;

    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    iget v2, p0, Landroid/media/tv/TvInputManager$Session;->mUserId:I

    invoke-interface {v0, v1, p1, v2}, Landroid/media/tv/ITvInputManager;->stopPlayback(Landroid/os/IBinder;II)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_15} :catch_17

    .line 3657
    nop

    .line 3658
    return-void

    .line 3655
    :catch_17
    move-exception v0

    .line 3656
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method greylist-max-o stopRecording()V
    .registers 4

    .line 3739
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    .line 3740
    const-string v0, "TvInputManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3741
    return-void

    .line 3744
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mService:Landroid/media/tv/ITvInputManager;

    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    iget v2, p0, Landroid/media/tv/TvInputManager$Session;->mUserId:I

    invoke-interface {v0, v1, v2}, Landroid/media/tv/ITvInputManager;->stopRecording(Landroid/os/IBinder;I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_15} :catch_17

    .line 3747
    nop

    .line 3748
    return-void

    .line 3745
    :catch_17
    move-exception v0

    .line 3746
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method greylist-max-o timeShiftEnablePositionTracking(Z)V
    .registers 5
    .param p1, "enable"    # Z

    .line 3637
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    .line 3638
    const-string v0, "TvInputManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3639
    return-void

    .line 3642
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mService:Landroid/media/tv/ITvInputManager;

    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    iget v2, p0, Landroid/media/tv/TvInputManager$Session;->mUserId:I

    invoke-interface {v0, v1, p1, v2}, Landroid/media/tv/ITvInputManager;->timeShiftEnablePositionTracking(Landroid/os/IBinder;ZI)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_15} :catch_17

    .line 3645
    nop

    .line 3646
    return-void

    .line 3643
    :catch_17
    move-exception v0

    .line 3644
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method greylist-max-o timeShiftPause()V
    .registers 4

    .line 3546
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    .line 3547
    const-string v0, "TvInputManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3548
    return-void

    .line 3551
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mService:Landroid/media/tv/ITvInputManager;

    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    iget v2, p0, Landroid/media/tv/TvInputManager$Session;->mUserId:I

    invoke-interface {v0, v1, v2}, Landroid/media/tv/ITvInputManager;->timeShiftPause(Landroid/os/IBinder;I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_15} :catch_17

    .line 3554
    nop

    .line 3555
    return-void

    .line 3552
    :catch_17
    move-exception v0

    .line 3553
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method greylist-max-o timeShiftPlay(Landroid/net/Uri;)V
    .registers 5
    .param p1, "recordedProgramUri"    # Landroid/net/Uri;

    .line 3531
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    .line 3532
    const-string v0, "TvInputManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3533
    return-void

    .line 3536
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mService:Landroid/media/tv/ITvInputManager;

    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    iget v2, p0, Landroid/media/tv/TvInputManager$Session;->mUserId:I

    invoke-interface {v0, v1, p1, v2}, Landroid/media/tv/ITvInputManager;->timeShiftPlay(Landroid/os/IBinder;Landroid/net/Uri;I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_15} :catch_17

    .line 3539
    nop

    .line 3540
    return-void

    .line 3537
    :catch_17
    move-exception v0

    .line 3538
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method greylist-max-o timeShiftResume()V
    .registers 4

    .line 3561
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    .line 3562
    const-string v0, "TvInputManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3563
    return-void

    .line 3566
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mService:Landroid/media/tv/ITvInputManager;

    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    iget v2, p0, Landroid/media/tv/TvInputManager$Session;->mUserId:I

    invoke-interface {v0, v1, v2}, Landroid/media/tv/ITvInputManager;->timeShiftResume(Landroid/os/IBinder;I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_15} :catch_17

    .line 3569
    nop

    .line 3570
    return-void

    .line 3567
    :catch_17
    move-exception v0

    .line 3568
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method greylist-max-o timeShiftSeekTo(J)V
    .registers 6
    .param p1, "timeMs"    # J

    .line 3582
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    .line 3583
    const-string v0, "TvInputManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3584
    return-void

    .line 3587
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mService:Landroid/media/tv/ITvInputManager;

    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    iget v2, p0, Landroid/media/tv/TvInputManager$Session;->mUserId:I

    invoke-interface {v0, v1, p1, p2, v2}, Landroid/media/tv/ITvInputManager;->timeShiftSeekTo(Landroid/os/IBinder;JI)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_15} :catch_17

    .line 3590
    nop

    .line 3591
    return-void

    .line 3588
    :catch_17
    move-exception v0

    .line 3589
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist timeShiftSetMode(I)V
    .registers 5
    .param p1, "mode"    # I

    .line 3620
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    .line 3621
    const-string v0, "TvInputManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3622
    return-void

    .line 3625
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mService:Landroid/media/tv/ITvInputManager;

    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    iget v2, p0, Landroid/media/tv/TvInputManager$Session;->mUserId:I

    invoke-interface {v0, v1, p1, v2}, Landroid/media/tv/ITvInputManager;->timeShiftSetMode(Landroid/os/IBinder;II)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_15} :catch_17

    .line 3628
    nop

    .line 3629
    return-void

    .line 3626
    :catch_17
    move-exception v0

    .line 3627
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method greylist-max-o timeShiftSetPlaybackParams(Landroid/media/PlaybackParams;)V
    .registers 5
    .param p1, "params"    # Landroid/media/PlaybackParams;

    .line 3599
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    .line 3600
    const-string v0, "TvInputManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3601
    return-void

    .line 3604
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mService:Landroid/media/tv/ITvInputManager;

    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    iget v2, p0, Landroid/media/tv/TvInputManager$Session;->mUserId:I

    invoke-interface {v0, v1, p1, v2}, Landroid/media/tv/ITvInputManager;->timeShiftSetPlaybackParams(Landroid/os/IBinder;Landroid/media/PlaybackParams;I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_15} :catch_17

    .line 3607
    nop

    .line 3608
    return-void

    .line 3605
    :catch_17
    move-exception v0

    .line 3606
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o tune(Landroid/net/Uri;)V
    .registers 3
    .param p1, "channelUri"    # Landroid/net/Uri;

    .line 3168
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/media/tv/TvInputManager$Session;->tune(Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 3169
    return-void
.end method

.method public greylist-max-o tune(Landroid/net/Uri;Landroid/os/Bundle;)V
    .registers 6
    .param p1, "channelUri"    # Landroid/net/Uri;
    .param p2, "params"    # Landroid/os/Bundle;

    .line 3178
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3179
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_f

    .line 3180
    const-string v0, "TvInputManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3181
    return-void

    .line 3183
    :cond_f
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mMetadataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3184
    :try_start_12
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mAudioPresentations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 3185
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mAudioTracks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 3186
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mVideoTracks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 3187
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mSubtitleTracks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 3188
    const/4 v1, -0x1

    iput v1, p0, Landroid/media/tv/TvInputManager$Session;->mSelectedAudioProgramId:I

    .line 3189
    iput v1, p0, Landroid/media/tv/TvInputManager$Session;->mSelectedAudioPresentationId:I

    .line 3190
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mSelectedAudioTrackId:Ljava/lang/String;

    .line 3191
    iput-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mSelectedVideoTrackId:Ljava/lang/String;

    .line 3192
    iput-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mSelectedSubtitleTrackId:Ljava/lang/String;

    .line 3193
    const/4 v1, 0x0

    iput v1, p0, Landroid/media/tv/TvInputManager$Session;->mVideoWidth:I

    .line 3194
    iput v1, p0, Landroid/media/tv/TvInputManager$Session;->mVideoHeight:I

    .line 3195
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_12 .. :try_end_38} :catchall_49

    .line 3197
    :try_start_38
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mService:Landroid/media/tv/ITvInputManager;

    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    iget v2, p0, Landroid/media/tv/TvInputManager$Session;->mUserId:I

    invoke-interface {v0, v1, p1, p2, v2}, Landroid/media/tv/ITvInputManager;->tune(Landroid/os/IBinder;Landroid/net/Uri;Landroid/os/Bundle;I)V
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_41} :catch_43

    .line 3200
    nop

    .line 3201
    return-void

    .line 3198
    :catch_43
    move-exception v0

    .line 3199
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 3195
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_49
    move-exception v1

    :try_start_4a
    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    throw v1
.end method

.method greylist-max-o unblockContent(Landroid/media/tv/TvContentRating;)V
    .registers 6
    .param p1, "unblockedRating"    # Landroid/media/tv/TvContentRating;

    .line 3876
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3877
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_f

    .line 3878
    const-string v0, "TvInputManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3879
    return-void

    .line 3882
    :cond_f
    :try_start_f
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mService:Landroid/media/tv/ITvInputManager;

    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mToken:Landroid/os/IBinder;

    invoke-virtual {p1}, Landroid/media/tv/TvContentRating;->flattenToString()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Landroid/media/tv/TvInputManager$Session;->mUserId:I

    invoke-interface {v0, v1, v2, v3}, Landroid/media/tv/ITvInputManager;->unblockContent(Landroid/os/IBinder;Ljava/lang/String;I)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_1c} :catch_1e

    .line 3885
    nop

    .line 3886
    return-void

    .line 3883
    :catch_1e
    move-exception v0

    .line 3884
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist updateAudioPresentationSelection(II)Z
    .registers 5
    .param p1, "presentationId"    # I
    .param p2, "programId"    # I

    .line 3322
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mMetadataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3323
    :try_start_3
    iget v1, p0, Landroid/media/tv/TvInputManager$Session;->mSelectedAudioProgramId:I

    if-ne p2, v1, :cond_f

    iget v1, p0, Landroid/media/tv/TvInputManager$Session;->mSelectedAudioPresentationId:I

    if-eq p1, v1, :cond_c

    goto :goto_f

    .line 3329
    :cond_c
    monitor-exit v0

    .line 3330
    const/4 v0, 0x0

    return v0

    .line 3325
    :cond_f
    :goto_f
    iput p1, p0, Landroid/media/tv/TvInputManager$Session;->mSelectedAudioPresentationId:I

    .line 3326
    iput p2, p0, Landroid/media/tv/TvInputManager$Session;->mSelectedAudioProgramId:I

    .line 3327
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 3329
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method blacklist updateAudioPresentations(Ljava/util/List;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/AudioPresentation;",
            ">;)Z"
        }
    .end annotation

    .line 3307
    .local p1, "audioPresentations":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioPresentation;>;"
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mMetadataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3308
    :try_start_3
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mAudioPresentations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 3309
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioPresentation;

    .line 3310
    .local v2, "presentation":Landroid/media/AudioPresentation;
    iget-object v3, p0, Landroid/media/tv/TvInputManager$Session;->mAudioPresentations:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3311
    nop

    .end local v2    # "presentation":Landroid/media/AudioPresentation;
    goto :goto_c

    .line 3312
    :cond_1f
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mAudioPresentations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_29

    const/4 v1, 0x1

    goto :goto_2a

    :cond_29
    const/4 v1, 0x0

    :goto_2a
    monitor-exit v0

    return v1

    .line 3313
    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method greylist-max-o updateTrackSelection(ILjava/lang/String;)Z
    .registers 6
    .param p1, "type"    # I
    .param p2, "trackId"    # Ljava/lang/String;

    .line 3483
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mMetadataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3484
    const/4 v1, 0x1

    if-nez p1, :cond_14

    :try_start_6
    iget-object v2, p0, Landroid/media/tv/TvInputManager$Session;->mSelectedAudioTrackId:Ljava/lang/String;

    .line 3485
    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 3486
    iput-object p2, p0, Landroid/media/tv/TvInputManager$Session;->mSelectedAudioTrackId:Ljava/lang/String;

    .line 3487
    monitor-exit v0

    return v1

    .line 3497
    :catchall_12
    move-exception v1

    goto :goto_34

    .line 3488
    :cond_14
    if-ne p1, v1, :cond_22

    iget-object v2, p0, Landroid/media/tv/TvInputManager$Session;->mSelectedVideoTrackId:Ljava/lang/String;

    .line 3489
    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_22

    .line 3490
    iput-object p2, p0, Landroid/media/tv/TvInputManager$Session;->mSelectedVideoTrackId:Ljava/lang/String;

    .line 3491
    monitor-exit v0

    return v1

    .line 3492
    :cond_22
    const/4 v2, 0x2

    if-ne p1, v2, :cond_31

    iget-object v2, p0, Landroid/media/tv/TvInputManager$Session;->mSelectedSubtitleTrackId:Ljava/lang/String;

    .line 3493
    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_31

    .line 3494
    iput-object p2, p0, Landroid/media/tv/TvInputManager$Session;->mSelectedSubtitleTrackId:Ljava/lang/String;

    .line 3495
    monitor-exit v0

    return v1

    .line 3497
    :cond_31
    monitor-exit v0

    .line 3498
    const/4 v0, 0x0

    return v0

    .line 3497
    :goto_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_6 .. :try_end_35} :catchall_12

    throw v1
.end method

.method greylist-max-o updateTracks(Ljava/util/List;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/tv/TvTrackInfo;",
            ">;)Z"
        }
    .end annotation

    .line 3460
    .local p1, "tracks":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvTrackInfo;>;"
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session;->mMetadataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3461
    :try_start_3
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mAudioTracks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 3462
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mVideoTracks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 3463
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mSubtitleTracks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 3464
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_48

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/tv/TvTrackInfo;

    .line 3465
    .local v2, "track":Landroid/media/tv/TvTrackInfo;
    invoke-virtual {v2}, Landroid/media/tv/TvTrackInfo;->getType()I

    move-result v4

    if-nez v4, :cond_2f

    .line 3466
    iget-object v3, p0, Landroid/media/tv/TvInputManager$Session;->mAudioTracks:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_47

    .line 3467
    :cond_2f
    invoke-virtual {v2}, Landroid/media/tv/TvTrackInfo;->getType()I

    move-result v4

    if-ne v4, v3, :cond_3b

    .line 3468
    iget-object v3, p0, Landroid/media/tv/TvInputManager$Session;->mVideoTracks:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_47

    .line 3469
    :cond_3b
    invoke-virtual {v2}, Landroid/media/tv/TvTrackInfo;->getType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_47

    .line 3470
    iget-object v3, p0, Landroid/media/tv/TvInputManager$Session;->mSubtitleTracks:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3472
    .end local v2    # "track":Landroid/media/tv/TvTrackInfo;
    :cond_47
    :goto_47
    goto :goto_16

    .line 3473
    :cond_48
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mAudioTracks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_63

    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mVideoTracks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_63

    iget-object v1, p0, Landroid/media/tv/TvInputManager$Session;->mSubtitleTracks:Ljava/util/List;

    .line 3474
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_61

    goto :goto_63

    :cond_61
    const/4 v3, 0x0

    goto :goto_64

    :cond_63
    :goto_63
    nop

    :goto_64
    monitor-exit v0

    .line 3473
    return v3

    .line 3475
    :catchall_66
    move-exception v1

    monitor-exit v0
    :try_end_68
    .catchall {:try_start_3 .. :try_end_68} :catchall_66

    throw v1
.end method
