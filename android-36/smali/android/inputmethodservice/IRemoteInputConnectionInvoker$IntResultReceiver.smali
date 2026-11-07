.class final Landroid/inputmethodservice/IRemoteInputConnectionInvoker$IntResultReceiver;
.super Landroid/inputmethodservice/IRemoteInputConnectionInvoker$OnceResultReceiver;
.source "IRemoteInputConnectionInvoker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/IRemoteInputConnectionInvoker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "IntResultReceiver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/inputmethodservice/IRemoteInputConnectionInvoker$OnceResultReceiver<",
        "Ljava/util/function/IntConsumer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>(Ljava/util/concurrent/Executor;Ljava/util/function/IntConsumer;)V
    .registers 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "consumer"    # Ljava/util/function/IntConsumer;

    .line 112
    invoke-direct {p0, p1, p2}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker$OnceResultReceiver;-><init>(Ljava/util/concurrent/Executor;Ljava/lang/Object;)V

    .line 113
    return-void
.end method

.method static synthetic blacklist lambda$dispatch$0(Ljava/util/function/IntConsumer;I)V
    .registers 2
    .param p0, "consumer"    # Ljava/util/function/IntConsumer;
    .param p1, "code"    # I

    .line 118
    invoke-interface {p0, p1}, Ljava/util/function/IntConsumer;->accept(I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic blacklist dispatch(Ljava/util/concurrent/Executor;Ljava/lang/Object;ILandroid/os/Bundle;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 110
    check-cast p2, Ljava/util/function/IntConsumer;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker$IntResultReceiver;->dispatch(Ljava/util/concurrent/Executor;Ljava/util/function/IntConsumer;ILandroid/os/Bundle;)V

    return-void
.end method

.method protected blacklist dispatch(Ljava/util/concurrent/Executor;Ljava/util/function/IntConsumer;ILandroid/os/Bundle;)V
    .registers 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "consumer"    # Ljava/util/function/IntConsumer;
    .param p3, "code"    # I
    .param p4, "data"    # Landroid/os/Bundle;

    .line 118
    new-instance v0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker$IntResultReceiver$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2, p3}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker$IntResultReceiver$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/IntConsumer;I)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 119
    return-void
.end method
