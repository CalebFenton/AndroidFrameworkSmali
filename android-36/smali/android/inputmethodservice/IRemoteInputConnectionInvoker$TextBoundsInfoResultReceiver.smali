.class final Landroid/inputmethodservice/IRemoteInputConnectionInvoker$TextBoundsInfoResultReceiver;
.super Landroid/inputmethodservice/IRemoteInputConnectionInvoker$OnceResultReceiver;
.source "IRemoteInputConnectionInvoker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/IRemoteInputConnectionInvoker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TextBoundsInfoResultReceiver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/inputmethodservice/IRemoteInputConnectionInvoker$OnceResultReceiver<",
        "Ljava/util/function/Consumer<",
        "Landroid/view/inputmethod/TextBoundsInfoResult;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/view/inputmethod/TextBoundsInfoResult;",
            ">;)V"
        }
    .end annotation

    .line 131
    .local p2, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/view/inputmethod/TextBoundsInfoResult;>;"
    invoke-direct {p0, p1, p2}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker$OnceResultReceiver;-><init>(Ljava/util/concurrent/Executor;Ljava/lang/Object;)V

    .line 132
    return-void
.end method

.method static synthetic blacklist lambda$dispatch$0(Ljava/util/function/Consumer;Landroid/view/inputmethod/TextBoundsInfoResult;)V
    .registers 2
    .param p0, "consumer"    # Ljava/util/function/Consumer;
    .param p1, "textBoundsInfoResult"    # Landroid/view/inputmethod/TextBoundsInfoResult;

    .line 139
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

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

    .line 127
    check-cast p2, Ljava/util/function/Consumer;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker$TextBoundsInfoResultReceiver;->dispatch(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;ILandroid/os/Bundle;)V

    return-void
.end method

.method protected blacklist dispatch(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;ILandroid/os/Bundle;)V
    .registers 7
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "code"    # I
    .param p4, "data"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/view/inputmethod/TextBoundsInfoResult;",
            ">;I",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 137
    .local p2, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/view/inputmethod/TextBoundsInfoResult;>;"
    new-instance v0, Landroid/view/inputmethod/TextBoundsInfoResult;

    .line 138
    invoke-static {p4}, Landroid/view/inputmethod/TextBoundsInfo;->createFromBundle(Landroid/os/Bundle;)Landroid/view/inputmethod/TextBoundsInfo;

    move-result-object v1

    invoke-direct {v0, p3, v1}, Landroid/view/inputmethod/TextBoundsInfoResult;-><init>(ILandroid/view/inputmethod/TextBoundsInfo;)V

    .line 139
    .local v0, "textBoundsInfoResult":Landroid/view/inputmethod/TextBoundsInfoResult;
    new-instance v1, Landroid/inputmethodservice/IRemoteInputConnectionInvoker$TextBoundsInfoResultReceiver$$ExternalSyntheticLambda0;

    invoke-direct {v1, p2, v0}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker$TextBoundsInfoResultReceiver$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;Landroid/view/inputmethod/TextBoundsInfoResult;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 140
    return-void
.end method
