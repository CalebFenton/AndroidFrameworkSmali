.class public Landroid/view/FrameMetricsObserver;
.super Ljava/lang/Object;
.source "FrameMetricsObserver.java"


# instance fields
.field private mFrameMetrics:Landroid/view/FrameMetrics;

.field mListener:Landroid/view/Window$OnFrameMetricsAvailableListener;

.field private mMessageQueue:Landroid/os/MessageQueue;

.field mNative:Lcom/android/internal/util/VirtualRefBasePtr;

.field private mWindow:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/Window;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/view/Window;Landroid/os/Looper;Landroid/view/Window$OnFrameMetricsAvailableListener;)V
    .locals 2
    .param p1, "window"    # Landroid/view/Window;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "listener"    # Landroid/view/Window$OnFrameMetricsAvailableListener;

    #@0
    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 53
    if-nez p2, :cond_0

    #@5
    .line 54
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    const-string/jumbo v1, "looper cannot be null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 57
    :cond_0
    invoke-virtual {p2}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    #@11
    move-result-object v0

    #@12
    iput-object v0, p0, Landroid/view/FrameMetricsObserver;->mMessageQueue:Landroid/os/MessageQueue;

    #@14
    .line 58
    iget-object v0, p0, Landroid/view/FrameMetricsObserver;->mMessageQueue:Landroid/os/MessageQueue;

    #@16
    if-nez v0, :cond_1

    #@18
    .line 59
    new-instance v0, Ljava/lang/IllegalStateException;

    #@1a
    const-string/jumbo v1, "invalid looper, null message queue\n"

    #@1d
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@20
    throw v0

    #@21
    .line 62
    :cond_1
    new-instance v0, Landroid/view/FrameMetrics;

    #@23
    invoke-direct {v0}, Landroid/view/FrameMetrics;-><init>()V

    #@26
    iput-object v0, p0, Landroid/view/FrameMetricsObserver;->mFrameMetrics:Landroid/view/FrameMetrics;

    #@28
    .line 63
    new-instance v0, Ljava/lang/ref/WeakReference;

    #@2a
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@2d
    iput-object v0, p0, Landroid/view/FrameMetricsObserver;->mWindow:Ljava/lang/ref/WeakReference;

    #@2f
    .line 64
    iput-object p3, p0, Landroid/view/FrameMetricsObserver;->mListener:Landroid/view/Window$OnFrameMetricsAvailableListener;

    #@31
    .line 52
    return-void
.end method

.method private notifyDataAvailable(I)V
    .locals 3
    .param p1, "dropCount"    # I

    #@0
    .prologue
    .line 70
    iget-object v1, p0, Landroid/view/FrameMetricsObserver;->mWindow:Ljava/lang/ref/WeakReference;

    #@2
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/view/Window;

    #@8
    .line 71
    .local v0, "window":Landroid/view/Window;
    if-eqz v0, :cond_0

    #@a
    .line 72
    iget-object v1, p0, Landroid/view/FrameMetricsObserver;->mListener:Landroid/view/Window$OnFrameMetricsAvailableListener;

    #@c
    iget-object v2, p0, Landroid/view/FrameMetricsObserver;->mFrameMetrics:Landroid/view/FrameMetrics;

    #@e
    invoke-interface {v1, v0, v2, p1}, Landroid/view/Window$OnFrameMetricsAvailableListener;->onFrameMetricsAvailable(Landroid/view/Window;Landroid/view/FrameMetrics;I)V

    #@11
    .line 69
    :cond_0
    return-void
.end method
