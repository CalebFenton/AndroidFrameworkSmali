.class public final Landroid/view/InputQueue;
.super Ljava/lang/Object;
.source "InputQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/InputQueue$ActiveInputEvent;,
        Landroid/view/InputQueue$Callback;,
        Landroid/view/InputQueue$FinishedInputEventCallback;
    }
.end annotation


# instance fields
.field private final mActiveEventArray:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Landroid/view/InputQueue$ActiveInputEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mActiveInputEventPool:Landroid/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$Pool",
            "<",
            "Landroid/view/InputQueue$ActiveInputEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private mPtr:J


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/16 v1, 0x14

    #@2
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 35
    new-instance v0, Landroid/util/LongSparseArray;

    #@7
    invoke-direct {v0, v1}, Landroid/util/LongSparseArray;-><init>(I)V

    #@a
    .line 34
    iput-object v0, p0, Landroid/view/InputQueue;->mActiveEventArray:Landroid/util/LongSparseArray;

    #@c
    .line 37
    new-instance v0, Landroid/util/Pools$SimplePool;

    #@e
    invoke-direct {v0, v1}, Landroid/util/Pools$SimplePool;-><init>(I)V

    #@11
    .line 36
    iput-object v0, p0, Landroid/view/InputQueue;->mActiveInputEventPool:Landroid/util/Pools$Pool;

    #@13
    .line 39
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    #@16
    move-result-object v0

    #@17
    iput-object v0, p0, Landroid/view/InputQueue;->mCloseGuard:Ldalvik/system/CloseGuard;

    #@19
    .line 51
    new-instance v0, Ljava/lang/ref/WeakReference;

    #@1b
    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@1e
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    #@21
    move-result-object v1

    #@22
    invoke-static {v0, v1}, Landroid/view/InputQueue;->nativeInit(Ljava/lang/ref/WeakReference;Landroid/os/MessageQueue;)J

    #@25
    move-result-wide v0

    #@26
    iput-wide v0, p0, Landroid/view/InputQueue;->mPtr:J

    #@28
    .line 53
    iget-object v0, p0, Landroid/view/InputQueue;->mCloseGuard:Ldalvik/system/CloseGuard;

    #@2a
    const-string/jumbo v1, "dispose"

    #@2d
    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    #@30
    .line 50
    return-void
.end method

.method private finishInputEvent(JZ)V
    .locals 5
    .param p1, "id"    # J
    .param p3, "handled"    # Z

    #@0
    .prologue
    .line 104
    iget-object v2, p0, Landroid/view/InputQueue;->mActiveEventArray:Landroid/util/LongSparseArray;

    #@2
    invoke-virtual {v2, p1, p2}, Landroid/util/LongSparseArray;->indexOfKey(J)I

    #@5
    move-result v1

    #@6
    .line 105
    .local v1, "index":I
    if-ltz v1, :cond_0

    #@8
    .line 106
    iget-object v2, p0, Landroid/view/InputQueue;->mActiveEventArray:Landroid/util/LongSparseArray;

    #@a
    invoke-virtual {v2, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Landroid/view/InputQueue$ActiveInputEvent;

    #@10
    .line 107
    .local v0, "e":Landroid/view/InputQueue$ActiveInputEvent;
    iget-object v2, p0, Landroid/view/InputQueue;->mActiveEventArray:Landroid/util/LongSparseArray;

    #@12
    invoke-virtual {v2, v1}, Landroid/util/LongSparseArray;->removeAt(I)V

    #@15
    .line 108
    iget-object v2, v0, Landroid/view/InputQueue$ActiveInputEvent;->mCallback:Landroid/view/InputQueue$FinishedInputEventCallback;

    #@17
    iget-object v3, v0, Landroid/view/InputQueue$ActiveInputEvent;->mToken:Ljava/lang/Object;

    #@19
    invoke-interface {v2, v3, p3}, Landroid/view/InputQueue$FinishedInputEventCallback;->onFinishedInputEvent(Ljava/lang/Object;Z)V

    #@1c
    .line 109
    invoke-direct {p0, v0}, Landroid/view/InputQueue;->recycleActiveInputEvent(Landroid/view/InputQueue$ActiveInputEvent;)V

    #@1f
    .line 103
    .end local v0    # "e":Landroid/view/InputQueue$ActiveInputEvent;
    :cond_0
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
            "Landroid/view/InputQueue;",
            ">;",
            "Landroid/os/MessageQueue;",
            ")J"
        }
    .end annotation
.end method

.method private static native nativeSendKeyEvent(JLandroid/view/KeyEvent;Z)J
.end method

.method private static native nativeSendMotionEvent(JLandroid/view/MotionEvent;)J
.end method

.method private obtainActiveInputEvent(Ljava/lang/Object;Landroid/view/InputQueue$FinishedInputEventCallback;)Landroid/view/InputQueue$ActiveInputEvent;
    .locals 3
    .param p1, "token"    # Ljava/lang/Object;
    .param p2, "callback"    # Landroid/view/InputQueue$FinishedInputEventCallback;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 115
    iget-object v1, p0, Landroid/view/InputQueue;->mActiveInputEventPool:Landroid/util/Pools$Pool;

    #@3
    invoke-interface {v1}, Landroid/util/Pools$Pool;->acquire()Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroid/view/InputQueue$ActiveInputEvent;

    #@9
    .line 116
    .local v0, "e":Landroid/view/InputQueue$ActiveInputEvent;
    if-nez v0, :cond_0

    #@b
    .line 117
    new-instance v0, Landroid/view/InputQueue$ActiveInputEvent;

    #@d
    .end local v0    # "e":Landroid/view/InputQueue$ActiveInputEvent;
    invoke-direct {v0, p0, v2}, Landroid/view/InputQueue$ActiveInputEvent;-><init>(Landroid/view/InputQueue;Landroid/view/InputQueue$ActiveInputEvent;)V

    #@10
    .line 119
    .restart local v0    # "e":Landroid/view/InputQueue$ActiveInputEvent;
    :cond_0
    iput-object p1, v0, Landroid/view/InputQueue$ActiveInputEvent;->mToken:Ljava/lang/Object;

    #@12
    .line 120
    iput-object p2, v0, Landroid/view/InputQueue$ActiveInputEvent;->mCallback:Landroid/view/InputQueue$FinishedInputEventCallback;

    #@14
    .line 121
    return-object v0
