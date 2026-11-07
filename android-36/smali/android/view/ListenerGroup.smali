.class public Landroid/view/ListenerGroup;
.super Ljava/lang/Object;
.source "ListenerGroup.java"


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
.field private blacklist mLastValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final blacklist mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/ListenerWrapper<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 42
    .local p0, "this":Landroid/view/ListenerGroup;, "Landroid/view/ListenerGroup<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ListenerGroup;->mListeners:Ljava/util/List;

    .line 43
    iput-object p1, p0, Landroid/view/ListenerGroup;->mLastValue:Ljava/lang/Object;

    .line 44
    return-void
.end method

.method private blacklist computeIndex(Ljava/util/function/Consumer;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "TT;>;)I"
        }
    .end annotation

    .line 92
    .local p0, "this":Landroid/view/ListenerGroup;, "Landroid/view/ListenerGroup<TT;>;"
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<TT;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/view/ListenerGroup;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 93
    iget-object v1, p0, Landroid/view/ListenerGroup;->mListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ListenerWrapper;

    invoke-virtual {v1, p1}, Landroid/view/ListenerWrapper;->isConsumerSame(Ljava/util/function/Consumer;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 94
    return v0

    .line 92
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 97
    .end local v0    # "i":I
    :cond_1b
    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method public blacklist accept(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 50
    .local p0, "this":Landroid/view/ListenerGroup;, "Landroid/view/ListenerGroup<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ListenerGroup;->mLastValue:Ljava/lang/Object;

    .line 51
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    iget-object v1, p0, Landroid/view/ListenerGroup;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1d

    .line 52
    iget-object v1, p0, Landroid/view/ListenerGroup;->mListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ListenerWrapper;

    invoke-virtual {v1, p1}, Landroid/view/ListenerWrapper;->accept(Ljava/lang/Object;)V

    .line 51
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 54
    .end local v0    # "i":I
    :cond_1d
    return-void
.end method

.method public blacklist addListener(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 5
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "TT;>;)V"
        }
    .end annotation

    .line 61
    .local p0, "this":Landroid/view/ListenerGroup;, "Landroid/view/ListenerGroup<TT;>;"
    .local p2, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<TT;>;"
    invoke-virtual {p0, p2}, Landroid/view/ListenerGroup;->isConsumerPresent(Ljava/util/function/Consumer;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 62
    return-void

    .line 64
    :cond_7
    new-instance v0, Landroid/view/ListenerWrapper;

    invoke-direct {v0, p1, p2}, Landroid/view/ListenerWrapper;-><init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 65
    .local v0, "listenerWrapper":Landroid/view/ListenerWrapper;, "Landroid/view/ListenerWrapper<TT;>;"
    iget-object v1, p0, Landroid/view/ListenerGroup;->mListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v1, p0, Landroid/view/ListenerGroup;->mLastValue:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/view/ListenerWrapper;->accept(Ljava/lang/Object;)V

    .line 67
    return-void
.end method

.method public blacklist isConsumerPresent(Ljava/util/function/Consumer;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "TT;>;)Z"
        }
    .end annotation

    .line 85
    .local p0, "this":Landroid/view/ListenerGroup;, "Landroid/view/ListenerGroup<TT;>;"
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<TT;>;"
    invoke-direct {p0, p1}, Landroid/view/ListenerGroup;->computeIndex(Ljava/util/function/Consumer;)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public blacklist removeListener(Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "TT;>;)V"
        }
    .end annotation

    .line 74
    .local p0, "this":Landroid/view/ListenerGroup;, "Landroid/view/ListenerGroup<TT;>;"
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<TT;>;"
    invoke-direct {p0, p1}, Landroid/view/ListenerGroup;->computeIndex(Ljava/util/function/Consumer;)I

    move-result v0

    .line 75
    .local v0, "index":I
    const/4 v1, -0x1

    if-le v0, v1, :cond_c

    .line 76
    iget-object v1, p0, Landroid/view/ListenerGroup;->mListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 78
    :cond_c
    return-void
.end method
