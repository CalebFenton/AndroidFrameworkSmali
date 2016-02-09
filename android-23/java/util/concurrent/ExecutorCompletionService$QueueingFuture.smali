.class Ljava/util/concurrent/ExecutorCompletionService$QueueingFuture;
.super Ljava/util/concurrent/FutureTask;
.source "ExecutorCompletionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ExecutorCompletionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueueingFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final task:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Ljava/util/concurrent/ExecutorCompletionService;


# direct methods
.method constructor <init>(Ljava/util/concurrent/ExecutorCompletionService;Ljava/util/concurrent/RunnableFuture;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/RunnableFuture",
            "<TV;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 87
    .local p0, "this":Ljava/util/concurrent/ExecutorCompletionService$QueueingFuture;, "Ljava/util/concurrent/ExecutorCompletionService<TV;>.QueueingFuture;"
    .local p1, "this$0":Ljava/util/concurrent/ExecutorCompletionService;, "Ljava/util/concurrent/ExecutorCompletionService<TV;>;"
    .local p2, "task":Ljava/util/concurrent/RunnableFuture;, "Ljava/util/concurrent/RunnableFuture<TV;>;"
    iput-object p1, p0, Ljava/util/concurrent/ExecutorCompletionService$QueueingFuture;->this$0:Ljava/util/concurrent/ExecutorCompletionService;

    #@2
    .line 88
    const/4 v0, 0x0

    #@3
    invoke-direct {p0, p2, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    #@6
    .line 89
    iput-object p2, p0, Ljava/util/concurrent/ExecutorCompletionService$QueueingFuture;->task:Ljava/util/concurrent/Future;

    #@8
    .line 87
    return-void
.end method


# virtual methods
.method protected done()V
    .locals 2

    #@0
    .prologue
    .line 91
    .local p0, "this":Ljava/util/concurrent/ExecutorCompletionService$QueueingFuture;, "Ljava/util/concurrent/ExecutorCompletionService<TV;>.QueueingFuture;"
    iget-object v0, p0, Ljava/util/concurrent/ExecutorCompletionService$QueueingFuture;->this$0:Ljava/util/concurrent/ExecutorCompletionService;

    #@2
    invoke-static {v0}, Ljava/util/concurrent/ExecutorCompletionService;->-get0(Ljava/util/concurrent/ExecutorCompletionService;)Ljava/util/concurrent/BlockingQueue;

    #@5
    move-result-object v0

    #@6
    iget-object v1, p0, Ljava/util/concurrent/ExecutorCompletionService$QueueingFuture;->task:Ljava/util/concurrent/Future;

    #@8
    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    #@b
    return-void
.end method
