.class public abstract Landroid/view/InputEventReceiver;
.super Ljava/lang/Object;
.source "InputEventReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/InputEventReceiver$Factory;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "InputEventReceiver"


# instance fields
.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private mInputChannel:Landroid/view/InputChannel;

.field private mMessageQueue:Landroid/os/MessageQueue;

.field private mReceiverPtr:J

.field private final mSeqMap:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>(Landroid/view/InputChannel;Landroid/os/Looper;)V
    .locals 2
    .param p1, "inputChannel"    # Landroid/view/InputChannel;
    .param p2, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 35
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/view/InputEventReceiver;->mCloseGuard:Ldalvik/system/CloseGuard;

    #@9
    .line 45
    new-instance v0, Landroid/util/SparseIntArray;

    #@b
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    #@e
    iput-object v0, p0, Landroid/view/InputEventReceiver;->mSeqMap:Landroid/util/SparseIntArray;

    #@10
    .line 61
    if-nez p1, :cond_0

    #@12
    .line 62
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@14
    const-string/jumbo v1, "inputChannel must not be null"

    #@17
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v0

    #@1b
    .line 64
    :cond_0
    if-nez p2, :cond_1

    #@1d
    .line 65
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1f
    const-string/jumbo v1, "looper must not be null"

    #@22
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@25
    throw v0

    #@26
    .line 68
    :cond_1
    iput-object p1, p0, Landroid/view/InputEventReceiver;->mInputChannel:Landroid/view/InputChannel;

    #@28
    .line 69
    invoke-virtual {p2}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    #@2b
    move-result-object v0

    #@2c
    iput-object v0, p0, Landroid/view/InputEventReceiver;->mMessageQueue:Landroid/os/MessageQueue;

    #@2e
    .line 70
    new-instance v0, Ljava/lang/ref/WeakReference;

    #@30
    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@33
    .line 71
    iget-object v1, p0, Landroid/view/InputEventReceiver;->mMessageQueue:Landroid/os/MessageQueue;

    #@35
    .line 70
    invoke-static {v0, p1, v1}, Landroid/view/InputEventReceiver;->nativeInit(Ljava/lang/ref/WeakReference;Landroid/view/InputChannel;Landroid/os/MessageQueue;)J

    #@38
    move-result-wide v0

    #@39
    iput-wide v0, p0, Landroid/view/InputEventReceiver;->mReceiverPtr:J

    #@3b
    .line 73
    iget-object v0, p0, Landroid/view/InputEventReceiver;->mCloseGuard:Ldalvik/system/CloseGuard;

    #@3d
    const-string/jumbo v1, "dispose"

    #@40
    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    #@43
    .line 60
    return-void
.end method

.method private dispatchBatchedInputEventPending()V
    .locals 0

    #@0
    .prologue
    .line 191
    invoke-virtual {p0}, Landroid/view/InputEventReceiver;->onBatchedInputEventPending()V

    #@3
    .line 190
    return-void
.end method

.method private dispatchInputEvent(ILandroid/view/InputEvent;)V
    .locals 2
    .param p1, "seq"    # I
    .param p2, "event"    # Landroid/view/InputEvent;

    #@0
    .prologue
    .line 184
    iget-object v0, p0, Landroid/view/InputEventReceiver;->mSeqMap:Landroid/util/SparseIntArray;

    #@2
    invoke-virtual {p2}, Landroid/view/InputEvent;->getSequenceNumber()I

    #@5
    move-result v1

    #@6
    invoke-virtual {v0, v1, p1}, Landroid/util/SparseIntArray;->put(II)V

    #@9
    .line 185
    invoke-virtual {p0, p2}, Landroid/view/InputEventReceiver;->onInputEvent(Landroid/view/InputEvent;)V

    #@c
    .line 183
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
    .line 93
    iget-object v0, p0, Landroid/view/InputEventReceiver;->mCloseGuard:Ldalvik/system/CloseGuard;

    #@5
    if-eqz v0, :cond_1

    #@7
    .line 94
    if-eqz p1, :cond_0

    #@9
    .line 95
    iget-object v0, p0, Landroid/view/InputEventReceiver;->mCloseGuard:Ldalvik/system/CloseGuard;

    #@b
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    #@e
    .line 97
    :cond_0
    iget-object v0, p0, Landroid/view/InputEventReceiver;->mCloseGuard:Ldalvik/system/CloseGuard;

    #@10
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    #@13
    .line 100
    :cond_1
    iget-wide v0, p0, Landroid/view/InputEventReceiver;->mReceiverPtr:J

    #@15
    cmp-long v0, v0, v4

    #@17
    if-eqz v0, :cond_2

    #@19
    .line 101
    iget-wide v0, p0, Landroid/view/InputEventReceiver;->mReceiverPtr:J

    #@1b
    invoke-static {v0, v1}, Landroid/view/InputEventReceiver;->nativeDispose(J)V

    #@1e
    .line 102
    iput-wide v4, p0, Landroid/view/InputEventReceiver;->mReceiverPtr:J

    #@20
    .line 104
    :cond_2
    iput-object v2, p0, Landroid/view/InputEventReceiver;->mInputChannel:Landroid/view/InputChannel;

    #@22
    .line 105
    iput-object v2, p0, Landroid/view/InputEventReceiver;->mMessageQueue:Landroid/os/MessageQueue;

    #@24
    .line 92
    return-void
