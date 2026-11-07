.class public abstract Landroid/view/InputEventSender;
.super Ljava/lang/Object;
.source "InputEventSender.java"


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "InputEventSender"


# instance fields
.field private final greylist-max-o mCloseGuard:Ldalvik/system/CloseGuard;

.field private blacklist mHandler:Landroid/os/Handler;

.field private greylist-max-o mInputChannel:Landroid/view/InputChannel;

.field private greylist-max-o mSenderPtr:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$msendInputEventInternal(Landroid/view/InputEventSender;ILandroid/view/InputEvent;)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/view/InputEventSender;->sendInputEventInternal(ILandroid/view/InputEvent;)Z

    move-result p0

    return p0
.end method

.method public constructor greylist-max-o <init>(Landroid/view/InputChannel;Landroid/os/Looper;)V
    .registers 6
    .param p1, "inputChannel"    # Landroid/view/InputChannel;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/view/InputEventSender;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 63
    if-eqz p1, :cond_37

    .line 66
    if-eqz p2, :cond_2f

    .line 70
    iput-object p1, p0, Landroid/view/InputEventSender;->mInputChannel:Landroid/view/InputChannel;

    .line 71
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/view/InputEventSender;->mHandler:Landroid/os/Handler;

    .line 72
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Landroid/view/InputEventSender;->mInputChannel:Landroid/view/InputChannel;

    .line 73
    invoke-virtual {p2}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v2

    .line 72
    invoke-static {v0, v1, v2}, Landroid/view/InputEventSender;->nativeInit(Ljava/lang/ref/WeakReference;Landroid/view/InputChannel;Landroid/os/MessageQueue;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/InputEventSender;->mSenderPtr:J

    .line 75
    iget-object v0, p0, Landroid/view/InputEventSender;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string v1, "InputEventSender.dispose"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 76
    return-void

    .line 67
    :cond_2f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "looper must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "inputChannel must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-r dispatchInputEventFinished(IZ)V
    .registers 3
    .param p1, "seq"    # I
    .param p2, "handled"    # Z

    .line 181
    invoke-virtual {p0, p1, p2}, Landroid/view/InputEventSender;->onInputEventFinished(IZ)V

    .line 182
    return-void
.end method

.method private blacklist dispatchTimelineReported(IJJ)V
    .registers 6
    .param p1, "inputEventId"    # I
    .param p2, "gpuCompletedTime"    # J
    .param p4, "presentTime"    # J

    .line 188
    invoke-virtual/range {p0 .. p5}, Landroid/view/InputEventSender;->onTimelineReported(IJJ)V

    .line 189
    return-void
.end method

.method private greylist-max-o dispose(Z)V
    .registers 6
    .param p1, "finalized"    # Z

    .line 95
    iget-object v0, p0, Landroid/view/InputEventSender;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_10

    .line 96
    if-eqz p1, :cond_b

    .line 97
    iget-object v0, p0, Landroid/view/InputEventSender;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 99
    :cond_b
    iget-object v0, p0, Landroid/view/InputEventSender;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 102
    :cond_10
    iget-wide v0, p0, Landroid/view/InputEventSender;->mSenderPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1f

    .line 103
    iget-wide v0, p0, Landroid/view/InputEventSender;->mSenderPtr:J

    invoke-static {v0, v1}, Landroid/view/InputEventSender;->nativeDispose(J)V

    .line 104
    iput-wide v2, p0, Landroid/view/InputEventSender;->mSenderPtr:J

    .line 106
    :cond_1f
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/InputEventSender;->mHandler:Landroid/os/Handler;

    .line 107
    iput-object v0, p0, Landroid/view/InputEventSender;->mInputChannel:Landroid/view/InputChannel;

    .line 108
    return-void
.end method

.method private static native greylist-max-o nativeDispose(J)V
.end method

.method private static native greylist-max-o nativeInit(Ljava/lang/ref/WeakReference;Landroid/view/InputChannel;Landroid/os/MessageQueue;)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/InputEventSender;",
            ">;",
            "Landroid/view/InputChannel;",
            "Landroid/os/MessageQueue;",
            ")J"
        }
    .end annotation
.end method

.method private static native greylist-max-o nativeSendKeyEvent(JILandroid/view/KeyEvent;)Z
.end method

.method private static native greylist-max-o nativeSendMotionEvent(JILandroid/view/MotionEvent;)Z
.end method

