.class public interface abstract Lcom/android/internal/listeners/ListenerTransport;
.super Ljava/lang/Object;
.source "ListenerTransport.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T",
        "Listener:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public static synthetic blacklist $r8$lambda$lmv84tGdNH-dF_wm639fPd2xpM8(Lcom/android/internal/listeners/ListenerTransport;Ljava/util/function/Consumer;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/listeners/ListenerTransport;->lambda$execute$0(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private synthetic blacklist lambda$execute$0(Ljava/util/function/Consumer;)V
    .registers 3
    .param p1, "operation"    # Ljava/util/function/Consumer;

    .line 55
    .local p0, "this":Lcom/android/internal/listeners/ListenerTransport;, "Lcom/android/internal/listeners/ListenerTransport<TTListener;>;"
    invoke-interface {p0}, Lcom/android/internal/listeners/ListenerTransport;->getListener()Ljava/lang/Object;

    move-result-object v0

    .line 56
    .local v0, "listener":Ljava/lang/Object;, "TTListener;"
    if-nez v0, :cond_7

    .line 57
    return-void

    .line 60
    :cond_7
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 61
    return-void
.end method


# virtual methods
.method public blacklist execute(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 4
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "TT",
            "Listener;",
            ">;)V"
        }
    .end annotation

    .line 48
    .local p0, "this":Lcom/android/internal/listeners/ListenerTransport;, "Lcom/android/internal/listeners/ListenerTransport<TTListener;>;"
    .local p2, "operation":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<TTListener;>;"
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    invoke-interface {p0}, Lcom/android/internal/listeners/ListenerTransport;->getListener()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_a

    .line 51
    return-void

    .line 54
    :cond_a
    new-instance v0, Lcom/android/internal/listeners/ListenerTransport$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lcom/android/internal/listeners/ListenerTransport$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/listeners/ListenerTransport;Ljava/util/function/Consumer;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 62
    return-void
.end method

.method public abstract blacklist getListener()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT",
            "Listener;"
        }
    .end annotation
.end method

.method public abstract blacklist unregister()V
.end method
