.class public Landroid/view/ScrollCaptureConnection;
.super Landroid/view/IScrollCaptureConnection$Stub;
.source "ScrollCaptureConnection.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ScrollCaptureConnection$SafeCallback;,
        Landroid/view/ScrollCaptureConnection$ConsumerCallback;,
        Landroid/view/ScrollCaptureConnection$RunnableCallback;
    }
.end annotation


# static fields
.field private static final blacklist END_CAPTURE:Ljava/lang/String; = "endCapture"

.field private static final blacklist REQUEST_IMAGE:Ljava/lang/String; = "requestImage"

.field private static final blacklist SESSION:Ljava/lang/String; = "Session"

.field private static final blacklist START_CAPTURE:Ljava/lang/String; = "startCapture"

.field private static final blacklist TAG:Ljava/lang/String; = "ScrollCaptureConnection"

.field private static final blacklist TRACE_TRACK:Ljava/lang/String; = "Scroll Capture"


# instance fields
.field private volatile blacklist mActive:Z

.field private blacklist mCancellation:Landroid/os/CancellationSignal;

.field private final blacklist mCloseGuard:Landroid/util/CloseGuard;

.field private volatile blacklist mConnected:Z

.field private blacklist mLocal:Landroid/view/ScrollCaptureCallback;

.field private final blacklist mLock:Ljava/lang/Object;

.field private final blacklist mPositionInWindow:Landroid/graphics/Point;

.field private blacklist mRemote:Landroid/view/IScrollCaptureCallbacks;

.field private final blacklist mScrollBounds:Landroid/graphics/Rect;

.field private blacklist mSession:Landroid/view/ScrollCaptureSession;

.field private blacklist mTraceId:I

.field private final blacklist mUiThread:Ljava/util/concurrent/Executor;


