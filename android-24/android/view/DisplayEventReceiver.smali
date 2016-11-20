.class public abstract Landroid/view/DisplayEventReceiver;
.super Ljava/lang/Object;
.source "DisplayEventReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DisplayEventReceiver"


# instance fields
.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private mMessageQueue:Landroid/os/MessageQueue;

.field private mReceiverPtr:J


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 2
    .param p1, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 39
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/view/DisplayEventReceiver;->mCloseGuard:Ldalvik/system/CloseGuard;

    #@9
    .line 58
    if-nez p1, :cond_0

    #@b
    .line 59
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@d
    const-string/jumbo v1, "looper must not be null"

    #@10
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@13
    throw v0

    #@14
    .line 62
    :cond_0
    invoke-virtual {p1}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    #@17
    move-result-object v0

    #@18
    iput-object v0, p0, Landroid/view/DisplayEventReceiver;->mMessageQueue:Landroid/os/MessageQueue;

    #@1a
    .line 63
    new-instance v0, Ljava/lang/ref/WeakReference;

    #@1c
    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@1f
    iget-object v1, p0, Landroid/view/DisplayEventReceiver;->mMessageQueue:Landroid/os/MessageQueue;

    #@21
    invoke-static {v0, v1}, Landroid/view/DisplayEventReceiver;->nativeInit(Ljava/lang/ref/WeakReference;Landroid/os/MessageQueue;)J

    #@24
    move-result-wide v0

    #@25
    iput-wide v0, p0, Landroid/view/DisplayEventReceiver;->mReceiverPtr:J

    #@27
    .line 65
    iget-object v0, p0, Landroid/view/DisplayEventReceiver;->mCloseGuard:Ldalvik/system/CloseGuard;

    #@29
    const-string/jumbo v1, "dispose"

    #@2c
    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    #@2f
    .line 57
    return-void
.end method

.method private dispatchHotplug(JIZ)V
    .locals 1
    .param p1, "timestampNanos"    # J
    .param p3, "builtInDisplayId"    # I
    .param p4, "connected"    # Z

    #@0
    .prologue
    .line 147
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/DisplayEventReceiver;->onHotplug(JIZ)V

    #@3
    .line 146
    return-void
.end method

.method private dispatchVsync(JII)V
    .locals 1
    .param p1, "timestampNanos"    # J
    .param p3, "builtInDisplayId"    # I
    .param p4, "frame"    # I

    #@0
    .prologue
    .line 141
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/DisplayEventReceiver;->onVsync(JII)V

    #@3
    .line 140
    return-void
.end method

.method private dispose(Z)V
    .locals 6
    .param p1, "finalized"    # Z

    #@0
    .prologue
    const-wide/16 v4, 0x0

    #@2
    const/4 v2, 0x0

    #@3
    .line 85
    iget-object v0, p0, Landroid/view/DisplayEventReceiver;->mCloseGuard:Ldalvik/system/CloseGuard;

    #@5
    if-eqz v0, :cond_1

    #@7
    .line 86
    if-eqz p1, :cond_0

    #@9
    .line 87
    iget-object v0, p0, Landroid/view/DisplayEventReceiver;->mCloseGuard:Ldalvik/system/CloseGuard;

    #@b
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    #@e
    .line 89
    :cond_0
    iget-object v0, p0, Landroid/view/DisplayEventReceiver;->mCloseGuard:Ldalvik/system/CloseGuard;

    #@10
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    #@13
    .line 92
    :cond_1
    iget-wide v0, p0, Landroid/view/DisplayEventReceiver;->mReceiverPtr:J

    #@15
    cmp-long v0, v0, v4

    #@17
    if-eqz v0, :cond_2

    #@19
    .line 93
    iget-wide v0, p0, Landroid/view/DisplayEventReceiver;->mReceiverPtr:J

    #@1b
    invoke-static {v0, v1}, Landroid/view/DisplayEventReceiver;->nativeDispose(J)V

    #@1e
    .line 94
    iput-wide v4, p0, Landroid/view/DisplayEventReceiver;->mReceiverPtr:J

    #@20
    .line 96
    :cond_2
    iput-object v2, p0, Landroid/view/DisplayEventReceiver;->mMessageQueue:Landroid/os/MessageQueue;

    #@22
    .line 84
    return-void
.end method

.method private static native nativeDispose(J)V
.end method

.method private static native nativeInit(Ljava/lang/ref/WeakReference;Landroid/os/MessageQueue;)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/DisplayEventReceiver;",
            ">;",
            "Landroid/os/MessageQueue;",
            ")J"
        }
    .end annotation
.end method

.method private static native nativeScheduleVsync(J)V
.end method


# virtual methods
.method public dispose()V
    .locals 1

    #@0
    .prologue
    .line 81
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Landroid/view/DisplayEventReceiver;->dispose(Z)V

    #@4
    .line 80
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 71
    const/4 v0, 0x1

    #@1
    :try_start_0
    invoke-direct {p0, v0}, Landroid/view/DisplayEventReceiver;->dispose(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    .line 73
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@7
    .line 69
    return-void

    #@8
    .line 72
    :catchall_0
    move-exception v0

    #@9
    .line 73
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@c
    .line 72
    throw v0
.end method

.method public onHotplug(JIZ)V
    .locals 0
    .param p1, "timestampNanos"    # J
    .param p3, "builtInDisplayId"    # I
    .param p4, "connected"    # Z

    #@0
    .prologue
    .line 122
    return-void
.end method

.method public onVsync(JII)V
    .locals 0
    .param p1, "timestampNanos"    # J
    .param p3, "builtInDisplayId"    # I
    .param p4, "frame"    # I

    #@0
    .prologue
    .line 110
    return-void
.end method

.method public scheduleVsync()V
    .locals 4

    #@0
    .prologue
    .line 130
    iget-wide v0, p0, Landroid/view/DisplayEventReceiver;->mReceiverPtr:J

    #@2
    const-wide/16 v2, 0x0

    #@4
    cmp-long v0, v0, v2

    #@6
    if-nez v0, :cond_0

    #@8
    .line 131
    const-string/jumbo v0, "DisplayEventReceiver"

    #@b
    const-string/jumbo v1, "Attempted to schedule a vertical sync pulse but the display event receiver has already been disposed."

    #@e
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@11
    .line 129
    :goto_0
    return-void

    #@12
    .line 134
    :cond_0
    iget-wide v0, p0, Landroid/view/DisplayEventReceiver;->mReceiverPtr:J

    #@14
    invoke-static {v0, v1}, Landroid/view/DisplayEventReceiver;->nativeScheduleVsync(J)V

    #@17
    goto :goto_0
.end method