.end method

.method private recycleActiveInputEvent(Landroid/view/InputQueue$ActiveInputEvent;)V
    .locals 1
    .param p1, "e"    # Landroid/view/InputQueue$ActiveInputEvent;

    #@0
    .prologue
    .line 125
    invoke-virtual {p1}, Landroid/view/InputQueue$ActiveInputEvent;->recycle()V

    #@3
    .line 126
    iget-object v0, p0, Landroid/view/InputQueue;->mActiveInputEventPool:Landroid/util/Pools$Pool;

    #@5
    invoke-interface {v0, p1}, Landroid/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    #@8
    .line 124
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    #@0
    .prologue
    .line 67
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0}, Landroid/view/InputQueue;->dispose(Z)V

    #@4
    .line 66
    return-void
.end method

.method public dispose(Z)V
    .locals 4
    .param p1, "finalized"    # Z

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    .line 72
    iget-object v0, p0, Landroid/view/InputQueue;->mCloseGuard:Ldalvik/system/CloseGuard;

    #@4
    if-eqz v0, :cond_1

    #@6
    .line 73
    if-eqz p1, :cond_0

    #@8
    .line 74
    iget-object v0, p0, Landroid/view/InputQueue;->mCloseGuard:Ldalvik/system/CloseGuard;

    #@a
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    #@d
    .line 76
    :cond_0
    iget-object v0, p0, Landroid/view/InputQueue;->mCloseGuard:Ldalvik/system/CloseGuard;

    #@f
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    #@12
    .line 79
    :cond_1
    iget-wide v0, p0, Landroid/view/InputQueue;->mPtr:J

    #@14
    cmp-long v0, v0, v2

    #@16
    if-eqz v0, :cond_2

    #@18
    .line 80
    iget-wide v0, p0, Landroid/view/InputQueue;->mPtr:J

    #@1a
    invoke-static {v0, v1}, Landroid/view/InputQueue;->nativeDispose(J)V

    #@1d
    .line 81
    iput-wide v2, p0, Landroid/view/InputQueue;->mPtr:J

    #@1f
    .line 71
    :cond_2
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
    .line 59
    const/4 v0, 0x1

    #@1
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/view/InputQueue;->dispose(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    .line 61
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@7
    .line 57
    return-void

    #@8
    .line 60
    :catchall_0
    move-exception v0

    #@9
    .line 61
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@c
    .line 60
    throw v0
.end method

.method public getNativePtr()J
    .locals 2

    #@0
    .prologue
    .line 87
    iget-wide v0, p0, Landroid/view/InputQueue;->mPtr:J

    #@2
    return-wide v0
.end method

.method public sendInputEvent(Landroid/view/InputEvent;Ljava/lang/Object;ZLandroid/view/InputQueue$FinishedInputEventCallback;)V
    .locals 6
    .param p1, "e"    # Landroid/view/InputEvent;
    .param p2, "token"    # Ljava/lang/Object;
    .param p3, "predispatch"    # Z
    .param p4, "callback"    # Landroid/view/InputQueue$FinishedInputEventCallback;

    #@0
    .prologue
    .line 93
    invoke-direct {p0, p2, p4}, Landroid/view/InputQueue;->obtainActiveInputEvent(Ljava/lang/Object;Landroid/view/InputQueue$FinishedInputEventCallback;)Landroid/view/InputQueue$ActiveInputEvent;

    #@3
    move-result-object v0

    #@4
    .line 95
    .local v0, "event":Landroid/view/InputQueue$ActiveInputEvent;
    instance-of v1, p1, Landroid/view/KeyEvent;

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 96
    iget-wide v4, p0, Landroid/view/InputQueue;->mPtr:J

    #@a
    check-cast p1, Landroid/view/KeyEvent;

    #@c
    .end local p1    # "e":Landroid/view/InputEvent;
    invoke-static {v4, v5, p1, p3}, Landroid/view/InputQueue;->nativeSendKeyEvent(JLandroid/view/KeyEvent;Z)J

    #@f
    move-result-wide v2

    #@10
    .line 100
    .local v2, "id":J
    :goto_0
    iget-object v1, p0, Landroid/view/InputQueue;->mActiveEventArray:Landroid/util/LongSparseArray;

    #@12
    invoke-virtual {v1, v2, v3, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    #@15
    .line 92
    return-void

    #@16
    .line 98
    .end local v2    # "id":J
    .restart local p1    # "e":Landroid/view/InputEvent;
    :cond_0
    iget-wide v4, p0, Landroid/view/InputQueue;->mPtr:J

    #@18
    check-cast p1, Landroid/view/MotionEvent;

    #@1a
    .end local p1    # "e":Landroid/view/InputEvent;
    invoke-static {v4, v5, p1}, Landroid/view/InputQueue;->nativeSendMotionEvent(JLandroid/view/MotionEvent;)J

    #@1d
    move-result-wide v2

    #@1e
    .restart local v2    # "id":J
    goto :goto_0
.end method