# direct methods
.method public static synthetic blacklist $r8$lambda$7GvyOebdotLqFd8WDXA06lhKMGU(Landroid/view/ScrollCaptureConnection;)V
    .registers 1

    invoke-direct {p0}, Landroid/view/ScrollCaptureConnection;->onStartCaptureCompleted()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$FSRdHbuuUddKAaXvXtOUuNCBSdM(Landroid/view/ScrollCaptureConnection;Ljava/lang/Runnable;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/ScrollCaptureConnection;->lambda$endCapture$2(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$kfVYrIYw_PJpJs1N9YAU-hCOJTw(Landroid/view/ScrollCaptureConnection;Ljava/lang/Runnable;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/ScrollCaptureConnection;->lambda$startCapture$0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$kuMkmaIC1MAp0EsDL5rwGRcWAbU(Landroid/view/ScrollCaptureConnection;Landroid/graphics/Rect;Ljava/util/function/Consumer;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/view/ScrollCaptureConnection;->lambda$requestImage$1(Landroid/graphics/Rect;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$tnNy_X76YDTmAU4wlxOZbTEQIj8(Landroid/view/ScrollCaptureConnection;)V
    .registers 1

    invoke-direct {p0}, Landroid/view/ScrollCaptureConnection;->onEndCaptureCompleted()V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/view/ScrollCaptureTarget;)V
    .registers 5
    .param p1, "uiThread"    # Ljava/util/concurrent/Executor;
    .param p2, "selectedTarget"    # Landroid/view/ScrollCaptureTarget;

    .line 91
    invoke-direct {p0}, Landroid/view/IScrollCaptureConnection$Stub;-><init>()V

    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/ScrollCaptureConnection;->mLock:Ljava/lang/Object;

    .line 66
    new-instance v0, Landroid/util/CloseGuard;

    invoke-direct {v0}, Landroid/util/CloseGuard;-><init>()V

    iput-object v0, p0, Landroid/view/ScrollCaptureConnection;->mCloseGuard:Landroid/util/CloseGuard;

    .line 92
    const-string v0, "<uiThread> must non-null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Landroid/view/ScrollCaptureConnection;->mUiThread:Ljava/util/concurrent/Executor;

    .line 93
    const-string v0, "<selectedTarget> must non-null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 94
    invoke-virtual {p2}, Landroid/view/ScrollCaptureTarget;->getScrollBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Rect;->copyOrNull(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    const-string/jumbo v1, "target.getScrollBounds() must be non-null to construct a client"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/view/ScrollCaptureConnection;->mScrollBounds:Landroid/graphics/Rect;

    .line 96
    invoke-virtual {p2}, Landroid/view/ScrollCaptureTarget;->getCallback()Landroid/view/ScrollCaptureCallback;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ScrollCaptureConnection;->mLocal:Landroid/view/ScrollCaptureCallback;

    .line 97
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p2}, Landroid/view/ScrollCaptureTarget;->getPositionInWindow()Landroid/graphics/Point;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    iput-object v0, p0, Landroid/view/ScrollCaptureConnection;->mPositionInWindow:Landroid/graphics/Point;

    .line 98
    return-void
.end method

.method private blacklist cancelPendingAction()V
    .registers 5

    .line 261
    iget-object v0, p0, Landroid/view/ScrollCaptureConnection;->mCancellation:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_1c

    .line 262
    const-string v0, "Scroll Capture"

    const-string v1, "CancellationSignal.cancel"

    const-wide/16 v2, 0x2

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->instantForTrack(JLjava/lang/String;Ljava/lang/String;)V

    .line 263
    const-string v0, "ScrollCaptureConnection"

    const-string v1, "cancelling pending operation."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    iget-object v0, p0, Landroid/view/ScrollCaptureConnection;->mCancellation:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    .line 265
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ScrollCaptureConnection;->mCancellation:Landroid/os/CancellationSignal;

    .line 267
    :cond_1c
    return-void
.end method

.method private blacklist checkActive()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 280
    iget-object v0, p0, Landroid/view/ScrollCaptureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 281
    :try_start_3
    iget-boolean v1, p0, Landroid/view/ScrollCaptureConnection;->mActive:Z

    if-eqz v1, :cond_9

    .line 284
    monitor-exit v0

    .line 285
    return-void

    .line 282
    :cond_9
    new-instance v1, Landroid/os/RemoteException;

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Not started!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/view/ScrollCaptureConnection;
    throw v1

    .line 284
    .restart local p0    # "this":Landroid/view/ScrollCaptureConnection;
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method static synthetic blacklist lambda$close$3()V
    .registers 0

    .line 242
    return-void
.end method

.method static synthetic blacklist lambda$close$4(Landroid/view/ScrollCaptureCallback;)V
    .registers 2
    .param p0, "callback"    # Landroid/view/ScrollCaptureCallback;

    .line 241
    if-eqz p0, :cond_a

    .line 242
    new-instance v0, Landroid/view/ScrollCaptureConnection$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Landroid/view/ScrollCaptureConnection$$ExternalSyntheticLambda7;-><init>()V

    invoke-interface {p0, v0}, Landroid/view/ScrollCaptureCallback;->onScrollCaptureEnd(Ljava/lang/Runnable;)V

    .line 244
    :cond_a
    return-void
.end method

.method private synthetic blacklist lambda$endCapture$2(Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "listener"    # Ljava/lang/Runnable;

    .line 200
    iget-object v0, p0, Landroid/view/ScrollCaptureConnection;->mLocal:Landroid/view/ScrollCaptureCallback;

    if-eqz v0, :cond_9

    .line 201
    iget-object v0, p0, Landroid/view/ScrollCaptureConnection;->mLocal:Landroid/view/ScrollCaptureCallback;

    invoke-interface {v0, p1}, Landroid/view/ScrollCaptureCallback;->onScrollCaptureEnd(Ljava/lang/Runnable;)V

    .line 203
    :cond_9
    return-void
.end method

.method private synthetic blacklist lambda$requestImage$1(Landroid/graphics/Rect;Ljava/util/function/Consumer;)V
    .registers 7
    .param p1, "requestRect"    # Landroid/graphics/Rect;
    .param p2, "listener"    # Ljava/util/function/Consumer;

    .line 161
    iget-object v0, p0, Landroid/view/ScrollCaptureConnection;->mLocal:Landroid/view/ScrollCaptureCallback;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Landroid/view/ScrollCaptureConnection;->mSession:Landroid/view/ScrollCaptureSession;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Landroid/view/ScrollCaptureConnection;->mCancellation:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_1a

    .line 162
    iget-object v0, p0, Landroid/view/ScrollCaptureConnection;->mLocal:Landroid/view/ScrollCaptureCallback;

    iget-object v1, p0, Landroid/view/ScrollCaptureConnection;->mSession:Landroid/view/ScrollCaptureSession;

    iget-object v2, p0, Landroid/view/ScrollCaptureConnection;->mCancellation:Landroid/os/CancellationSignal;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-interface {v0, v1, v2, v3, p2}, Landroid/view/ScrollCaptureCallback;->onScrollCaptureImageRequest(Landroid/view/ScrollCaptureSession;Landroid/os/CancellationSignal;Landroid/graphics/Rect;Ljava/util/function/Consumer;)V

    .line 165
    :cond_1a
    return-void
.end method

.method private synthetic blacklist lambda$startCapture$0(Ljava/lang/Runnable;)V
    .registers 5
    .param p1, "listener"    # Ljava/lang/Runnable;

    .line 124
    iget-object v0, p0, Landroid/view/ScrollCaptureConnection;->mLocal:Landroid/view/ScrollCaptureCallback;

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/view/ScrollCaptureConnection;->mCancellation:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_11

    .line 125
    iget-object v0, p0, Landroid/view/ScrollCaptureConnection;->mLocal:Landroid/view/ScrollCaptureCallback;

    iget-object v1, p0, Landroid/view/ScrollCaptureConnection;->mSession:Landroid/view/ScrollCaptureSession;

    iget-object v2, p0, Landroid/view/ScrollCaptureConnection;->mCancellation:Landroid/os/CancellationSignal;

    invoke-interface {v0, v1, v2, p1}, Landroid/view/ScrollCaptureCallback;->onScrollCaptureStart(Landroid/view/ScrollCaptureSession;Landroid/os/CancellationSignal;Ljava/lang/Runnable;)V

    .line 127
    :cond_11
    return-void
.end method

.method private blacklist onEndCaptureCompleted()V
    .registers 5

    .line 209
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ScrollCaptureConnection;->mActive:Z

    .line 211
    const/4 v0, 0x0

    :try_start_4
    iget-object v1, p0, Landroid/view/ScrollCaptureConnection;->mRemote:Landroid/view/IScrollCaptureCallbacks;

    if-eqz v1, :cond_d

    .line 212
    iget-object v1, p0, Landroid/view/ScrollCaptureConnection;->mRemote:Landroid/view/IScrollCaptureCallbacks;

    invoke-interface {v1}, Landroid/view/IScrollCaptureCallbacks;->onCaptureEnded()V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_16
    .catchall {:try_start_4 .. :try_end_d} :catchall_14

    .line 217
    :cond_d
    nop

    :goto_e
    iput-object v0, p0, Landroid/view/ScrollCaptureConnection;->mCancellation:Landroid/os/CancellationSignal;

    .line 218
    invoke-virtual {p0}, Landroid/view/ScrollCaptureConnection;->close()V

    .line 219
    goto :goto_20

    .line 217
    :catchall_14
    move-exception v1

    goto :goto_2f

    .line 214
    :catch_16
    move-exception v1

    .line 215
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_17
    const-string v2, "ScrollCaptureConnection"

    const-string v3, "Caught exception confirming capture end!"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1e
    .catchall {:try_start_17 .. :try_end_1e} :catchall_14

    .line 217
    nop

    .end local v1    # "e":Landroid/os/RemoteException;
    goto :goto_e

    .line 220
    :goto_20
    iget v0, p0, Landroid/view/ScrollCaptureConnection;->mTraceId:I

    const-wide/16 v1, 0x2

    const-string v3, "Scroll Capture"

    invoke-static {v1, v2, v3, v0}, Landroid/os/Trace;->asyncTraceForTrackEnd(JLjava/lang/String;I)V

    .line 221
    iget v0, p0, Landroid/view/ScrollCaptureConnection;->mTraceId:I

    invoke-static {v1, v2, v3, v0}, Landroid/os/Trace;->asyncTraceForTrackEnd(JLjava/lang/String;I)V

    .line 222
    return-void

    .line 217
    :goto_2f
    iput-object v0, p0, Landroid/view/ScrollCaptureConnection;->mCancellation:Landroid/os/CancellationSignal;

    .line 218
    invoke-virtual {p0}, Landroid/view/ScrollCaptureConnection;->close()V

    .line 219
    throw v1
.end method

.method private blacklist onStartCaptureCompleted()V
    .registers 5

    .line 133
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ScrollCaptureConnection;->mActive:Z

    .line 135
    :try_start_3
    iget-object v0, p0, Landroid/view/ScrollCaptureConnection;->mRemote:Landroid/view/IScrollCaptureCallbacks;

    if-eqz v0, :cond_d

    .line 136
    iget-object v0, p0, Landroid/view/ScrollCaptureConnection;->mRemote:Landroid/view/IScrollCaptureCallbacks;

    invoke-interface {v0}, Landroid/view/IScrollCaptureCallbacks;->onCaptureStarted()V

    goto :goto_10

    .line 138
    :cond_d
    invoke-virtual {p0}, Landroid/view/ScrollCaptureConnection;->close()V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_10} :catch_11

    .line 143
    :goto_10
    goto :goto_1c

    .line 140
    :catch_11
    move-exception v0

    .line 141
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ScrollCaptureConnection"

    const-string v2, "Shutting down due to error: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 142
    invoke-virtual {p0}, Landroid/view/ScrollCaptureConnection;->close()V

    .line 144
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1c
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ScrollCaptureConnection;->mCancellation:Landroid/os/CancellationSignal;

    .line 145
    const-string v0, "Scroll Capture"

    iget v1, p0, Landroid/view/ScrollCaptureConnection;->mTraceId:I

    const-wide/16 v2, 0x2

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceForTrackEnd(JLjava/lang/String;I)V

    .line 146
    return-void
.end method


# virtual methods
.method public whitelist binderDied()V
    .registers 5

    .line 226
    const-string v0, "Scroll Capture"

    const-string v1, "binderDied"

    const-wide/16 v2, 0x2

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->instantForTrack(JLjava/lang/String;Ljava/lang/String;)V

    .line 227
    const-string v0, "ScrollCaptureConnection"

    const-string v1, "Controlling process just died."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    invoke-virtual {p0}, Landroid/view/ScrollCaptureConnection;->close()V

    .line 230
    return-void
.end method

.method public declared-synchronized blacklist close()V
    .registers 5

    monitor-enter p0

    .line 235
    :try_start_1
    const-string v0, "Scroll Capture"

    const-string v1, "close"

    const-wide/16 v2, 0x2

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->instantForTrack(JLjava/lang/String;Ljava/lang/String;)V

    .line 236
    iget-boolean v0, p0, Landroid/view/ScrollCaptureConnection;->mActive:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_27

    .line 237
    const-string v0, "ScrollCaptureConnection"

    const-string v2, "close(): capture session still active! Ending now."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    invoke-direct {p0}, Landroid/view/ScrollCaptureConnection;->cancelPendingAction()V

    .line 239
    iget-object v0, p0, Landroid/view/ScrollCaptureConnection;->mLocal:Landroid/view/ScrollCaptureCallback;

    .line 240
    .local v0, "callback":Landroid/view/ScrollCaptureCallback;
    iget-object v2, p0, Landroid/view/ScrollCaptureConnection;->mUiThread:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/view/ScrollCaptureConnection$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0}, Landroid/view/ScrollCaptureConnection$$ExternalSyntheticLambda0;-><init>(Landroid/view/ScrollCaptureCallback;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 245
    iput-boolean v1, p0, Landroid/view/ScrollCaptureConnection;->mActive:Z

    .line 247
    .end local v0    # "callback":Landroid/view/ScrollCaptureCallback;
    .end local p0    # "this":Landroid/view/ScrollCaptureConnection;
    :cond_27
    iget-object v0, p0, Landroid/view/ScrollCaptureConnection;->mRemote:Landroid/view/IScrollCaptureCallbacks;

    if-eqz v0, :cond_34

    .line 248
    iget-object v0, p0, Landroid/view/ScrollCaptureConnection;->mRemote:Landroid/view/IScrollCaptureCallbacks;

    invoke-interface {v0}, Landroid/view/IScrollCaptureCallbacks;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 250
    :cond_34
    iput-boolean v1, p0, Landroid/view/ScrollCaptureConnection;->mActive:Z

    .line 251
    iput-boolean v1, p0, Landroid/view/ScrollCaptureConnection;->mConnected:Z

    .line 252
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ScrollCaptureConnection;->mSession:Landroid/view/ScrollCaptureSession;

    .line 253
    iput-object v0, p0, Landroid/view/ScrollCaptureConnection;->mRemote:Landroid/view/IScrollCaptureCallbacks;

    .line 254
    iput-object v0, p0, Landroid/view/ScrollCaptureConnection;->mLocal:Landroid/view/ScrollCaptureCallback;

    .line 255
    iget-object v0, p0, Landroid/view/ScrollCaptureConnection;->mCloseGuard:Landroid/util/CloseGuard;

    invoke-virtual {v0}, Landroid/util/CloseGuard;->close()V

    .line 256
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 257
    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V
    :try_end_4a
    .catchall {:try_start_1 .. :try_end_4a} :catchall_4c

    .line 258
    monitor-exit p0

    return-void

    .line 234
    :catchall_4c
    move-exception v0

    :try_start_4d
    monitor-exit p0
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    throw v0
.end method

.method public blacklist endCapture()Landroid/os/ICancellationSignal;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 190
    const-string v0, "endCapture"

    iget v1, p0, Landroid/view/ScrollCaptureConnection;->mTraceId:I

    const-wide/16 v2, 0x2

    const-string v4, "Scroll Capture"

    invoke-static {v2, v3, v4, v0, v1}, Landroid/os/Trace;->asyncTraceForTrackBegin(JLjava/lang/String;Ljava/lang/String;I)V

    .line 191
    invoke-direct {p0}, Landroid/view/ScrollCaptureConnection;->checkActive()V

    .line 192
    invoke-direct {p0}, Landroid/view/ScrollCaptureConnection;->cancelPendingAction()V

    .line 193
    invoke-static {}, Landroid/os/CancellationSignal;->createTransport()Landroid/os/ICancellationSignal;

    move-result-object v0

    .line 194
    .local v0, "cancellation":Landroid/os/ICancellationSignal;
    invoke-static {v0}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object v1

    iput-object v1, p0, Landroid/view/ScrollCaptureConnection;->mCancellation:Landroid/os/CancellationSignal;

    .line 196
    iget-object v1, p0, Landroid/view/ScrollCaptureConnection;->mCancellation:Landroid/os/CancellationSignal;

    iget-object v2, p0, Landroid/view/ScrollCaptureConnection;->mUiThread:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/view/ScrollCaptureConnection$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Landroid/view/ScrollCaptureConnection$$ExternalSyntheticLambda1;-><init>(Landroid/view/ScrollCaptureConnection;)V

    .line 197
    invoke-static {v1, v2, v3}, Landroid/view/ScrollCaptureConnection$SafeCallback;->create(Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    .line 199
    .local v1, "listener":Ljava/lang/Runnable;
    iget-object v2, p0, Landroid/view/ScrollCaptureConnection;->mUiThread:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/view/ScrollCaptureConnection$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, v1}, Landroid/view/ScrollCaptureConnection$$ExternalSyntheticLambda2;-><init>(Landroid/view/ScrollCaptureConnection;Ljava/lang/Runnable;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 204
    return-object v0
.end method

.method protected whitelist test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 299
    :try_start_0
    iget-object v0, p0, Landroid/view/ScrollCaptureConnection;->mCloseGuard:Landroid/util/CloseGuard;

    invoke-virtual {v0}, Landroid/util/CloseGuard;->warnIfOpen()V

    .line 300
    invoke-virtual {p0}, Landroid/view/ScrollCaptureConnection;->close()V
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_d

    .line 302
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 303
    nop

    .line 304
    return-void

    .line 302
    :catchall_d
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 303
    throw v0
.end method

.method public blacklist isActive()Z
    .registers 2

    .line 276
    iget-boolean v0, p0, Landroid/view/ScrollCaptureConnection;->mActive:Z

    return v0
.end method

.method public blacklist isConnected()Z
    .registers 2

    .line 271
    iget-boolean v0, p0, Landroid/view/ScrollCaptureConnection;->mConnected:Z

    return v0
.end method

.method blacklist onImageRequestCompleted(Landroid/graphics/Rect;)V
    .registers 6
    .param p1, "capturedArea"    # Landroid/graphics/Rect;

    .line 173
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Landroid/view/ScrollCaptureConnection;->mRemote:Landroid/view/IScrollCaptureCallbacks;

    if-eqz v1, :cond_c

    .line 174
    iget-object v1, p0, Landroid/view/ScrollCaptureConnection;->mRemote:Landroid/view/IScrollCaptureCallbacks;

    const/4 v2, 0x0

    invoke-interface {v1, v2, p1}, Landroid/view/IScrollCaptureCallbacks;->onImageRequestCompleted(ILandroid/graphics/Rect;)V

    goto :goto_f

    .line 176
    :cond_c
    invoke-virtual {p0}, Landroid/view/ScrollCaptureConnection;->close()V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_f} :catch_14
    .catchall {:try_start_1 .. :try_end_f} :catchall_12

    .line 182
    :goto_f
    iput-object v0, p0, Landroid/view/ScrollCaptureConnection;->mCancellation:Landroid/os/CancellationSignal;

    .line 183
    goto :goto_20

    .line 182
    :catchall_12
    move-exception v1

    goto :goto_2a

    .line 178
    :catch_14
    move-exception v1

    .line 179
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_15
    const-string v2, "ScrollCaptureConnection"

    const-string v3, "Shutting down due to error: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 180
    invoke-virtual {p0}, Landroid/view/ScrollCaptureConnection;->close()V
    :try_end_1f
    .catchall {:try_start_15 .. :try_end_1f} :catchall_12

    .end local v1    # "e":Landroid/os/RemoteException;
    goto :goto_f

    .line 184
    :goto_20
    const-string v0, "Scroll Capture"

    iget v1, p0, Landroid/view/ScrollCaptureConnection;->mTraceId:I

    const-wide/16 v2, 0x2

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceForTrackEnd(JLjava/lang/String;I)V

    .line 185
    return-void

    .line 182
    :goto_2a
    iput-object v0, p0, Landroid/view/ScrollCaptureConnection;->mCancellation:Landroid/os/CancellationSignal;

    .line 183
    throw v1
.end method

.method public blacklist requestImage(Landroid/graphics/Rect;)Landroid/os/ICancellationSignal;
    .registers 7
    .param p1, "requestRect"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 151
    const-string/jumbo v0, "requestImage"

    iget v1, p0, Landroid/view/ScrollCaptureConnection;->mTraceId:I

    const-wide/16 v2, 0x2

    const-string v4, "Scroll Capture"

    invoke-static {v2, v3, v4, v0, v1}, Landroid/os/Trace;->asyncTraceForTrackBegin(JLjava/lang/String;Ljava/lang/String;I)V

    .line 152
    invoke-direct {p0}, Landroid/view/ScrollCaptureConnection;->checkActive()V

    .line 153
    invoke-direct {p0}, Landroid/view/ScrollCaptureConnection;->cancelPendingAction()V

    .line 154
    invoke-static {}, Landroid/os/CancellationSignal;->createTransport()Landroid/os/ICancellationSignal;

    move-result-object v0

    .line 155
    .local v0, "cancellation":Landroid/os/ICancellationSignal;
    invoke-static {v0}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object v1

    iput-object v1, p0, Landroid/view/ScrollCaptureConnection;->mCancellation:Landroid/os/CancellationSignal;

    .line 157
    iget-object v1, p0, Landroid/view/ScrollCaptureConnection;->mCancellation:Landroid/os/CancellationSignal;

    iget-object v2, p0, Landroid/view/ScrollCaptureConnection;->mUiThread:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/view/ScrollCaptureConnection$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0}, Landroid/view/ScrollCaptureConnection$$ExternalSyntheticLambda3;-><init>(Landroid/view/ScrollCaptureConnection;)V

    .line 158
    invoke-static {v1, v2, v3}, Landroid/view/ScrollCaptureConnection$SafeCallback;->create(Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object v1

    .line 160
    .local v1, "listener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/graphics/Rect;>;"
    iget-object v2, p0, Landroid/view/ScrollCaptureConnection;->mUiThread:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/view/ScrollCaptureConnection$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0, p1, v1}, Landroid/view/ScrollCaptureConnection$$ExternalSyntheticLambda4;-><init>(Landroid/view/ScrollCaptureConnection;Landroid/graphics/Rect;Ljava/util/function/Consumer;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 167
    return-object v0
.end method

.method public blacklist startCapture(Landroid/view/Surface;Landroid/view/IScrollCaptureCallbacks;)Landroid/os/ICancellationSignal;
    .registers 8
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "remote"    # Landroid/view/IScrollCaptureCallbacks;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 104
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Landroid/view/ScrollCaptureConnection;->mTraceId:I

    .line 105
    const-string v0, "Session"

    iget v1, p0, Landroid/view/ScrollCaptureConnection;->mTraceId:I

    const-wide/16 v2, 0x2

    const-string v4, "Scroll Capture"

    invoke-static {v2, v3, v4, v0, v1}, Landroid/os/Trace;->asyncTraceForTrackBegin(JLjava/lang/String;Ljava/lang/String;I)V

    .line 106
    const-string/jumbo v0, "startCapture"

    iget v1, p0, Landroid/view/ScrollCaptureConnection;->mTraceId:I

    invoke-static {v2, v3, v4, v0, v1}, Landroid/os/Trace;->asyncTraceForTrackBegin(JLjava/lang/String;Ljava/lang/String;I)V

    .line 107
    iget-object v0, p0, Landroid/view/ScrollCaptureConnection;->mCloseGuard:Landroid/util/CloseGuard;

    const-string v1, "ScrollCaptureConnection.close"

    invoke-virtual {v0, v1}, Landroid/util/CloseGuard;->open(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 112
    const-string v0, "<callbacks> must non-null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/IScrollCaptureCallbacks;

    iput-object v0, p0, Landroid/view/ScrollCaptureConnection;->mRemote:Landroid/view/IScrollCaptureCallbacks;

    .line 113
    iget-object v0, p0, Landroid/view/ScrollCaptureConnection;->mRemote:Landroid/view/IScrollCaptureCallbacks;

    invoke-interface {v0}, Landroid/view/IScrollCaptureCallbacks;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ScrollCaptureConnection;->mConnected:Z

    .line 116
    invoke-static {}, Landroid/os/CancellationSignal;->createTransport()Landroid/os/ICancellationSignal;

    move-result-object v0

    .line 117
    .local v0, "cancellation":Landroid/os/ICancellationSignal;
    invoke-static {v0}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object v1

    iput-object v1, p0, Landroid/view/ScrollCaptureConnection;->mCancellation:Landroid/os/CancellationSignal;

    .line 118
    new-instance v1, Landroid/view/ScrollCaptureSession;

    iget-object v2, p0, Landroid/view/ScrollCaptureConnection;->mScrollBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/view/ScrollCaptureConnection;->mPositionInWindow:Landroid/graphics/Point;

    invoke-direct {v1, p1, v2, v3}, Landroid/view/ScrollCaptureSession;-><init>(Landroid/view/Surface;Landroid/graphics/Rect;Landroid/graphics/Point;)V

    iput-object v1, p0, Landroid/view/ScrollCaptureConnection;->mSession:Landroid/view/ScrollCaptureSession;

    .line 120
    iget-object v1, p0, Landroid/view/ScrollCaptureConnection;->mCancellation:Landroid/os/CancellationSignal;

    iget-object v2, p0, Landroid/view/ScrollCaptureConnection;->mUiThread:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/view/ScrollCaptureConnection$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0}, Landroid/view/ScrollCaptureConnection$$ExternalSyntheticLambda5;-><init>(Landroid/view/ScrollCaptureConnection;)V

    .line 121
    invoke-static {v1, v2, v3}, Landroid/view/ScrollCaptureConnection$SafeCallback;->create(Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    .line 123
    .local v1, "listener":Ljava/lang/Runnable;
    iget-object v2, p0, Landroid/view/ScrollCaptureConnection;->mUiThread:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/view/ScrollCaptureConnection$$ExternalSyntheticLambda6;

    invoke-direct {v3, p0, v1}, Landroid/view/ScrollCaptureConnection$$ExternalSyntheticLambda6;-><init>(Landroid/view/ScrollCaptureConnection;Ljava/lang/Runnable;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 128
    return-object v0

    .line 110
    .end local v0    # "cancellation":Landroid/os/ICancellationSignal;
    .end local v1    # "listener":Ljava/lang/Runnable;
    :cond_6a
    new-instance v0, Landroid/os/RemoteException;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "surface must be valid"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ScrollCaptureConnection{active="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/view/ScrollCaptureConnection;->mActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", session="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/ScrollCaptureConnection;->mSession:Landroid/view/ScrollCaptureSession;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", remote="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/ScrollCaptureConnection;->mRemote:Landroid/view/IScrollCaptureCallbacks;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", local="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/ScrollCaptureConnection;->mLocal:Landroid/view/ScrollCaptureCallback;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
