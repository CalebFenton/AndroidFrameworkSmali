.class public Landroid/view/ListenerWrapper;
.super Ljava/lang/Object;
.source "ListenerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final blacklist mConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public static synthetic blacklist $r8$lambda$d3K13NkNNap3cCGOQ-wdtE-8Xow(Landroid/view/ListenerWrapper;Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/ListenerWrapper;->lambda$accept$0(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 4
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "TT;>;)V"
        }
    .end annotation

    .line 37
    .local p0, "this":Landroid/view/ListenerWrapper;, "Landroid/view/ListenerWrapper<TT;>;"
    .local p2, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Landroid/view/ListenerWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    .line 39
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/function/Consumer;

    iput-object v0, p0, Landroid/view/ListenerWrapper;->mConsumer:Ljava/util/function/Consumer;

    .line 40
    return-void
.end method

.method private synthetic blacklist lambda$accept$0(Ljava/lang/Object;)V
    .registers 3
    .param p1, "value"    # Ljava/lang/Object;

    .line 46
    .local p0, "this":Landroid/view/ListenerWrapper;, "Landroid/view/ListenerWrapper<TT;>;"
    iget-object v0, p0, Landroid/view/ListenerWrapper;->mConsumer:Ljava/util/function/Consumer;

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public blacklist accept(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 46
    .local p0, "this":Landroid/view/ListenerWrapper;, "Landroid/view/ListenerWrapper<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Landroid/view/ListenerWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/view/ListenerWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/view/ListenerWrapper$$ExternalSyntheticLambda0;-><init>(Landroid/view/ListenerWrapper;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 47
    return-void
.end method

.method public blacklist isConsumerSame(Ljava/util/function/Consumer;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "TT;>;)Z"
        }
    .end annotation

    .line 54
    .local p0, "this":Landroid/view/ListenerWrapper;, "Landroid/view/ListenerWrapper<TT;>;"
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<TT;>;"
    iget-object v0, p0, Landroid/view/ListenerWrapper;->mConsumer:Ljava/util/function/Consumer;

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
