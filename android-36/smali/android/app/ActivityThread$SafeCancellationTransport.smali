.class final Landroid/app/ActivityThread$SafeCancellationTransport;
.super Landroid/os/ICancellationSignal$Stub;
.source "ActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SafeCancellationTransport"
.end annotation


# instance fields
.field private final blacklist mWeakActivityThread:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/ActivityThread;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Landroid/app/ActivityThread;Landroid/os/CancellationSignal;)V
    .registers 4
    .param p1, "activityThread"    # Landroid/app/ActivityThread;
    .param p2, "cancellation"    # Landroid/os/CancellationSignal;

    .line 2338
    invoke-direct {p0}, Landroid/os/ICancellationSignal$Stub;-><init>()V

    .line 2339
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/app/ActivityThread$SafeCancellationTransport;->mWeakActivityThread:Ljava/lang/ref/WeakReference;

    .line 2340
    return-void
.end method


# virtual methods
.method public blacklist cancel()V
    .registers 3

    .line 2344
    iget-object v0, p0, Landroid/app/ActivityThread$SafeCancellationTransport;->mWeakActivityThread:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread;

    .line 2345
    .local v0, "activityThread":Landroid/app/ActivityThread;
    if-eqz v0, :cond_14

    .line 2346
    nop

    .line 2347
    invoke-static {v0, p0}, Landroid/app/ActivityThread;->-$$Nest$mremoveSafeCancellationTransport(Landroid/app/ActivityThread;Landroid/app/ActivityThread$SafeCancellationTransport;)Landroid/os/CancellationSignal;

    move-result-object v1

    .line 2348
    .local v1, "cancellation":Landroid/os/CancellationSignal;
    if-eqz v1, :cond_14

    .line 2349
    invoke-virtual {v1}, Landroid/os/CancellationSignal;->cancel()V

    .line 2352
    .end local v1    # "cancellation":Landroid/os/CancellationSignal;
    :cond_14
    return-void
.end method
