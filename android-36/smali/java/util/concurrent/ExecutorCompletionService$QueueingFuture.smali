.class Ljava/util/concurrent/ExecutorCompletionService$QueueingFuture;
.super Ljava/util/concurrent/FutureTask;
.source "ExecutorCompletionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ExecutorCompletionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QueueingFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/FutureTask<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final greylist-max-o completionQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/util/concurrent/Future<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field private final greylist-max-o task:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist-max-o <init>(Ljava/util/concurrent/RunnableFuture;Ljava/util/concurrent/BlockingQueue;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/RunnableFuture<",
            "TV;>;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/util/concurrent/Future<",
            "TV;>;>;)V"
        }
    .end annotation

    .line 116
    .local p0, "this":Ljava/util/concurrent/ExecutorCompletionService$QueueingFuture;, "Ljava/util/concurrent/ExecutorCompletionService$QueueingFuture<TV;>;"
    .local p1, "task":Ljava/util/concurrent/RunnableFuture;, "Ljava/util/concurrent/RunnableFuture<TV;>;"
    .local p2, "completionQueue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/util/concurrent/Future<TV;>;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 117
    iput-object p1, p0, Ljava/util/concurrent/ExecutorCompletionService$QueueingFuture;->task:Ljava/util/concurrent/Future;

    .line 118
    iput-object p2, p0, Ljava/util/concurrent/ExecutorCompletionService$QueueingFuture;->completionQueue:Ljava/util/concurrent/BlockingQueue;

    .line 119
    return-void
.end method


# virtual methods
.method protected whitelist test-api done()V
    .registers 3

    .line 122
    .local p0, "this":Ljava/util/concurrent/ExecutorCompletionService$QueueingFuture;, "Ljava/util/concurrent/ExecutorCompletionService$QueueingFuture<TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ExecutorCompletionService$QueueingFuture;->completionQueue:Ljava/util/concurrent/BlockingQueue;

    iget-object v1, p0, Ljava/util/concurrent/ExecutorCompletionService$QueueingFuture;->task:Ljava/util/concurrent/Future;

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method
