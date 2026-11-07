.class public final Landroid/view/InputQueue;
.super Ljava/lang/Object;
.source "InputQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/InputQueue$FinishedInputEventCallback;,
        Landroid/view/InputQueue$ActiveInputEvent;,
        Landroid/view/InputQueue$Callback;
    }
.end annotation


# instance fields
.field private final greylist-max-o mActiveEventArray:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Landroid/view/InputQueue$ActiveInputEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mActiveInputEventPool:Landroid/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$Pool<",
            "Landroid/view/InputQueue$ActiveInputEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mCloseGuard:Ldalvik/system/CloseGuard;

.field private greylist-max-o mPtr:J


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 3

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Landroid/util/LongSparseArray;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/util/LongSparseArray;-><init>(I)V

    iput-object v0, p0, Landroid/view/InputQueue;->mActiveEventArray:Landroid/util/LongSparseArray;

    .line 38
    new-instance v0, Landroid/util/Pools$SimplePool;

    invoke-direct {v0, v1}, Landroid/util/Pools$SimplePool;-><init>(I)V

    iput-object v0, p0, Landroid/view/InputQueue;->mActiveInputEventPool:Landroid/util/Pools$Pool;

    .line 41
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/view/InputQueue;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 53
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/view/InputQueue;->nativeInit(Ljava/lang/ref/WeakReference;Landroid/os/MessageQueue;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/InputQueue;->mPtr:J

    .line 55
    iget-object v0, p0, Landroid/view/InputQueue;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string v1, "InputQueue.dispose"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method private greylist-max-r finishInputEvent(JZ)V
    .registers 8
    .param p1, "id"    # J
    .param p3, "handled"    # Z

    .line 107
    iget-object v0, p0, Landroid/view/InputQueue;->mActiveEventArray:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->indexOfKey(J)I

    move-result v0

    .line 108
    .local v0, "index":I
    if-ltz v0, :cond_1f

    .line 109
    iget-object v1, p0, Landroid/view/InputQueue;->mActiveEventArray:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/InputQueue$ActiveInputEvent;

    .line 110
    .local v1, "e":Landroid/view/InputQueue$ActiveInputEvent;
    iget-object v2, p0, Landroid/view/InputQueue;->mActiveEventArray:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v0}, Landroid/util/LongSparseArray;->removeAt(I)V

    .line 111
    iget-object v2, v1, Landroid/view/InputQueue$ActiveInputEvent;->mCallback:Landroid/view/InputQueue$FinishedInputEventCallback;

    iget-object v3, v1, Landroid/view/InputQueue$ActiveInputEvent;->mToken:Ljava/lang/Object;

    invoke-interface {v2, v3, p3}, Landroid/view/InputQueue$FinishedInputEventCallback;->onFinishedInputEvent(Ljava/lang/Object;Z)V

    .line 112
    invoke-direct {p0, v1}, Landroid/view/InputQueue;->recycleActiveInputEvent(Landroid/view/InputQueue$ActiveInputEvent;)V

    .line 114
    .end local v1    # "e":Landroid/view/InputQueue$ActiveInputEvent;
    :cond_1f
    return-void
.end method

.method private static native greylist-max-o nativeDispose(J)V
.end method

.method private static native greylist-max-o nativeInit(Ljava/lang/ref/WeakReference;Landroid/os/MessageQueue;)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/InputQueue;",
            ">;",
            "Landroid/os/MessageQueue;",
            ")J"
        }
    .end annotation
.end method

.method private static native greylist-max-o nativeSendKeyEvent(JLandroid/view/KeyEvent;Z)J
.end method

.method private static native greylist-max-o nativeSendMotionEvent(JLandroid/view/MotionEvent;)J
.end method

.method private greylist-max-o obtainActiveInputEvent(Ljava/lang/Object;Landroid/view/InputQueue$FinishedInputEventCallback;)Landroid/view/InputQueue$ActiveInputEvent;
    .registers 6
    .param p1, "token"    # Ljava/lang/Object;
    .param p2, "callback"    # Landroid/view/InputQueue$FinishedInputEventCallback;

    .line 118
    iget-object v0, p0, Landroid/view/InputQueue;->mActiveInputEventPool:Landroid/util/Pools$Pool;

    invoke-interface {v0}, Landroid/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/InputQueue$ActiveInputEvent;

    .line 119
    .local v0, "e":Landroid/view/InputQueue$ActiveInputEvent;
    if-nez v0, :cond_11

    .line 120
    new-instance v1, Landroid/view/InputQueue$ActiveInputEvent;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/view/InputQueue$ActiveInputEvent;-><init>(Landroid/view/InputQueue;Landroid/view/InputQueue-IA;)V

    move-object v0, v1

    .line 122
    :cond_11
    iput-object p1, v0, Landroid/view/InputQueue$ActiveInputEvent;->mToken:Ljava/lang/Object;

    .line 123
    iput-object p2, v0, Landroid/view/InputQueue$ActiveInputEvent;->mCallback:Landroid/view/InputQueue$FinishedInputEventCallback;

    .line 124
    return-object v0
