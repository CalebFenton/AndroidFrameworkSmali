.class final Landroid/view/ScrollCaptureConnection$ConsumerCallback;
.super Landroid/view/ScrollCaptureConnection$SafeCallback;
.source "ScrollCaptureConnection.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ScrollCaptureConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ConsumerCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/view/ScrollCaptureConnection$SafeCallback<",
        "Ljava/util/function/Consumer<",
        "TT;>;>;",
        "Ljava/util/function/Consumer<",
        "TT;>;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>(Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 4
    .param p1, "signal"    # Landroid/os/CancellationSignal;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/CancellationSignal;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "TT;>;)V"
        }
    .end annotation

    .line 355
    .local p0, "this":Landroid/view/ScrollCaptureConnection$ConsumerCallback;, "Landroid/view/ScrollCaptureConnection$ConsumerCallback<TT;>;"
    .local p3, "target":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<TT;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ScrollCaptureConnection$SafeCallback;-><init>(Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Ljava/lang/Object;)V

    .line 356
    return-void
.end method

.method static synthetic blacklist lambda$accept$0(Ljava/lang/Object;Ljava/util/function/Consumer;)V
    .registers 2
    .param p0, "value"    # Ljava/lang/Object;
    .param p1, "target"    # Ljava/util/function/Consumer;

    .line 360
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api accept(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 360
    .local p0, "this":Landroid/view/ScrollCaptureConnection$ConsumerCallback;, "Landroid/view/ScrollCaptureConnection$ConsumerCallback<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    new-instance v0, Landroid/view/ScrollCaptureConnection$ConsumerCallback$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Landroid/view/ScrollCaptureConnection$ConsumerCallback$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroid/view/ScrollCaptureConnection$ConsumerCallback;->maybeAccept(Ljava/util/function/Consumer;)V

    .line 361
    return-void
.end method
