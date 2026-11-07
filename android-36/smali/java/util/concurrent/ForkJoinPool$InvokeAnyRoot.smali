.class final Ljava/util/concurrent/ForkJoinPool$InvokeAnyRoot;
.super Ljava/util/concurrent/ForkJoinTask;
.source "ForkJoinPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ForkJoinPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "InvokeAnyRoot"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/ForkJoinTask<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = 0x2763fe86dcb18e30L


# instance fields
.field final blacklist count:Ljava/util/concurrent/atomic/AtomicInteger;

.field final blacklist pool:Ljava/util/concurrent/ForkJoinPool;

.field volatile blacklist result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(ILjava/util/concurrent/ForkJoinPool;)V
    .registers 4
    .param p1, "n"    # I
    .param p2, "p"    # Ljava/util/concurrent/ForkJoinPool;

    .line 3069
    .local p0, "this":Ljava/util/concurrent/ForkJoinPool$InvokeAnyRoot;, "Ljava/util/concurrent/ForkJoinPool$InvokeAnyRoot<TE;>;"
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;-><init>()V

    .line 3070
    iput-object p2, p0, Ljava/util/concurrent/ForkJoinPool$InvokeAnyRoot;->pool:Ljava/util/concurrent/ForkJoinPool;

    .line 3071
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Ljava/util/concurrent/ForkJoinPool$InvokeAnyRoot;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3072
    return-void
.end method


# virtual methods
.method public final whitelist test-api exec()Z
    .registers 2

    .line 3094
    .local p0, "this":Ljava/util/concurrent/ForkJoinPool$InvokeAnyRoot;, "Ljava/util/concurrent/ForkJoinPool$InvokeAnyRoot<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public final whitelist test-api getRawResult()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 3095
    .local p0, "this":Ljava/util/concurrent/ForkJoinPool$InvokeAnyRoot;, "Ljava/util/concurrent/ForkJoinPool$InvokeAnyRoot<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/ForkJoinPool$InvokeAnyRoot;->result:Ljava/lang/Object;

    return-object v0
.end method

.method public final whitelist test-api setRawResult(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 3096
    .local p0, "this":Ljava/util/concurrent/ForkJoinPool$InvokeAnyRoot;, "Ljava/util/concurrent/ForkJoinPool$InvokeAnyRoot<TE;>;"
    .local p1, "v":Ljava/lang/Object;, "TE;"
    iput-object p1, p0, Ljava/util/concurrent/ForkJoinPool$InvokeAnyRoot;->result:Ljava/lang/Object;

    return-void
.end method

.method final blacklist tryComplete(Ljava/util/concurrent/Callable;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "TE;>;)V"
        }
    .end annotation

    .line 3074
    .local p0, "this":Ljava/util/concurrent/ForkJoinPool$InvokeAnyRoot;, "Ljava/util/concurrent/ForkJoinPool$InvokeAnyRoot<TE;>;"
    .local p1, "c":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TE;>;"
    const/4 v0, 0x0

    .line 3076
    .local v0, "ex":Ljava/lang/Throwable;
    if-eqz p1, :cond_2a

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-nez v1, :cond_2a

    iget-object v1, p0, Ljava/util/concurrent/ForkJoinPool$InvokeAnyRoot;->pool:Ljava/util/concurrent/ForkJoinPool;

    if-eqz v1, :cond_14

    iget-object v1, p0, Ljava/util/concurrent/ForkJoinPool$InvokeAnyRoot;->pool:Ljava/util/concurrent/ForkJoinPool;

    iget v1, v1, Ljava/util/concurrent/ForkJoinPool;->runState:I

    if-gez v1, :cond_14

    goto :goto_2a

    .line 3079
    :cond_14
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinPool$InvokeAnyRoot;->isDone()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 3080
    const/4 v1, 0x0

    .local v1, "failed":Z
    goto :goto_2b

    .line 3083
    .end local v1    # "failed":Z
    :cond_1c
    :try_start_1c
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/concurrent/ForkJoinPool$InvokeAnyRoot;->complete(Ljava/lang/Object;)V
    :try_end_23
    .catchall {:try_start_1c .. :try_end_23} :catchall_25

    .line 3084
    const/4 v1, 0x0

    .line 3088
    .restart local v1    # "failed":Z
    goto :goto_2b

    .line 3085
    .end local v1    # "failed":Z
    :catchall_25
    move-exception v1

    .line 3086
    .local v1, "tx":Ljava/lang/Throwable;
    move-object v0, v1

    .line 3087
    const/4 v2, 0x1

    move v1, v2

    .local v2, "failed":Z
    goto :goto_2b

    .line 3078
    .end local v1    # "tx":Ljava/lang/Throwable;
    .end local v2    # "failed":Z
    :cond_2a
    :goto_2a
    const/4 v1, 0x1

    .line 3090
    .local v1, "failed":Z
    :goto_2b
    iget-object v2, p0, Ljava/util/concurrent/ForkJoinPool$InvokeAnyRoot;->pool:Ljava/util/concurrent/ForkJoinPool;

    if-eqz v2, :cond_35

    iget-object v2, p0, Ljava/util/concurrent/ForkJoinPool$InvokeAnyRoot;->pool:Ljava/util/concurrent/ForkJoinPool;

    iget v2, v2, Ljava/util/concurrent/ForkJoinPool;->runState:I

    if-ltz v2, :cond_40

    :cond_35
    if-eqz v1, :cond_4c

    iget-object v2, p0, Ljava/util/concurrent/ForkJoinPool$InvokeAnyRoot;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3091
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_4c

    .line 3092
    :cond_40
    if-eqz v0, :cond_44

    move-object v2, v0

    goto :goto_49

    :cond_44
    new-instance v2, Ljava/util/concurrent/CancellationException;

    invoke-direct {v2}, Ljava/util/concurrent/CancellationException;-><init>()V

    :goto_49
    invoke-virtual {p0, v2}, Ljava/util/concurrent/ForkJoinPool$InvokeAnyRoot;->trySetThrown(Ljava/lang/Throwable;)I

    .line 3093
    :cond_4c
    return-void
.end method