.end method

.method private greylist-max-o recycleActiveInputEvent(Landroid/view/InputQueue$ActiveInputEvent;)V
    .registers 3
    .param p1, "e"    # Landroid/view/InputQueue$ActiveInputEvent;

    .line 128
    invoke-virtual {p1}, Landroid/view/InputQueue$ActiveInputEvent;->recycle()V

    .line 129
    iget-object v0, p0, Landroid/view/InputQueue;->mActiveInputEventPool:Landroid/util/Pools$Pool;

    invoke-interface {v0, p1}, Landroid/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 130
    return-void
.end method


# virtual methods
.method public greylist-max-o dispose()V
    .registers 2

    .line 69
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/InputQueue;->dispose(Z)V

    .line 70
    return-void
.end method

.method public greylist-max-o dispose(Z)V
    .registers 6
    .param p1, "finalized"    # Z

    .line 74
    iget-object v0, p0, Landroid/view/InputQueue;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_10

    .line 75
    if-eqz p1, :cond_b

    .line 76
    iget-object v0, p0, Landroid/view/InputQueue;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 78
    :cond_b
    iget-object v0, p0, Landroid/view/InputQueue;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 81
    :cond_10
    iget-wide v0, p0, Landroid/view/InputQueue;->mPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1f

    .line 82
    iget-wide v0, p0, Landroid/view/InputQueue;->mPtr:J

    invoke-static {v0, v1}, Landroid/view/InputQueue;->nativeDispose(J)V

    .line 83
    iput-wide v2, p0, Landroid/view/InputQueue;->mPtr:J

    .line 85
    :cond_1f
    return-void
.end method

.method protected whitelist test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 61
    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {p0, v0}, Landroid/view/InputQueue;->dispose(Z)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_9

    .line 63
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 64
    nop

    .line 65
    return-void

    .line 63
    :catchall_9
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 64
    throw v0
.end method

.method public greylist-max-o getNativePtr()J
    .registers 3

    .line 89
    iget-wide v0, p0, Landroid/view/InputQueue;->mPtr:J

    return-wide v0
.end method

.method public greylist-max-o sendInputEvent(Landroid/view/InputEvent;Ljava/lang/Object;ZLandroid/view/InputQueue$FinishedInputEventCallback;)V
    .registers 9
    .param p1, "e"    # Landroid/view/InputEvent;
    .param p2, "token"    # Ljava/lang/Object;
    .param p3, "predispatch"    # Z
    .param p4, "callback"    # Landroid/view/InputQueue$FinishedInputEventCallback;

    .line 95
    invoke-direct {p0, p2, p4}, Landroid/view/InputQueue;->obtainActiveInputEvent(Ljava/lang/Object;Landroid/view/InputQueue$FinishedInputEventCallback;)Landroid/view/InputQueue$ActiveInputEvent;

    move-result-object v0

    .line 97
    .local v0, "event":Landroid/view/InputQueue$ActiveInputEvent;
    instance-of v1, p1, Landroid/view/KeyEvent;

    if-eqz v1, :cond_12

    .line 98
    iget-wide v1, p0, Landroid/view/InputQueue;->mPtr:J

    move-object v3, p1

    check-cast v3, Landroid/view/KeyEvent;

    invoke-static {v1, v2, v3, p3}, Landroid/view/InputQueue;->nativeSendKeyEvent(JLandroid/view/KeyEvent;Z)J

    move-result-wide v1

    .local v1, "id":J
    goto :goto_1b

    .line 100
    .end local v1    # "id":J
    :cond_12
    iget-wide v1, p0, Landroid/view/InputQueue;->mPtr:J

    move-object v3, p1

    check-cast v3, Landroid/view/MotionEvent;

    invoke-static {v1, v2, v3}, Landroid/view/InputQueue;->nativeSendMotionEvent(JLandroid/view/MotionEvent;)J

    move-result-wide v1

    .line 102
    .restart local v1    # "id":J
    :goto_1b
    iget-object v3, p0, Landroid/view/InputQueue;->mActiveEventArray:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v1, v2, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 103
    return-void
.end method
