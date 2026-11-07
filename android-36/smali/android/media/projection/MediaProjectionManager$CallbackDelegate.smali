.class final Landroid/media/projection/MediaProjectionManager$CallbackDelegate;
.super Landroid/media/projection/IMediaProjectionWatcherCallback$Stub;
.source "MediaProjectionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/projection/MediaProjectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CallbackDelegate"
.end annotation


# instance fields
.field private greylist-max-o mCallback:Landroid/media/projection/MediaProjectionManager$Callback;

.field private greylist-max-o mHandler:Landroid/os/Handler;


# direct methods
.method public static synthetic blacklist $r8$lambda$A_RHsM6e1N7-eTIh-u9Qo2B5O7I(Landroid/media/projection/MediaProjectionManager$CallbackDelegate;Landroid/media/projection/MediaProjectionEvent;Landroid/media/projection/MediaProjectionInfo;Landroid/view/ContentRecordingSession;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/media/projection/MediaProjectionManager$CallbackDelegate;->lambda$onMediaProjectionEvent$1(Landroid/media/projection/MediaProjectionEvent;Landroid/media/projection/MediaProjectionInfo;Landroid/view/ContentRecordingSession;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$jEKGcu_9Jof2HPVZjJ4OcY3nR3k(Landroid/media/projection/MediaProjectionManager$CallbackDelegate;Landroid/media/projection/MediaProjectionInfo;Landroid/view/ContentRecordingSession;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/media/projection/MediaProjectionManager$CallbackDelegate;->lambda$onRecordingSessionSet$0(Landroid/media/projection/MediaProjectionInfo;Landroid/view/ContentRecordingSession;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCallback(Landroid/media/projection/MediaProjectionManager$CallbackDelegate;)Landroid/media/projection/MediaProjectionManager$Callback;
    .registers 1

    iget-object p0, p0, Landroid/media/projection/MediaProjectionManager$CallbackDelegate;->mCallback:Landroid/media/projection/MediaProjectionManager$Callback;

    return-object p0
.end method

.method public constructor greylist-max-o <init>(Landroid/media/projection/MediaProjectionManager$Callback;Landroid/os/Handler;)V
    .registers 4
    .param p1, "callback"    # Landroid/media/projection/MediaProjectionManager$Callback;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 390
    invoke-direct {p0}, Landroid/media/projection/IMediaProjectionWatcherCallback$Stub;-><init>()V

    .line 391
    iput-object p1, p0, Landroid/media/projection/MediaProjectionManager$CallbackDelegate;->mCallback:Landroid/media/projection/MediaProjectionManager$Callback;

    .line 392
    if-nez p2, :cond_d

    .line 393
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    move-object p2, v0

    .line 395
    :cond_d
    iput-object p2, p0, Landroid/media/projection/MediaProjectionManager$CallbackDelegate;->mHandler:Landroid/os/Handler;

    .line 396
    return-void
.end method

.method private synthetic blacklist lambda$onMediaProjectionEvent$1(Landroid/media/projection/MediaProjectionEvent;Landroid/media/projection/MediaProjectionInfo;Landroid/view/ContentRecordingSession;)V
    .registers 5
    .param p1, "event"    # Landroid/media/projection/MediaProjectionEvent;
    .param p2, "info"    # Landroid/media/projection/MediaProjectionInfo;
    .param p3, "session"    # Landroid/view/ContentRecordingSession;

    .line 431
    iget-object v0, p0, Landroid/media/projection/MediaProjectionManager$CallbackDelegate;->mCallback:Landroid/media/projection/MediaProjectionManager$Callback;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/projection/MediaProjectionManager$Callback;->onMediaProjectionEvent(Landroid/media/projection/MediaProjectionEvent;Landroid/media/projection/MediaProjectionInfo;Landroid/view/ContentRecordingSession;)V

    return-void
.end method

.method private synthetic blacklist lambda$onRecordingSessionSet$0(Landroid/media/projection/MediaProjectionInfo;Landroid/view/ContentRecordingSession;)V
    .registers 4
    .param p1, "info"    # Landroid/media/projection/MediaProjectionInfo;
    .param p2, "session"    # Landroid/view/ContentRecordingSession;

    .line 423
    iget-object v0, p0, Landroid/media/projection/MediaProjectionManager$CallbackDelegate;->mCallback:Landroid/media/projection/MediaProjectionManager$Callback;

    invoke-virtual {v0, p1, p2}, Landroid/media/projection/MediaProjectionManager$Callback;->onRecordingSessionSet(Landroid/media/projection/MediaProjectionInfo;Landroid/view/ContentRecordingSession;)V

    return-void
.end method


# virtual methods
.method public blacklist onMediaProjectionEvent(Landroid/media/projection/MediaProjectionEvent;Landroid/media/projection/MediaProjectionInfo;Landroid/view/ContentRecordingSession;)V
    .registers 6
    .param p1, "event"    # Landroid/media/projection/MediaProjectionEvent;
    .param p2, "info"    # Landroid/media/projection/MediaProjectionInfo;
    .param p3, "session"    # Landroid/view/ContentRecordingSession;

    .line 431
    iget-object v0, p0, Landroid/media/projection/MediaProjectionManager$CallbackDelegate;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/projection/MediaProjectionManager$CallbackDelegate$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/media/projection/MediaProjectionManager$CallbackDelegate$$ExternalSyntheticLambda0;-><init>(Landroid/media/projection/MediaProjectionManager$CallbackDelegate;Landroid/media/projection/MediaProjectionEvent;Landroid/media/projection/MediaProjectionInfo;Landroid/view/ContentRecordingSession;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 432
    return-void
.end method

.method public blacklist onRecordingSessionSet(Landroid/media/projection/MediaProjectionInfo;Landroid/view/ContentRecordingSession;)V
    .registers 5
    .param p1, "info"    # Landroid/media/projection/MediaProjectionInfo;
    .param p2, "session"    # Landroid/view/ContentRecordingSession;

    .line 423
    iget-object v0, p0, Landroid/media/projection/MediaProjectionManager$CallbackDelegate;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/projection/MediaProjectionManager$CallbackDelegate$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Landroid/media/projection/MediaProjectionManager$CallbackDelegate$$ExternalSyntheticLambda1;-><init>(Landroid/media/projection/MediaProjectionManager$CallbackDelegate;Landroid/media/projection/MediaProjectionInfo;Landroid/view/ContentRecordingSession;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 424
    return-void
.end method

.method public greylist-max-o onStart(Landroid/media/projection/MediaProjectionInfo;)V
    .registers 4
    .param p1, "info"    # Landroid/media/projection/MediaProjectionInfo;

    .line 400
    iget-object v0, p0, Landroid/media/projection/MediaProjectionManager$CallbackDelegate;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/projection/MediaProjectionManager$CallbackDelegate$1;

    invoke-direct {v1, p0, p1}, Landroid/media/projection/MediaProjectionManager$CallbackDelegate$1;-><init>(Landroid/media/projection/MediaProjectionManager$CallbackDelegate;Landroid/media/projection/MediaProjectionInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 406
    return-void
.end method

.method public greylist-max-o onStop(Landroid/media/projection/MediaProjectionInfo;)V
    .registers 4
    .param p1, "info"    # Landroid/media/projection/MediaProjectionInfo;

    .line 410
    iget-object v0, p0, Landroid/media/projection/MediaProjectionManager$CallbackDelegate;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/projection/MediaProjectionManager$CallbackDelegate$2;

    invoke-direct {v1, p0, p1}, Landroid/media/projection/MediaProjectionManager$CallbackDelegate$2;-><init>(Landroid/media/projection/MediaProjectionManager$CallbackDelegate;Landroid/media/projection/MediaProjectionInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 416
    return-void
.end method