.method private blacklist sendInputEventInternal(ILandroid/view/InputEvent;)Z
    .registers 6
    .param p1, "seq"    # I
    .param p2, "event"    # Landroid/view/InputEvent;

    .line 170
    instance-of v0, p2, Landroid/view/KeyEvent;

    if-eqz v0, :cond_e

    .line 171
    iget-wide v0, p0, Landroid/view/InputEventSender;->mSenderPtr:J

    move-object v2, p2

    check-cast v2, Landroid/view/KeyEvent;

    invoke-static {v0, v1, p1, v2}, Landroid/view/InputEventSender;->nativeSendKeyEvent(JILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 173
    :cond_e
    iget-wide v0, p0, Landroid/view/InputEventSender;->mSenderPtr:J

    move-object v2, p2

    check-cast v2, Landroid/view/MotionEvent;

    invoke-static {v0, v1, p1, v2}, Landroid/view/InputEventSender;->nativeSendMotionEvent(JILandroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public greylist-max-o dispose()V
    .registers 2

    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/view/InputEventSender;->dispose(Z)V

    .line 92
    return-void
.end method

.method protected whitelist test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 81
    const/4 v0, 0x1

    :try_start_1
    invoke-direct {p0, v0}, Landroid/view/InputEventSender;->dispose(Z)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_9

    .line 83
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 84
    nop

    .line 85
    return-void

    .line 83
    :catchall_9
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 84
    throw v0
.end method

.method public greylist-max-o onInputEventFinished(IZ)V
    .registers 3
    .param p1, "seq"    # I
    .param p2, "handled"    # Z

    .line 117
    return-void
.end method

.method public blacklist onTimelineReported(IJJ)V
    .registers 6
    .param p1, "inputEventId"    # I
    .param p2, "gpuCompletedTime"    # J
    .param p4, "presentTime"    # J

    .line 127
    return-void
.end method

.method public final greylist-max-o sendInputEvent(ILandroid/view/InputEvent;)Z
    .registers 9
    .param p1, "seq"    # I
    .param p2, "event"    # Landroid/view/InputEvent;

    .line 139
    const-string v0, ": "

    if-eqz p2, :cond_84

    .line 142
    iget-wide v1, p0, Landroid/view/InputEventSender;->mSenderPtr:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_15

    .line 143
    const-string v0, "InputEventSender"

    const-string v1, "Attempted to send an input event but the input event sender has already been disposed."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const/4 v0, 0x0

    return v0

    .line 148
    :cond_15
    iget-object v1, p0, Landroid/view/InputEventSender;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 149
    invoke-direct {p0, p1, p2}, Landroid/view/InputEventSender;->sendInputEventInternal(ILandroid/view/InputEvent;)Z

    move-result v0

    return v0

    .line 153
    :cond_26
    new-instance v1, Ljava/util/concurrent/FutureTask;

    new-instance v2, Landroid/view/InputEventSender$1;

    invoke-direct {v2, p0, p1, p2}, Landroid/view/InputEventSender$1;-><init>(Landroid/view/InputEventSender;ILandroid/view/InputEvent;)V

    invoke-direct {v1, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 159
    .local v1, "task":Ljava/util/concurrent/RunnableFuture;, "Ljava/util/concurrent/RunnableFuture<Ljava/lang/Boolean;>;"
    iget-object v2, p0, Landroid/view/InputEventSender;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 161
    :try_start_35
    invoke-interface {v1}, Ljava/util/concurrent/RunnableFuture;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_3f
    .catch Ljava/lang/InterruptedException; {:try_start_35 .. :try_end_3f} :catch_62
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_35 .. :try_end_3f} :catch_40

    return v0

    .line 164
    :catch_40
    move-exception v2

    .line 165
    .local v2, "exc":Ljava/util/concurrent/ExecutionException;
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t send "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 162
    .end local v2    # "exc":Ljava/util/concurrent/ExecutionException;
    :catch_62
    move-exception v2

    .line 163
    .local v2, "exc":Ljava/lang/InterruptedException;
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Interrupted while sending "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 140
    .end local v1    # "task":Ljava/util/concurrent/RunnableFuture;, "Ljava/util/concurrent/RunnableFuture<Ljava/lang/Boolean;>;"
    .end local v2    # "exc":Ljava/lang/InterruptedException;
    :cond_84
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "event must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