.end method

.method private static native nativeConsumeBatchedInputEvents(JJ)Z
.end method

.method private static native nativeDispose(J)V
.end method

.method private static native nativeFinishInputEvent(JIZ)V
.end method

.method private static native nativeInit(Ljava/lang/ref/WeakReference;Landroid/view/InputChannel;Landroid/os/MessageQueue;)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/InputEventReceiver;",
            ">;",
            "Landroid/view/InputChannel;",
            "Landroid/os/MessageQueue;",
            ")J"
        }
    .end annotation
.end method


# virtual methods
.method public final consumeBatchedInputEvents(J)Z
    .locals 5
    .param p1, "frameTimeNanos"    # J

    #@0
    .prologue
    .line 172
    iget-wide v0, p0, Landroid/view/InputEventReceiver;->mReceiverPtr:J

    #@2
    const-wide/16 v2, 0x0

    #@4
    cmp-long v0, v0, v2

    #@6
    if-nez v0, :cond_0

    #@8
    .line 173
    const-string/jumbo v0, "InputEventReceiver"

    #@b
    const-string/jumbo v1, "Attempted to consume batched input events but the input event receiver has already been disposed."

    #@e
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@11
    .line 178
    const/4 v0, 0x0

    #@12
    return v0

    #@13
    .line 176
    :cond_0
    iget-wide v0, p0, Landroid/view/InputEventReceiver;->mReceiverPtr:J

    #@15
    invoke-static {v0, v1, p1, p2}, Landroid/view/InputEventReceiver;->nativeConsumeBatchedInputEvents(JJ)Z

    #@18
    move-result v0

    #@19
    return v0
.end method

.method public dispose()V
    .locals 1

    #@0
    .prologue
    .line 89
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Landroid/view/InputEventReceiver;->dispose(Z)V

    #@4
    .line 88
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
    .line 79
    const/4 v0, 0x1

    #@1
    :try_start_0
    invoke-direct {p0, v0}, Landroid/view/InputEventReceiver;->dispose(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    .line 81
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@7
    .line 77
    return-void

    #@8
    .line 80
    :catchall_0
    move-exception v0

    #@9
    .line 81
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@c
    .line 80
    throw v0
.end method

.method public final finishInputEvent(Landroid/view/InputEvent;Z)V
    .locals 6
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "handled"    # Z

    #@0
    .prologue
    .line 140
    if-nez p1, :cond_0

    #@2
    .line 141
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v3, "event must not be null"

    #@7
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 143
    :cond_0
    iget-wide v2, p0, Landroid/view/InputEventReceiver;->mReceiverPtr:J

    #@d
    const-wide/16 v4, 0x0

    #@f
    cmp-long v2, v2, v4

    #@11
    if-nez v2, :cond_1

    #@13
    .line 144
    const-string/jumbo v2, "InputEventReceiver"

    #@16
    const-string/jumbo v3, "Attempted to finish an input event but the input event receiver has already been disposed."

    #@19
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1c
    .line 156
    :goto_0
    invoke-virtual {p1}, Landroid/view/InputEvent;->recycleIfNeededAfterDispatch()V

    #@1f
    .line 139
    return-void

    #@20
    .line 147
    :cond_1
    iget-object v2, p0, Landroid/view/InputEventReceiver;->mSeqMap:Landroid/util/SparseIntArray;

    #@22
    invoke-virtual {p1}, Landroid/view/InputEvent;->getSequenceNumber()I

    #@25
    move-result v3

    #@26
    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    #@29
    move-result v0

    #@2a
    .line 148
    .local v0, "index":I
    if-gez v0, :cond_2

    #@2c
    .line 149
    const-string/jumbo v2, "InputEventReceiver"

    #@2f
    const-string/jumbo v3, "Attempted to finish an input event that is not in progress."

    #@32
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@35
    goto :goto_0

    #@36
    .line 151
    :cond_2
    iget-object v2, p0, Landroid/view/InputEventReceiver;->mSeqMap:Landroid/util/SparseIntArray;

    #@38
    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    #@3b
    move-result v1

    #@3c
    .line 152
    .local v1, "seq":I
    iget-object v2, p0, Landroid/view/InputEventReceiver;->mSeqMap:Landroid/util/SparseIntArray;

    #@3e
    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->removeAt(I)V

    #@41
    .line 153
    iget-wide v2, p0, Landroid/view/InputEventReceiver;->mReceiverPtr:J

    #@43
    invoke-static {v2, v3, v1, p2}, Landroid/view/InputEventReceiver;->nativeFinishInputEvent(JIZ)V

    #@46
    goto :goto_0
.end method

.method public onBatchedInputEventPending()V
    .locals 2

    #@0
    .prologue
    .line 129
    const-wide/16 v0, -0x1

    #@2
    invoke-virtual {p0, v0, v1}, Landroid/view/InputEventReceiver;->consumeBatchedInputEvents(J)Z

    #@5
    .line 128
    return-void
.end method

.method public onInputEvent(Landroid/view/InputEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/InputEvent;

    #@0
    .prologue
    .line 117
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Landroid/view/InputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    #@4
    .line 116
    return-void
.end method
