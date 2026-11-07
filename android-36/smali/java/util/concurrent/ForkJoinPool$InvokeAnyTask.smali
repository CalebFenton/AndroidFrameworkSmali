.class final Ljava/util/concurrent/ForkJoinPool$InvokeAnyTask;
.super Ljava/util/concurrent/ForkJoinTask;
.source "ForkJoinPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ForkJoinPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "InvokeAnyTask"
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
.field final blacklist callable:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "TE;>;"
        }
    .end annotation
.end field

.field final blacklist root:Ljava/util/concurrent/ForkJoinPool$InvokeAnyRoot;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ForkJoinPool$InvokeAnyRoot<",
            "TE;>;"
        }
    .end annotation
.end field

.field volatile transient blacklist runner:Ljava/lang/Thread;


# direct methods
.method constructor blacklist <init>(Ljava/util/concurrent/ForkJoinPool$InvokeAnyRoot;Ljava/util/concurrent/Callable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ForkJoinPool$InvokeAnyRoot<",
            "TE;>;",
            "Ljava/util/concurrent/Callable<",
            "TE;>;)V"
        }
    .end annotation

    .line 3106
    .local p0, "this":Ljava/util/concurrent/ForkJoinPool$InvokeAnyTask;, "Ljava/util/concurrent/ForkJoinPool$InvokeAnyTask<TE;>;"
    .local p1, "root":Ljava/util/concurrent/ForkJoinPool$InvokeAnyRoot;, "Ljava/util/concurrent/ForkJoinPool$InvokeAnyRoot<TE;>;"
    .local p2, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TE;>;"
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;-><init>()V

    .line 3107
    iput-object p1, p0, Ljava/util/concurrent/ForkJoinPool$InvokeAnyTask;->root:Ljava/util/concurrent/ForkJoinPool$InvokeAnyRoot;

    .line 3108
    iput-object p2, p0, Ljava/util/concurrent/ForkJoinPool$InvokeAnyTask;->callable:Ljava/util/concurrent/Callable;

    .line 3109
    return-void
.end method


# virtual methods
.method public final whitelist test-api cancel(Z)Z
    .registers 5
    .param p1, "mayInterruptIfRunning"    # Z

    .line 3120
    .local p0, "this":Ljava/util/concurrent/ForkJoinPool$InvokeAnyTask;, "Ljava/util/concurrent/ForkJoinPool$InvokeAnyTask<TE;>;"
    const/4 v0, 0x0

    invoke-super {p0, v0}, Ljava/util/concurrent/ForkJoinTask;->cancel(Z)Z

    move-result v0

    .line 3121
    .local v0, "stat":Z
    if-eqz p1, :cond_11

    iget-object v1, p0, Ljava/util/concurrent/ForkJoinPool$InvokeAnyTask;->runner:Ljava/lang/Thread;

    move-object v2, v1

    .local v2, "t":Ljava/lang/Thread;
    if-eqz v1, :cond_11

    .line 3123
    :try_start_c
    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_10

    .line 3125
    goto :goto_11

    .line 3124
    :catchall_10
    move-exception v1

    .line 3127
    .end local v2    # "t":Ljava/lang/Thread;
    :cond_11
    :goto_11
    return v0
.end method

.method public final whitelist test-api exec()Z
    .registers 3

    .line 3111
    .local p0, "this":Ljava/util/concurrent/ForkJoinPool$InvokeAnyTask;, "Ljava/util/concurrent/ForkJoinPool$InvokeAnyTask<TE;>;"
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 3112
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Ljava/util/concurrent/ForkJoinPool$InvokeAnyTask;->runner:Ljava/lang/Thread;

    .line 3113
    iget-object v0, p0, Ljava/util/concurrent/ForkJoinPool$InvokeAnyTask;->root:Ljava/util/concurrent/ForkJoinPool$InvokeAnyRoot;

    iget-object v1, p0, Ljava/util/concurrent/ForkJoinPool$InvokeAnyTask;->callable:Ljava/util/concurrent/Callable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ForkJoinPool$InvokeAnyRoot;->tryComplete(Ljava/util/concurrent/Callable;)V

    .line 3114
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/concurrent/ForkJoinPool$InvokeAnyTask;->runner:Ljava/lang/Thread;

    .line 3115
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 3116
    const/4 v0, 0x1

    return v0
.end method

.method public final whitelist test-api getRawResult()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 3130
    .local p0, "this":Ljava/util/concurrent/ForkJoinPool$InvokeAnyTask;, "Ljava/util/concurrent/ForkJoinPool$InvokeAnyTask<TE;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public final whitelist test-api setRawResult(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 3129
    .local p0, "this":Ljava/util/concurrent/ForkJoinPool$InvokeAnyTask;, "Ljava/util/concurrent/ForkJoinPool$InvokeAnyTask<TE;>;"
    .local p1, "v":Ljava/lang/Object;, "TE;"
    return-void
.end method
